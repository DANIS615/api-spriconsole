<?php
//Include Common Files @1-BA16F0C6
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFLogBook.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_slb_events_conf { //ssf_addin_slb_events_conf Class @5-71D849C8

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

//Class_Initialize Event @5-0FD1043D
    function clsRecordssf_addin_slb_events_conf($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_slb_events_conf/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_slb_events_conf";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_slb_event_id = new clsControl(ccsListBox, "s_slb_event_id", "s_slb_event_id", ccsInteger, "", CCGetRequestParam("s_slb_event_id", $Method, NULL), $this);
            $this->s_slb_event_id->DSType = dsTable;
            list($this->s_slb_event_id->BoundColumn, $this->s_slb_event_id->TextColumn, $this->s_slb_event_id->DBFormat) = array("slb_event_id", "slb_label", "");
            $this->s_slb_event_id->DataSource = new clsDBConnection1();
            $this->s_slb_event_id->ds = & $this->s_slb_event_id->DataSource;
            $this->s_slb_event_id->DataSource->SQL = "SELECT slb_event_id, slb_label \n" .
"FROM ssf_addin_slb_events_config {SQL_Where} {SQL_OrderBy}";
            $this->s_slb_label = new clsControl(ccsTextBox, "s_slb_label", "s_slb_label", ccsText, "", CCGetRequestParam("s_slb_label", $Method, NULL), $this);
            $this->s_slb_if_log = new clsControl(ccsListBox, "s_slb_if_log", "s_slb_if_log", ccsText, "", CCGetRequestParam("s_slb_if_log", $Method, NULL), $this);
            $this->s_slb_if_log->DSType = dsListOfValues;
            $this->s_slb_if_log->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFLogBook.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-0257011F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_slb_event_id->Validate() && $Validation);
        $Validation = ($this->s_slb_label->Validate() && $Validation);
        $Validation = ($this->s_slb_if_log->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_slb_event_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_slb_label->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_slb_if_log->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-7BAB9642
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_slb_event_id->Errors->Count());
        $errors = ($errors || $this->s_slb_label->Errors->Count());
        $errors = ($errors || $this->s_slb_if_log->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-133AD340
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
        $Redirect = "SSFLogBook.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFLogBook.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-4C8EA953
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_slb_event_id->Prepare();
        $this->s_slb_if_log->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_slb_event_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_slb_label->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_slb_if_log->Errors->ToString());
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

        $this->s_slb_event_id->Show();
        $this->s_slb_label->Show();
        $this->s_slb_if_log->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_slb_events_conf Class @5-FCB6E20C

class clsGridssf_addin_slb_events_conf1 { //ssf_addin_slb_events_conf1 class @3-076CCA99

//Variables @3-B8B35341

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
    public $Sorter_slb_event_id;
    public $Sorter_slb_label;
    public $Sorter_slb_if_log;
//End Variables

//Class_Initialize Event @3-D383A253
    function clsGridssf_addin_slb_events_conf1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_slb_events_conf1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_slb_events_conf1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_slb_events_conf1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 15;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_addin_slb_events_conf1Order", "");
        $this->SorterDirection = CCGetParam("ssf_addin_slb_events_conf1Dir", "");

        $this->slb_event_id = new clsControl(ccsLink, "slb_event_id", "slb_event_id", ccsInteger, "", CCGetRequestParam("slb_event_id", ccsGet, NULL), $this);
        $this->slb_event_id->Page = "SSFLogBook.php";
        $this->slb_label = new clsControl(ccsLabel, "slb_label", "slb_label", ccsText, "", CCGetRequestParam("slb_label", ccsGet, NULL), $this);
        $this->slb_if_log = new clsControl(ccsCheckBox, "slb_if_log", "slb_if_log", ccsText, "", CCGetRequestParam("slb_if_log", ccsGet, NULL), $this);
        $this->slb_if_log->CheckedValue = $this->slb_if_log->GetParsedValue("Y");
        $this->slb_if_log->UncheckedValue = $this->slb_if_log->GetParsedValue("N");
        $this->Sorter_slb_event_id = new clsSorter($this->ComponentName, "Sorter_slb_event_id", $FileName, $this);
        $this->Sorter_slb_label = new clsSorter($this->ComponentName, "Sorter_slb_label", $FileName, $this);
        $this->Sorter_slb_if_log = new clsSorter($this->ComponentName, "Sorter_slb_if_log", $FileName, $this);
        $this->ssf_addin_slb_events_conf1_Insert = new clsControl(ccsLink, "ssf_addin_slb_events_conf1_Insert", "ssf_addin_slb_events_conf1_Insert", ccsText, "", CCGetRequestParam("ssf_addin_slb_events_conf1_Insert", ccsGet, NULL), $this);
        $this->ssf_addin_slb_events_conf1_Insert->Parameters = CCGetQueryString("QueryString", array("slb_event_id", "ccsForm"));
        $this->ssf_addin_slb_events_conf1_Insert->Page = "SSFLogBook.php";
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

//Show Method @3-0648061F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_slb_event_id"] = CCGetFromGet("s_slb_event_id", NULL);
        $this->DataSource->Parameters["urls_slb_label"] = CCGetFromGet("s_slb_label", NULL);
        $this->DataSource->Parameters["urls_slb_if_log"] = CCGetFromGet("s_slb_if_log", NULL);

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
            $this->ControlsVisible["slb_event_id"] = $this->slb_event_id->Visible;
            $this->ControlsVisible["slb_label"] = $this->slb_label->Visible;
            $this->ControlsVisible["slb_if_log"] = $this->slb_if_log->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->slb_event_id->SetValue($this->DataSource->slb_event_id->GetValue());
                $this->slb_event_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->slb_event_id->Parameters = CCAddParam($this->slb_event_id->Parameters, "slb_event_id", $this->DataSource->f("slb_event_id"));
                $this->slb_label->SetValue($this->DataSource->slb_label->GetValue());
                $this->slb_if_log->SetValue($this->DataSource->slb_if_log->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->slb_event_id->Show();
                $this->slb_label->Show();
                $this->slb_if_log->Show();
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
        $this->Sorter_slb_event_id->Show();
        $this->Sorter_slb_label->Show();
        $this->Sorter_slb_if_log->Show();
        $this->ssf_addin_slb_events_conf1_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-7FF018D5
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->slb_event_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slb_label->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slb_if_log->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_slb_events_conf1 Class @3-FCB6E20C

class clsssf_addin_slb_events_conf1DataSource extends clsDBConnection1 {  //ssf_addin_slb_events_conf1DataSource Class @3-4293FF0E

//DataSource Variables @3-4946B58B
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $slb_event_id;
    public $slb_label;
    public $slb_if_log;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-D82D52C5
    function clsssf_addin_slb_events_conf1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_slb_events_conf1";
        $this->Initialize();
        $this->slb_event_id = new clsField("slb_event_id", ccsInteger, "");
        $this->slb_label = new clsField("slb_label", ccsText, "");
        $this->slb_if_log = new clsField("slb_if_log", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-1BBC051A
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "slb_event_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_slb_event_id" => array("slb_event_id", ""), 
            "Sorter_slb_label" => array("slb_label", ""), 
            "Sorter_slb_if_log" => array("slb_if_log", "")));
    }
//End SetOrder Method

//Prepare Method @3-5A989260
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_slb_event_id", ccsInteger, "", "", $this->Parameters["urls_slb_event_id"], "", false);
        $this->wp->AddParameter("2", "urls_slb_label", ccsText, "", "", $this->Parameters["urls_slb_label"], "", false);
        $this->wp->AddParameter("3", "urls_slb_if_log", ccsText, "", "", $this->Parameters["urls_slb_if_log"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "slb_event_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "slb_label", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "slb_if_log", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-5FA26CD0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_slb_events_config";
        $this->SQL = "SELECT slb_event_id, slb_label, slb_if_log \n\n" .
        "FROM ssf_addin_slb_events_config {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-6307506F
    function SetValues()
    {
        $this->slb_event_id->SetDBValue(trim($this->f("slb_event_id")));
        $this->slb_label->SetDBValue($this->f("slb_label"));
        $this->slb_if_log->SetDBValue($this->f("slb_if_log"));
    }
//End SetValues Method

} //End ssf_addin_slb_events_conf1DataSource Class @3-FCB6E20C

class clsRecordssf_addin_slb_events_conf2 { //ssf_addin_slb_events_conf2 Class @25-A1A021BE

//Variables @25-9E315808

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

//Class_Initialize Event @25-0602A59B
    function clsRecordssf_addin_slb_events_conf2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_slb_events_conf2/Error";
        $this->DataSource = new clsssf_addin_slb_events_conf2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_slb_events_conf2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->slb_label = new clsControl(ccsLabel, "slb_label", $CCSLocales->GetText("slb_label"), ccsText, "", CCGetRequestParam("slb_label", $Method, NULL), $this);
            $this->slb_desc = new clsControl(ccsLabel, "slb_desc", $CCSLocales->GetText("slb_desc"), ccsMemo, "", CCGetRequestParam("slb_desc", $Method, NULL), $this);
            $this->slb_if_log = new clsControl(ccsCheckBox, "slb_if_log", $CCSLocales->GetText("slb_if_log"), ccsText, "", CCGetRequestParam("slb_if_log", $Method, NULL), $this);
            $this->slb_if_log->CheckedValue = $this->slb_if_log->GetParsedValue("Y");
            $this->slb_if_log->UncheckedValue = $this->slb_if_log->GetParsedValue("N");
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->slb_event_id = new clsControl(ccsHidden, "slb_event_id", $CCSLocales->GetText("slb_event_id"), ccsInteger, "", CCGetRequestParam("slb_event_id", $Method, NULL), $this);
            $this->slb_event_id->Required = true;
            $this->slb_if_force = new clsControl(ccsHidden, "slb_if_force", $CCSLocales->GetText("slb_if_force"), ccsText, "", CCGetRequestParam("slb_if_force", $Method, NULL), $this);
            $this->slb_plugin_force = new clsControl(ccsHidden, "slb_plugin_force", $CCSLocales->GetText("slb_plugin_force"), ccsText, "", CCGetRequestParam("slb_plugin_force", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @25-2FE89C43
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlslb_event_id"] = CCGetFromGet("slb_event_id", NULL);
    }
//End Initialize Method

//Validate Method @25-BED33BD2
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->slb_if_log->Validate() && $Validation);
        $Validation = ($this->slb_event_id->Validate() && $Validation);
        $Validation = ($this->slb_if_force->Validate() && $Validation);
        $Validation = ($this->slb_plugin_force->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->slb_if_log->Errors->Count() == 0);
        $Validation =  $Validation && ($this->slb_event_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->slb_if_force->Errors->Count() == 0);
        $Validation =  $Validation && ($this->slb_plugin_force->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @25-415A7827
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->slb_label->Errors->Count());
        $errors = ($errors || $this->slb_desc->Errors->Count());
        $errors = ($errors || $this->slb_if_log->Errors->Count());
        $errors = ($errors || $this->slb_event_id->Errors->Count());
        $errors = ($errors || $this->slb_if_force->Errors->Count());
        $errors = ($errors || $this->slb_plugin_force->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @25-04263881
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Cancel";
            if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFLogBook.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFLogBook.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "slb_event_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Update") {
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

//UpdateRow Method @25-5D48AEDC
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->slb_label->SetValue($this->slb_label->GetValue(true));
        $this->DataSource->slb_desc->SetValue($this->slb_desc->GetValue(true));
        $this->DataSource->slb_if_log->SetValue($this->slb_if_log->GetValue(true));
        $this->DataSource->slb_event_id->SetValue($this->slb_event_id->GetValue(true));
        $this->DataSource->slb_if_force->SetValue($this->slb_if_force->GetValue(true));
        $this->DataSource->slb_plugin_force->SetValue($this->slb_plugin_force->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @25-027F688A
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
                $this->slb_label->SetValue($this->DataSource->slb_label->GetValue());
                $this->slb_desc->SetValue($this->DataSource->slb_desc->GetValue());
                if(!$this->FormSubmitted){
                    $this->slb_if_log->SetValue($this->DataSource->slb_if_log->GetValue());
                    $this->slb_event_id->SetValue($this->DataSource->slb_event_id->GetValue());
                    $this->slb_if_force->SetValue($this->DataSource->slb_if_force->GetValue());
                    $this->slb_plugin_force->SetValue($this->DataSource->slb_plugin_force->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->slb_label->Errors->ToString());
            $Error = ComposeStrings($Error, $this->slb_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->slb_if_log->Errors->ToString());
            $Error = ComposeStrings($Error, $this->slb_event_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->slb_if_force->Errors->ToString());
            $Error = ComposeStrings($Error, $this->slb_plugin_force->Errors->ToString());
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
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->slb_label->Show();
        $this->slb_desc->Show();
        $this->slb_if_log->Show();
        $this->Button_Update->Show();
        $this->Button_Cancel->Show();
        $this->slb_event_id->Show();
        $this->slb_if_force->Show();
        $this->slb_plugin_force->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_slb_events_conf2 Class @25-FCB6E20C

class clsssf_addin_slb_events_conf2DataSource extends clsDBConnection1 {  //ssf_addin_slb_events_conf2DataSource Class @25-C940C117

//DataSource Variables @25-B2C0E2AF
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
    public $slb_label;
    public $slb_desc;
    public $slb_if_log;
    public $slb_event_id;
    public $slb_if_force;
    public $slb_plugin_force;
//End DataSource Variables

//DataSourceClass_Initialize Event @25-96A3E22F
    function clsssf_addin_slb_events_conf2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_addin_slb_events_conf2/Error";
        $this->Initialize();
        $this->slb_label = new clsField("slb_label", ccsText, "");
        $this->slb_desc = new clsField("slb_desc", ccsMemo, "");
        $this->slb_if_log = new clsField("slb_if_log", ccsText, "");
        $this->slb_event_id = new clsField("slb_event_id", ccsInteger, "");
        $this->slb_if_force = new clsField("slb_if_force", ccsText, "");
        $this->slb_plugin_force = new clsField("slb_plugin_force", ccsText, "");

        $this->UpdateFields["slb_if_log"] = array("Name" => "slb_if_log", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["slb_event_id"] = array("Name" => "slb_event_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["slb_if_force"] = array("Name" => "slb_if_force", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["slb_plugin_force"] = array("Name" => "slb_plugin_force", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @25-CCA20917
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlslb_event_id", ccsInteger, "", "", $this->Parameters["urlslb_event_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "slb_event_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @25-1B1949C1
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_slb_events_config {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @25-07338637
    function SetValues()
    {
        $this->slb_label->SetDBValue($this->f("slb_label"));
        $this->slb_desc->SetDBValue($this->f("slb_desc"));
        $this->slb_if_log->SetDBValue($this->f("slb_if_log"));
        $this->slb_event_id->SetDBValue(trim($this->f("slb_event_id")));
        $this->slb_if_force->SetDBValue($this->f("slb_if_force"));
        $this->slb_plugin_force->SetDBValue($this->f("slb_plugin_force"));
    }
//End SetValues Method

//Update Method @25-0CC10875
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["slb_if_log"]["Value"] = $this->slb_if_log->GetDBValue(true);
        $this->UpdateFields["slb_event_id"]["Value"] = $this->slb_event_id->GetDBValue(true);
        $this->UpdateFields["slb_if_force"]["Value"] = $this->slb_if_force->GetDBValue(true);
        $this->UpdateFields["slb_plugin_force"]["Value"] = $this->slb_plugin_force->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_slb_events_config", $this->UpdateFields, $this);
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

} //End ssf_addin_slb_events_conf2DataSource Class @25-FCB6E20C

//Initialize Page @1-90BDD607
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
$TemplateFileName = "SSFLogBook.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-18E3D0F8
include("./SSFLogBook_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A4089C00
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_slb_events_conf = new clsRecordssf_addin_slb_events_conf("", $MainPage);
$ssf_addin_slb_events_conf1 = new clsGridssf_addin_slb_events_conf1("", $MainPage);
$ssf_addin_slb_events_conf2 = new clsRecordssf_addin_slb_events_conf2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_slb_events_conf = & $ssf_addin_slb_events_conf;
$MainPage->ssf_addin_slb_events_conf1 = & $ssf_addin_slb_events_conf1;
$MainPage->ssf_addin_slb_events_conf2 = & $ssf_addin_slb_events_conf2;
$ssf_addin_slb_events_conf1->Initialize();
$ssf_addin_slb_events_conf2->Initialize();

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

//Execute Components @1-9A87EE66
$SSFSpiritHeader->Operations();
$ssf_addin_slb_events_conf->Operation();
$ssf_addin_slb_events_conf2->Operation();
//End Execute Components

//Go to destination page @1-E018998D
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_slb_events_conf);
    unset($ssf_addin_slb_events_conf1);
    unset($ssf_addin_slb_events_conf2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C0732DFF
$SSFSpiritHeader->Show();
$ssf_addin_slb_events_conf->Show();
$ssf_addin_slb_events_conf1->Show();
$ssf_addin_slb_events_conf2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-11FEA124
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_slb_events_conf);
unset($ssf_addin_slb_events_conf1);
unset($ssf_addin_slb_events_conf2);
unset($Tpl);
//End Unload Page


?>
