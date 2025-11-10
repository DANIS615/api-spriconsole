<?php
//Include Common Files @1-2A98DECE
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFDeliveryNotes.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecorddelivery_note_search { //delivery_note_search Class @5-5BFAD13B

//Variables @5-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @5-9019BE4B
    function clsRecorddelivery_note_search($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record delivery_note_search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "delivery_note_search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_delivery_date = new clsControl(ccsTextBox, "s_delivery_date", "s_delivery_date", ccsText, "", CCGetRequestParam("s_delivery_date", $Method, NULL), $this);
            $this->DatePicker_s_delivery_date1 = new clsDatePicker("DatePicker_s_delivery_date1", "delivery_note_search", "s_delivery_date", $this);
            $this->s_end_date = new clsControl(ccsTextBox, "s_end_date", "s_end_date", ccsText, "", CCGetRequestParam("s_end_date", $Method, NULL), $this);
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "delivery_note_search", "s_end_date", $this);
            $this->s_delivery_reference = new clsControl(ccsTextBox, "s_delivery_reference", "s_delivery_reference", ccsText, "", CCGetRequestParam("s_delivery_reference", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFDeliveryNotes.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-532578A5
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_delivery_date->Validate() && $Validation);
        $Validation = ($this->s_end_date->Validate() && $Validation);
        $Validation = ($this->s_delivery_reference->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_delivery_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_end_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_delivery_reference->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-13BD0555
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_delivery_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_delivery_date1->Errors->Count());
        $errors = ($errors || $this->s_end_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_delivery_reference->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-DCA78B7D
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = "Button_DoSearch";
            if($this->Button_DoSearch->Pressed) {
                $this->PressedButton = "Button_DoSearch";
            }
        }
        $Redirect = "SSFDeliveryNotes.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFDeliveryNotes.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-C777A82E
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_delivery_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_delivery_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_end_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_end_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_delivery_reference->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->s_delivery_date->Show();
        $this->DatePicker_s_delivery_date1->Show();
        $this->s_end_date->Show();
        $this->DatePicker_s_end_date1->Show();
        $this->s_delivery_reference->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End delivery_note_search Class @5-FCB6E20C

class clsGriddelivery_note_he1 { //delivery_note_he1 class @3-565BA4FA

//Variables @3-F44CE3C3

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
    public $Sorter_delivery_note_id;
    public $Sorter_delivery_reference;
    public $Sorter_delivery_date;
//End Variables

//Class_Initialize Event @3-CF83A950
    function clsGriddelivery_note_he1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "delivery_note_he1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid delivery_note_he1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsdelivery_note_he1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("delivery_note_he1Order", "");
        $this->SorterDirection = CCGetParam("delivery_note_he1Dir", "");

        $this->delivery_note_id = new clsControl(ccsLink, "delivery_note_id", "delivery_note_id", ccsInteger, "", CCGetRequestParam("delivery_note_id", ccsGet, NULL), $this);
        $this->delivery_note_id->Page = "SSFDeliveryNotes.php";
        $this->delivery_reference = new clsControl(ccsLabel, "delivery_reference", "delivery_reference", ccsText, "", CCGetRequestParam("delivery_reference", ccsGet, NULL), $this);
        $this->delivery_date = new clsControl(ccsLabel, "delivery_date", "delivery_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("delivery_date", ccsGet, NULL), $this);
        $this->Sorter_delivery_note_id = new clsSorter($this->ComponentName, "Sorter_delivery_note_id", $FileName, $this);
        $this->Sorter_delivery_reference = new clsSorter($this->ComponentName, "Sorter_delivery_reference", $FileName, $this);
        $this->Sorter_delivery_date = new clsSorter($this->ComponentName, "Sorter_delivery_date", $FileName, $this);
        $this->delivery_note_Insert = new clsControl(ccsLink, "delivery_note_Insert", "delivery_note_Insert", ccsText, "", CCGetRequestParam("delivery_note_Insert", ccsGet, NULL), $this);
        $this->delivery_note_Insert->Page = "SSFDeliveryNotes.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @3-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @3-1068E795
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_delivery_date"] = CCGetFromGet("s_delivery_date", NULL);
        $this->DataSource->Parameters["urls_end_date"] = CCGetFromGet("s_end_date", NULL);
        $this->DataSource->Parameters["urls_delivery_reference"] = CCGetFromGet("s_delivery_reference", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["delivery_note_id"] = $this->delivery_note_id->Visible;
            $this->ControlsVisible["delivery_reference"] = $this->delivery_reference->Visible;
            $this->ControlsVisible["delivery_date"] = $this->delivery_date->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->delivery_note_id->SetValue($this->DataSource->delivery_note_id->GetValue());
                $this->delivery_note_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->delivery_note_id->Parameters = CCAddParam($this->delivery_note_id->Parameters, "delivery_note_id", $this->DataSource->f("delivery_note_id"));
                $this->delivery_reference->SetValue($this->DataSource->delivery_reference->GetValue());
                $this->delivery_date->SetValue($this->DataSource->delivery_date->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->delivery_note_id->Show();
                $this->delivery_reference->Show();
                $this->delivery_date->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }
        else { // Show NoRecords block if no records are found
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $this->delivery_note_Insert->Parameters = CCGetQueryString("QueryString", array("delivery_note_id", "ccsForm"));
        $this->delivery_note_Insert->Parameters = CCAddParam($this->delivery_note_Insert->Parameters, "delivery_note_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_delivery_note_id->Show();
        $this->Sorter_delivery_reference->Show();
        $this->Sorter_delivery_date->Show();
        $this->delivery_note_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-ADE6E806
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->delivery_note_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_reference->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End delivery_note_he1 Class @3-FCB6E20C

class clsdelivery_note_he1DataSource extends clsDBConnection1 {  //delivery_note_he1DataSource Class @3-95082AB8

//DataSource Variables @3-D274D0E2
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $delivery_note_id;
    public $delivery_reference;
    public $delivery_date;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-D937F35B
    function clsdelivery_note_he1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid delivery_note_he1";
        $this->Initialize();
        $this->delivery_note_id = new clsField("delivery_note_id", ccsInteger, "");
        $this->delivery_reference = new clsField("delivery_reference", ccsText, "");
        $this->delivery_date = new clsField("delivery_date", ccsDate, array("yyyy", "mm", "dd"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-138A2D78
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "delivery_note_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_delivery_note_id" => array("delivery_note_id", ""), 
            "Sorter_delivery_reference" => array("delivery_reference", ""), 
            "Sorter_delivery_date" => array("delivery_date", "")));
    }
//End SetOrder Method

//Prepare Method @3-9C065102
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_delivery_date", ccsText, "", "", $this->Parameters["urls_delivery_date"], "", false);
        $this->wp->AddParameter("2", "urls_end_date", ccsText, "", "", $this->Parameters["urls_end_date"], "", false);
        $this->wp->AddParameter("3", "urls_delivery_reference", ccsText, "", "", $this->Parameters["urls_delivery_reference"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "delivery_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "delivery_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "delivery_reference", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-F68C7D3D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tank_delivery_note_header";
        $this->SQL = "SELECT delivery_note_id, delivery_reference, delivery_date \n\n" .
        "FROM ssf_tank_delivery_note_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-E922EE45
    function SetValues()
    {
        $this->delivery_note_id->SetDBValue(trim($this->f("delivery_note_id")));
        $this->delivery_reference->SetDBValue($this->f("delivery_reference"));
        $this->delivery_date->SetDBValue(trim($this->f("delivery_date")));
    }
//End SetValues Method

} //End delivery_note_he1DataSource Class @3-FCB6E20C

class clsRecorddelivery_note_he2 { //delivery_note_he2 Class @23-D752A800

//Variables @23-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @23-40FC9DF4
    function clsRecorddelivery_note_he2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record delivery_note_he2/Error";
        $this->DataSource = new clsdelivery_note_he2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "delivery_note_he2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->delivery_doc_type = new clsControl(ccsTextBox, "delivery_doc_type", "delivery_doc_type", ccsText, "", CCGetRequestParam("delivery_doc_type", $Method, NULL), $this);
            $this->delivery_doc_type->Required = true;
            $this->delivery_note_id = new clsControl(ccsHidden, "delivery_note_id", "delivery_note_id", ccsInteger, "", CCGetRequestParam("delivery_note_id", $Method, NULL), $this);
            $this->delivery_note_id->Required = true;
            $this->delivery_doc_id = new clsControl(ccsTextBox, "delivery_doc_id", "delivery_doc_id", ccsText, "", CCGetRequestParam("delivery_doc_id", $Method, NULL), $this);
            $this->delivery_doc_id->Required = true;
            $this->delivery_date = new clsControl(ccsTextBox, "delivery_date", $CCSLocales->GetText("delivery_date"), ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("delivery_date", $Method, NULL), $this);
            $this->delivery_date->Required = true;
            $this->DatePicker_delivery_date1 = new clsDatePicker("DatePicker_delivery_date1", "delivery_note_he2", "delivery_date", $this);
            $this->delivery_time = new clsControl(ccsTextBox, "delivery_time", $CCSLocales->GetText("ssf_time"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("delivery_time", $Method, NULL), $this);
            $this->delivery_comments = new clsControl(ccsTextArea, "delivery_comments", $CCSLocales->GetText("delivery_comments"), ccsMemo, "", CCGetRequestParam("delivery_comments", $Method, NULL), $this);
            $this->Button_deleteDelivery = new clsButton("Button_deleteDelivery", $Method, $this);
            $this->Button_addDelivery = new clsButton("Button_addDelivery", $Method, $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->delivery_time->Value) && !strlen($this->delivery_time->Value) && $this->delivery_time->Value !== false)
                    $this->delivery_time->SetText("00:00:00");
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @23-BAB341D4
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urldelivery_note_id"] = CCGetFromGet("delivery_note_id", NULL);
    }
//End Initialize Method

//Validate Method @23-91879B7E
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->delivery_doc_type->Validate() && $Validation);
        $Validation = ($this->delivery_note_id->Validate() && $Validation);
        $Validation = ($this->delivery_doc_id->Validate() && $Validation);
        $Validation = ($this->delivery_date->Validate() && $Validation);
        $Validation = ($this->delivery_time->Validate() && $Validation);
        $Validation = ($this->delivery_comments->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->delivery_doc_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->delivery_note_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->delivery_doc_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->delivery_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->delivery_time->Errors->Count() == 0);
        $Validation =  $Validation && ($this->delivery_comments->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @23-61F41276
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->delivery_doc_type->Errors->Count());
        $errors = ($errors || $this->delivery_note_id->Errors->Count());
        $errors = ($errors || $this->delivery_doc_id->Errors->Count());
        $errors = ($errors || $this->delivery_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_delivery_date1->Errors->Count());
        $errors = ($errors || $this->delivery_time->Errors->Count());
        $errors = ($errors || $this->delivery_comments->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @23-B5CB3D08
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted) {
            $this->EditMode = $this->DataSource->AllParametersSet;
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Insert";
            if($this->Button_deleteDelivery->Pressed) {
                $this->PressedButton = "Button_deleteDelivery";
            } else if($this->Button_addDelivery->Pressed) {
                $this->PressedButton = "Button_addDelivery";
            } else if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFDeliveryNotes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFDeliveryNotes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "delivery_note_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFDeliveryNotes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "delivery_note_id", "delivery_note_Insert"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_deleteDelivery") {
                $Redirect = "SSFDeliveryNotes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "delivery_op", "delivery_id"));
                if(!CCGetEvent($this->Button_deleteDelivery->CCSEvents, "OnClick", $this->Button_deleteDelivery)) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_addDelivery") {
                $Redirect = "SSFDeliveryNotes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "delivery_op", "delivery_id"));
                if(!CCGetEvent($this->Button_addDelivery->CCSEvents, "OnClick", $this->Button_addDelivery)) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update) || !$this->UpdateRow()) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//InsertRow Method @23-C11BDB69
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->delivery_doc_type->SetValue($this->delivery_doc_type->GetValue(true));
        $this->DataSource->delivery_note_id->SetValue($this->delivery_note_id->GetValue(true));
        $this->DataSource->delivery_doc_id->SetValue($this->delivery_doc_id->GetValue(true));
        $this->DataSource->delivery_date->SetValue($this->delivery_date->GetValue(true));
        $this->DataSource->delivery_time->SetValue($this->delivery_time->GetValue(true));
        $this->DataSource->delivery_comments->SetValue($this->delivery_comments->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @23-DC5A0591
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->delivery_doc_type->SetValue($this->delivery_doc_type->GetValue(true));
        $this->DataSource->delivery_note_id->SetValue($this->delivery_note_id->GetValue(true));
        $this->DataSource->delivery_doc_id->SetValue($this->delivery_doc_id->GetValue(true));
        $this->DataSource->delivery_date->SetValue($this->delivery_date->GetValue(true));
        $this->DataSource->delivery_time->SetValue($this->delivery_time->GetValue(true));
        $this->DataSource->delivery_comments->SetValue($this->delivery_comments->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @23-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @23-0C4DD5CD
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->delivery_doc_type->SetValue($this->DataSource->delivery_doc_type->GetValue());
                    $this->delivery_note_id->SetValue($this->DataSource->delivery_note_id->GetValue());
                    $this->delivery_doc_id->SetValue($this->DataSource->delivery_doc_id->GetValue());
                    $this->delivery_date->SetValue($this->DataSource->delivery_date->GetValue());
                    $this->delivery_time->SetValue($this->DataSource->delivery_time->GetValue());
                    $this->delivery_comments->SetValue($this->DataSource->delivery_comments->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->delivery_doc_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->delivery_note_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->delivery_doc_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->delivery_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_delivery_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->delivery_time->Errors->ToString());
            $Error = ComposeStrings($Error, $this->delivery_comments->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->delivery_doc_type->Show();
        $this->delivery_note_id->Show();
        $this->delivery_doc_id->Show();
        $this->delivery_date->Show();
        $this->DatePicker_delivery_date1->Show();
        $this->delivery_time->Show();
        $this->delivery_comments->Show();
        $this->Button_deleteDelivery->Show();
        $this->Button_addDelivery->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End delivery_note_he2 Class @23-FCB6E20C

class clsdelivery_note_he2DataSource extends clsDBConnection1 {  //delivery_note_he2DataSource Class @23-1EDB14A1

//DataSource Variables @23-4B5A08FA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $delivery_doc_type;
    public $delivery_note_id;
    public $delivery_doc_id;
    public $delivery_date;
    public $delivery_time;
    public $delivery_comments;
//End DataSource Variables

//DataSourceClass_Initialize Event @23-D6EC760E
    function clsdelivery_note_he2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record delivery_note_he2/Error";
        $this->Initialize();
        $this->delivery_doc_type = new clsField("delivery_doc_type", ccsText, "");
        $this->delivery_note_id = new clsField("delivery_note_id", ccsInteger, "");
        $this->delivery_doc_id = new clsField("delivery_doc_id", ccsText, "");
        $this->delivery_date = new clsField("delivery_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->delivery_time = new clsField("delivery_time", ccsDate, array("HH", "nn", "ss"));
        $this->delivery_comments = new clsField("delivery_comments", ccsMemo, "");

        $this->InsertFields["delivery_doc_type"] = array("Name" => "delivery_doc_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["delivery_note_id"] = array("Name" => "delivery_note_id", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["delivery_doc_id"] = array("Name" => "delivery_doc_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["delivery_date"] = array("Name" => "delivery_date", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["delivery_time"] = array("Name" => "delivery_time", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["delivery_comments"] = array("Name" => "delivery_comments", "Value" => "", "DataType" => ccsMemo);
        $this->UpdateFields["delivery_doc_type"] = array("Name" => "delivery_doc_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["delivery_note_id"] = array("Name" => "delivery_note_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["delivery_doc_id"] = array("Name" => "delivery_doc_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["delivery_date"] = array("Name" => "delivery_date", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["delivery_time"] = array("Name" => "delivery_time", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["delivery_comments"] = array("Name" => "delivery_comments", "Value" => "", "DataType" => ccsMemo);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @23-FCBE3F4D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urldelivery_note_id", ccsInteger, "", "", $this->Parameters["urldelivery_note_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "delivery_note_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @23-8C0F18E5
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tank_delivery_note_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @23-9A699F0E
    function SetValues()
    {
        $this->delivery_doc_type->SetDBValue($this->f("delivery_doc_type"));
        $this->delivery_note_id->SetDBValue(trim($this->f("delivery_note_id")));
        $this->delivery_doc_id->SetDBValue($this->f("delivery_doc_id"));
        $this->delivery_date->SetDBValue(trim($this->f("delivery_date")));
        $this->delivery_time->SetDBValue(trim($this->f("delivery_time")));
        $this->delivery_comments->SetDBValue($this->f("delivery_comments"));
    }
//End SetValues Method

//Insert Method @23-7C34C87F
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["delivery_doc_type"]["Value"] = $this->delivery_doc_type->GetDBValue(true);
        $this->InsertFields["delivery_note_id"]["Value"] = $this->delivery_note_id->GetDBValue(true);
        $this->InsertFields["delivery_doc_id"]["Value"] = $this->delivery_doc_id->GetDBValue(true);
        $this->InsertFields["delivery_date"]["Value"] = $this->delivery_date->GetDBValue(true);
        $this->InsertFields["delivery_time"]["Value"] = $this->delivery_time->GetDBValue(true);
        $this->InsertFields["delivery_comments"]["Value"] = $this->delivery_comments->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tank_delivery_note_header", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @23-98F2A98B
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["delivery_doc_type"]["Value"] = $this->delivery_doc_type->GetDBValue(true);
        $this->UpdateFields["delivery_note_id"]["Value"] = $this->delivery_note_id->GetDBValue(true);
        $this->UpdateFields["delivery_doc_id"]["Value"] = $this->delivery_doc_id->GetDBValue(true);
        $this->UpdateFields["delivery_date"]["Value"] = $this->delivery_date->GetDBValue(true);
        $this->UpdateFields["delivery_time"]["Value"] = $this->delivery_time->GetDBValue(true);
        $this->UpdateFields["delivery_comments"]["Value"] = $this->delivery_comments->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tank_delivery_note_header", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @23-8FBCF3B9
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tank_delivery_note_header";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End delivery_note_he2DataSource Class @23-FCB6E20C



class clsEditableGridformdetail { //formdetail Class @37-9D378ACE

//Variables @37-7CC50E2E

    // Public variables
    public $ComponentType = "EditableGrid";
    public $ComponentName;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormParameters;
    public $FormState;
    public $FormEnctype;
    public $CachedColumns;
    public $TotalRows;
    public $UpdatedRows;
    public $EmptyRows;
    public $Visible;
    public $RowsErrors;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode;
    public $ValidatingControls;
    public $Controls;
    public $ControlsErrors;
    public $RowNumber;
    public $Attributes;

    // Class variables
    public $Sorter_delivery_supplier_vol;
//End Variables

//Class_Initialize Event @37-8E4EEF2C
    function clsEditableGridformdetail($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid formdetail/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "formdetail";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["delivery_note_id"][0] = "delivery_note_id";
        $this->CachedColumns["delivery_product_id"][0] = "delivery_product_id";
        $this->DataSource = new clsformdetailDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 1;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if(!$this->Visible) return;

        $CCSForm = CCGetFromGet("ccsForm", "");
        $this->FormEnctype = "application/x-www-form-urlencoded";
        $this->FormSubmitted = ($CCSForm == $this->ComponentName);
        if($this->FormSubmitted) {
            $this->FormState = CCGetFromPost("FormState", "");
            $this->SetFormState($this->FormState);
        } else {
            $this->FormState = "";
        }
        $Method = $this->FormSubmitted ? ccsPost : ccsGet;

        $this->SorterName = CCGetParam("formdetailOrder", "");
        $this->SorterDirection = CCGetParam("formdetailDir", "");

        $this->Sorter_delivery_supplier_vol = new clsSorter($this->ComponentName, "Sorter_delivery_supplier_vol", $FileName, $this);
        $this->delivery_note_id = new clsControl(ccsHidden, "delivery_note_id", $CCSLocales->GetText("delivery_note_id"), ccsInteger, "", NULL, $this);
        $this->delivery_note_id->Required = true;
        $this->delivery_product_id = new clsControl(ccsLabel, "delivery_product_id", "delivery_product_id", ccsText, "", NULL, $this);
        $this->delivery_product_vol = new clsControl(ccsLabel, "delivery_product_vol", "delivery_product_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), NULL, $this);
        $this->delivery_supplier_vol = new clsControl(ccsTextBox, "delivery_supplier_vol", $CCSLocales->GetText("delivery_supplier_vol"), ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), NULL, $this);
        $this->delivery_terminal = new clsControl(ccsTextBox, "delivery_terminal", "delivery_terminal", ccsText, "", NULL, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @37-ED646B88
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urldelivery_note_id"] = CCGetFromGet("delivery_note_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @37-6A638273
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["delivery_note_id"][$RowNumber] = CCGetFromPost("delivery_note_id_" . $RowNumber, NULL);
            $this->FormParameters["delivery_supplier_vol"][$RowNumber] = CCGetFromPost("delivery_supplier_vol_" . $RowNumber, NULL);
            $this->FormParameters["delivery_terminal"][$RowNumber] = CCGetFromPost("delivery_terminal_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @37-3FDECBE6
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["delivery_note_id"] = $this->CachedColumns["delivery_note_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["delivery_product_id"] = $this->CachedColumns["delivery_product_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->delivery_note_id->SetText($this->FormParameters["delivery_note_id"][$this->RowNumber], $this->RowNumber);
            $this->delivery_supplier_vol->SetText($this->FormParameters["delivery_supplier_vol"][$this->RowNumber], $this->RowNumber);
            $this->delivery_terminal->SetText($this->FormParameters["delivery_terminal"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                $Validation = ($this->ValidateRow($this->RowNumber) && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @37-D0BB3F15
    function ValidateRow()
    {
        global $CCSLocales;
        $this->delivery_note_id->Validate();
        $this->delivery_supplier_vol->Validate();
        $this->delivery_terminal->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->delivery_note_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_supplier_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_terminal->Errors->ToString());
        $this->delivery_note_id->Errors->Clear();
        $this->delivery_supplier_vol->Errors->Clear();
        $this->delivery_terminal->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @37-43A5D658
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["delivery_note_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["delivery_supplier_vol"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["delivery_terminal"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @37-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @37-6B923CC2
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted)
            return;

        $this->GetFormParameters();
        $this->PressedButton = "Button_Submit";
        if($this->Button_Submit->Pressed) {
            $this->PressedButton = "Button_Submit";
        } else if($this->Cancel->Pressed) {
            $this->PressedButton = "Cancel";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Submit") {
            if(!CCGetEvent($this->Button_Submit->CCSEvents, "OnClick", $this->Button_Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Cancel") {
            if(!CCGetEvent($this->Cancel->CCSEvents, "OnClick", $this->Cancel)) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @37-C6C33C58
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["delivery_note_id"] = $this->CachedColumns["delivery_note_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["delivery_product_id"] = $this->CachedColumns["delivery_product_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->delivery_note_id->SetText($this->FormParameters["delivery_note_id"][$this->RowNumber], $this->RowNumber);
            $this->delivery_supplier_vol->SetText($this->FormParameters["delivery_supplier_vol"][$this->RowNumber], $this->RowNumber);
            $this->delivery_terminal->SetText($this->FormParameters["delivery_terminal"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->UpdateAllowed) { $Validation = ($this->UpdateRow() && $Validation); }
            }
            else if($this->CheckInsert() && $this->InsertAllowed)
            {
                $Validation = ($Validation && $this->InsertRow());
            }
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterSubmit", $this);
        if ($this->Errors->Count() == 0 && $Validation){
            $this->DataSource->close();
            return true;
        }
        return false;
    }
//End UpdateGrid Method

//UpdateRow Method @37-4D3E262F
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->delivery_note_id->SetValue($this->delivery_note_id->GetValue(true));
        $this->DataSource->delivery_product_id->SetValue($this->delivery_product_id->GetValue(true));
        $this->DataSource->delivery_product_vol->SetValue($this->delivery_product_vol->GetValue(true));
        $this->DataSource->delivery_supplier_vol->SetValue($this->delivery_supplier_vol->GetValue(true));
        $this->DataSource->delivery_terminal->SetValue($this->delivery_terminal->GetValue(true));
        $this->DataSource->Update();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End UpdateRow Method

//FormScript Method @37-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @37-E6B6CDF8
    function SetFormState($FormState)
    {
        if(strlen($FormState)) {
            $FormState = str_replace("\\\\", "\\" . ord("\\"), $FormState);
            $FormState = str_replace("\\;", "\\" . ord(";"), $FormState);
            $pieces = explode(";", $FormState);
            $this->UpdatedRows = $pieces[0];
            $this->EmptyRows   = $pieces[1];
            $this->TotalRows = $this->UpdatedRows + $this->EmptyRows;
            $RowNumber = 0;
            for($i = 2; $i < sizeof($pieces); $i = $i + 2)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["delivery_note_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["delivery_product_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["delivery_note_id"][$RowNumber] = "";
                $this->CachedColumns["delivery_product_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @37-10C63785
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["delivery_note_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["delivery_product_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @37-390F2320
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->open();
        $is_next_record = ($this->ReadAllowed && $this->DataSource->next_record());
        $this->IsEmpty = ! $is_next_record;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) { return; }

        $this->Attributes->Show();
        $this->Button_Submit->Visible = $this->Button_Submit->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["delivery_note_id"] = $this->delivery_note_id->Visible;
        $this->ControlsVisible["delivery_product_id"] = $this->delivery_product_id->Visible;
        $this->ControlsVisible["delivery_product_vol"] = $this->delivery_product_vol->Visible;
        $this->ControlsVisible["delivery_supplier_vol"] = $this->delivery_supplier_vol->Visible;
        $this->ControlsVisible["delivery_terminal"] = $this->delivery_terminal->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["delivery_note_id"][$this->RowNumber] = $this->DataSource->CachedColumns["delivery_note_id"];
                    $this->CachedColumns["delivery_product_id"][$this->RowNumber] = $this->DataSource->CachedColumns["delivery_product_id"];
                    $this->delivery_note_id->SetValue($this->DataSource->delivery_note_id->GetValue());
                    $this->delivery_product_id->SetValue($this->DataSource->delivery_product_id->GetValue());
                    $this->delivery_product_vol->SetValue($this->DataSource->delivery_product_vol->GetValue());
                    $this->delivery_supplier_vol->SetValue($this->DataSource->delivery_supplier_vol->GetValue());
                    $this->delivery_terminal->SetValue($this->DataSource->delivery_terminal->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->delivery_product_id->SetText("");
                    $this->delivery_product_vol->SetText("");
                    $this->delivery_product_id->SetValue($this->DataSource->delivery_product_id->GetValue());
                    $this->delivery_product_vol->SetValue($this->DataSource->delivery_product_vol->GetValue());
                    $this->delivery_note_id->SetText($this->FormParameters["delivery_note_id"][$this->RowNumber], $this->RowNumber);
                    $this->delivery_supplier_vol->SetText($this->FormParameters["delivery_supplier_vol"][$this->RowNumber], $this->RowNumber);
                    $this->delivery_terminal->SetText($this->FormParameters["delivery_terminal"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["delivery_note_id"][$this->RowNumber] = "";
                    $this->CachedColumns["delivery_product_id"][$this->RowNumber] = "";
                    $this->delivery_note_id->SetText("");
                    $this->delivery_product_id->SetText("");
                    $this->delivery_product_vol->SetText("");
                    $this->delivery_supplier_vol->SetText("");
                    $this->delivery_terminal->SetText("");
                } else {
                    $this->delivery_product_id->SetText("");
                    $this->delivery_product_vol->SetText("");
                    $this->delivery_note_id->SetText($this->FormParameters["delivery_note_id"][$this->RowNumber], $this->RowNumber);
                    $this->delivery_supplier_vol->SetText($this->FormParameters["delivery_supplier_vol"][$this->RowNumber], $this->RowNumber);
                    $this->delivery_terminal->SetText($this->FormParameters["delivery_terminal"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->delivery_note_id->Show($this->RowNumber);
                $this->delivery_product_id->Show($this->RowNumber);
                $this->delivery_product_vol->Show($this->RowNumber);
                $this->delivery_supplier_vol->Show($this->RowNumber);
                $this->delivery_terminal->Show($this->RowNumber);
                if (isset($this->RowsErrors[$this->RowNumber]) && ($this->RowsErrors[$this->RowNumber] != "")) {
                    $Tpl->setblockvar("RowError", "");
                    $Tpl->setvar("Error", $this->RowsErrors[$this->RowNumber]);
                    $this->Attributes->Show();
                    $Tpl->parse("RowError", false);
                } else {
                    $Tpl->setblockvar("RowError", "");
                }
                $Tpl->setvar("FormScript", $this->FormScript($this->RowNumber));
                $Tpl->parse();
                if ($is_next_record) {
                    if ($this->FormSubmitted) {
                        $is_next_record = $this->RowNumber < $this->UpdatedRows;
                        if (($this->DataSource->CachedColumns["delivery_note_id"] == $this->CachedColumns["delivery_note_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["delivery_product_id"] == $this->CachedColumns["delivery_product_id"][$this->RowNumber])) {
                            if ($this->ReadAllowed) $this->DataSource->next_record();
                        }
                    }else{
                        $is_next_record = ($this->RowNumber < $this->PageSize) &&  $this->ReadAllowed && $this->DataSource->next_record();
                    }
                } else { 
                    $EmptyRowsLeft--;
                }
            } while($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed));
        } else {
            $Tpl->block_path = $EditableGridPath;
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $Tpl->block_path = $EditableGridPath;
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_delivery_supplier_vol->Show();
        $this->Navigator->Show();
        $this->Button_Submit->Show();
        $this->Cancel->Show();

        if($this->CheckErrors()) {
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $Tpl->SetVar("HTMLFormProperties", "method=\"POST\" action=\"" . $this->HTMLFormAction . "\" name=\"" . $this->ComponentName . "\"");
        $Tpl->SetVar("FormState", CCToHTML($this->GetFormState($NonEmptyRows)));
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End formdetail Class @37-FCB6E20C

class clsformdetailDataSource extends clsDBConnection1 {  //formdetailDataSource Class @37-C3B79B73

//DataSource Variables @37-615AC370
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;
    public $UpdateFields = array();

    // Datasource fields
    public $delivery_note_id;
    public $delivery_product_id;
    public $delivery_product_vol;
    public $delivery_supplier_vol;
    public $delivery_terminal;
//End DataSource Variables

//DataSourceClass_Initialize Event @37-4C38C5EB
    function clsformdetailDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid formdetail/Error";
        $this->Initialize();
        $this->delivery_note_id = new clsField("delivery_note_id", ccsInteger, "");
        $this->delivery_product_id = new clsField("delivery_product_id", ccsText, "");
        $this->delivery_product_vol = new clsField("delivery_product_vol", ccsFloat, "");
        $this->delivery_supplier_vol = new clsField("delivery_supplier_vol", ccsFloat, "");
        $this->delivery_terminal = new clsField("delivery_terminal", ccsText, "");

        $this->UpdateFields["delivery_note_id"] = array("Name" => "delivery_note_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["delivery_supplier_vol"] = array("Name" => "delivery_supplier_vol", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["delivery_terminal"] = array("Name" => "delivery_terminal", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @37-9D516CAC
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_delivery_supplier_vol" => array("delivery_supplier_vol", "")));
    }
//End SetOrder Method

//Prepare Method @37-FCBE3F4D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urldelivery_note_id", ccsInteger, "", "", $this->Parameters["urldelivery_note_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "delivery_note_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @37-8E6C65F3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tank_delivery_note_detail";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tank_delivery_note_detail {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @37-578E906C
    function SetValues()
    {
        $this->CachedColumns["delivery_note_id"] = $this->f("delivery_note_id");
        $this->CachedColumns["delivery_product_id"] = $this->f("delivery_product_id");
        $this->delivery_note_id->SetDBValue(trim($this->f("delivery_note_id")));
        $this->delivery_product_id->SetDBValue($this->f("delivery_product_id"));
        $this->delivery_product_vol->SetDBValue(trim($this->f("delivery_product_vol")));
        $this->delivery_supplier_vol->SetDBValue(trim($this->f("delivery_supplier_vol")));
        $this->delivery_terminal->SetDBValue($this->f("delivery_terminal"));
    }
//End SetValues Method

//Update Method @37-049F1A3B
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "delivery_note_id=" . $this->ToSQL($this->CachedColumns["delivery_note_id"], ccsInteger) . " AND delivery_product_id=" . $this->ToSQL($this->CachedColumns["delivery_product_id"], ccsText);
        $this->UpdateFields["delivery_note_id"]["Value"] = $this->delivery_note_id->GetDBValue(true);
        $this->UpdateFields["delivery_supplier_vol"]["Value"] = $this->delivery_supplier_vol->GetDBValue(true);
        $this->UpdateFields["delivery_terminal"]["Value"] = $this->delivery_terminal->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tank_delivery_note_detail", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Update Method

} //End formdetailDataSource Class @37-FCB6E20C



//Initialize Page @1-2F630F89
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "SSFDeliveryNotes.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-C605623B
include("./SSFDeliveryNotes_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-3EE5499B
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$delivery_note_search = new clsRecorddelivery_note_search("", $MainPage);
$delivery_note_he1 = new clsGriddelivery_note_he1("", $MainPage);
$delivery_note_he2 = new clsRecorddelivery_note_he2("", $MainPage);
$formdetail = new clsEditableGridformdetail("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->delivery_note_search = & $delivery_note_search;
$MainPage->delivery_note_he1 = & $delivery_note_he1;
$MainPage->delivery_note_he2 = & $delivery_note_he2;
$MainPage->formdetail = & $formdetail;
$delivery_note_he1->Initialize();
$delivery_note_he2->Initialize();
$formdetail->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

$Charset = $Charset ? $Charset : "windows-1252";
if ($Charset)
    header("Content-Type: text/html; charset=" . $Charset);
//End Initialize Objects

//Initialize HTML Template @1-67CF7266
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
$Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-882CD8F8
$SSFSpiritHeader->Operations();
$delivery_note_search->Operation();
$delivery_note_he2->Operation();
$formdetail->Operation();
//End Execute Components

//Go to destination page @1-AB5AFB10
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($delivery_note_search);
    unset($delivery_note_he1);
    unset($delivery_note_he2);
    unset($formdetail);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-DE6F1E44
$SSFSpiritHeader->Show();
$delivery_note_search->Show();
$delivery_note_he1->Show();
$delivery_note_he2->Show();
$formdetail->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-E2CB1895
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($delivery_note_search);
unset($delivery_note_he1);
unset($delivery_note_he2);
unset($formdetail);
unset($Tpl);
//End Unload Page


?>
