<?php
//Include Common Files @1-EB8E094E
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFClosePeriod.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecords_shift_selection { //s_shift_selection Class @21-95B0EC37

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

//Class_Initialize Event @21-365C3685
    function clsRecords_shift_selection($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record s_shift_selection/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "s_shift_selection";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_period_type = new clsControl(ccsListBox, "s_period_type", "s_period_type", ccsText, "", CCGetRequestParam("s_period_type", $Method, NULL), $this);
            $this->s_period_type->DSType = dsListOfValues;
            $this->s_period_type->Values = array(array("S", "Turnos"), array("D", "Dias"), array("M", "Meses"), array("Y", "Años"));
            if(!$this->FormSubmitted) {
                if(!is_array($this->s_period_type->Value) && !strlen($this->s_period_type->Value) && $this->s_period_type->Value !== false)
                    $this->s_period_type->SetText($CCSLocales->GetText("ssf_shifts"));
            }
        }
    }
//End Class_Initialize Event

//Validate Method @21-74193BDE
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_period_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_period_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @21-DE457393
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_period_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @21-B1524F18
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = "SSFClosePeriod.php" . "?" . CCGetQueryString("All", array("ccsForm"));
    }
//End Operation Method

//Show Method @21-8CF637AD
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_period_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_period_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        if($this->FormSubmitted || CCGetFromGet("ccsForm")) {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        } else {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("All", ""), "ccsForm", $CCSForm);
        }
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->s_period_type->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End s_shift_selection Class @21-FCB6E20C

