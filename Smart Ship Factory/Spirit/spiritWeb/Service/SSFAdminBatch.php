<?php
//Include Common Files @1-57EC6A25
define("RelativePath", "..");
define("PathToCurrentPage", "/Service/");
define("FileName", "SSFAdminBatch.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_head_office_bat { //ssf_addin_head_office_bat Class @3-9C5F27A8

//Variables @3-9E315808

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

//Class_Initialize Event @3-3155DEC9
    function clsRecordssf_addin_head_office_bat($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_head_office_bat/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_head_office_bat";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_ho_batch_id = new clsControl(ccsTextBox, "s_ho_batch_id", "s_ho_batch_id", ccsInteger, "", CCGetRequestParam("s_ho_batch_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @3-74F9DCC0
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_ho_batch_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_ho_batch_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-463CC774
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_ho_batch_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-C1C4FADF
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
        $Redirect = "SSFAdminBatch.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFAdminBatch.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-8E6A7829
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
            $Error = ComposeStrings($Error, $this->s_ho_batch_id->Errors->ToString());
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

        $this->s_ho_batch_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_head_office_bat Class @3-FCB6E20C

class clsGridssf_addin_head_office_bat1 { //ssf_addin_head_office_bat1 class @6-4A332CAF

//Variables @6-47CCFBB0

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
    public $Sorter_ho_batch_id;
    public $Sorter_ho_destination;
    public $Sorter_ho_timestamp;
//End Variables

//Class_Initialize Event @6-BA5CA986
    function clsGridssf_addin_head_office_bat1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_head_office_bat1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_head_office_bat1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_head_office_bat1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_addin_head_office_bat1Order", "");
        $this->SorterDirection = CCGetParam("ssf_addin_head_office_bat1Dir", "");

        $this->ho_batch_id = new clsControl(ccsLink, "ho_batch_id", "ho_batch_id", ccsInteger, "", CCGetRequestParam("ho_batch_id", ccsGet, NULL), $this);
        $this->ho_batch_id->Page = "SSFAdminBatch.php";
        $this->ho_destination = new clsControl(ccsLabel, "ho_destination", "ho_destination", ccsText, "", CCGetRequestParam("ho_destination", ccsGet, NULL), $this);
        $this->ho_timestamp = new clsControl(ccsLabel, "ho_timestamp", "ho_timestamp", ccsDate, array("dd", "/", "mm", "/", "yyyy", " ", "H", ":", "nn", ":", "ss"), CCGetRequestParam("ho_timestamp", ccsGet, NULL), $this);
        $this->Sorter_ho_batch_id = new clsSorter($this->ComponentName, "Sorter_ho_batch_id", $FileName, $this);
        $this->Sorter_ho_destination = new clsSorter($this->ComponentName, "Sorter_ho_destination", $FileName, $this);
        $this->Sorter_ho_timestamp = new clsSorter($this->ComponentName, "Sorter_ho_timestamp", $FileName, $this);
        $this->ssf_addin_head_office_bat1_Insert = new clsControl(ccsLink, "ssf_addin_head_office_bat1_Insert", "ssf_addin_head_office_bat1_Insert", ccsText, "", CCGetRequestParam("ssf_addin_head_office_bat1_Insert", ccsGet, NULL), $this);
        $this->ssf_addin_head_office_bat1_Insert->Parameters = CCGetQueryString("QueryString", array("ho_batch_id", "ccsForm"));
        $this->ssf_addin_head_office_bat1_Insert->Page = "SSFAdminBatch1.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @6-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @6-669E5A2B
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_ho_batch_id"] = CCGetFromGet("s_ho_batch_id", NULL);

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
            $this->ControlsVisible["ho_batch_id"] = $this->ho_batch_id->Visible;
            $this->ControlsVisible["ho_destination"] = $this->ho_destination->Visible;
            $this->ControlsVisible["ho_timestamp"] = $this->ho_timestamp->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->ho_batch_id->SetValue($this->DataSource->ho_batch_id->GetValue());
                $this->ho_batch_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ho_batch_id->Parameters = CCAddParam($this->ho_batch_id->Parameters, "ho_batch_id", $this->DataSource->f("ho_batch_id"));
                $this->ho_destination->SetValue($this->DataSource->ho_destination->GetValue());
                $this->ho_timestamp->SetValue($this->DataSource->ho_timestamp->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->ho_batch_id->Show();
                $this->ho_destination->Show();
                $this->ho_timestamp->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_ho_batch_id->Show();
        $this->Sorter_ho_destination->Show();
        $this->Sorter_ho_timestamp->Show();
        $this->ssf_addin_head_office_bat1_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @6-AB55EB69
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->ho_batch_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ho_destination->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ho_timestamp->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_head_office_bat1 Class @6-FCB6E20C

class clsssf_addin_head_office_bat1DataSource extends clsDBConnection1 {  //ssf_addin_head_office_bat1DataSource Class @6-FA7977BF

//DataSource Variables @6-C3C5DACC
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $ho_batch_id;
    public $ho_destination;
    public $ho_timestamp;
//End DataSource Variables

//DataSourceClass_Initialize Event @6-E2F82B53
    function clsssf_addin_head_office_bat1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_head_office_bat1";
        $this->Initialize();
        $this->ho_batch_id = new clsField("ho_batch_id", ccsInteger, "");
        $this->ho_destination = new clsField("ho_destination", ccsText, "");
        $this->ho_timestamp = new clsField("ho_timestamp", ccsDate, array("yyyy", "mm", "dd", "HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @6-6FE3346D
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ho_batch_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ho_batch_id" => array("ho_batch_id", ""), 
            "Sorter_ho_destination" => array("ho_destination", ""), 
            "Sorter_ho_timestamp" => array("ho_timestamp", "")));
    }
//End SetOrder Method

//Prepare Method @6-3406DD79
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_ho_batch_id", ccsInteger, "", "", $this->Parameters["urls_ho_batch_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ho_batch_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @6-E1CB37BC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_head_office_batch_info";
        $this->SQL = "SELECT ho_batch_id, ho_destination, ho_timestamp \n\n" .
        "FROM ssf_addin_head_office_batch_info {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @6-3C27E7B9
    function SetValues()
    {
        $this->ho_batch_id->SetDBValue(trim($this->f("ho_batch_id")));
        $this->ho_destination->SetDBValue($this->f("ho_destination"));
        $this->ho_timestamp->SetDBValue(trim($this->f("ho_timestamp")));
    }
//End SetValues Method

} //End ssf_addin_head_office_bat1DataSource Class @6-FCB6E20C

class clsRecordssf_addin_head_office_bat2 { //ssf_addin_head_office_bat2 Class @21-ECFFC788

//Variables @21-9E315808

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

//Class_Initialize Event @21-0D1306BC
    function clsRecordssf_addin_head_office_bat2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_head_office_bat2/Error";
        $this->DataSource = new clsssf_addin_head_office_bat2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_head_office_bat2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->ho_batch_id = new clsControl(ccsLabel, "ho_batch_id", $CCSLocales->GetText("ho_batch_id"), ccsInteger, "", CCGetRequestParam("ho_batch_id", $Method, NULL), $this);
            $this->ho_destination = new clsControl(ccsLabel, "ho_destination", $CCSLocales->GetText("ho_destination"), ccsText, "", CCGetRequestParam("ho_destination", $Method, NULL), $this);
            $this->ho_timestamp = new clsControl(ccsLabel, "ho_timestamp", $CCSLocales->GetText("ho_timestamp"), ccsDate, array("dd", "/", "mm", "/", "yyyy", " ", "H", ":", "nn", ":", "ss"), CCGetRequestParam("ho_timestamp", $Method, NULL), $this);
            $this->Button_Resend = new clsButton("Button_Resend", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @21-43273B65
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlho_batch_id"] = CCGetFromGet("ho_batch_id", NULL);
    }
//End Initialize Method

//Validate Method @21-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @21-FF6E5C6F
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->ho_batch_id->Errors->Count());
        $errors = ($errors || $this->ho_destination->Errors->Count());
        $errors = ($errors || $this->ho_timestamp->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @21-15C38A8B
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
            $this->PressedButton = $this->EditMode ? "Button_Resend" : "Button_Resend";
            if($this->Button_Resend->Pressed) {
                $this->PressedButton = "Button_Resend";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFAdminBatch.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFAdminBatch.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ho_batch_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Resend") {
                if(!CCGetEvent($this->Button_Resend->CCSEvents, "OnClick", $this->Button_Resend)) {
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

//UpdateRow Method @21-07D34D16
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->ho_batch_id->SetValue($this->ho_batch_id->GetValue(true));
        $this->DataSource->ho_destination->SetValue($this->ho_destination->GetValue(true));
        $this->DataSource->ho_timestamp->SetValue($this->ho_timestamp->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @21-CD04B102
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
                $this->ho_batch_id->SetValue($this->DataSource->ho_batch_id->GetValue());
                $this->ho_destination->SetValue($this->DataSource->ho_destination->GetValue());
                $this->ho_timestamp->SetValue($this->DataSource->ho_timestamp->GetValue());
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->ho_batch_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ho_destination->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ho_timestamp->Errors->ToString());
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

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->ho_batch_id->Show();
        $this->ho_destination->Show();
        $this->ho_timestamp->Show();
        $this->Button_Resend->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_head_office_bat2 Class @21-FCB6E20C

class clsssf_addin_head_office_bat2DataSource extends clsDBConnection1 {  //ssf_addin_head_office_bat2DataSource Class @21-71AA49A6

//DataSource Variables @21-E1221CDA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $wp;
    public $AllParametersSet;

    public $UpdateFields = array();

    // Datasource fields
    public $ho_batch_id;
    public $ho_destination;
    public $ho_timestamp;
//End DataSource Variables

//DataSourceClass_Initialize Event @21-94F57449
    function clsssf_addin_head_office_bat2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_addin_head_office_bat2/Error";
        $this->Initialize();
        $this->ho_batch_id = new clsField("ho_batch_id", ccsInteger, "");
        $this->ho_destination = new clsField("ho_destination", ccsText, "");
        $this->ho_timestamp = new clsField("ho_timestamp", ccsDate, array("yyyy", "mm", "dd", "HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//Prepare Method @21-985DBA23
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlho_batch_id", ccsInteger, "", "", $this->Parameters["urlho_batch_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ho_batch_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @21-C94E9F4B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_head_office_batch_info {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @21-3C27E7B9
    function SetValues()
    {
        $this->ho_batch_id->SetDBValue(trim($this->f("ho_batch_id")));
        $this->ho_destination->SetDBValue($this->f("ho_destination"));
        $this->ho_timestamp->SetDBValue(trim($this->f("ho_timestamp")));
    }
//End SetValues Method

//Update Method @21-1B9B2E9C
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->SQL = CCBuildUpdate("ssf_addin_head_office_batch_info", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

} //End ssf_addin_head_office_bat2DataSource Class @21-FCB6E20C



//Initialize Page @1-DEFA2956
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
$TemplateFileName = "SSFAdminBatch.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-EA751AAB
include("./SSFAdminBatch_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-E2DFA127
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_head_office_bat = new clsRecordssf_addin_head_office_bat("", $MainPage);
$ssf_addin_head_office_bat1 = new clsGridssf_addin_head_office_bat1("", $MainPage);
$ssf_addin_head_office_bat2 = new clsRecordssf_addin_head_office_bat2("", $MainPage);
$MainPage->Label1 = & $Label1;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_head_office_bat = & $ssf_addin_head_office_bat;
$MainPage->ssf_addin_head_office_bat1 = & $ssf_addin_head_office_bat1;
$MainPage->ssf_addin_head_office_bat2 = & $ssf_addin_head_office_bat2;
$ssf_addin_head_office_bat1->Initialize();
$ssf_addin_head_office_bat2->Initialize();

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

//Execute Components @1-43E65E50
$SSFSpiritHeader->Operations();
$ssf_addin_head_office_bat->Operation();
$ssf_addin_head_office_bat2->Operation();
//End Execute Components

//Go to destination page @1-93B2E657
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_head_office_bat);
    unset($ssf_addin_head_office_bat1);
    unset($ssf_addin_head_office_bat2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-6A6BCA5B
$SSFSpiritHeader->Show();
$ssf_addin_head_office_bat->Show();
$ssf_addin_head_office_bat1->Show();
$ssf_addin_head_office_bat2->Show();
$Label1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BA7D5B51
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_head_office_bat);
unset($ssf_addin_head_office_bat1);
unset($ssf_addin_head_office_bat2);
unset($Tpl);
//End Unload Page


?>
