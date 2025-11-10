<?php
//Include Common Files @1-56E9004D
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFShiftReport_Selector.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @36-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_shifts_dataSearch { //ssf_addin_shifts_dataSearch Class @11-3D6B99A5

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

//Class_Initialize Event @11-85B882F7
    function clsRecordssf_addin_shifts_dataSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_shifts_dataSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_shifts_dataSearch";
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
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->s_period_type->Value) && !strlen($this->s_period_type->Value) && $this->s_period_type->Value !== false)
                    $this->s_period_type->SetText($CCSLocales->GetText("ssf_shifts"));
            }
        }
    }
//End Class_Initialize Event

//Validate Method @11-74193BDE
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

//CheckErrors Method @11-DE457393
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_period_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @11-4EF69C34
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
        $Redirect = "SSFShiftReport_Selector.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFShiftReport_Selector.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @11-9047F1AE
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
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_shifts_dataSearch Class @11-FCB6E20C

class clsGridssf_addin_shifts_data { //ssf_addin_shifts_data class @2-B7CFCC60

//Variables @2-6E51DF5A

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

//Class_Initialize Event @2-895EDCC6
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
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->period_id = new clsControl(ccsLink, "period_id", "period_id", ccsInteger, "", CCGetRequestParam("period_id", ccsGet, NULL), $this);
        $this->period_id->Page = "SSFShiftReport.php";
        $this->period_start_date = new clsControl(ccsLabel, "period_start_date", "period_start_date", ccsText, "", CCGetRequestParam("period_start_date", ccsGet, NULL), $this);
        $this->period_start_time = new clsControl(ccsLabel, "period_start_time", "period_start_time", ccsText, "", CCGetRequestParam("period_start_time", ccsGet, NULL), $this);
        $this->period_end_date = new clsControl(ccsLabel, "period_end_date", "period_end_date", ccsText, "", CCGetRequestParam("period_end_date", ccsGet, NULL), $this);
        $this->period_end_time = new clsControl(ccsLabel, "period_end_time", "period_end_time", ccsText, "", CCGetRequestParam("period_end_time", ccsGet, NULL), $this);
        $this->period_parent_cons_id = new clsControl(ccsLabel, "period_parent_cons_id", "period_parent_cons_id", ccsInteger, "", CCGetRequestParam("period_parent_cons_id", ccsGet, NULL), $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
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

//Show Method @2-4750EFB5
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
            $this->ControlsVisible["period_id"] = $this->period_id->Visible;
            $this->ControlsVisible["period_start_date"] = $this->period_start_date->Visible;
            $this->ControlsVisible["period_start_time"] = $this->period_start_time->Visible;
            $this->ControlsVisible["period_end_date"] = $this->period_end_date->Visible;
            $this->ControlsVisible["period_end_time"] = $this->period_end_time->Visible;
            $this->ControlsVisible["period_parent_cons_id"] = $this->period_parent_cons_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->period_id->SetValue($this->DataSource->period_id->GetValue());
                $this->period_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->period_id->Parameters = CCAddParam($this->period_id->Parameters, "p_period_type", $this->DataSource->f("period_type"));
                $this->period_id->Parameters = CCAddParam($this->period_id->Parameters, "p_period_id", $this->DataSource->f("period_id"));
                $this->period_id->Parameters = CCAddParam($this->period_id->Parameters, "p_start_id", $this->DataSource->f("period_start_trans_id"));
                $this->period_id->Parameters = CCAddParam($this->period_id->Parameters, "p_end_id", $this->DataSource->f("period_end_trans_id"));
                $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
                $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
                $this->period_end_date->SetValue($this->DataSource->period_end_date->GetValue());
                $this->period_end_time->SetValue($this->DataSource->period_end_time->GetValue());
                $this->period_parent_cons_id->SetValue($this->DataSource->period_parent_cons_id->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->period_id->Show();
                $this->period_start_date->Show();
                $this->period_start_time->Show();
                $this->period_end_date->Show();
                $this->period_end_time->Show();
                $this->period_parent_cons_id->Show();
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
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-E39F5F7E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_parent_cons_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_shifts_data Class @2-FCB6E20C

class clsssf_addin_shifts_dataDataSource extends clsDBConnection1 {  //ssf_addin_shifts_dataDataSource Class @2-9A303638

//DataSource Variables @2-286A7841
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $period_id;
    public $period_start_date;
    public $period_start_time;
    public $period_end_date;
    public $period_end_time;
    public $period_parent_cons_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-28CA2457
    function clsssf_addin_shifts_dataDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_shifts_data";
        $this->Initialize();
        $this->period_id = new clsField("period_id", ccsInteger, "");
        $this->period_start_date = new clsField("period_start_date", ccsText, "");
        $this->period_start_time = new clsField("period_start_time", ccsText, "");
        $this->period_end_date = new clsField("period_end_date", ccsText, "");
        $this->period_end_time = new clsField("period_end_time", ccsText, "");
        $this->period_parent_cons_id = new clsField("period_parent_cons_id", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-9910A6B1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "period_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @2-929F9609
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_period_type", ccsText, "", "", $this->Parameters["urls_period_type"], S, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "period_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @2-C06545F9
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_shifts_data";
        $this->SQL = "SELECT period_type, period_id, period_start_time, period_start_date, period_end_date, period_end_time, period_parent_cons_id, period_start_trans_id,\n\n" .
        "period_end_trans_id, period_status \n\n" .
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

//SetValues Method @2-E25C5D05
    function SetValues()
    {
        $this->period_id->SetDBValue(trim($this->f("period_id")));
        $this->period_start_date->SetDBValue($this->f("period_start_date"));
        $this->period_start_time->SetDBValue($this->f("period_start_time"));
        $this->period_end_date->SetDBValue($this->f("period_end_date"));
        $this->period_end_time->SetDBValue($this->f("period_end_time"));
        $this->period_parent_cons_id->SetDBValue(trim($this->f("period_parent_cons_id")));
    }
//End SetValues Method

} //End ssf_addin_shifts_dataDataSource Class @2-FCB6E20C

//Initialize Page @1-344ADFEA
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
$TemplateFileName = "SSFShiftReport_Selector.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-DA122539
include("./SSFShiftReport_Selector_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-1AB91103
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_shifts_dataSearch = new clsRecordssf_addin_shifts_dataSearch("", $MainPage);
$ssf_addin_shifts_data = new clsGridssf_addin_shifts_data("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_shifts_dataSearch = & $ssf_addin_shifts_dataSearch;
$MainPage->ssf_addin_shifts_data = & $ssf_addin_shifts_data;
$ssf_addin_shifts_data->Initialize();

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

//Execute Components @1-619DEFA0
$SSFSpiritHeader->Operations();
$ssf_addin_shifts_dataSearch->Operation();
//End Execute Components

//Go to destination page @1-AAD9DC3C
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_shifts_dataSearch);
    unset($ssf_addin_shifts_data);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-9A0B68DD
$SSFSpiritHeader->Show();
$ssf_addin_shifts_dataSearch->Show();
$ssf_addin_shifts_data->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-041CCA08
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_shifts_dataSearch);
unset($ssf_addin_shifts_data);
unset($Tpl);
//End Unload Page


?>
