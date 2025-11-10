<?php
//Include Common Files @1-9B1DC7FD
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFTicketUOM.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_measure_units { //ssf_tkt_measure_units class @3-BAA86142

//Variables @3-4804E396

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
    public $Sorter_tkt_unit_id;
    public $Sorter_tkt_unit_desc;
    public $Sorter_tkt_unit_fractionable;
    public $Sorter_tkt_unit_short_desc;
//End Variables

//Class_Initialize Event @3-30F213FF
    function clsGridssf_tkt_measure_units($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_measure_units";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_measure_units";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_measure_unitsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_measure_unitsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_measure_unitsDir", "");

        $this->tkt_unit_id = new clsControl(ccsLink, "tkt_unit_id", "tkt_unit_id", ccsText, "", CCGetRequestParam("tkt_unit_id", ccsGet, NULL), $this);
        $this->tkt_unit_id->Page = "SSFTicketUOM.php";
        $this->tkt_unit_desc = new clsControl(ccsLabel, "tkt_unit_desc", "tkt_unit_desc", ccsText, "", CCGetRequestParam("tkt_unit_desc", ccsGet, NULL), $this);
        $this->tkt_unit_fractionable = new clsControl(ccsCheckBox, "tkt_unit_fractionable", "tkt_unit_fractionable", ccsText, "", CCGetRequestParam("tkt_unit_fractionable", ccsGet, NULL), $this);
        $this->tkt_unit_fractionable->CheckedValue = $this->tkt_unit_fractionable->GetParsedValue("Y");
        $this->tkt_unit_fractionable->UncheckedValue = $this->tkt_unit_fractionable->GetParsedValue("N");
        $this->tkt_unit_short_desc = new clsControl(ccsLabel, "tkt_unit_short_desc", "tkt_unit_short_desc", ccsText, "", CCGetRequestParam("tkt_unit_short_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_unit_id = new clsSorter($this->ComponentName, "Sorter_tkt_unit_id", $FileName, $this);
        $this->Sorter_tkt_unit_desc = new clsSorter($this->ComponentName, "Sorter_tkt_unit_desc", $FileName, $this);
        $this->Sorter_tkt_unit_fractionable = new clsSorter($this->ComponentName, "Sorter_tkt_unit_fractionable", $FileName, $this);
        $this->Sorter_tkt_unit_short_desc = new clsSorter($this->ComponentName, "Sorter_tkt_unit_short_desc", $FileName, $this);
        $this->units_Insert = new clsControl(ccsLink, "units_Insert", "units_Insert", ccsText, "", CCGetRequestParam("units_Insert", ccsGet, NULL), $this);
        $this->units_Insert->Page = "SSFTicketUOM.php";
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

//Show Method @3-C989228A
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


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
            $this->ControlsVisible["tkt_unit_id"] = $this->tkt_unit_id->Visible;
            $this->ControlsVisible["tkt_unit_desc"] = $this->tkt_unit_desc->Visible;
            $this->ControlsVisible["tkt_unit_fractionable"] = $this->tkt_unit_fractionable->Visible;
            $this->ControlsVisible["tkt_unit_short_desc"] = $this->tkt_unit_short_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_unit_id->SetValue($this->DataSource->tkt_unit_id->GetValue());
                $this->tkt_unit_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_unit_id->Parameters = CCAddParam($this->tkt_unit_id->Parameters, "tkt_unit_id", $this->DataSource->f("tkt_unit_id"));
                $this->tkt_unit_desc->SetValue($this->DataSource->tkt_unit_desc->GetValue());
                $this->tkt_unit_fractionable->SetValue($this->DataSource->tkt_unit_fractionable->GetValue());
                $this->tkt_unit_short_desc->SetValue($this->DataSource->tkt_unit_short_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_unit_id->Show();
                $this->tkt_unit_desc->Show();
                $this->tkt_unit_fractionable->Show();
                $this->tkt_unit_short_desc->Show();
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
        $this->units_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_unit_id", "ccsForm"));
        $this->units_Insert->Parameters = CCAddParam($this->units_Insert->Parameters, "units_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_unit_id->Show();
        $this->Sorter_tkt_unit_desc->Show();
        $this->Sorter_tkt_unit_fractionable->Show();
        $this->Sorter_tkt_unit_short_desc->Show();
        $this->units_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-32B5A7CD
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_unit_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_unit_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_unit_fractionable->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_unit_short_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_measure_units Class @3-FCB6E20C

class clsssf_tkt_measure_unitsDataSource extends clsDBConnection1 {  //ssf_tkt_measure_unitsDataSource Class @3-F9B95808

//DataSource Variables @3-48C43813
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_unit_id;
    public $tkt_unit_desc;
    public $tkt_unit_fractionable;
    public $tkt_unit_short_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-2327AD7D
    function clsssf_tkt_measure_unitsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_measure_units";
        $this->Initialize();
        $this->tkt_unit_id = new clsField("tkt_unit_id", ccsText, "");
        $this->tkt_unit_desc = new clsField("tkt_unit_desc", ccsText, "");
        $this->tkt_unit_fractionable = new clsField("tkt_unit_fractionable", ccsText, "");
        $this->tkt_unit_short_desc = new clsField("tkt_unit_short_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-BB0B7D9E
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_unit_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_unit_id" => array("tkt_unit_id", ""), 
            "Sorter_tkt_unit_desc" => array("tkt_unit_desc", ""), 
            "Sorter_tkt_unit_fractionable" => array("tkt_unit_fractionable", ""), 
            "Sorter_tkt_unit_short_desc" => array("tkt_unit_short_desc", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-FA739D62
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_measure_units";
        $this->SQL = "SELECT tkt_unit_id, tkt_unit_desc, tkt_unit_fractionable, tkt_unit_short_desc \n\n" .
        "FROM ssf_tkt_measure_units {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-4D426D0E
    function SetValues()
    {
        $this->tkt_unit_id->SetDBValue($this->f("tkt_unit_id"));
        $this->tkt_unit_desc->SetDBValue($this->f("tkt_unit_desc"));
        $this->tkt_unit_fractionable->SetDBValue($this->f("tkt_unit_fractionable"));
        $this->tkt_unit_short_desc->SetDBValue($this->f("tkt_unit_short_desc"));
    }
//End SetValues Method

} //End ssf_tkt_measure_unitsDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_measure_units1 { //ssf_tkt_measure_units1 Class @20-D3D81737

//Variables @20-9E315808

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

//Class_Initialize Event @20-8D42DDD6
    function clsRecordssf_tkt_measure_units1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_measure_units1/Error";
        $this->DataSource = new clsssf_tkt_measure_units1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_measure_units1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_unit_id = new clsControl(ccsTextBox, "tkt_unit_id", $CCSLocales->GetText("tkt_unit_id"), ccsText, "", CCGetRequestParam("tkt_unit_id", $Method, NULL), $this);
            $this->tkt_unit_id->Required = true;
            $this->tkt_unit_desc = new clsControl(ccsTextBox, "tkt_unit_desc", $CCSLocales->GetText("tkt_unit_desc"), ccsText, "", CCGetRequestParam("tkt_unit_desc", $Method, NULL), $this);
            $this->tkt_unit_fractionable = new clsControl(ccsCheckBox, "tkt_unit_fractionable", $CCSLocales->GetText("tkt_unit_fractionable"), ccsText, "", CCGetRequestParam("tkt_unit_fractionable", $Method, NULL), $this);
            $this->tkt_unit_fractionable->CheckedValue = $this->tkt_unit_fractionable->GetParsedValue("Y");
            $this->tkt_unit_fractionable->UncheckedValue = $this->tkt_unit_fractionable->GetParsedValue("N");
            $this->tkt_unit_short_desc = new clsControl(ccsTextBox, "tkt_unit_short_desc", $CCSLocales->GetText("tkt_unit_short_desc"), ccsText, "", CCGetRequestParam("tkt_unit_short_desc", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_unit_fractionable->Value) && !strlen($this->tkt_unit_fractionable->Value) && $this->tkt_unit_fractionable->Value !== false)
                    $this->tkt_unit_fractionable->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @20-EC3D94FA
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_unit_id"] = CCGetFromGet("tkt_unit_id", NULL);
    }
//End Initialize Method

//Validate Method @20-CB709F9B
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_unit_id->Validate() && $Validation);
        $Validation = ($this->tkt_unit_desc->Validate() && $Validation);
        $Validation = ($this->tkt_unit_fractionable->Validate() && $Validation);
        $Validation = ($this->tkt_unit_short_desc->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_unit_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_unit_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_unit_fractionable->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_unit_short_desc->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @20-633DC283
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_unit_id->Errors->Count());
        $errors = ($errors || $this->tkt_unit_desc->Errors->Count());
        $errors = ($errors || $this->tkt_unit_fractionable->Errors->Count());
        $errors = ($errors || $this->tkt_unit_short_desc->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @20-8E382941
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
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketUOM.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketUOM.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "units_Insert", "tkt_unit_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketUOM.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "units_Insert", "tkt_unit_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
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

//InsertRow Method @20-7C127F4B
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_unit_id->SetValue($this->tkt_unit_id->GetValue(true));
        $this->DataSource->tkt_unit_desc->SetValue($this->tkt_unit_desc->GetValue(true));
        $this->DataSource->tkt_unit_fractionable->SetValue($this->tkt_unit_fractionable->GetValue(true));
        $this->DataSource->tkt_unit_short_desc->SetValue($this->tkt_unit_short_desc->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @20-13FFB32F
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_unit_id->SetValue($this->tkt_unit_id->GetValue(true));
        $this->DataSource->tkt_unit_desc->SetValue($this->tkt_unit_desc->GetValue(true));
        $this->DataSource->tkt_unit_fractionable->SetValue($this->tkt_unit_fractionable->GetValue(true));
        $this->DataSource->tkt_unit_short_desc->SetValue($this->tkt_unit_short_desc->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @20-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @20-813748B3
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
                    $this->tkt_unit_id->SetValue($this->DataSource->tkt_unit_id->GetValue());
                    $this->tkt_unit_desc->SetValue($this->DataSource->tkt_unit_desc->GetValue());
                    $this->tkt_unit_fractionable->SetValue($this->DataSource->tkt_unit_fractionable->GetValue());
                    $this->tkt_unit_short_desc->SetValue($this->DataSource->tkt_unit_short_desc->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_unit_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_unit_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_unit_fractionable->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_unit_short_desc->Errors->ToString());
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

        $this->tkt_unit_id->Show();
        $this->tkt_unit_desc->Show();
        $this->tkt_unit_fractionable->Show();
        $this->tkt_unit_short_desc->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_measure_units1 Class @20-FCB6E20C

class clsssf_tkt_measure_units1DataSource extends clsDBConnection1 {  //ssf_tkt_measure_units1DataSource Class @20-F36048BD

//DataSource Variables @20-7D447A92
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
    public $tkt_unit_id;
    public $tkt_unit_desc;
    public $tkt_unit_fractionable;
    public $tkt_unit_short_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @20-2A0D92A4
    function clsssf_tkt_measure_units1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_measure_units1/Error";
        $this->Initialize();
        $this->tkt_unit_id = new clsField("tkt_unit_id", ccsText, "");
        $this->tkt_unit_desc = new clsField("tkt_unit_desc", ccsText, "");
        $this->tkt_unit_fractionable = new clsField("tkt_unit_fractionable", ccsText, "");
        $this->tkt_unit_short_desc = new clsField("tkt_unit_short_desc", ccsText, "");

        $this->InsertFields["tkt_unit_id"] = array("Name" => "tkt_unit_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_unit_desc"] = array("Name" => "tkt_unit_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_unit_fractionable"] = array("Name" => "tkt_unit_fractionable", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_unit_short_desc"] = array("Name" => "tkt_unit_short_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_unit_id"] = array("Name" => "tkt_unit_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_unit_desc"] = array("Name" => "tkt_unit_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_unit_fractionable"] = array("Name" => "tkt_unit_fractionable", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_unit_short_desc"] = array("Name" => "tkt_unit_short_desc", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @20-FFB24318
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_unit_id", ccsText, "", "", $this->Parameters["urltkt_unit_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_unit_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @20-37F9BB38
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_measure_units {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @20-4D426D0E
    function SetValues()
    {
        $this->tkt_unit_id->SetDBValue($this->f("tkt_unit_id"));
        $this->tkt_unit_desc->SetDBValue($this->f("tkt_unit_desc"));
        $this->tkt_unit_fractionable->SetDBValue($this->f("tkt_unit_fractionable"));
        $this->tkt_unit_short_desc->SetDBValue($this->f("tkt_unit_short_desc"));
    }
//End SetValues Method

//Insert Method @20-8DC421CF
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_unit_id"]["Value"] = $this->tkt_unit_id->GetDBValue(true);
        $this->InsertFields["tkt_unit_desc"]["Value"] = $this->tkt_unit_desc->GetDBValue(true);
        $this->InsertFields["tkt_unit_fractionable"]["Value"] = $this->tkt_unit_fractionable->GetDBValue(true);
        $this->InsertFields["tkt_unit_short_desc"]["Value"] = $this->tkt_unit_short_desc->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_measure_units", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @20-90D82EFD
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_unit_id"]["Value"] = $this->tkt_unit_id->GetDBValue(true);
        $this->UpdateFields["tkt_unit_desc"]["Value"] = $this->tkt_unit_desc->GetDBValue(true);
        $this->UpdateFields["tkt_unit_fractionable"]["Value"] = $this->tkt_unit_fractionable->GetDBValue(true);
        $this->UpdateFields["tkt_unit_short_desc"]["Value"] = $this->tkt_unit_short_desc->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_measure_units", $this->UpdateFields, $this);
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

//Delete Method @20-C5F75621
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_measure_units";
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

} //End ssf_tkt_measure_units1DataSource Class @20-FCB6E20C

//Initialize Page @1-31CBA8E6
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
$TemplateFileName = "SSFTicketUOM.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-37EA5136
include("./SSFTicketUOM_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-D121E7AA
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_measure_units = new clsGridssf_tkt_measure_units("", $MainPage);
$ssf_tkt_measure_units1 = new clsRecordssf_tkt_measure_units1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_measure_units = & $ssf_tkt_measure_units;
$MainPage->ssf_tkt_measure_units1 = & $ssf_tkt_measure_units1;
$ssf_tkt_measure_units->Initialize();
$ssf_tkt_measure_units1->Initialize();

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

//Execute Components @1-C6D5EEED
$SSFSpiritHeader->Operations();
$ssf_tkt_measure_units1->Operation();
//End Execute Components

//Go to destination page @1-D0B63CA2
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_measure_units);
    unset($ssf_tkt_measure_units1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-60C69E15
$SSFSpiritHeader->Show();
$ssf_tkt_measure_units->Show();
$ssf_tkt_measure_units1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-D8D26251
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_measure_units);
unset($ssf_tkt_measure_units1);
unset($Tpl);
//End Unload Page


?>