class clsGridssf_addin_shifts_data { //ssf_addin_shifts_data class @25-B7CFCC60

//Variables @25-6E51DF5A

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
//End Variables

//Class_Initialize Event @25-642D884F
    function clsGridssf_addin_shifts_data($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_shifts_data";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_shifts_data";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_shifts_dataDataSource($this);
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

        $this->period_type = new clsControl(ccsLabel, "period_type", "period_type", ccsText, "", CCGetRequestParam("period_type", ccsGet, NULL), $this);
        $this->period_status = new clsControl(ccsLabel, "period_status", "period_status", ccsText, "", CCGetRequestParam("period_status", ccsGet, NULL), $this);
        $this->period_id = new clsControl(ccsLabel, "period_id", "period_id", ccsInteger, "", CCGetRequestParam("period_id", ccsGet, NULL), $this);
        $this->period_start_date = new clsControl(ccsLabel, "period_start_date", "period_start_date", ccsText, "", CCGetRequestParam("period_start_date", ccsGet, NULL), $this);
        $this->period_start_time = new clsControl(ccsLabel, "period_start_time", "period_start_time", ccsText, "", CCGetRequestParam("period_start_time", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @25-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @25-3ACE1085
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_period_type"] = CCGetFromGet("s_period_type", NULL);

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
            $this->ControlsVisible["period_type"] = $this->period_type->Visible;
            $this->ControlsVisible["period_status"] = $this->period_status->Visible;
            $this->ControlsVisible["period_id"] = $this->period_id->Visible;
            $this->ControlsVisible["period_start_date"] = $this->period_start_date->Visible;
            $this->ControlsVisible["period_start_time"] = $this->period_start_time->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->period_type->SetValue($this->DataSource->period_type->GetValue());
                $this->period_status->SetValue($this->DataSource->period_status->GetValue());
                $this->period_id->SetValue($this->DataSource->period_id->GetValue());
                $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
                $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->period_type->Show();
                $this->period_status->Show();
                $this->period_id->Show();
                $this->period_start_date->Show();
                $this->period_start_time->Show();
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
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @25-83EF1B31
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_shifts_data Class @25-FCB6E20C

class clsssf_addin_shifts_dataDataSource extends clsDBConnection1 {  //ssf_addin_shifts_dataDataSource Class @25-9A303638

//DataSource Variables @25-E5974449
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $period_type;
    public $period_status;
    public $period_id;
    public $period_start_date;
    public $period_start_time;
//End DataSource Variables

//DataSourceClass_Initialize Event @25-97849608
    function clsssf_addin_shifts_dataDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_shifts_data";
        $this->Initialize();
        $this->period_type = new clsField("period_type", ccsText, "");
        $this->period_status = new clsField("period_status", ccsText, "");
        $this->period_id = new clsField("period_id", ccsInteger, "");
        $this->period_start_date = new clsField("period_start_date", ccsText, "");
        $this->period_start_time = new clsField("period_start_time", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @25-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @25-76BEE31A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_period_type", ccsText, "", "", $this->Parameters["urls_period_type"], S, false);
        $this->wp->Criterion[1] = "period_status = 'O'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "period_type", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @25-2107022B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_shifts_data";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_shifts_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @25-8A3AE7FE
    function SetValues()
    {
        $this->period_type->SetDBValue($this->f("period_type"));
        $this->period_status->SetDBValue($this->f("period_status"));
        $this->period_id->SetDBValue(trim($this->f("period_id")));
        $this->period_start_date->SetDBValue($this->f("period_start_date"));
        $this->period_start_time->SetDBValue($this->f("period_start_time"));
    }
//End SetValues Method

} //End ssf_addin_shifts_dataDataSource Class @25-FCB6E20C

class clsGridssf_addin_shifts_data1 { //ssf_addin_shifts_data1 class @38-52464E22

//Variables @38-6E51DF5A

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
//End Variables

//Class_Initialize Event @38-4DC54D22
    function clsGridssf_addin_shifts_data1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_shifts_data1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_shifts_data1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_shifts_data1DataSource($this);
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

        $this->period_type = new clsControl(ccsLabel, "period_type", "period_type", ccsText, "", CCGetRequestParam("period_type", ccsGet, NULL), $this);
        $this->period_status = new clsControl(ccsLabel, "period_status", "period_status", ccsText, "", CCGetRequestParam("period_status", ccsGet, NULL), $this);
        $this->period_id = new clsControl(ccsLabel, "period_id", "period_id", ccsInteger, "", CCGetRequestParam("period_id", ccsGet, NULL), $this);
        $this->period_start_date = new clsControl(ccsLabel, "period_start_date", "period_start_date", ccsText, "", CCGetRequestParam("period_start_date", ccsGet, NULL), $this);
        $this->period_start_time = new clsControl(ccsLabel, "period_start_time", "period_start_time", ccsText, "", CCGetRequestParam("period_start_time", ccsGet, NULL), $this);
        $this->period_end_date = new clsControl(ccsLabel, "period_end_date", "period_end_date", ccsText, "", CCGetRequestParam("period_end_date", ccsGet, NULL), $this);
        $this->period_end_time = new clsControl(ccsLabel, "period_end_time", "period_end_time", ccsText, "", CCGetRequestParam("period_end_time", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @38-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @38-C1F76B0F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_period_type"] = CCGetFromGet("s_period_type", NULL);

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
            $this->ControlsVisible["period_type"] = $this->period_type->Visible;
            $this->ControlsVisible["period_status"] = $this->period_status->Visible;
            $this->ControlsVisible["period_id"] = $this->period_id->Visible;
            $this->ControlsVisible["period_start_date"] = $this->period_start_date->Visible;
            $this->ControlsVisible["period_start_time"] = $this->period_start_time->Visible;
            $this->ControlsVisible["period_end_date"] = $this->period_end_date->Visible;
            $this->ControlsVisible["period_end_time"] = $this->period_end_time->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->period_type->SetValue($this->DataSource->period_type->GetValue());
                $this->period_status->SetValue($this->DataSource->period_status->GetValue());
                $this->period_id->SetValue($this->DataSource->period_id->GetValue());
                $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
                $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
                $this->period_end_date->SetValue($this->DataSource->period_end_date->GetValue());
                $this->period_end_time->SetValue($this->DataSource->period_end_time->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->period_type->Show();
                $this->period_status->Show();
                $this->period_id->Show();
                $this->period_start_date->Show();
                $this->period_start_time->Show();
                $this->period_end_date->Show();
                $this->period_end_time->Show();
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
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @38-54770F97
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_shifts_data1 Class @38-FCB6E20C

class clsssf_addin_shifts_data1DataSource extends clsDBConnection1 {  //ssf_addin_shifts_data1DataSource Class @38-D5DAF17F

//DataSource Variables @38-5D2D063F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $period_type;
    public $period_status;
    public $period_id;
    public $period_start_date;
    public $period_start_time;
    public $period_end_date;
    public $period_end_time;
//End DataSource Variables

//DataSourceClass_Initialize Event @38-1DF09F17
    function clsssf_addin_shifts_data1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_shifts_data1";
        $this->Initialize();
        $this->period_type = new clsField("period_type", ccsText, "");
        $this->period_status = new clsField("period_status", ccsText, "");
        $this->period_id = new clsField("period_id", ccsInteger, "");
        $this->period_start_date = new clsField("period_start_date", ccsText, "");
        $this->period_start_time = new clsField("period_start_time", ccsText, "");
        $this->period_end_date = new clsField("period_end_date", ccsText, "");
        $this->period_end_time = new clsField("period_end_time", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @38-9910A6B1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "period_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @38-74DEA346
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_period_type", ccsText, "", "", $this->Parameters["urls_period_type"], S, false);
        $this->wp->Criterion[1] = "period_status = 'C'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "period_type", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @38-2107022B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_shifts_data";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_shifts_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @38-D11BA4A2
    function SetValues()
    {
        $this->period_type->SetDBValue($this->f("period_type"));
        $this->period_status->SetDBValue($this->f("period_status"));
        $this->period_id->SetDBValue(trim($this->f("period_id")));
        $this->period_start_date->SetDBValue($this->f("period_start_date"));
        $this->period_start_time->SetDBValue($this->f("period_start_time"));
        $this->period_end_date->SetDBValue($this->f("period_end_date"));
        $this->period_end_time->SetDBValue($this->f("period_end_time"));
    }
//End SetValues Method

} //End ssf_addin_shifts_data1DataSource Class @38-FCB6E20C

//Initialize Page @1-9C83C23F
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
$TemplateFileName = "SSFClosePeriod.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-96974288
include("./SSFClosePeriod_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-95B8892E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$s_shift_selection = new clsRecords_shift_selection("", $MainPage);
$ssf_addin_shifts_data = new clsGridssf_addin_shifts_data("", $MainPage);
$btnClose = new clsButton("btnClose", ccsGet, $MainPage);
$ssf_addin_shifts_data1 = new clsGridssf_addin_shifts_data1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->s_shift_selection = & $s_shift_selection;
$MainPage->ssf_addin_shifts_data = & $ssf_addin_shifts_data;
$MainPage->btnClose = & $btnClose;
$MainPage->ssf_addin_shifts_data1 = & $ssf_addin_shifts_data1;
$ssf_addin_shifts_data->Initialize();
$ssf_addin_shifts_data1->Initialize();

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

//Execute Components @1-817F77AB
$SSFSpiritHeader->Operations();
$s_shift_selection->Operation();
//End Execute Components

//Go to destination page @1-47DEFDA7
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($s_shift_selection);
    unset($ssf_addin_shifts_data);
    unset($ssf_addin_shifts_data1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B05DD312
$SSFSpiritHeader->Show();
$s_shift_selection->Show();
$ssf_addin_shifts_data->Show();
$btnClose->Show();
$ssf_addin_shifts_data1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-39F580B0
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($s_shift_selection);
unset($ssf_addin_shifts_data);
unset($ssf_addin_shifts_data1);
unset($Tpl);
//End Unload Page


?>
