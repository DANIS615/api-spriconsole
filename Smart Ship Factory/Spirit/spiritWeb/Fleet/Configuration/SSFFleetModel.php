<?php
//Include Common Files @1-803A9A6B
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Configuration/");
define("FileName", "SSFFleetModel.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_profile_modelSearch { //ssf_flt_profile_modelSearch Class @5-BC11BBD0

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

//Class_Initialize Event @5-C8D6A806
    function clsRecordssf_flt_profile_modelSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_profile_modelSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_profile_modelSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_pm_model_id = new clsControl(ccsTextBox, "s_pm_model_id", "s_pm_model_id", ccsText, "", CCGetRequestParam("s_pm_model_id", $Method, NULL), $this);
            $this->s_pm_model_description = new clsControl(ccsTextBox, "s_pm_model_description", "s_pm_model_description", ccsText, "", CCGetRequestParam("s_pm_model_description", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-F9E855C5
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_pm_model_id->Validate() && $Validation);
        $Validation = ($this->s_pm_model_description->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_pm_model_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pm_model_description->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-5F569442
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_pm_model_id->Errors->Count());
        $errors = ($errors || $this->s_pm_model_description->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-AA7DD08E
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
        $Redirect = "SSFFleetModel.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetModel.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-14055F05
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
            $Error = ComposeStrings($Error, $this->s_pm_model_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_pm_model_description->Errors->ToString());
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

        $this->s_pm_model_id->Show();
        $this->s_pm_model_description->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_profile_modelSearch Class @5-FCB6E20C

class clsGridssf_flt_profile_model { //ssf_flt_profile_model class @3-36403377

//Variables @3-D5687834

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
    public $Sorter_pm_model_id;
    public $Sorter_pm_model_description;
//End Variables

//Class_Initialize Event @3-A6CDADF3
    function clsGridssf_flt_profile_model($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_profile_model";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_profile_model";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_profile_modelDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_profile_modelOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_profile_modelDir", "");

        $this->pm_model_id = new clsControl(ccsLink, "pm_model_id", "pm_model_id", ccsText, "", CCGetRequestParam("pm_model_id", ccsGet, NULL), $this);
        $this->pm_model_id->Page = "SSFFleetModel.php";
        $this->pm_model_description = new clsControl(ccsLabel, "pm_model_description", "pm_model_description", ccsText, "", CCGetRequestParam("pm_model_description", ccsGet, NULL), $this);
        $this->Sorter_pm_model_id = new clsSorter($this->ComponentName, "Sorter_pm_model_id", $FileName, $this);
        $this->Sorter_pm_model_description = new clsSorter($this->ComponentName, "Sorter_pm_model_description", $FileName, $this);
        $this->ssf_flt_model_Insert = new clsControl(ccsLink, "ssf_flt_model_Insert", "ssf_flt_model_Insert", ccsText, "", CCGetRequestParam("ssf_flt_model_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_model_Insert->Page = "SSFFleetModel.php";
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

//Show Method @3-8EE41841
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_pm_model_id"] = CCGetFromGet("s_pm_model_id", NULL);
        $this->DataSource->Parameters["urls_pm_model_description"] = CCGetFromGet("s_pm_model_description", NULL);

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
            $this->ControlsVisible["pm_model_id"] = $this->pm_model_id->Visible;
            $this->ControlsVisible["pm_model_description"] = $this->pm_model_description->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pm_model_id->SetValue($this->DataSource->pm_model_id->GetValue());
                $this->pm_model_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->pm_model_id->Parameters = CCAddParam($this->pm_model_id->Parameters, "pm_model_id", $this->DataSource->f("pm_model_id"));
                $this->pm_model_description->SetValue($this->DataSource->pm_model_description->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pm_model_id->Show();
                $this->pm_model_description->Show();
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
        $this->ssf_flt_model_Insert->Parameters = CCGetQueryString("QueryString", array("pm_model_id", "ccsForm"));
        $this->ssf_flt_model_Insert->Parameters = CCAddParam($this->ssf_flt_model_Insert->Parameters, "ssf_flt_model_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_pm_model_id->Show();
        $this->Sorter_pm_model_description->Show();
        $this->ssf_flt_model_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-8A05E14D
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pm_model_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pm_model_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_profile_model Class @3-FCB6E20C

class clsssf_flt_profile_modelDataSource extends clsDBConnection1 {  //ssf_flt_profile_modelDataSource Class @3-6CB93CE4

//DataSource Variables @3-42FE0EB8
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pm_model_id;
    public $pm_model_description;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-474731F1
    function clsssf_flt_profile_modelDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_profile_model";
        $this->Initialize();
        $this->pm_model_id = new clsField("pm_model_id", ccsText, "");
        $this->pm_model_description = new clsField("pm_model_description", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-AA0D1A1F
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "pm_model_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pm_model_id" => array("pm_model_id", ""), 
            "Sorter_pm_model_description" => array("pm_model_description", "")));
    }
//End SetOrder Method

//Prepare Method @3-A585B04C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_pm_model_id", ccsText, "", "", $this->Parameters["urls_pm_model_id"], "", false);
        $this->wp->AddParameter("2", "urls_pm_model_description", ccsText, "", "", $this->Parameters["urls_pm_model_description"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "pm_model_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "pm_model_description", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-3A103B08
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_profile_model";
        $this->SQL = "SELECT pm_model_id, pm_model_description \n\n" .
        "FROM ssf_flt_profile_model {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-8B6BE598
    function SetValues()
    {
        $this->pm_model_id->SetDBValue($this->f("pm_model_id"));
        $this->pm_model_description->SetDBValue($this->f("pm_model_description"));
    }
//End SetValues Method

} //End ssf_flt_profile_modelDataSource Class @3-FCB6E20C

class clsRecordssf_flt_profile_model1 { //ssf_flt_profile_model1 Class @20-85E73B46

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

//Class_Initialize Event @20-61C0454C
    function clsRecordssf_flt_profile_model1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_profile_model1/Error";
        $this->DataSource = new clsssf_flt_profile_model1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_profile_model1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->pm_model_id = new clsControl(ccsTextBox, "pm_model_id", $CCSLocales->GetText("pm_model_id"), ccsText, "", CCGetRequestParam("pm_model_id", $Method, NULL), $this);
            $this->pm_model_id->Required = true;
            $this->pm_model_description = new clsControl(ccsTextBox, "pm_model_description", $CCSLocales->GetText("pm_model_description"), ccsText, "", CCGetRequestParam("pm_model_description", $Method, NULL), $this);
            $this->pm_time_prof_id = new clsControl(ccsTextBox, "pm_time_prof_id", $CCSLocales->GetText("pm_time_prof_id"), ccsText, "", CCGetRequestParam("pm_time_prof_id", $Method, NULL), $this);
            $this->Link4 = new clsControl(ccsLink, "Link4", "Link4", ccsText, "", CCGetRequestParam("Link4", $Method, NULL), $this);
            $this->Link4->Page = "../SSFPopTimeProfList.php";
            $this->pm_zone_prof_id = new clsControl(ccsTextBox, "pm_zone_prof_id", $CCSLocales->GetText("pm_zone_prof_id"), ccsText, "", CCGetRequestParam("pm_zone_prof_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopZoneProfList.php";
            $this->pm_product_prof_id = new clsControl(ccsTextBox, "pm_product_prof_id", $CCSLocales->GetText("pm_product_prof_id"), ccsText, "", CCGetRequestParam("pm_product_prof_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopProdProfList.php";
            $this->pm_limit_prof_id = new clsControl(ccsTextBox, "pm_limit_prof_id", $CCSLocales->GetText("pm_limit_prof_id"), ccsText, "", CCGetRequestParam("pm_limit_prof_id", $Method, NULL), $this);
            $this->Link3 = new clsControl(ccsLink, "Link3", "Link3", ccsText, "", CCGetRequestParam("Link3", $Method, NULL), $this);
            $this->Link3->Page = "../SSFPopLimitProfList.php";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @20-23937E31
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlpm_model_id"] = CCGetFromGet("pm_model_id", NULL);
    }
//End Initialize Method

//Validate Method @20-4C68673F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->pm_model_id->Validate() && $Validation);
        $Validation = ($this->pm_model_description->Validate() && $Validation);
        $Validation = ($this->pm_time_prof_id->Validate() && $Validation);
        $Validation = ($this->pm_zone_prof_id->Validate() && $Validation);
        $Validation = ($this->pm_product_prof_id->Validate() && $Validation);
        $Validation = ($this->pm_limit_prof_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->pm_model_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pm_model_description->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pm_time_prof_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pm_zone_prof_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pm_product_prof_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pm_limit_prof_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @20-A9F13E36
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pm_model_id->Errors->Count());
        $errors = ($errors || $this->pm_model_description->Errors->Count());
        $errors = ($errors || $this->pm_time_prof_id->Errors->Count());
        $errors = ($errors || $this->Link4->Errors->Count());
        $errors = ($errors || $this->pm_zone_prof_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->pm_product_prof_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->pm_limit_prof_id->Errors->Count());
        $errors = ($errors || $this->Link3->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @20-288F0419
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
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
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

//InsertRow Method @20-FF27988C
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->pm_model_id->SetValue($this->pm_model_id->GetValue(true));
        $this->DataSource->pm_model_description->SetValue($this->pm_model_description->GetValue(true));
        $this->DataSource->pm_time_prof_id->SetValue($this->pm_time_prof_id->GetValue(true));
        $this->DataSource->Link4->SetValue($this->Link4->GetValue(true));
        $this->DataSource->pm_zone_prof_id->SetValue($this->pm_zone_prof_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
        $this->DataSource->pm_product_prof_id->SetValue($this->pm_product_prof_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->pm_limit_prof_id->SetValue($this->pm_limit_prof_id->GetValue(true));
        $this->DataSource->Link3->SetValue($this->Link3->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @20-1FAD2D48
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->pm_model_id->SetValue($this->pm_model_id->GetValue(true));
        $this->DataSource->pm_model_description->SetValue($this->pm_model_description->GetValue(true));
        $this->DataSource->pm_time_prof_id->SetValue($this->pm_time_prof_id->GetValue(true));
        $this->DataSource->Link4->SetValue($this->Link4->GetValue(true));
        $this->DataSource->pm_zone_prof_id->SetValue($this->pm_zone_prof_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
        $this->DataSource->pm_product_prof_id->SetValue($this->pm_product_prof_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->pm_limit_prof_id->SetValue($this->pm_limit_prof_id->GetValue(true));
        $this->DataSource->Link3->SetValue($this->Link3->GetValue(true));
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

//Show Method @20-444677E7
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
                    $this->pm_model_id->SetValue($this->DataSource->pm_model_id->GetValue());
                    $this->pm_model_description->SetValue($this->DataSource->pm_model_description->GetValue());
                    $this->pm_time_prof_id->SetValue($this->DataSource->pm_time_prof_id->GetValue());
                    $this->pm_zone_prof_id->SetValue($this->DataSource->pm_zone_prof_id->GetValue());
                    $this->pm_product_prof_id->SetValue($this->DataSource->pm_product_prof_id->GetValue());
                    $this->pm_limit_prof_id->SetValue($this->DataSource->pm_limit_prof_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->pm_model_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pm_model_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pm_time_prof_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link4->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pm_zone_prof_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pm_product_prof_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pm_limit_prof_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link3->Errors->ToString());
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

        $this->pm_model_id->Show();
        $this->pm_model_description->Show();
        $this->pm_time_prof_id->Show();
        $this->Link4->Show();
        $this->pm_zone_prof_id->Show();
        $this->Link2->Show();
        $this->pm_product_prof_id->Show();
        $this->Link1->Show();
        $this->pm_limit_prof_id->Show();
        $this->Link3->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_profile_model1 Class @20-FCB6E20C

class clsssf_flt_profile_model1DataSource extends clsDBConnection1 {  //ssf_flt_profile_model1DataSource Class @20-5A49E68A

//DataSource Variables @20-3A4031B5
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
    public $pm_model_id;
    public $pm_model_description;
    public $pm_time_prof_id;
    public $Link4;
    public $pm_zone_prof_id;
    public $Link2;
    public $pm_product_prof_id;
    public $Link1;
    public $pm_limit_prof_id;
    public $Link3;
//End DataSource Variables

//DataSourceClass_Initialize Event @20-92FE609F
    function clsssf_flt_profile_model1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_profile_model1/Error";
        $this->Initialize();
        $this->pm_model_id = new clsField("pm_model_id", ccsText, "");
        $this->pm_model_description = new clsField("pm_model_description", ccsText, "");
        $this->pm_time_prof_id = new clsField("pm_time_prof_id", ccsText, "");
        $this->Link4 = new clsField("Link4", ccsText, "");
        $this->pm_zone_prof_id = new clsField("pm_zone_prof_id", ccsText, "");
        $this->Link2 = new clsField("Link2", ccsText, "");
        $this->pm_product_prof_id = new clsField("pm_product_prof_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->pm_limit_prof_id = new clsField("pm_limit_prof_id", ccsText, "");
        $this->Link3 = new clsField("Link3", ccsText, "");

        $this->InsertFields["pm_model_id"] = array("Name" => "pm_model_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pm_model_description"] = array("Name" => "pm_model_description", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pm_time_prof_id"] = array("Name" => "pm_time_prof_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pm_zone_prof_id"] = array("Name" => "pm_zone_prof_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pm_product_prof_id"] = array("Name" => "pm_product_prof_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pm_limit_prof_id"] = array("Name" => "pm_limit_prof_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_model_id"] = array("Name" => "pm_model_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_model_description"] = array("Name" => "pm_model_description", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_time_prof_id"] = array("Name" => "pm_time_prof_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_zone_prof_id"] = array("Name" => "pm_zone_prof_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_product_prof_id"] = array("Name" => "pm_product_prof_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pm_limit_prof_id"] = array("Name" => "pm_limit_prof_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @20-609CDF1F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpm_model_id", ccsText, "", "", $this->Parameters["urlpm_model_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "pm_model_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @20-33A23D01
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_profile_model {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @20-39008423
    function SetValues()
    {
        $this->pm_model_id->SetDBValue($this->f("pm_model_id"));
        $this->pm_model_description->SetDBValue($this->f("pm_model_description"));
        $this->pm_time_prof_id->SetDBValue($this->f("pm_time_prof_id"));
        $this->pm_zone_prof_id->SetDBValue($this->f("pm_zone_prof_id"));
        $this->pm_product_prof_id->SetDBValue($this->f("pm_product_prof_id"));
        $this->pm_limit_prof_id->SetDBValue($this->f("pm_limit_prof_id"));
    }
//End SetValues Method

//Insert Method @20-B0C52EB4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["pm_model_id"]["Value"] = $this->pm_model_id->GetDBValue(true);
        $this->InsertFields["pm_model_description"]["Value"] = $this->pm_model_description->GetDBValue(true);
        $this->InsertFields["pm_time_prof_id"]["Value"] = $this->pm_time_prof_id->GetDBValue(true);
        $this->InsertFields["pm_zone_prof_id"]["Value"] = $this->pm_zone_prof_id->GetDBValue(true);
        $this->InsertFields["pm_product_prof_id"]["Value"] = $this->pm_product_prof_id->GetDBValue(true);
        $this->InsertFields["pm_limit_prof_id"]["Value"] = $this->pm_limit_prof_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_profile_model", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @20-1A435B3D
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["pm_model_id"]["Value"] = $this->pm_model_id->GetDBValue(true);
        $this->UpdateFields["pm_model_description"]["Value"] = $this->pm_model_description->GetDBValue(true);
        $this->UpdateFields["pm_time_prof_id"]["Value"] = $this->pm_time_prof_id->GetDBValue(true);
        $this->UpdateFields["pm_zone_prof_id"]["Value"] = $this->pm_zone_prof_id->GetDBValue(true);
        $this->UpdateFields["pm_product_prof_id"]["Value"] = $this->pm_product_prof_id->GetDBValue(true);
        $this->UpdateFields["pm_limit_prof_id"]["Value"] = $this->pm_limit_prof_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_profile_model", $this->UpdateFields, $this);
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

//Delete Method @20-5BF9ED7E
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_profile_model";
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

} //End ssf_flt_profile_model1DataSource Class @20-FCB6E20C

//Initialize Page @1-3B213EF5
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
$TemplateFileName = "SSFFleetModel.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-76415F91
include("./SSFFleetModel_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-006AC1A8
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_flt_profile_modelSearch = new clsRecordssf_flt_profile_modelSearch("", $MainPage);
$ssf_flt_profile_model = new clsGridssf_flt_profile_model("", $MainPage);
$ssf_flt_profile_model1 = new clsRecordssf_flt_profile_model1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_profile_modelSearch = & $ssf_flt_profile_modelSearch;
$MainPage->ssf_flt_profile_model = & $ssf_flt_profile_model;
$MainPage->ssf_flt_profile_model1 = & $ssf_flt_profile_model1;
$ssf_flt_profile_model->Initialize();
$ssf_flt_profile_model1->Initialize();

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

//Execute Components @1-3796BEC9
$SSFSpiritHeader->Operations();
$ssf_flt_profile_modelSearch->Operation();
$ssf_flt_profile_model1->Operation();
//End Execute Components

//Go to destination page @1-4142ECA9
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_profile_modelSearch);
    unset($ssf_flt_profile_model);
    unset($ssf_flt_profile_model1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-681C5B6E
$SSFSpiritHeader->Show();
$ssf_flt_profile_modelSearch->Show();
$ssf_flt_profile_model->Show();
$ssf_flt_profile_model1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-517FCCFD
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_profile_modelSearch);
unset($ssf_flt_profile_model);
unset($ssf_flt_profile_model1);
unset($Tpl);
//End Unload Page


?>
