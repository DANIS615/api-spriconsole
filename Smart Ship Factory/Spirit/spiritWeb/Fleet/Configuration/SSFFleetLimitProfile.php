<?php
//Include Common Files @1-FD380859
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Configuration/");
define("FileName", "SSFFleetLimitProfile.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_limit_profileSearch { //ssf_flt_limit_profileSearch Class @6-00929D51

//Variables @6-9E315808

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

//Class_Initialize Event @6-EF968CCF
    function clsRecordssf_flt_limit_profileSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_limit_profileSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_limit_profileSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_lp_profile_id = new clsControl(ccsTextBox, "s_lp_profile_id", "s_lp_profile_id", ccsText, "", CCGetRequestParam("s_lp_profile_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-CB974D5F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_lp_profile_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_lp_profile_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-0FBEF4FE
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_lp_profile_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-4AF2F3D9
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
        $Redirect = "SSFFleetLimitProfile.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetLimitProfile.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-59955D44
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
            $Error = ComposeStrings($Error, $this->s_lp_profile_id->Errors->ToString());
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

        $this->s_lp_profile_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_limit_profileSearch Class @6-FCB6E20C



class clsGridssf_flt_limit_profile1 { //ssf_flt_limit_profile1 class @13-B39A6F11

//Variables @13-DED34315

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
    public $Sorter_lp_profile_id;
    public $Sorter_lp_trx_limit_amount;
    public $Sorter_lp_day_limit_amount;
//End Variables

//Class_Initialize Event @13-05ED7ADC
    function clsGridssf_flt_limit_profile1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_limit_profile1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_limit_profile1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_limit_profile1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_limit_profile1Order", "");
        $this->SorterDirection = CCGetParam("ssf_flt_limit_profile1Dir", "");

        $this->lp_profile_id = new clsControl(ccsLink, "lp_profile_id", "lp_profile_id", ccsText, "", CCGetRequestParam("lp_profile_id", ccsGet, NULL), $this);
        $this->lp_profile_id->Page = "SSFFleetLimitProfile.php";
        $this->lp_trx_limit_amount = new clsControl(ccsLabel, "lp_trx_limit_amount", "lp_trx_limit_amount", ccsFloat, "", CCGetRequestParam("lp_trx_limit_amount", ccsGet, NULL), $this);
        $this->lp_day_limit_amount = new clsControl(ccsLabel, "lp_day_limit_amount", "lp_day_limit_amount", ccsFloat, "", CCGetRequestParam("lp_day_limit_amount", ccsGet, NULL), $this);
        $this->Sorter_lp_profile_id = new clsSorter($this->ComponentName, "Sorter_lp_profile_id", $FileName, $this);
        $this->Sorter_lp_trx_limit_amount = new clsSorter($this->ComponentName, "Sorter_lp_trx_limit_amount", $FileName, $this);
        $this->Sorter_lp_day_limit_amount = new clsSorter($this->ComponentName, "Sorter_lp_day_limit_amount", $FileName, $this);
        $this->ssf_flt_limit_profile1_Insert = new clsControl(ccsLink, "ssf_flt_limit_profile1_Insert", "ssf_flt_limit_profile1_Insert", ccsText, "", CCGetRequestParam("ssf_flt_limit_profile1_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_limit_profile1_Insert->Page = "SSFFleetLimitProfile.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @13-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @13-6E1DD26D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_lp_profile_id"] = CCGetFromGet("s_lp_profile_id", NULL);

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
            $this->ControlsVisible["lp_profile_id"] = $this->lp_profile_id->Visible;
            $this->ControlsVisible["lp_trx_limit_amount"] = $this->lp_trx_limit_amount->Visible;
            $this->ControlsVisible["lp_day_limit_amount"] = $this->lp_day_limit_amount->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->lp_profile_id->SetValue($this->DataSource->lp_profile_id->GetValue());
                $this->lp_profile_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->lp_profile_id->Parameters = CCAddParam($this->lp_profile_id->Parameters, "lp_profile_id", $this->DataSource->f("lp_profile_id"));
                $this->lp_trx_limit_amount->SetValue($this->DataSource->lp_trx_limit_amount->GetValue());
                $this->lp_day_limit_amount->SetValue($this->DataSource->lp_day_limit_amount->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->lp_profile_id->Show();
                $this->lp_trx_limit_amount->Show();
                $this->lp_day_limit_amount->Show();
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
        $this->ssf_flt_limit_profile1_Insert->Parameters = CCGetQueryString("QueryString", array("lp_profile_id", "ccsForm"));
        $this->ssf_flt_limit_profile1_Insert->Parameters = CCAddParam($this->ssf_flt_limit_profile1_Insert->Parameters, "ssf_flt_limit_profile1_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_lp_profile_id->Show();
        $this->Sorter_lp_trx_limit_amount->Show();
        $this->Sorter_lp_day_limit_amount->Show();
        $this->ssf_flt_limit_profile1_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @13-FC90CE9F
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->lp_profile_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lp_trx_limit_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lp_day_limit_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_limit_profile1 Class @13-FCB6E20C

class clsssf_flt_limit_profile1DataSource extends clsDBConnection1 {  //ssf_flt_limit_profile1DataSource Class @13-B3853AC8

//DataSource Variables @13-9F7CDA20
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $lp_profile_id;
    public $lp_trx_limit_amount;
    public $lp_day_limit_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @13-C69CAD94
    function clsssf_flt_limit_profile1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_limit_profile1";
        $this->Initialize();
        $this->lp_profile_id = new clsField("lp_profile_id", ccsText, "");
        $this->lp_trx_limit_amount = new clsField("lp_trx_limit_amount", ccsFloat, "");
        $this->lp_day_limit_amount = new clsField("lp_day_limit_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @13-B804523A
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "lp_profile_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_lp_profile_id" => array("lp_profile_id", ""), 
            "Sorter_lp_trx_limit_amount" => array("lp_trx_limit_amount", ""), 
            "Sorter_lp_day_limit_amount" => array("lp_day_limit_amount", "")));
    }
//End SetOrder Method

//Prepare Method @13-F516E7E5
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_lp_profile_id", ccsText, "", "", $this->Parameters["urls_lp_profile_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "lp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @13-2C9B400E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_limit_profile";
        $this->SQL = "SELECT lp_profile_id, lp_trx_limit_amount, lp_day_limit_amount \n\n" .
        "FROM ssf_flt_limit_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @13-7230D0F3
    function SetValues()
    {
        $this->lp_profile_id->SetDBValue($this->f("lp_profile_id"));
        $this->lp_trx_limit_amount->SetDBValue(trim($this->f("lp_trx_limit_amount")));
        $this->lp_day_limit_amount->SetDBValue(trim($this->f("lp_day_limit_amount")));
    }
//End SetValues Method

} //End ssf_flt_limit_profile1DataSource Class @13-FCB6E20C

class clsRecordssf_flt_limit_profile2 { //ssf_flt_limit_profile2 Class @28-CC44438E

//Variables @28-9E315808

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

//Class_Initialize Event @28-1BEC4440
    function clsRecordssf_flt_limit_profile2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_limit_profile2/Error";
        $this->DataSource = new clsssf_flt_limit_profile2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_limit_profile2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->lp_profile_id = new clsControl(ccsTextBox, "lp_profile_id", $CCSLocales->GetText("lp_profile_id"), ccsText, "", CCGetRequestParam("lp_profile_id", $Method, NULL), $this);
            $this->lp_day_qty_trx = new clsControl(ccsTextBox, "lp_day_qty_trx", $CCSLocales->GetText("lp_day_qty_trx"), ccsInteger, "", CCGetRequestParam("lp_day_qty_trx", $Method, NULL), $this);
            $this->lp_day_limit_amount = new clsControl(ccsTextBox, "lp_day_limit_amount", $CCSLocales->GetText("lp_day_limit_amount"), ccsFloat, "", CCGetRequestParam("lp_day_limit_amount", $Method, NULL), $this);
            $this->lp_month_limit_amount = new clsControl(ccsTextBox, "lp_month_limit_amount", $CCSLocales->GetText("lp_month_limit_amount"), ccsFloat, "", CCGetRequestParam("lp_month_limit_amount", $Method, NULL), $this);
            $this->lp_trx_limit_amount = new clsControl(ccsTextBox, "lp_trx_limit_amount", $CCSLocales->GetText("lp_trx_limit_amount"), ccsFloat, "", CCGetRequestParam("lp_trx_limit_amount", $Method, NULL), $this);
            $this->lp_day_limit_volume = new clsControl(ccsTextBox, "lp_day_limit_volume", $CCSLocales->GetText("lp_day_limit_volume"), ccsFloat, "", CCGetRequestParam("lp_day_limit_volume", $Method, NULL), $this);
            $this->lp_month_limit_volume = new clsControl(ccsTextBox, "lp_month_limit_volume", $CCSLocales->GetText("lp_month_limit_volume"), ccsFloat, "", CCGetRequestParam("lp_month_limit_volume", $Method, NULL), $this);
            $this->lp_trx_limit_volume = new clsControl(ccsTextBox, "lp_trx_limit_volume", $CCSLocales->GetText("lp_trx_limit_volume"), ccsFloat, "", CCGetRequestParam("lp_trx_limit_volume", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @28-2EB4953A
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urllp_profile_id"] = CCGetFromGet("lp_profile_id", NULL);
    }
//End Initialize Method

//Validate Method @28-4D839BF2
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->lp_profile_id->Validate() && $Validation);
        $Validation = ($this->lp_day_qty_trx->Validate() && $Validation);
        $Validation = ($this->lp_day_limit_amount->Validate() && $Validation);
        $Validation = ($this->lp_month_limit_amount->Validate() && $Validation);
        $Validation = ($this->lp_trx_limit_amount->Validate() && $Validation);
        $Validation = ($this->lp_day_limit_volume->Validate() && $Validation);
        $Validation = ($this->lp_month_limit_volume->Validate() && $Validation);
        $Validation = ($this->lp_trx_limit_volume->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->lp_profile_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_day_qty_trx->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_day_limit_amount->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_month_limit_amount->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_trx_limit_amount->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_day_limit_volume->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_month_limit_volume->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lp_trx_limit_volume->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @28-B9FE073C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->lp_profile_id->Errors->Count());
        $errors = ($errors || $this->lp_day_qty_trx->Errors->Count());
        $errors = ($errors || $this->lp_day_limit_amount->Errors->Count());
        $errors = ($errors || $this->lp_month_limit_amount->Errors->Count());
        $errors = ($errors || $this->lp_trx_limit_amount->Errors->Count());
        $errors = ($errors || $this->lp_day_limit_volume->Errors->Count());
        $errors = ($errors || $this->lp_month_limit_volume->Errors->Count());
        $errors = ($errors || $this->lp_trx_limit_volume->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @28-26A31A9B
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
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_limit_profile1_Insert", "lp_profile_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_limit_profile1_Insert", "lp_profile_id"));
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

//InsertRow Method @28-D647E7B1
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->lp_profile_id->SetValue($this->lp_profile_id->GetValue(true));
        $this->DataSource->lp_day_qty_trx->SetValue($this->lp_day_qty_trx->GetValue(true));
        $this->DataSource->lp_day_limit_amount->SetValue($this->lp_day_limit_amount->GetValue(true));
        $this->DataSource->lp_month_limit_amount->SetValue($this->lp_month_limit_amount->GetValue(true));
        $this->DataSource->lp_trx_limit_amount->SetValue($this->lp_trx_limit_amount->GetValue(true));
        $this->DataSource->lp_day_limit_volume->SetValue($this->lp_day_limit_volume->GetValue(true));
        $this->DataSource->lp_month_limit_volume->SetValue($this->lp_month_limit_volume->GetValue(true));
        $this->DataSource->lp_trx_limit_volume->SetValue($this->lp_trx_limit_volume->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @28-A787B459
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->lp_profile_id->SetValue($this->lp_profile_id->GetValue(true));
        $this->DataSource->lp_day_qty_trx->SetValue($this->lp_day_qty_trx->GetValue(true));
        $this->DataSource->lp_day_limit_amount->SetValue($this->lp_day_limit_amount->GetValue(true));
        $this->DataSource->lp_month_limit_amount->SetValue($this->lp_month_limit_amount->GetValue(true));
        $this->DataSource->lp_trx_limit_amount->SetValue($this->lp_trx_limit_amount->GetValue(true));
        $this->DataSource->lp_day_limit_volume->SetValue($this->lp_day_limit_volume->GetValue(true));
        $this->DataSource->lp_month_limit_volume->SetValue($this->lp_month_limit_volume->GetValue(true));
        $this->DataSource->lp_trx_limit_volume->SetValue($this->lp_trx_limit_volume->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @28-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @28-F56C4EFA
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
                    $this->lp_profile_id->SetValue($this->DataSource->lp_profile_id->GetValue());
                    $this->lp_day_qty_trx->SetValue($this->DataSource->lp_day_qty_trx->GetValue());
                    $this->lp_day_limit_amount->SetValue($this->DataSource->lp_day_limit_amount->GetValue());
                    $this->lp_month_limit_amount->SetValue($this->DataSource->lp_month_limit_amount->GetValue());
                    $this->lp_trx_limit_amount->SetValue($this->DataSource->lp_trx_limit_amount->GetValue());
                    $this->lp_day_limit_volume->SetValue($this->DataSource->lp_day_limit_volume->GetValue());
                    $this->lp_month_limit_volume->SetValue($this->DataSource->lp_month_limit_volume->GetValue());
                    $this->lp_trx_limit_volume->SetValue($this->DataSource->lp_trx_limit_volume->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->lp_profile_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_qty_trx->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_month_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_trx_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_limit_volume->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_month_limit_volume->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_trx_limit_volume->Errors->ToString());
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

        $this->lp_profile_id->Show();
        $this->lp_day_qty_trx->Show();
        $this->lp_day_limit_amount->Show();
        $this->lp_month_limit_amount->Show();
        $this->lp_trx_limit_amount->Show();
        $this->lp_day_limit_volume->Show();
        $this->lp_month_limit_volume->Show();
        $this->lp_trx_limit_volume->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_limit_profile2 Class @28-FCB6E20C

class clsssf_flt_limit_profile2DataSource extends clsDBConnection1 {  //ssf_flt_limit_profile2DataSource Class @28-385604D1

//DataSource Variables @28-6ECF4357
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
    public $lp_profile_id;
    public $lp_day_qty_trx;
    public $lp_day_limit_amount;
    public $lp_month_limit_amount;
    public $lp_trx_limit_amount;
    public $lp_day_limit_volume;
    public $lp_month_limit_volume;
    public $lp_trx_limit_volume;
//End DataSource Variables

//DataSourceClass_Initialize Event @28-FDB86DC3
    function clsssf_flt_limit_profile2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_limit_profile2/Error";
        $this->Initialize();
        $this->lp_profile_id = new clsField("lp_profile_id", ccsText, "");
        $this->lp_day_qty_trx = new clsField("lp_day_qty_trx", ccsInteger, "");
        $this->lp_day_limit_amount = new clsField("lp_day_limit_amount", ccsFloat, "");
        $this->lp_month_limit_amount = new clsField("lp_month_limit_amount", ccsFloat, "");
        $this->lp_trx_limit_amount = new clsField("lp_trx_limit_amount", ccsFloat, "");
        $this->lp_day_limit_volume = new clsField("lp_day_limit_volume", ccsFloat, "");
        $this->lp_month_limit_volume = new clsField("lp_month_limit_volume", ccsFloat, "");
        $this->lp_trx_limit_volume = new clsField("lp_trx_limit_volume", ccsFloat, "");

        $this->InsertFields["lp_profile_id"] = array("Name" => "lp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["lp_day_qty_trx"] = array("Name" => "lp_day_qty_trx", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["lp_day_limit_amount"] = array("Name" => "lp_day_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["lp_month_limit_amount"] = array("Name" => "lp_month_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["lp_trx_limit_amount"] = array("Name" => "lp_trx_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["lp_day_limit_volume"] = array("Name" => "lp_day_limit_volume", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["lp_month_limit_volume"] = array("Name" => "lp_month_limit_volume", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["lp_trx_limit_volume"] = array("Name" => "lp_trx_limit_volume", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_profile_id"] = array("Name" => "lp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["lp_day_qty_trx"] = array("Name" => "lp_day_qty_trx", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["lp_day_limit_amount"] = array("Name" => "lp_day_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_month_limit_amount"] = array("Name" => "lp_month_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_trx_limit_amount"] = array("Name" => "lp_trx_limit_amount", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_day_limit_volume"] = array("Name" => "lp_day_limit_volume", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_month_limit_volume"] = array("Name" => "lp_month_limit_volume", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["lp_trx_limit_volume"] = array("Name" => "lp_trx_limit_volume", "Value" => "", "DataType" => ccsFloat);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @28-AE0F7D2C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urllp_profile_id", ccsText, "", "", $this->Parameters["urllp_profile_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "lp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @28-E7024A46
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_limit_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @28-EE0ABF09
    function SetValues()
    {
        $this->lp_profile_id->SetDBValue($this->f("lp_profile_id"));
        $this->lp_day_qty_trx->SetDBValue(trim($this->f("lp_day_qty_trx")));
        $this->lp_day_limit_amount->SetDBValue(trim($this->f("lp_day_limit_amount")));
        $this->lp_month_limit_amount->SetDBValue(trim($this->f("lp_month_limit_amount")));
        $this->lp_trx_limit_amount->SetDBValue(trim($this->f("lp_trx_limit_amount")));
        $this->lp_day_limit_volume->SetDBValue(trim($this->f("lp_day_limit_volume")));
        $this->lp_month_limit_volume->SetDBValue(trim($this->f("lp_month_limit_volume")));
        $this->lp_trx_limit_volume->SetDBValue(trim($this->f("lp_trx_limit_volume")));
    }
//End SetValues Method

//Insert Method @28-1F2AF587
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["lp_profile_id"]["Value"] = $this->lp_profile_id->GetDBValue(true);
        $this->InsertFields["lp_day_qty_trx"]["Value"] = $this->lp_day_qty_trx->GetDBValue(true);
        $this->InsertFields["lp_day_limit_amount"]["Value"] = $this->lp_day_limit_amount->GetDBValue(true);
        $this->InsertFields["lp_month_limit_amount"]["Value"] = $this->lp_month_limit_amount->GetDBValue(true);
        $this->InsertFields["lp_trx_limit_amount"]["Value"] = $this->lp_trx_limit_amount->GetDBValue(true);
        $this->InsertFields["lp_day_limit_volume"]["Value"] = $this->lp_day_limit_volume->GetDBValue(true);
        $this->InsertFields["lp_month_limit_volume"]["Value"] = $this->lp_month_limit_volume->GetDBValue(true);
        $this->InsertFields["lp_trx_limit_volume"]["Value"] = $this->lp_trx_limit_volume->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_limit_profile", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @28-C2F7C4B0
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["lp_profile_id"]["Value"] = $this->lp_profile_id->GetDBValue(true);
        $this->UpdateFields["lp_day_qty_trx"]["Value"] = $this->lp_day_qty_trx->GetDBValue(true);
        $this->UpdateFields["lp_day_limit_amount"]["Value"] = $this->lp_day_limit_amount->GetDBValue(true);
        $this->UpdateFields["lp_month_limit_amount"]["Value"] = $this->lp_month_limit_amount->GetDBValue(true);
        $this->UpdateFields["lp_trx_limit_amount"]["Value"] = $this->lp_trx_limit_amount->GetDBValue(true);
        $this->UpdateFields["lp_day_limit_volume"]["Value"] = $this->lp_day_limit_volume->GetDBValue(true);
        $this->UpdateFields["lp_month_limit_volume"]["Value"] = $this->lp_month_limit_volume->GetDBValue(true);
        $this->UpdateFields["lp_trx_limit_volume"]["Value"] = $this->lp_trx_limit_volume->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_limit_profile", $this->UpdateFields, $this);
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

//Delete Method @28-F759B4B7
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_limit_profile";
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

} //End ssf_flt_limit_profile2DataSource Class @28-FCB6E20C

//Initialize Page @1-5443229A
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
$TemplateFileName = "SSFFleetLimitProfile.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F5275AAC
include("./SSFFleetLimitProfile_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-0F0F7D87
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_flt_limit_profileSearch = new clsRecordssf_flt_limit_profileSearch("", $MainPage);
$ssf_flt_limit_profile1 = new clsGridssf_flt_limit_profile1("", $MainPage);
$ssf_flt_limit_profile2 = new clsRecordssf_flt_limit_profile2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_limit_profileSearch = & $ssf_flt_limit_profileSearch;
$MainPage->ssf_flt_limit_profile1 = & $ssf_flt_limit_profile1;
$MainPage->ssf_flt_limit_profile2 = & $ssf_flt_limit_profile2;
$ssf_flt_limit_profile1->Initialize();
$ssf_flt_limit_profile2->Initialize();

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

//Execute Components @1-A446F965
$SSFSpiritHeader->Operations();
$ssf_flt_limit_profileSearch->Operation();
$ssf_flt_limit_profile2->Operation();
//End Execute Components

//Go to destination page @1-8AC71825
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_limit_profileSearch);
    unset($ssf_flt_limit_profile1);
    unset($ssf_flt_limit_profile2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-CF2F6FB3
$SSFSpiritHeader->Show();
$ssf_flt_limit_profileSearch->Show();
$ssf_flt_limit_profile1->Show();
$ssf_flt_limit_profile2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-917F69B4
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_limit_profileSearch);
unset($ssf_flt_limit_profile1);
unset($ssf_flt_limit_profile2);
unset($Tpl);
//End Unload Page


?>
