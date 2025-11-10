<?php
//Include Common Files @1-71D6904D
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Products/");
define("FileName", "SSFTicketProductPrices.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_pricesSearch { //ssf_tkt_pricesSearch Class @5-2FCD91BC

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

//Class_Initialize Event @5-5987CB72
    function clsRecordssf_tkt_pricesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_pricesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_pricesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_price_plu_id = new clsControl(ccsTextBox, "s_tkt_price_plu_id", "s_tkt_price_plu_id", ccsText, "", CCGetRequestParam("s_tkt_price_plu_id", $Method, NULL), $this);
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_tkt_price_date1 = new clsDatePicker("DatePicker_s_tkt_price_date1", "ssf_tkt_pricesSearch", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_tkt_pricesSearch", "s_date_to", $this);
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Page = "SSFTicketProductPrices.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-66A92C4A
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_price_plu_id->Validate() && $Validation);
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_price_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-A175B3DD
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_price_plu_id->Errors->Count());
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_tkt_price_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-E556668B
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
        $Redirect = "SSFTicketProductPrices.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketProductPrices.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-D129ABEB
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
            $Error = ComposeStrings($Error, $this->s_tkt_price_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_tkt_price_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ClearParameters->Errors->ToString());
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

        $this->s_tkt_price_plu_id->Show();
        $this->s_date_from->Show();
        $this->DatePicker_s_tkt_price_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_pricesSearch Class @5-FCB6E20C

