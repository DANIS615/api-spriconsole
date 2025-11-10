<?php
//Include Common Files @1-CE4BA361
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFPopDeliveryList.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsRecordssf_std_storeSearch { //ssf_std_storeSearch Class @6-DFB43FA3

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

//Class_Initialize Event @6-750D8EBE
    function clsRecordssf_std_storeSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_std_storeSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_std_storeSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_v_description = new clsControl(ccsTextBox, "s_v_description", "s_v_description", ccsText, "", CCGetRequestParam("s_v_description", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-7D99B705
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_v_description->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_v_description->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-6504A61F
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_v_description->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-6D5AFD19
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
        $Redirect = "SSFPopDeliveryList.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFPopDeliveryList.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-A009B78C
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
            $Error = ComposeStrings($Error, $this->s_v_description->Errors->ToString());
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

        $this->s_v_description->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_std_storeSearch Class @6-FCB6E20C

class clsGridssf_std_store { //ssf_std_store class @2-2F9B3A11

//Variables @2-4D06016D

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
    public $Sorter_v_description;
    public $Sorter_prod_id;
//End Variables

//Class_Initialize Event @2-A34FF04C
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

        $this->v_id = new clsControl(ccsLabel, "v_id", "v_id", ccsText, "", CCGetRequestParam("v_id", ccsGet, NULL), $this);
        $this->tank_id = new clsControl(ccsLabel, "tank_id", "tank_id", ccsText, "", CCGetRequestParam("tank_id", ccsGet, NULL), $this);
        $this->prod_id = new clsControl(ccsLink, "prod_id", "prod_id", ccsText, "", CCGetRequestParam("prod_id", ccsGet, NULL), $this);
        $this->prod_id->Page = "SSFTankDeliveries.php";
        $this->vol_total = new clsControl(ccsLabel, "vol_total", "vol_total", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("vol_total", ccsGet, NULL), $this);
        $this->Sorter_v_id = new clsSorter($this->ComponentName, "Sorter_v_id", $FileName, $this);
        $this->Sorter_v_description = new clsSorter($this->ComponentName, "Sorter_v_description", $FileName, $this);
        $this->Sorter_prod_id = new clsSorter($this->ComponentName, "Sorter_prod_id", $FileName, $this);
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

//Show Method @2-71A0290B
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_v_description"] = CCGetFromGet("s_v_description", NULL);
        $this->DataSource->Parameters["urloperation"] = CCGetFromGet("operation", NULL);
        $this->DataSource->Parameters["urldelivery_note_id"] = CCGetFromGet("delivery_note_id", NULL);

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
            $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
            $this->ControlsVisible["prod_id"] = $this->prod_id->Visible;
            $this->ControlsVisible["vol_total"] = $this->vol_total->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->v_id->SetValue($this->DataSource->v_id->GetValue());
                $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
                $this->prod_id->SetValue($this->DataSource->prod_id->GetValue());
                $this->prod_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->prod_id->Parameters = CCAddParam($this->prod_id->Parameters, "tank_id", $this->DataSource->f("tank_id"));
                $this->prod_id->Parameters = CCAddParam($this->prod_id->Parameters, "v_id", $this->DataSource->f("delivery_id"));
                $this->prod_id->Parameters = CCAddParam($this->prod_id->Parameters, "prod_id", $this->DataSource->f("prod_id"));
                $this->vol_total->SetValue($this->DataSource->vol_total->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->v_id->Show();
                $this->tank_id->Show();
                $this->prod_id->Show();
                $this->vol_total->Show();
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
        $this->Sorter_v_description->Show();
        $this->Sorter_prod_id->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-7D7AA246
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->v_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->vol_total->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_std_store Class @2-FCB6E20C

class clsssf_std_storeDataSource extends clsDBConnection1 {  //ssf_std_storeDataSource Class @2-61E1AADC

//DataSource Variables @2-D3F2F4FA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $v_id;
    public $tank_id;
    public $prod_id;
    public $vol_total;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-23464468
    function clsssf_std_storeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_std_store";
        $this->Initialize();
        $this->v_id = new clsField("v_id", ccsText, "");
        $this->tank_id = new clsField("tank_id", ccsText, "");
        $this->prod_id = new clsField("prod_id", ccsText, "");
        $this->vol_total = new clsField("vol_total", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-C867BEE1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "delivery_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_v_id" => array("delivery_id", ""), 
            "Sorter_v_description" => array("tank_id", ""), 
            "Sorter_prod_id" => array("prod_id", "")));
    }
//End SetOrder Method

//Prepare Method @2-9D230A04
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_v_description", ccsInteger, "", "", $this->Parameters["urls_v_description"], 0, false);
        $this->wp->AddParameter("2", "urloperation", ccsText, "", "", $this->Parameters["urloperation"], "", false);
        $this->wp->AddParameter("3", "urldelivery_note_id", ccsInteger, "", "", $this->Parameters["urldelivery_note_id"], 0, false);
    }
//End Prepare Method

//Open Method @2-A8AC36EF
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT delivery_id, tank_id, vol_total, param_value as prod_id\n" .
        "FROM ssf_tank_deliveries, config_values\n" .
        "WHERE ( tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0)\n" .
        "AND ( ( (delivery_note_id isnull or delivery_note_id = 0) and '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = 'attach' ) \n" .
        "	  OR ( delivery_note_id = " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " and '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = 'dettach' )  )	\n" .
        "and library = 'tank'\n" .
        "and groupname = 'general'\n" .
        "and parameter = 'product'\n" .
        "and id = tank_id) cnt";
        $this->SQL = "SELECT delivery_id, tank_id, vol_total, param_value as prod_id\n" .
        "FROM ssf_tank_deliveries, config_values\n" .
        "WHERE ( tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0)\n" .
        "AND ( ( (delivery_note_id isnull or delivery_note_id = 0) and '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = 'attach' ) \n" .
        "	  OR ( delivery_note_id = " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " and '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = 'dettach' )  )	\n" .
        "and library = 'tank'\n" .
        "and groupname = 'general'\n" .
        "and parameter = 'product'\n" .
        "and id = tank_id	  {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-96F246E3
    function SetValues()
    {
        $this->v_id->SetDBValue($this->f("delivery_id"));
        $this->tank_id->SetDBValue($this->f("tank_id"));
        $this->prod_id->SetDBValue($this->f("prod_id"));
        $this->vol_total->SetDBValue(trim($this->f("vol_total")));
    }
//End SetValues Method

} //End ssf_std_storeDataSource Class @2-FCB6E20C

//Initialize Page @1-963C2572
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
$TemplateFileName = "SSFPopDeliveryList.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-C3EFA7BD
include("./SSFPopDeliveryList_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-57C9D02E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "";
$ssf_std_storeSearch = new clsRecordssf_std_storeSearch("", $MainPage);
$ssf_std_store = new clsGridssf_std_store("", $MainPage);
$MainPage->Link1 = & $Link1;
$MainPage->ssf_std_storeSearch = & $ssf_std_storeSearch;
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

//Execute Components @1-A854B76B
$ssf_std_storeSearch->Operation();
//End Execute Components

//Go to destination page @1-8AD8E06A
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_std_storeSearch);
    unset($ssf_std_store);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-68F4E6B6
$ssf_std_storeSearch->Show();
$ssf_std_store->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-02A69BAD
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_std_storeSearch);
unset($ssf_std_store);
unset($Tpl);
//End Unload Page


?>
