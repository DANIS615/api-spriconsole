<?php
//Include Common Files @1-C0EDA50E
define("RelativePath", "../..");
define("PathToCurrentPage", "/Reports/Graphics/");
define("FileName", "SSFTankFutureStock.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_pump_salesSearch { //ssf_pump_salesSearch Class @3-77E3522F

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

//Class_Initialize Event @3-54D9450E
    function clsRecordssf_pump_salesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_pump_salesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_pump_salesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->lblTitle = new clsControl(ccsLabel, "lblTitle", "lblTitle", ccsText, "", CCGetRequestParam("lblTitle", $Method, NULL), $this);
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "ssf_pump_salesSearch", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_pump_salesSearch", "s_date_to", $this);
            $this->s_tank_id = new clsControl(ccsListBox, "s_tank_id", "s_tank_id", ccsInteger, "", CCGetRequestParam("s_tank_id", $Method, NULL), $this);
            $this->s_tank_id->DSType = dsSQL;
            list($this->s_tank_id->BoundColumn, $this->s_tank_id->TextColumn, $this->s_tank_id->DBFormat) = array("param_value", "param_value", "");
            $this->s_tank_id->DataSource = new clsDBConnection1();
            $this->s_tank_id->ds = & $this->s_tank_id->DataSource;
            $this->s_tank_id->DataSource->SQL = "Select param_value from config_values \n" .
            "where library = 'tank' and groupname = 'general'\n" .
            "and parameter = 'ID'  {SQL_OrderBy}";
            $this->s_tank_id->DataSource->Order = "param_value";
            $this->s_periods_ahead = new clsControl(ccsListBox, "s_periods_ahead", "s_periods_ahead", ccsText, "", CCGetRequestParam("s_periods_ahead", $Method, NULL), $this);
            $this->s_periods_ahead->DSType = dsListOfValues;
            $this->s_periods_ahead->Values = array(array("1", "1"), array("2", "2"), array("3", "3"), array("4", "4"), array("5", "5"), array("6", "6"), array("7", "7"), array("8", "8"), array("9", "9"), array("10", "10"), array("15", "15"), array("20", "20"), array("30", "30"));
            $this->s_scale_option = new clsControl(ccsRadioButton, "s_scale_option", "s_scale_option", ccsText, "", CCGetRequestParam("s_scale_option", $Method, NULL), $this);
            $this->s_scale_option->DSType = dsListOfValues;
            $this->s_scale_option->Values = array(array("1", $CCSLocales->GetText("ssf_daily")), array("2", $CCSLocales->GetText("ssf_monthly")));
            $this->s_scale_option->HTML = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTankFutureStock.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->s_periods_ahead->Value) && !strlen($this->s_periods_ahead->Value) && $this->s_periods_ahead->Value !== false)
                    $this->s_periods_ahead->SetText(1);
                if(!is_array($this->s_scale_option->Value) && !strlen($this->s_scale_option->Value) && $this->s_scale_option->Value !== false)
                    $this->s_scale_option->SetText(1);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @3-41B47333
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_tank_id->Validate() && $Validation);
        $Validation = ($this->s_periods_ahead->Validate() && $Validation);
        $Validation = ($this->s_scale_option->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tank_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_periods_ahead->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_scale_option->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-04CD1665
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->lblTitle->Errors->Count());
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_tank_id->Errors->Count());
        $errors = ($errors || $this->s_periods_ahead->Errors->Count());
        $errors = ($errors || $this->s_scale_option->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-B3372F1B
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
        $Redirect = "SSFTankFutureStock.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTankFutureStock.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-5FC1B0AC
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tank_id->Prepare();
        $this->s_periods_ahead->Prepare();
        $this->s_scale_option->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->lblTitle->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_end_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tank_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_periods_ahead->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_scale_option->Errors->ToString());
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

        $this->lblTitle->Show();
        $this->s_date_from->Show();
        $this->DatePicker_s_end_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_tank_id->Show();
        $this->s_periods_ahead->Show();
        $this->s_scale_option->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_pump_salesSearch Class @3-FCB6E20C

//Initialize Page @1-8E3B24A8
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
$TemplateFileName = "SSFTankFutureStock.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F94373BD
include("./SSFTankFutureStock_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-6B437B93
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_pump_salesSearch = new clsRecordssf_pump_salesSearch("", $MainPage);
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$lblChart = new clsControl(ccsLabel, "lblChart", "lblChart", ccsText, "", CCGetRequestParam("lblChart", ccsGet, NULL), $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_pump_salesSearch = & $ssf_pump_salesSearch;
$MainPage->Label1 = & $Label1;
$MainPage->lblChart = & $lblChart;

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

//Execute Components @1-635A0474
$SSFSpiritHeader->Operations();
$ssf_pump_salesSearch->Operation();
//End Execute Components

//Go to destination page @1-4653CF1C
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_pump_salesSearch);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-41A2C250
$SSFSpiritHeader->Show();
$ssf_pump_salesSearch->Show();
$Label1->Show();
$lblChart->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-3CD98077
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_pump_salesSearch);
unset($Tpl);
//End Unload Page


?>
