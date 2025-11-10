<?php
//Include Common Files @1-EBA1E072
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFPopProductsList.php");
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

//Class_Initialize Event @6-F83F3260
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
            $this->s_v_id = new clsControl(ccsTextBox, "s_v_id", "s_v_id", ccsText, "", CCGetRequestParam("s_v_id", $Method, NULL), $this);
            $this->s_v_description = new clsControl(ccsTextBox, "s_v_description", "s_v_description", ccsText, "", CCGetRequestParam("s_v_description", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Parameters = CCGetQueryString("QueryString", array("s_v_id", "s_v_description", "ccsForm"));
            $this->Link1->Page = "SSFPopProductsList.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-4594861D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_v_id->Validate() && $Validation);
        $Validation = ($this->s_v_description->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_v_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_v_description->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-3213CFBB
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_v_id->Errors->Count());
        $errors = ($errors || $this->s_v_description->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-9D3B03B8
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
        $Redirect = "SSFPopProductsList.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFPopProductsList.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y", "s_v_id", "s_v_description")), CCGetQueryString("QueryString", array("s_v_id", "s_v_description", "ccsForm", "s_v_id", "s_v_description")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-F9E36E17
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
            $Error = ComposeStrings($Error, $this->s_v_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_v_description->Errors->ToString());
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

        $this->s_v_id->Show();
        $this->s_v_description->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_std_storeSearch Class @6-FCB6E20C

class clsGridssf_std_store { //ssf_std_store class @2-2F9B3A11

//Variables @2-DDDF6256

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
    public $Sorter_prod_id;
//End Variables

//Class_Initialize Event @2-B3B39895
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
        $this->prod_desc = new clsControl(ccsLabel, "prod_desc", "prod_desc", ccsText, "", CCGetRequestParam("prod_desc", ccsGet, NULL), $this);
        $this->prod_type = new clsControl(ccsLabel, "prod_type", "prod_type", ccsText, "", CCGetRequestParam("prod_type", ccsGet, NULL), $this);
        $this->Sorter_v_id = new clsSorter($this->ComponentName, "Sorter_v_id", $FileName, $this);
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

//Show Method @2-35344189
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_v_id"] = CCGetFromGet("s_v_id", NULL);
        $this->DataSource->Parameters["urls_v_description"] = CCGetFromGet("s_v_description", NULL);

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
            $this->ControlsVisible["prod_desc"] = $this->prod_desc->Visible;
            $this->ControlsVisible["prod_type"] = $this->prod_type->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->v_id->SetValue($this->DataSource->v_id->GetValue());
                $this->prod_desc->SetValue($this->DataSource->prod_desc->GetValue());
                $this->prod_type->SetValue($this->DataSource->prod_type->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->v_id->Show();
                $this->prod_desc->Show();
                $this->prod_type->Show();
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
        $this->Sorter_prod_id->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-991F91AE
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->v_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_std_store Class @2-FCB6E20C

class clsssf_std_storeDataSource extends clsDBConnection1 {  //ssf_std_storeDataSource Class @2-61E1AADC

//DataSource Variables @2-5C5C360E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $v_id;
    public $prod_desc;
    public $prod_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-55E4B3A9
    function clsssf_std_storeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_std_store";
        $this->Initialize();
        $this->v_id = new clsField("v_id", ccsText, "");
        $this->prod_desc = new clsField("prod_desc", ccsText, "");
        $this->prod_type = new clsField("prod_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-0457DB2E
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_v_id" => array("tkt_plu_id", ""), 
            "Sorter_prod_id" => array("tkt_plu_long_desc", "")));
    }
//End SetOrder Method

//Prepare Method @2-93C0F37E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_v_id", ccsText, "", "", $this->Parameters["urls_v_id"], "", false);
        $this->wp->AddParameter("3", "urls_v_description", ccsText, "", "", $this->Parameters["urls_v_description"], "", false);
        $this->wp->Criterion[1] = "ssf_tkt_catalog.tkt_catalog_id = 'product_type'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "ssf_tkt_plu.tkt_plu_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "ssf_tkt_plu.tkt_plu_long_desc", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @2-C4FB5880
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_plu INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_plu.tkt_plu_type = ssf_tkt_catalog.tkt_catalog_code";
        $this->SQL = "SELECT tkt_catalog_value AS prod_type, tkt_plu_id, tkt_plu_long_desc \n\n" .
        "FROM ssf_tkt_plu INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_plu.tkt_plu_type = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-21227BF6
    function SetValues()
    {
        $this->v_id->SetDBValue($this->f("tkt_plu_id"));
        $this->prod_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->prod_type->SetDBValue($this->f("prod_type"));
    }
//End SetValues Method

} //End ssf_std_storeDataSource Class @2-FCB6E20C

//Initialize Page @1-6D1046AA
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
$TemplateFileName = "SSFPopProductsList.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-20953EB3
include("./SSFPopProductsList_events.php");
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
