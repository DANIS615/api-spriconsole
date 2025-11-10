<?php
//Include Common Files @1-25E7721A
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFPopShiftList.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsRecordperiod_search { //period_search Class @69-C1801332

//Variables @69-9E315808

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

//Class_Initialize Event @69-2BEFD885
    function clsRecordperiod_search($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record period_search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "period_search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_period_type = new clsControl(ccsRadioButton, "s_period_type", "s_period_type", ccsText, "", CCGetRequestParam("s_period_type", $Method, NULL), $this);
            $this->s_period_type->DSType = dsListOfValues;
            $this->s_period_type->Values = array(array("S", $CCSLocales->GetText("Shift")), array("D", $CCSLocales->GetText("day")), array("M", $CCSLocales->GetText("month")), array("Y", $CCSLocales->GetText("year")));
            $this->s_period_type->HTML = true;
        }
    }
//End Class_Initialize Event

//Validate Method @69-74193BDE
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

//CheckErrors Method @69-DE457393
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_period_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @69-82225C24
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
    }
//End Operation Method

//Show Method @69-C7190011
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

        $this->s_period_type->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End period_search Class @69-FCB6E20C



class clsGridssf_std_store { //ssf_std_store class @2-2F9B3A11

//Variables @2-E1B0767E

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
    public $Sorter_v_id;
//End Variables

//Class_Initialize Event @2-1FD418F3
    function clsGridssf_std_store($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_std_store";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_std_store";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_std_storeDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_std_storeOrder", "");
        $this->SorterDirection = CCGetParam("ssf_std_storeDir", "");

        $this->v_id = new clsControl(ccsLink, "v_id", "v_id", ccsText, "", CCGetRequestParam("v_id", ccsGet, NULL), $this);
        $this->v_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->v_id->Page = "";
        $this->period_start_date = new clsControl(ccsLabel, "period_start_date", "period_start_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("period_start_date", ccsGet, NULL), $this);
        $this->period_start_time = new clsControl(ccsLabel, "period_start_time", "period_start_time", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("period_start_time", ccsGet, NULL), $this);
        $this->period_end_date = new clsControl(ccsLabel, "period_end_date", "period_end_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("period_end_date", ccsGet, NULL), $this);
        $this->period_end_time = new clsControl(ccsLabel, "period_end_time", "period_end_time", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("period_end_time", ccsGet, NULL), $this);
        $this->Sorter_v_id = new clsSorter($this->ComponentName, "Sorter_v_id", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpSimple, $this);
    }
//End Class_Initialize Event

//Initialize Method @2-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @2-0CEDF7BB
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
            $this->ControlsVisible["v_id"] = $this->v_id->Visible;
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
                $this->v_id->SetValue($this->DataSource->v_id->GetValue());
                $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
                $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
                $this->period_end_date->SetValue($this->DataSource->period_end_date->GetValue());
                $this->period_end_time->SetValue($this->DataSource->period_end_time->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->v_id->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_v_id->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-F24BC425
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->v_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_std_store Class @2-FCB6E20C

class clsssf_std_storeDataSource extends clsDBConnection1 {  //ssf_std_storeDataSource Class @2-61E1AADC

//DataSource Variables @2-531464C6
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $v_id;
    public $period_start_date;
    public $period_start_time;
    public $period_end_date;
    public $period_end_time;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-F79D93D5
    function clsssf_std_storeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_std_store";
        $this->Initialize();
        $this->v_id = new clsField("v_id", ccsText, "");
        $this->period_start_date = new clsField("period_start_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->period_start_time = new clsField("period_start_time", ccsDate, array("HH", "nn", "ss"));
        $this->period_end_date = new clsField("period_end_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->period_end_time = new clsField("period_end_time", ccsDate, array("HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-8472CB20
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "period_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_v_id" => array("tkt_cust_id", "")));
    }
//End SetOrder Method

//Prepare Method @2-DCD86CA0
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_period_type", ccsText, "", "", $this->Parameters["urls_period_type"], S, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "period_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @2-3F6E9268
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_shifts_data";
        $this->SQL = "SELECT period_id, period_start_date, period_start_time, period_end_date, period_end_time \n\n" .
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

//SetValues Method @2-1670B359
    function SetValues()
    {
        $this->v_id->SetDBValue($this->f("period_id"));
        $this->period_start_date->SetDBValue(trim($this->f("period_start_date")));
        $this->period_start_time->SetDBValue(trim($this->f("period_start_time")));
        $this->period_end_date->SetDBValue(trim($this->f("period_end_date")));
        $this->period_end_time->SetDBValue(trim($this->f("period_end_time")));
    }
//End SetValues Method

} //End ssf_std_storeDataSource Class @2-FCB6E20C

//Initialize Page @1-03983ABF
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
$TemplateFileName = "SSFPopShiftList.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-ED4C181F
include("./SSFPopShiftList_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-E713C075
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "";
$period_search = new clsRecordperiod_search("", $MainPage);
$ssf_std_store = new clsGridssf_std_store("", $MainPage);
$MainPage->Link1 = & $Link1;
$MainPage->period_search = & $period_search;
$MainPage->ssf_std_store = & $ssf_std_store;
$ssf_std_store->Initialize();

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

//Execute Components @1-48A70986
$period_search->Operation();
//End Execute Components

//Go to destination page @1-75D3659A
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($period_search);
    unset($ssf_std_store);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-37B5540C
$period_search->Show();
$ssf_std_store->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-FFA54FAD
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($period_search);
unset($ssf_std_store);
unset($Tpl);
//End Unload Page


?>