class clsGridssf_tkt_prices { //ssf_tkt_prices class @3-6499C7B4

//Variables @3-1E9D08CB

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
    public $Sorter_tkt_price_plu_id;
    public $Sorter_tkt_price_date;
    public $Sorter_tkt_price_time;
    public $Sorter_tkt_price_price;
//End Variables

//Class_Initialize Event @3-941CB720
    function clsGridssf_tkt_prices($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_prices";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_prices";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_pricesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_pricesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_pricesDir", "");

        $this->tkt_price_plu_id = new clsControl(ccsLink, "tkt_price_plu_id", "tkt_price_plu_id", ccsText, "", CCGetRequestParam("tkt_price_plu_id", ccsGet, NULL), $this);
        $this->tkt_price_plu_id->Page = "SSFTicketProductPrices.php";
        $this->ImageLink1 = new clsControl(ccsImageLink, "ImageLink1", "ImageLink1", ccsText, "", CCGetRequestParam("ImageLink1", ccsGet, NULL), $this);
        $this->ImageLink1->Page = "SSFTicketProducts.php";
        $this->tkt_price_date = new clsControl(ccsLabel, "tkt_price_date", "tkt_price_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_price_date", ccsGet, NULL), $this);
        $this->tkt_price_time = new clsControl(ccsLabel, "tkt_price_time", "tkt_price_time", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_price_time", ccsGet, NULL), $this);
        $this->tkt_price_price = new clsControl(ccsLabel, "tkt_price_price", "tkt_price_price", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("tkt_price_price", ccsGet, NULL), $this);
        $this->Sorter_tkt_price_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_price_plu_id", $FileName, $this);
        $this->Sorter_tkt_price_date = new clsSorter($this->ComponentName, "Sorter_tkt_price_date", $FileName, $this);
        $this->Sorter_tkt_price_time = new clsSorter($this->ComponentName, "Sorter_tkt_price_time", $FileName, $this);
        $this->Sorter_tkt_price_price = new clsSorter($this->ComponentName, "Sorter_tkt_price_price", $FileName, $this);
        $this->ssf_tkt_prices_Insert = new clsControl(ccsLink, "ssf_tkt_prices_Insert", "ssf_tkt_prices_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_prices_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_prices_Insert->Page = "SSFTicketProductPrices.php";
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

//Show Method @3-CD856FED
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_price_plu_id"] = CCGetFromGet("s_tkt_price_plu_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);

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
            $this->ControlsVisible["tkt_price_plu_id"] = $this->tkt_price_plu_id->Visible;
            $this->ControlsVisible["ImageLink1"] = $this->ImageLink1->Visible;
            $this->ControlsVisible["tkt_price_date"] = $this->tkt_price_date->Visible;
            $this->ControlsVisible["tkt_price_time"] = $this->tkt_price_time->Visible;
            $this->ControlsVisible["tkt_price_price"] = $this->tkt_price_price->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_price_plu_id->SetValue($this->DataSource->tkt_price_plu_id->GetValue());
                $this->tkt_price_plu_id->Parameters = CCGetQueryString("QueryString", array("ssf_tkt_prices_Insert", "ccsForm"));
                $this->tkt_price_plu_id->Parameters = CCAddParam($this->tkt_price_plu_id->Parameters, "tkt_price_plu_id", $this->DataSource->f("tkt_price_plu_id"));
                $this->tkt_price_plu_id->Parameters = CCAddParam($this->tkt_price_plu_id->Parameters, "p_tkt_price_date", $this->DataSource->f("tkt_price_date"));
                $this->tkt_price_plu_id->Parameters = CCAddParam($this->tkt_price_plu_id->Parameters, "p_tkt_price_time", $this->DataSource->f("tkt_price_time"));
                $this->ImageLink1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ImageLink1->Parameters = CCAddParam($this->ImageLink1->Parameters, "s_tkt_plu_id", $this->DataSource->f("tkt_price_plu_id"));
                $this->tkt_price_date->SetValue($this->DataSource->tkt_price_date->GetValue());
                $this->tkt_price_time->SetValue($this->DataSource->tkt_price_time->GetValue());
                $this->tkt_price_price->SetValue($this->DataSource->tkt_price_price->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_price_plu_id->Show();
                $this->ImageLink1->Show();
                $this->tkt_price_date->Show();
                $this->tkt_price_time->Show();
                $this->tkt_price_price->Show();
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
        $this->ssf_tkt_prices_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_price_plu_id", "ccsForm"));
        $this->ssf_tkt_prices_Insert->Parameters = CCAddParam($this->ssf_tkt_prices_Insert->Parameters, "ssf_tkt_prices_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_price_plu_id->Show();
        $this->Sorter_tkt_price_date->Show();
        $this->Sorter_tkt_price_time->Show();
        $this->Sorter_tkt_price_price->Show();
        $this->ssf_tkt_prices_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-2B59FA6E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_price_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ImageLink1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_prices Class @3-FCB6E20C

class clsssf_tkt_pricesDataSource extends clsDBConnection1 {  //ssf_tkt_pricesDataSource Class @3-C9853DA0

//DataSource Variables @3-0B1FE266
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_price_plu_id;
    public $tkt_price_date;
    public $tkt_price_time;
    public $tkt_price_price;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-B8B7ADD4
    function clsssf_tkt_pricesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_prices";
        $this->Initialize();
        $this->tkt_price_plu_id = new clsField("tkt_price_plu_id", ccsText, "");
        $this->tkt_price_date = new clsField("tkt_price_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_price_time = new clsField("tkt_price_time", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_price_price = new clsField("tkt_price_price", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-2C0049A7
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_price_plu_id, tkt_price_date, tkt_price_time";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_price_plu_id" => array("tkt_price_plu_id", ""), 
            "Sorter_tkt_price_date" => array("tkt_price_date", ""), 
            "Sorter_tkt_price_time" => array("tkt_price_time", ""), 
            "Sorter_tkt_price_price" => array("tkt_price_price", "")));
    }
//End SetOrder Method

//Prepare Method @3-EC65E6A2
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_price_plu_id", ccsText, "", "", $this->Parameters["urls_tkt_price_plu_id"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tkt_price_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opGreaterThanOrEqual, "tkt_price_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opLessThanOrEqual, "tkt_price_date", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-4962CBFF
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_prices";
        $this->SQL = "SELECT tkt_price_plu_id, tkt_price_date, tkt_price_time, tkt_price_price \n\n" .
        "FROM ssf_tkt_prices {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-4B28587A
    function SetValues()
    {
        $this->tkt_price_plu_id->SetDBValue($this->f("tkt_price_plu_id"));
        $this->tkt_price_date->SetDBValue(trim($this->f("tkt_price_date")));
        $this->tkt_price_time->SetDBValue(trim($this->f("tkt_price_time")));
        $this->tkt_price_price->SetDBValue(trim($this->f("tkt_price_price")));
    }
//End SetValues Method

} //End ssf_tkt_pricesDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_prices1 { //ssf_tkt_prices1 Class @27-7440E199

//Variables @27-9E315808

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

//Class_Initialize Event @27-007ADE3C
    function clsRecordssf_tkt_prices1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_prices1/Error";
        $this->DataSource = new clsssf_tkt_prices1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_prices1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_price_plu_id = new clsControl(ccsTextBox, "tkt_price_plu_id", $CCSLocales->GetText("tkt_price_plu_id"), ccsText, "", CCGetRequestParam("tkt_price_plu_id", $Method, NULL), $this);
            $this->tkt_price_plu_id->Required = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopProductsList.php";
            $this->tkt_price_date = new clsControl(ccsTextBox, "tkt_price_date", $CCSLocales->GetText("tkt_price_date"), ccsDate, array("yyyy", "mm", "dd"), CCGetRequestParam("tkt_price_date", $Method, NULL), $this);
            $this->tkt_price_date->Required = true;
            $this->DatePicker_tkt_price_date1 = new clsDatePicker("DatePicker_tkt_price_date1", "ssf_tkt_prices1", "tkt_price_date", $this);
            $this->tkt_price_time = new clsControl(ccsTextBox, "tkt_price_time", $CCSLocales->GetText("tkt_price_time"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_price_time", $Method, NULL), $this);
            $this->tkt_price_time->Required = true;
            $this->tkt_price_price = new clsControl(ccsTextBox, "tkt_price_price", $CCSLocales->GetText("tkt_price_price"), ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("tkt_price_price", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_price_date->Value) && !strlen($this->tkt_price_date->Value) && $this->tkt_price_date->Value !== false)
                    $this->tkt_price_date->SetValue(time());
                if(!is_array($this->tkt_price_time->Value) && !strlen($this->tkt_price_time->Value) && $this->tkt_price_time->Value !== false)
                    $this->tkt_price_time->SetText("00:00:00");
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @27-5560FE2E
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_price_plu_id"] = CCGetFromGet("tkt_price_plu_id", NULL);
        $this->DataSource->Parameters["urlp_tkt_price_date"] = CCGetFromGet("p_tkt_price_date", NULL);
        $this->DataSource->Parameters["urlp_tkt_price_time"] = CCGetFromGet("p_tkt_price_time", NULL);
    }
//End Initialize Method

//Validate Method @27-49D549BB
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_price_plu_id->Validate() && $Validation);
        $Validation = ($this->tkt_price_date->Validate() && $Validation);
        $Validation = ($this->tkt_price_time->Validate() && $Validation);
        $Validation = ($this->tkt_price_price->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_price_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_price_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_price_time->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_price_price->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @27-8C9B713F
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_price_plu_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->tkt_price_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_tkt_price_date1->Errors->Count());
        $errors = ($errors || $this->tkt_price_time->Errors->Count());
        $errors = ($errors || $this->tkt_price_price->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @27-08FA9424
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
        $Redirect = "SSFTicketProductPrices.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketProductPrices.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_prices_Insert", "tkt_price_plu_id", "tkt_price_date", "tkt_price_time"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketProductPrices.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_prices_Insert", "tkt_price_plu_id", "tkt_price_date", "tkt_price_time"));
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

//InsertRow Method @27-DB34A343
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_price_plu_id->SetValue($this->tkt_price_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_price_date->SetValue($this->tkt_price_date->GetValue(true));
        $this->DataSource->tkt_price_time->SetValue($this->tkt_price_time->GetValue(true));
        $this->DataSource->tkt_price_price->SetValue($this->tkt_price_price->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @27-E2EAE17A
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_price_plu_id->SetValue($this->tkt_price_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_price_date->SetValue($this->tkt_price_date->GetValue(true));
        $this->DataSource->tkt_price_time->SetValue($this->tkt_price_time->GetValue(true));
        $this->DataSource->tkt_price_price->SetValue($this->tkt_price_price->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @27-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @27-18552F03
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
                    $this->tkt_price_plu_id->SetValue($this->DataSource->tkt_price_plu_id->GetValue());
                    $this->tkt_price_date->SetValue($this->DataSource->tkt_price_date->GetValue());
                    $this->tkt_price_time->SetValue($this->DataSource->tkt_price_time->GetValue());
                    $this->tkt_price_price->SetValue($this->DataSource->tkt_price_price->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_price_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_price_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_tkt_price_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_price_time->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_price_price->Errors->ToString());
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

        $this->tkt_price_plu_id->Show();
        $this->Link1->Show();
        $this->tkt_price_date->Show();
        $this->DatePicker_tkt_price_date1->Show();
        $this->tkt_price_time->Show();
        $this->tkt_price_price->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_prices1 Class @27-FCB6E20C

class clsssf_tkt_prices1DataSource extends clsDBConnection1 {  //ssf_tkt_prices1DataSource Class @27-2B5D5F02

//DataSource Variables @27-A8B7905B
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
    public $tkt_price_plu_id;
    public $Link1;
    public $tkt_price_date;
    public $tkt_price_time;
    public $tkt_price_price;
//End DataSource Variables

//DataSourceClass_Initialize Event @27-0851E0FA
    function clsssf_tkt_prices1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_prices1/Error";
        $this->Initialize();
        $this->tkt_price_plu_id = new clsField("tkt_price_plu_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->tkt_price_date = new clsField("tkt_price_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_price_time = new clsField("tkt_price_time", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_price_price = new clsField("tkt_price_price", ccsFloat, "");

        $this->InsertFields["tkt_price_plu_id"] = array("Name" => "tkt_price_plu_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_price_date"] = array("Name" => "tkt_price_date", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_price_time"] = array("Name" => "tkt_price_time", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_price_price"] = array("Name" => "tkt_price_price", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_price_plu_id"] = array("Name" => "tkt_price_plu_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_price_date"] = array("Name" => "tkt_price_date", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_price_time"] = array("Name" => "tkt_price_time", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_price_price"] = array("Name" => "tkt_price_price", "Value" => "", "DataType" => ccsFloat);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @27-EB8E5AE6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_price_plu_id", ccsText, "", "", $this->Parameters["urltkt_price_plu_id"], "", false);
        $this->wp->AddParameter("2", "urlp_tkt_price_date", ccsText, "", "", $this->Parameters["urlp_tkt_price_date"], "", false);
        $this->wp->AddParameter("3", "urlp_tkt_price_time", ccsText, "", "", $this->Parameters["urlp_tkt_price_time"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_price_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_price_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_price_time", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @27-AC575513
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_prices {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @27-4B28587A
    function SetValues()
    {
        $this->tkt_price_plu_id->SetDBValue($this->f("tkt_price_plu_id"));
        $this->tkt_price_date->SetDBValue(trim($this->f("tkt_price_date")));
        $this->tkt_price_time->SetDBValue(trim($this->f("tkt_price_time")));
        $this->tkt_price_price->SetDBValue(trim($this->f("tkt_price_price")));
    }
//End SetValues Method

//Insert Method @27-B3662C3D
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_price_plu_id"]["Value"] = $this->tkt_price_plu_id->GetDBValue(true);
        $this->InsertFields["tkt_price_date"]["Value"] = $this->tkt_price_date->GetDBValue(true);
        $this->InsertFields["tkt_price_time"]["Value"] = $this->tkt_price_time->GetDBValue(true);
        $this->InsertFields["tkt_price_price"]["Value"] = $this->tkt_price_price->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_prices", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @27-00C64D50
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_price_plu_id"]["Value"] = $this->tkt_price_plu_id->GetDBValue(true);
        $this->UpdateFields["tkt_price_date"]["Value"] = $this->tkt_price_date->GetDBValue(true);
        $this->UpdateFields["tkt_price_time"]["Value"] = $this->tkt_price_time->GetDBValue(true);
        $this->UpdateFields["tkt_price_price"]["Value"] = $this->tkt_price_price->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_prices", $this->UpdateFields, $this);
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

//Delete Method @27-6335BF53
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_prices";
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

} //End ssf_tkt_prices1DataSource Class @27-FCB6E20C

//Initialize Page @1-BA824D2B
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
$TemplateFileName = "SSFTicketProductPrices.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-DE426C36
include("./SSFTicketProductPrices_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-EE6419F7
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_pricesSearch = new clsRecordssf_tkt_pricesSearch("", $MainPage);
$ssf_tkt_prices = new clsGridssf_tkt_prices("", $MainPage);
$ssf_tkt_prices1 = new clsRecordssf_tkt_prices1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_pricesSearch = & $ssf_tkt_pricesSearch;
$MainPage->ssf_tkt_prices = & $ssf_tkt_prices;
$MainPage->ssf_tkt_prices1 = & $ssf_tkt_prices1;
$ssf_tkt_prices->Initialize();
$ssf_tkt_prices1->Initialize();

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

//Execute Components @1-F29C69E8
$SSFSpiritHeader->Operations();
$ssf_tkt_pricesSearch->Operation();
$ssf_tkt_prices1->Operation();
//End Execute Components

//Go to destination page @1-967D4447
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_pricesSearch);
    unset($ssf_tkt_prices);
    unset($ssf_tkt_prices1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-91F3647D
$SSFSpiritHeader->Show();
$ssf_tkt_pricesSearch->Show();
$ssf_tkt_prices->Show();
$ssf_tkt_prices1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-AE3B9A4E
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_pricesSearch);
unset($ssf_tkt_prices);
unset($ssf_tkt_prices1);
unset($Tpl);
//End Unload Page


?>
