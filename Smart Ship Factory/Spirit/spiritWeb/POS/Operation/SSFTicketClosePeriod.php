<?php
//Include Common Files @1-662A3FA5
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Operation/");
define("FileName", "SSFTicketClosePeriod.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_periodsSearch { //ssf_tkt_periodsSearch Class @11-55F4B879

//Variables @11-9E315808

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

//Class_Initialize Event @11-60BF637C
    function clsRecordssf_tkt_periodsSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_periodsSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_periodsSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_period_type = new clsControl(ccsListBox, "s_tkt_period_type", "s_tkt_period_type", ccsText, "", CCGetRequestParam("s_tkt_period_type", $Method, NULL), $this);
            $this->s_tkt_period_type->DSType = dsListOfValues;
            $this->s_tkt_period_type->Values = array(array("S", $CCSLocales->GetText("Shift")), array("D", $CCSLocales->GetText("day")), array("M", $CCSLocales->GetText("month")), array("Y", $CCSLocales->GetText("year")));
            $this->lstperiodGroup = new clsControl(ccsListBox, "lstperiodGroup", "lstperiodGroup", ccsText, "", CCGetRequestParam("lstperiodGroup", $Method, NULL), $this);
            $this->lstperiodGroup->DSType = dsTable;
            list($this->lstperiodGroup->BoundColumn, $this->lstperiodGroup->TextColumn, $this->lstperiodGroup->DBFormat) = array("tkt_period_group_id", "tkt_period_group_desc", "");
            $this->lstperiodGroup->DataSource = new clsDBConnection1();
            $this->lstperiodGroup->ds = & $this->lstperiodGroup->DataSource;
            $this->lstperiodGroup->DataSource->SQL = "SELECT tkt_period_group_id, tkt_period_group_desc \n" .
"FROM ssf_tkt_period_groups {SQL_Where} {SQL_OrderBy}";
            $this->btnClose = new clsButton("btnClose", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @11-6499B82C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_period_type->Validate() && $Validation);
        $Validation = ($this->lstperiodGroup->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_period_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstperiodGroup->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @11-9851F1B2
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_period_type->Errors->Count());
        $errors = ($errors || $this->lstperiodGroup->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @11-2E704ED0
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
            $this->PressedButton = "btnClose";
            if($this->btnClose->Pressed) {
                $this->PressedButton = "btnClose";
            }
        }
        $Redirect = "SSFTicketClosePeriod.php";
        if($this->Validate()) {
            if($this->PressedButton == "btnClose") {
                if(!CCGetEvent($this->btnClose->CCSEvents, "OnClick", $this->btnClose)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @11-715906D8
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_period_type->Prepare();
        $this->lstperiodGroup->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_period_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstperiodGroup->Errors->ToString());
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

        $this->s_tkt_period_type->Show();
        $this->lstperiodGroup->Show();
        $this->btnClose->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_periodsSearch Class @11-FCB6E20C

class clsGridssf_tkt_periods { //ssf_tkt_periods class @3-E6683E4B

//Variables @3-F452C09E

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
    public $Sorter_tkt_period_group;
//End Variables

//Class_Initialize Event @3-0C554CCA
    function clsGridssf_tkt_periods($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_periods";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_periods";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_periodsDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 2;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_periodsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_periodsDir", "");

        $this->tkt_period_group = new clsControl(ccsLabel, "tkt_period_group", "tkt_period_group", ccsText, "", CCGetRequestParam("tkt_period_group", ccsGet, NULL), $this);
        $this->tkt_period_type = new clsControl(ccsLabel, "tkt_period_type", "tkt_period_type", ccsText, "", CCGetRequestParam("tkt_period_type", ccsGet, NULL), $this);
        $this->tkt_period_id = new clsControl(ccsLabel, "tkt_period_id", "tkt_period_id", ccsInteger, "", CCGetRequestParam("tkt_period_id", ccsGet, NULL), $this);
        $this->tkt_period_status = new clsControl(ccsLabel, "tkt_period_status", "tkt_period_status", ccsText, "", CCGetRequestParam("tkt_period_status", ccsGet, NULL), $this);
        $this->tkt_period_date_start = new clsControl(ccsLabel, "tkt_period_date_start", "tkt_period_date_start", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_period_date_start", ccsGet, NULL), $this);
        $this->tkt_period_time_start = new clsControl(ccsLabel, "tkt_period_time_start", "tkt_period_time_start", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_period_time_start", ccsGet, NULL), $this);
        $this->Sorter_tkt_period_group = new clsSorter($this->ComponentName, "Sorter_tkt_period_group", $FileName, $this);
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

//Show Method @3-60749E66
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_period_type"] = CCGetFromGet("s_tkt_period_type", NULL);

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
            $this->ControlsVisible["tkt_period_group"] = $this->tkt_period_group->Visible;
            $this->ControlsVisible["tkt_period_type"] = $this->tkt_period_type->Visible;
            $this->ControlsVisible["tkt_period_id"] = $this->tkt_period_id->Visible;
            $this->ControlsVisible["tkt_period_status"] = $this->tkt_period_status->Visible;
            $this->ControlsVisible["tkt_period_date_start"] = $this->tkt_period_date_start->Visible;
            $this->ControlsVisible["tkt_period_time_start"] = $this->tkt_period_time_start->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_period_group->SetValue($this->DataSource->tkt_period_group->GetValue());
                $this->tkt_period_type->SetValue($this->DataSource->tkt_period_type->GetValue());
                $this->tkt_period_id->SetValue($this->DataSource->tkt_period_id->GetValue());
                $this->tkt_period_status->SetValue($this->DataSource->tkt_period_status->GetValue());
                $this->tkt_period_date_start->SetValue($this->DataSource->tkt_period_date_start->GetValue());
                $this->tkt_period_time_start->SetValue($this->DataSource->tkt_period_time_start->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_period_group->Show();
                $this->tkt_period_type->Show();
                $this->tkt_period_id->Show();
                $this->tkt_period_status->Show();
                $this->tkt_period_date_start->Show();
                $this->tkt_period_time_start->Show();
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
        $this->Sorter_tkt_period_group->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-2EE1DA17
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_period_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_date_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_time_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_periods Class @3-FCB6E20C

class clsssf_tkt_periodsDataSource extends clsDBConnection1 {  //ssf_tkt_periodsDataSource Class @3-B063B656

//DataSource Variables @3-CF29DCC2
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_period_group;
    public $tkt_period_type;
    public $tkt_period_id;
    public $tkt_period_status;
    public $tkt_period_date_start;
    public $tkt_period_time_start;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-F0CB2C56
    function clsssf_tkt_periodsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_periods";
        $this->Initialize();
        $this->tkt_period_group = new clsField("tkt_period_group", ccsText, "");
        $this->tkt_period_type = new clsField("tkt_period_type", ccsText, "");
        $this->tkt_period_id = new clsField("tkt_period_id", ccsInteger, "");
        $this->tkt_period_status = new clsField("tkt_period_status", ccsText, "");
        $this->tkt_period_date_start = new clsField("tkt_period_date_start", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_period_time_start = new clsField("tkt_period_time_start", ccsDate, array("HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-118867BF
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_period_group" => array("tkt_period_group", "")));
    }
//End SetOrder Method

//Prepare Method @3-066CC1D7
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_tkt_period_type", ccsText, "", "", $this->Parameters["urls_tkt_period_type"], S, false);
        $this->wp->Criterion[1] = "tkt_period_status = 'O'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_period_type", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-140A7D42
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_periods";
        $this->SQL = "SELECT tkt_period_type, tkt_period_id, tkt_period_status, tkt_period_date_start, tkt_period_time_start, tkt_period_group \n\n" .
        "FROM ssf_tkt_periods {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-50703555
    function SetValues()
    {
        $this->tkt_period_group->SetDBValue($this->f("tkt_period_group"));
        $this->tkt_period_type->SetDBValue($this->f("tkt_period_type"));
        $this->tkt_period_id->SetDBValue(trim($this->f("tkt_period_id")));
        $this->tkt_period_status->SetDBValue($this->f("tkt_period_status"));
        $this->tkt_period_date_start->SetDBValue(trim($this->f("tkt_period_date_start")));
        $this->tkt_period_time_start->SetDBValue(trim($this->f("tkt_period_time_start")));
    }
//End SetValues Method

} //End ssf_tkt_periodsDataSource Class @3-FCB6E20C

class clsGridssf_tkt_periods1 { //ssf_tkt_periods1 class @22-FEAB1090

//Variables @22-6F08E018

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
    public $Sorter_tkt_period_group;
    public $Sorter_tkt_period_type;
    public $Sorter_tkt_period_id;
    public $Sorter_tkt_period_date_start;
    public $Sorter_tkt_period_time_start;
    public $Sorter_tkt_period_date_end;
    public $Sorter_tkt_period_time_end;
//End Variables

//Class_Initialize Event @22-DFEF8A7D
    function clsGridssf_tkt_periods1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_periods1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_periods1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_periods1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 5;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_periods1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_periods1Dir", "");

        $this->tkt_period_group = new clsControl(ccsLabel, "tkt_period_group", "tkt_period_group", ccsText, "", CCGetRequestParam("tkt_period_group", ccsGet, NULL), $this);
        $this->tkt_period_type = new clsControl(ccsLabel, "tkt_period_type", "tkt_period_type", ccsText, "", CCGetRequestParam("tkt_period_type", ccsGet, NULL), $this);
        $this->tkt_period_id = new clsControl(ccsLabel, "tkt_period_id", "tkt_period_id", ccsInteger, "", CCGetRequestParam("tkt_period_id", ccsGet, NULL), $this);
        $this->tkt_period_date_start = new clsControl(ccsLabel, "tkt_period_date_start", "tkt_period_date_start", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_period_date_start", ccsGet, NULL), $this);
        $this->tkt_period_time_start = new clsControl(ccsLabel, "tkt_period_time_start", "tkt_period_time_start", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_period_time_start", ccsGet, NULL), $this);
        $this->tkt_period_date_end = new clsControl(ccsLabel, "tkt_period_date_end", "tkt_period_date_end", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_period_date_end", ccsGet, NULL), $this);
        $this->tkt_period_time_end = new clsControl(ccsLabel, "tkt_period_time_end", "tkt_period_time_end", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_period_time_end", ccsGet, NULL), $this);
        $this->Sorter_tkt_period_group = new clsSorter($this->ComponentName, "Sorter_tkt_period_group", $FileName, $this);
        $this->Sorter_tkt_period_type = new clsSorter($this->ComponentName, "Sorter_tkt_period_type", $FileName, $this);
        $this->Sorter_tkt_period_id = new clsSorter($this->ComponentName, "Sorter_tkt_period_id", $FileName, $this);
        $this->Sorter_tkt_period_date_start = new clsSorter($this->ComponentName, "Sorter_tkt_period_date_start", $FileName, $this);
        $this->Sorter_tkt_period_time_start = new clsSorter($this->ComponentName, "Sorter_tkt_period_time_start", $FileName, $this);
        $this->Sorter_tkt_period_date_end = new clsSorter($this->ComponentName, "Sorter_tkt_period_date_end", $FileName, $this);
        $this->Sorter_tkt_period_time_end = new clsSorter($this->ComponentName, "Sorter_tkt_period_time_end", $FileName, $this);
    }
//End Class_Initialize Event

//Initialize Method @22-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @22-BFDFBAC5
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_period_type"] = CCGetFromGet("s_tkt_period_type", NULL);

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
            $this->ControlsVisible["tkt_period_group"] = $this->tkt_period_group->Visible;
            $this->ControlsVisible["tkt_period_type"] = $this->tkt_period_type->Visible;
            $this->ControlsVisible["tkt_period_id"] = $this->tkt_period_id->Visible;
            $this->ControlsVisible["tkt_period_date_start"] = $this->tkt_period_date_start->Visible;
            $this->ControlsVisible["tkt_period_time_start"] = $this->tkt_period_time_start->Visible;
            $this->ControlsVisible["tkt_period_date_end"] = $this->tkt_period_date_end->Visible;
            $this->ControlsVisible["tkt_period_time_end"] = $this->tkt_period_time_end->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_period_group->SetValue($this->DataSource->tkt_period_group->GetValue());
                $this->tkt_period_type->SetValue($this->DataSource->tkt_period_type->GetValue());
                $this->tkt_period_id->SetValue($this->DataSource->tkt_period_id->GetValue());
                $this->tkt_period_date_start->SetValue($this->DataSource->tkt_period_date_start->GetValue());
                $this->tkt_period_time_start->SetValue($this->DataSource->tkt_period_time_start->GetValue());
                $this->tkt_period_date_end->SetValue($this->DataSource->tkt_period_date_end->GetValue());
                $this->tkt_period_time_end->SetValue($this->DataSource->tkt_period_time_end->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_period_group->Show();
                $this->tkt_period_type->Show();
                $this->tkt_period_id->Show();
                $this->tkt_period_date_start->Show();
                $this->tkt_period_time_start->Show();
                $this->tkt_period_date_end->Show();
                $this->tkt_period_time_end->Show();
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
        $this->Sorter_tkt_period_group->Show();
        $this->Sorter_tkt_period_type->Show();
        $this->Sorter_tkt_period_id->Show();
        $this->Sorter_tkt_period_date_start->Show();
        $this->Sorter_tkt_period_time_start->Show();
        $this->Sorter_tkt_period_date_end->Show();
        $this->Sorter_tkt_period_time_end->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @22-5B107A6C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_period_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_date_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_time_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_date_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_time_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_periods1 Class @22-FCB6E20C

class clsssf_tkt_periods1DataSource extends clsDBConnection1 {  //ssf_tkt_periods1DataSource Class @22-7FFAEEA0

//DataSource Variables @22-80D4E043
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_period_group;
    public $tkt_period_type;
    public $tkt_period_id;
    public $tkt_period_date_start;
    public $tkt_period_time_start;
    public $tkt_period_date_end;
    public $tkt_period_time_end;
//End DataSource Variables

//DataSourceClass_Initialize Event @22-5F55D806
    function clsssf_tkt_periods1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_periods1";
        $this->Initialize();
        $this->tkt_period_group = new clsField("tkt_period_group", ccsText, "");
        $this->tkt_period_type = new clsField("tkt_period_type", ccsText, "");
        $this->tkt_period_id = new clsField("tkt_period_id", ccsInteger, "");
        $this->tkt_period_date_start = new clsField("tkt_period_date_start", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_period_time_start = new clsField("tkt_period_time_start", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_period_date_end = new clsField("tkt_period_date_end", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_period_time_end = new clsField("tkt_period_time_end", ccsDate, array("HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @22-145534CB
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_period_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_period_group" => array("tkt_period_group", ""), 
            "Sorter_tkt_period_type" => array("tkt_period_type", ""), 
            "Sorter_tkt_period_id" => array("tkt_period_id", ""), 
            "Sorter_tkt_period_date_start" => array("tkt_period_date_start", ""), 
            "Sorter_tkt_period_time_start" => array("tkt_period_time_start", ""), 
            "Sorter_tkt_period_date_end" => array("tkt_period_date_end", ""), 
            "Sorter_tkt_period_time_end" => array("tkt_period_time_end", "")));
    }
//End SetOrder Method

//Prepare Method @22-AF0A3D55
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_period_type", ccsText, "", "", $this->Parameters["urls_tkt_period_type"], S, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_period_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = "tkt_period_status = 'C'";
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @22-29A6258B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_periods";
        $this->SQL = "SELECT tkt_period_type, tkt_period_id, tkt_period_date_start, tkt_period_time_start, tkt_period_date_end, tkt_period_time_end, tkt_period_group \n\n" .
        "FROM ssf_tkt_periods {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @22-9539EC1C
    function SetValues()
    {
        $this->tkt_period_group->SetDBValue($this->f("tkt_period_group"));
        $this->tkt_period_type->SetDBValue($this->f("tkt_period_type"));
        $this->tkt_period_id->SetDBValue(trim($this->f("tkt_period_id")));
        $this->tkt_period_date_start->SetDBValue(trim($this->f("tkt_period_date_start")));
        $this->tkt_period_time_start->SetDBValue(trim($this->f("tkt_period_time_start")));
        $this->tkt_period_date_end->SetDBValue(trim($this->f("tkt_period_date_end")));
        $this->tkt_period_time_end->SetDBValue(trim($this->f("tkt_period_time_end")));
    }
//End SetValues Method

} //End ssf_tkt_periods1DataSource Class @22-FCB6E20C

//Initialize Page @1-7F183E12
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
$TemplateFileName = "SSFTicketClosePeriod.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-5E3492A5
include("./SSFTicketClosePeriod_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-42C7201E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", ccsGet, NULL), $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_periodsSearch = new clsRecordssf_tkt_periodsSearch("", $MainPage);
$ssf_tkt_periods = new clsGridssf_tkt_periods("", $MainPage);
$ssf_tkt_periods1 = new clsGridssf_tkt_periods1("", $MainPage);
$MainPage->Label2 = & $Label2;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_periodsSearch = & $ssf_tkt_periodsSearch;
$MainPage->ssf_tkt_periods = & $ssf_tkt_periods;
$MainPage->ssf_tkt_periods1 = & $ssf_tkt_periods1;
$ssf_tkt_periods->Initialize();
$ssf_tkt_periods1->Initialize();

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

//Execute Components @1-5AD93ACB
$SSFSpiritHeader->Operations();
$ssf_tkt_periodsSearch->Operation();
//End Execute Components

//Go to destination page @1-EFF7C899
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_periodsSearch);
    unset($ssf_tkt_periods);
    unset($ssf_tkt_periods1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-FE8B2C65
$SSFSpiritHeader->Show();
$ssf_tkt_periodsSearch->Show();
$ssf_tkt_periods->Show();
$ssf_tkt_periods1->Show();
$Label2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-7A4BF6F5
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_periodsSearch);
unset($ssf_tkt_periods);
unset($ssf_tkt_periods1);
unset($Tpl);
//End Unload Page


?>
