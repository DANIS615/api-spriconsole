<?php
//Include Common Files @1-4A616686
define("RelativePath", "..");
define("PathToCurrentPage", "/Prices/");
define("FileName", "SSFChgPricesHeader.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @40-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_prices_changeSearch { //ssf_addin_prices_changeSearch Class @3-C74525EC

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

//Class_Initialize Event @3-87D977F2
    function clsRecordssf_addin_prices_changeSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_prices_changeSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_prices_changeSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_price_change_id = new clsControl(ccsTextBox, "s_price_change_id", "s_price_change_id", ccsInteger, "", CCGetRequestParam("s_price_change_id", $Method, NULL), $this);
            $this->s_application_date = new clsControl(ccsTextBox, "s_application_date", "s_application_date", ccsText, "", CCGetRequestParam("s_application_date", $Method, NULL), $this);
            $this->DatePicker_s_application_date1 = new clsDatePicker("DatePicker_s_application_date1", "ssf_addin_prices_changeSearch", "s_application_date", $this);
            $this->s_price_change_result = new clsControl(ccsListBox, "s_price_change_result", "s_price_change_result", ccsText, "", CCGetRequestParam("s_price_change_result", $Method, NULL), $this);
            $this->s_price_change_result->DSType = dsListOfValues;
            $this->s_price_change_result->Values = array(array("OK", "OK"), array("ERROR", "ERROR"));
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_price_change_id", "s_application_date", "s_price_change_result", "ccsForm"));
            $this->ClearParameters->Page = "SSFChgPricesHeader.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
            $this->Link1->Page = "SSFChgPricesHeader.php";
        }
    }
//End Class_Initialize Event

//Validate Method @3-76E0FE22
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_price_change_id->Validate() && $Validation);
        $Validation = ($this->s_application_date->Validate() && $Validation);
        $Validation = ($this->s_price_change_result->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_price_change_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_application_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_price_change_result->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-C3A0092D
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_price_change_id->Errors->Count());
        $errors = ($errors || $this->s_application_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_application_date1->Errors->Count());
        $errors = ($errors || $this->s_price_change_result->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-89969392
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
        $Redirect = "SSFChgPricesHeader.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFChgPricesHeader.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-B1F4B38A
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_price_change_result->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_price_change_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_application_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_application_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_price_change_result->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ClearParameters->Errors->ToString());
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

        $this->s_price_change_id->Show();
        $this->s_application_date->Show();
        $this->DatePicker_s_application_date1->Show();
        $this->s_price_change_result->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $this->Link1->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_prices_changeSearch Class @3-FCB6E20C

class clsGridssf_addin_prices_change { //ssf_addin_prices_change class @2-255EE91F

//Variables @2-2E931E43

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
    public $Sorter_price_change_id;
    public $Sorter_application_date;
    public $Sorter_application_time;
    public $Sorter_processed_date;
    public $Sorter_processed_time;
    public $Sorter_price_change_result;
//End Variables

//Class_Initialize Event @2-8C14CA8B
    function clsGridssf_addin_prices_change($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_prices_change";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_prices_change";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_prices_changeDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_prices_changeOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_prices_changeDir", "");

        $this->price_change_id = new clsControl(ccsLink, "price_change_id", "price_change_id", ccsInteger, "", CCGetRequestParam("price_change_id", ccsGet, NULL), $this);
        $this->price_change_id->Page = "SSFChgPricesHeader.php";
        $this->application_date = new clsControl(ccsLabel, "application_date", "application_date", ccsText, "", CCGetRequestParam("application_date", ccsGet, NULL), $this);
        $this->application_time = new clsControl(ccsLabel, "application_time", "application_time", ccsText, "", CCGetRequestParam("application_time", ccsGet, NULL), $this);
        $this->processed_date = new clsControl(ccsLabel, "processed_date", "processed_date", ccsText, "", CCGetRequestParam("processed_date", ccsGet, NULL), $this);
        $this->processed_time = new clsControl(ccsLabel, "processed_time", "processed_time", ccsText, "", CCGetRequestParam("processed_time", ccsGet, NULL), $this);
        $this->price_change_result = new clsControl(ccsLabel, "price_change_result", "price_change_result", ccsText, "", CCGetRequestParam("price_change_result", ccsGet, NULL), $this);
        $this->Sorter_price_change_id = new clsSorter($this->ComponentName, "Sorter_price_change_id", $FileName, $this);
        $this->Sorter_application_date = new clsSorter($this->ComponentName, "Sorter_application_date", $FileName, $this);
        $this->Sorter_application_time = new clsSorter($this->ComponentName, "Sorter_application_time", $FileName, $this);
        $this->Sorter_processed_date = new clsSorter($this->ComponentName, "Sorter_processed_date", $FileName, $this);
        $this->Sorter_processed_time = new clsSorter($this->ComponentName, "Sorter_processed_time", $FileName, $this);
        $this->Sorter_price_change_result = new clsSorter($this->ComponentName, "Sorter_price_change_result", $FileName, $this);
        $this->ssf_addin_prices_change_Insert = new clsControl(ccsLink, "ssf_addin_prices_change_Insert", "ssf_addin_prices_change_Insert", ccsText, "", CCGetRequestParam("ssf_addin_prices_change_Insert", ccsGet, NULL), $this);
        $this->ssf_addin_prices_change_Insert->Page = "SSFChgPricesHeader.php";
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

//Show Method @2-5F66BFCD
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_price_change_id"] = CCGetFromGet("s_price_change_id", NULL);
        $this->DataSource->Parameters["urls_application_date"] = CCGetFromGet("s_application_date", NULL);
        $this->DataSource->Parameters["urls_price_change_result"] = CCGetFromGet("s_price_change_result", NULL);

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
            $this->ControlsVisible["price_change_id"] = $this->price_change_id->Visible;
            $this->ControlsVisible["application_date"] = $this->application_date->Visible;
            $this->ControlsVisible["application_time"] = $this->application_time->Visible;
            $this->ControlsVisible["processed_date"] = $this->processed_date->Visible;
            $this->ControlsVisible["processed_time"] = $this->processed_time->Visible;
            $this->ControlsVisible["price_change_result"] = $this->price_change_result->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->price_change_id->SetValue($this->DataSource->price_change_id->GetValue());
                $this->price_change_id->Parameters = CCGetQueryString("QueryString", array("navigatorclick", "ccsForm"));
                $this->price_change_id->Parameters = CCAddParam($this->price_change_id->Parameters, "price_change_id", $this->DataSource->f("price_change_id"));
                $this->price_change_id->Parameters = CCAddParam($this->price_change_id->Parameters, "price_change_result", $this->DataSource->f("price_change_result"));
                $this->application_date->SetValue($this->DataSource->application_date->GetValue());
                $this->application_time->SetValue($this->DataSource->application_time->GetValue());
                $this->processed_date->SetValue($this->DataSource->processed_date->GetValue());
                $this->processed_time->SetValue($this->DataSource->processed_time->GetValue());
                $this->price_change_result->SetValue($this->DataSource->price_change_result->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->price_change_id->Show();
                $this->application_date->Show();
                $this->application_time->Show();
                $this->processed_date->Show();
                $this->processed_time->Show();
                $this->price_change_result->Show();
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
        $this->ssf_addin_prices_change_Insert->Parameters = "";
        $this->ssf_addin_prices_change_Insert->Parameters = CCAddParam($this->ssf_addin_prices_change_Insert->Parameters, "ssf_addin_prices_change_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_price_change_id->Show();
        $this->Sorter_application_date->Show();
        $this->Sorter_application_time->Show();
        $this->Sorter_processed_date->Show();
        $this->Sorter_processed_time->Show();
        $this->Sorter_price_change_result->Show();
        $this->ssf_addin_prices_change_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-49BB605B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->price_change_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->application_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->application_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->processed_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->processed_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price_change_result->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_prices_change Class @2-FCB6E20C

class clsssf_addin_prices_changeDataSource extends clsDBConnection1 {  //ssf_addin_prices_changeDataSource Class @2-D1AB48CD

//DataSource Variables @2-75FCEAF5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $price_change_id;
    public $application_date;
    public $application_time;
    public $processed_date;
    public $processed_time;
    public $price_change_result;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-64BE1CEA
    function clsssf_addin_prices_changeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_prices_change";
        $this->Initialize();
        $this->price_change_id = new clsField("price_change_id", ccsInteger, "");
        $this->application_date = new clsField("application_date", ccsText, "");
        $this->application_time = new clsField("application_time", ccsText, "");
        $this->processed_date = new clsField("processed_date", ccsText, "");
        $this->processed_time = new clsField("processed_time", ccsText, "");
        $this->price_change_result = new clsField("price_change_result", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-0D404693
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "price_change_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_price_change_id" => array("price_change_id", ""), 
            "Sorter_application_date" => array("application_date", ""), 
            "Sorter_application_time" => array("application_time", ""), 
            "Sorter_processed_date" => array("processed_date", ""), 
            "Sorter_processed_time" => array("processed_time", ""), 
            "Sorter_price_change_result" => array("price_change_result", "")));
    }
//End SetOrder Method

//Prepare Method @2-AF1E9408
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_price_change_id", ccsInteger, "", "", $this->Parameters["urls_price_change_id"], "", false);
        $this->wp->AddParameter("2", "urls_application_date", ccsText, "", "", $this->Parameters["urls_application_date"], "", false);
        $this->wp->AddParameter("3", "urls_price_change_result", ccsText, "", "", $this->Parameters["urls_price_change_result"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "price_change_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "application_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "price_change_result", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @2-BA4F7C60
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_prices_change";
        $this->SQL = "SELECT price_change_id, application_date, application_time, processed_date, processed_time, price_change_result \n\n" .
        "FROM ssf_addin_prices_change {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-B25EFB8C
    function SetValues()
    {
        $this->price_change_id->SetDBValue(trim($this->f("price_change_id")));
        $this->application_date->SetDBValue($this->f("application_date"));
        $this->application_time->SetDBValue($this->f("application_time"));
        $this->processed_date->SetDBValue($this->f("processed_date"));
        $this->processed_time->SetDBValue($this->f("processed_time"));
        $this->price_change_result->SetDBValue($this->f("price_change_result"));
    }
//End SetValues Method

} //End ssf_addin_prices_changeDataSource Class @2-FCB6E20C

class clsRecordssf_addin_prices_change1 { //ssf_addin_prices_change1 Class @33-44DA99AC

//Variables @33-9E315808

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

//Class_Initialize Event @33-EC6DD395
    function clsRecordssf_addin_prices_change1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_prices_change1/Error";
        $this->DataSource = new clsssf_addin_prices_change1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_prices_change1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->application_date = new clsControl(ccsTextBox, "application_date", $CCSLocales->GetText("application_date"), ccsText, "", CCGetRequestParam("application_date", $Method, NULL), $this);
            $this->application_date->Required = true;
            $this->DatePicker_application_date1 = new clsDatePicker("DatePicker_application_date1", "ssf_addin_prices_change1", "application_date", $this);
            $this->application_time = new clsControl(ccsTextBox, "application_time", $CCSLocales->GetText("application_time"), ccsText, "", CCGetRequestParam("application_time", $Method, NULL), $this);
            $this->application_time->Required = true;
            $this->price_change_id = new clsControl(ccsTextBox, "price_change_id", "price_change_id", ccsInteger, "", CCGetRequestParam("price_change_id", $Method, NULL), $this);
            $this->price_change_id->Visible = false;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->application_time->Value) && !strlen($this->application_time->Value) && $this->application_time->Value !== false)
                    $this->application_time->SetText('000000');
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @33-EA71C5EA
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlprice_change_id"] = CCGetFromGet("price_change_id", NULL);
    }
//End Initialize Method

//Validate Method @33-032732CB
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->application_date->Validate() && $Validation);
        $Validation = ($this->application_time->Validate() && $Validation);
        $Validation = ($this->price_change_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->application_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->application_time->Errors->Count() == 0);
        $Validation =  $Validation && ($this->price_change_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @33-AB0EB106
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->application_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_application_date1->Errors->Count());
        $errors = ($errors || $this->application_time->Errors->Count());
        $errors = ($errors || $this->price_change_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @33-BEE89661
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
        $Redirect = "SSFChgPricesHeader.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFChgPricesHeader.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "price_change_id", "ssf_addin_prices_change_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFChgPricesHeader.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "price_change_id", "ssf_addin_prices_change_Insert", "price_change_result"));
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

//InsertRow Method @33-29894888
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->application_date->SetValue($this->application_date->GetValue(true));
        $this->DataSource->application_time->SetValue($this->application_time->GetValue(true));
        $this->DataSource->price_change_id->SetValue($this->price_change_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @33-D75FF58E
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->application_date->SetValue($this->application_date->GetValue(true));
        $this->DataSource->application_time->SetValue($this->application_time->GetValue(true));
        $this->DataSource->price_change_id->SetValue($this->price_change_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @33-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @33-A810E916
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
                    $this->application_date->SetValue($this->DataSource->application_date->GetValue());
                    $this->application_time->SetValue($this->DataSource->application_time->GetValue());
                    $this->price_change_id->SetValue($this->DataSource->price_change_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if ($this->price_change_id->GetValue() < 0 )
             $this->price_change_id->Text = CCFormatNumber($this->price_change_id->GetValue(), array(False, 0, Null, "", True, "(", ")", 1, True, ""));
        else
             $this->price_change_id->Text = CCFormatNumber($this->price_change_id->GetValue(), array(False, 0, Null, "", False, "", "", 1, True, ""));

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->application_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_application_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->application_time->Errors->ToString());
            $Error = ComposeStrings($Error, $this->price_change_id->Errors->ToString());
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

        $this->application_date->Show();
        $this->DatePicker_application_date1->Show();
        $this->application_time->Show();
        $this->price_change_id->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_prices_change1 Class @33-FCB6E20C

class clsssf_addin_prices_change1DataSource extends clsDBConnection1 {  //ssf_addin_prices_change1DataSource Class @33-18466C92

//DataSource Variables @33-7E1DFA42
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
    public $application_date;
    public $application_time;
    public $price_change_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @33-49FD7361
    function clsssf_addin_prices_change1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_addin_prices_change1/Error";
        $this->Initialize();
        $this->application_date = new clsField("application_date", ccsText, "");
        $this->application_time = new clsField("application_time", ccsText, "");
        $this->price_change_id = new clsField("price_change_id", ccsInteger, "");

        $this->InsertFields["application_date"] = array("Name" => "application_date", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["application_time"] = array("Name" => "application_time", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["price_change_id"] = array("Name" => "price_change_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
        $this->UpdateFields["application_date"] = array("Name" => "application_date", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["application_time"] = array("Name" => "application_time", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["price_change_id"] = array("Name" => "price_change_id", "Value" => "", "DataType" => ccsInteger, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @33-EB122E0B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlprice_change_id", ccsInteger, "", "", $this->Parameters["urlprice_change_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "price_change_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @33-7332A165
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_prices_change {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @33-D3B433A2
    function SetValues()
    {
        $this->application_date->SetDBValue($this->f("application_date"));
        $this->application_time->SetDBValue($this->f("application_time"));
        $this->price_change_id->SetDBValue(trim($this->f("price_change_id")));
    }
//End SetValues Method

//Insert Method @33-0B8E71C5
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["application_date"]["Value"] = $this->application_date->GetDBValue(true);
        $this->InsertFields["application_time"]["Value"] = $this->application_time->GetDBValue(true);
        $this->InsertFields["price_change_id"]["Value"] = $this->price_change_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_addin_prices_change", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @33-5DA53FC4
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["application_date"]["Value"] = $this->application_date->GetDBValue(true);
        $this->UpdateFields["application_time"]["Value"] = $this->application_time->GetDBValue(true);
        $this->UpdateFields["price_change_id"]["Value"] = $this->price_change_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_prices_change", $this->UpdateFields, $this);
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

//Delete Method @33-2E2FCBAE
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_addin_prices_change";
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

} //End ssf_addin_prices_change1DataSource Class @33-FCB6E20C

class clsEditableGridssf_addin_prices_change_d { //ssf_addin_prices_change_d Class @49-C48840C9

//Variables @49-1F74686B

    // Public variables
    public $ComponentType = "EditableGrid";
    public $ComponentName;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormParameters;
    public $FormState;
    public $FormEnctype;
    public $CachedColumns;
    public $TotalRows;
    public $UpdatedRows;
    public $EmptyRows;
    public $Visible;
    public $RowsErrors;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode;
    public $ValidatingControls;
    public $Controls;
    public $ControlsErrors;
    public $RowNumber;
    public $Attributes;

    // Class variables
    public $Sorter_price_change_id;
    public $Sorter_grade_id;
    public $Sorter_price_level;
    public $Sorter_ppu;
//End Variables

//Class_Initialize Event @49-D7E79763
    function clsEditableGridssf_addin_prices_change_d($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_addin_prices_change_d/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_addin_prices_change_d";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["grade_id"][0] = "grade_id";
        $this->CachedColumns["price_change_id"][0] = "price_change_id";
        $this->CachedColumns["price_level"][0] = "price_level";
        $this->DataSource = new clsssf_addin_prices_change_dDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 1;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if(!$this->Visible) return;

        $CCSForm = CCGetFromGet("ccsForm", "");
        $this->FormEnctype = "application/x-www-form-urlencoded";
        $this->FormSubmitted = ($CCSForm == $this->ComponentName);
        if($this->FormSubmitted) {
            $this->FormState = CCGetFromPost("FormState", "");
            $this->SetFormState($this->FormState);
        } else {
            $this->FormState = "";
        }
        $Method = $this->FormSubmitted ? ccsPost : ccsGet;

        $this->SorterName = CCGetParam("ssf_addin_prices_change_dOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_prices_change_dDir", "");

        $this->Sorter_price_change_id = new clsSorter($this->ComponentName, "Sorter_price_change_id", $FileName, $this);
        $this->Sorter_grade_id = new clsSorter($this->ComponentName, "Sorter_grade_id", $FileName, $this);
        $this->Sorter_price_level = new clsSorter($this->ComponentName, "Sorter_price_level", $FileName, $this);
        $this->Sorter_ppu = new clsSorter($this->ComponentName, "Sorter_ppu", $FileName, $this);
        $this->price_change_id = new clsControl(ccsTextBox, "price_change_id", $CCSLocales->GetText("price_change_id"), ccsInteger, "", NULL, $this);
        $this->price_change_id->Required = true;
        $this->grade_id = new clsControl(ccsListBox, "grade_id", $CCSLocales->GetText("grade_id"), ccsText, "", NULL, $this);
        $this->grade_id->DSType = dsSQL;
        list($this->grade_id->BoundColumn, $this->grade_id->TextColumn, $this->grade_id->DBFormat) = array("param_value", "id", "");
        $this->grade_id->DataSource = new clsDBConnection1();
        $this->grade_id->ds = & $this->grade_id->DataSource;
        $this->grade_id->DataSource->SQL = "Select id, param_value from config_values \n" .
        "where library = 'grade' and groupname = 'general'\n" .
        "and parameter = 'number' {SQL_OrderBy}";
        $this->grade_id->DataSource->Order = "param_value";
        $this->grade_id->Required = true;
        $this->price_level = new clsControl(ccsListBox, "price_level", $CCSLocales->GetText("price_level"), ccsInteger, "", NULL, $this);
        $this->price_level->DSType = dsListOfValues;
        $this->price_level->Values = array(array("1", "1"), array("2", "2"), array("3", "3"), array("4", "4"), array("5", "5"), array("6", "6"), array("7", "7"), array("8", "8"), array("9", "9"), array("10", "10"));
        $this->price_level->Required = true;
        $this->ppu = new clsControl(ccsTextBox, "ppu", $CCSLocales->GetText("ppu"), ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), NULL, $this);
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @49-A569A7D9
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urlprice_change_id"] = CCGetFromGet("price_change_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @49-FE9A42D5
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["price_change_id"][$RowNumber] = CCGetFromPost("price_change_id_" . $RowNumber, NULL);
            $this->FormParameters["grade_id"][$RowNumber] = CCGetFromPost("grade_id_" . $RowNumber, NULL);
            $this->FormParameters["price_level"][$RowNumber] = CCGetFromPost("price_level_" . $RowNumber, NULL);
            $this->FormParameters["ppu"][$RowNumber] = CCGetFromPost("ppu_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @49-2EDF39D6
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["grade_id"] = $this->CachedColumns["grade_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["price_change_id"] = $this->CachedColumns["price_change_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["price_level"] = $this->CachedColumns["price_level"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->price_change_id->SetText($this->FormParameters["price_change_id"][$this->RowNumber], $this->RowNumber);
            $this->grade_id->SetText($this->FormParameters["grade_id"][$this->RowNumber], $this->RowNumber);
            $this->price_level->SetText($this->FormParameters["price_level"][$this->RowNumber], $this->RowNumber);
            $this->ppu->SetText($this->FormParameters["ppu"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if(!$this->CheckBox_Delete->Value)
                    $Validation = ($this->ValidateRow() && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @49-68F9EF26
    function ValidateRow()
    {
        global $CCSLocales;
        $this->price_change_id->Validate();
        $this->grade_id->Validate();
        $this->price_level->Validate();
        $this->ppu->Validate();
        $this->CheckBox_Delete->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->price_change_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price_level->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $this->price_change_id->Errors->Clear();
        $this->grade_id->Errors->Clear();
        $this->price_level->Errors->Clear();
        $this->ppu->Errors->Clear();
        $this->CheckBox_Delete->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @49-556ED95B
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["price_change_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["grade_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["price_level"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["ppu"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @49-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @49-6B923CC2
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted)
            return;

        $this->GetFormParameters();
        $this->PressedButton = "Button_Submit";
        if($this->Button_Submit->Pressed) {
            $this->PressedButton = "Button_Submit";
        } else if($this->Cancel->Pressed) {
            $this->PressedButton = "Cancel";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Submit") {
            if(!CCGetEvent($this->Button_Submit->CCSEvents, "OnClick", $this->Button_Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Cancel") {
            if(!CCGetEvent($this->Cancel->CCSEvents, "OnClick", $this->Cancel)) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @49-55D4A533
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["grade_id"] = $this->CachedColumns["grade_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["price_change_id"] = $this->CachedColumns["price_change_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["price_level"] = $this->CachedColumns["price_level"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->price_change_id->SetText($this->FormParameters["price_change_id"][$this->RowNumber], $this->RowNumber);
            $this->grade_id->SetText($this->FormParameters["grade_id"][$this->RowNumber], $this->RowNumber);
            $this->price_level->SetText($this->FormParameters["price_level"][$this->RowNumber], $this->RowNumber);
            $this->ppu->SetText($this->FormParameters["ppu"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->CheckBox_Delete->Value) {
                    if($this->DeleteAllowed) { $Validation = ($this->DeleteRow() && $Validation); }
                } else if($this->UpdateAllowed) {
                    $Validation = ($this->UpdateRow() && $Validation);
                }
            }
            else if($this->CheckInsert() && $this->InsertAllowed)
            {
                $Validation = ($Validation && $this->InsertRow());
            }
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterSubmit", $this);
        if ($this->Errors->Count() == 0 && $Validation){
            $this->DataSource->close();
            return true;
        }
        return false;
    }
//End UpdateGrid Method

//InsertRow Method @49-45E7AF33
    function InsertRow()
    {
        if(!$this->InsertAllowed) return false;
        $this->DataSource->price_change_id->SetValue($this->price_change_id->GetValue(true));
        $this->DataSource->grade_id->SetValue($this->grade_id->GetValue(true));
        $this->DataSource->price_level->SetValue($this->price_level->GetValue(true));
        $this->DataSource->ppu->SetValue($this->ppu->GetValue(true));
        $this->DataSource->Insert();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End InsertRow Method

//UpdateRow Method @49-1369F528
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->price_change_id->SetValue($this->price_change_id->GetValue(true));
        $this->DataSource->grade_id->SetValue($this->grade_id->GetValue(true));
        $this->DataSource->price_level->SetValue($this->price_level->GetValue(true));
        $this->DataSource->ppu->SetValue($this->ppu->GetValue(true));
        $this->DataSource->Update();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End UpdateRow Method

//DeleteRow Method @49-A4A656F6
    function DeleteRow()
    {
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End DeleteRow Method

//FormScript Method @49-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @49-1FD8FF1B
    function SetFormState($FormState)
    {
        if(strlen($FormState)) {
            $FormState = str_replace("\\\\", "\\" . ord("\\"), $FormState);
            $FormState = str_replace("\\;", "\\" . ord(";"), $FormState);
            $pieces = explode(";", $FormState);
            $this->UpdatedRows = $pieces[0];
            $this->EmptyRows   = $pieces[1];
            $this->TotalRows = $this->UpdatedRows + $this->EmptyRows;
            $RowNumber = 0;
            for($i = 2; $i < sizeof($pieces); $i = $i + 3)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["grade_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["price_change_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 2];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["price_level"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["grade_id"][$RowNumber] = "";
                $this->CachedColumns["price_change_id"][$RowNumber] = "";
                $this->CachedColumns["price_level"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @49-7F7354DD
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["grade_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["price_change_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["price_level"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @49-6145C3C8
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->grade_id->Prepare();
        $this->price_level->Prepare();

        $this->DataSource->open();
        $is_next_record = ($this->ReadAllowed && $this->DataSource->next_record());
        $this->IsEmpty = ! $is_next_record;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) { return; }

        $this->Attributes->Show();
        $this->Button_Submit->Visible = $this->Button_Submit->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["price_change_id"] = $this->price_change_id->Visible;
        $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
        $this->ControlsVisible["price_level"] = $this->price_level->Visible;
        $this->ControlsVisible["ppu"] = $this->ppu->Visible;
        $this->ControlsVisible["CheckBox_Delete"] = $this->CheckBox_Delete->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($is_next_record) || !($this->DeleteAllowed)) {
                    $this->CheckBox_Delete->Visible = false;
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["grade_id"][$this->RowNumber] = $this->DataSource->CachedColumns["grade_id"];
                    $this->CachedColumns["price_change_id"][$this->RowNumber] = $this->DataSource->CachedColumns["price_change_id"];
                    $this->CachedColumns["price_level"][$this->RowNumber] = $this->DataSource->CachedColumns["price_level"];
                    $this->CheckBox_Delete->SetValue("");
                    $this->price_change_id->SetValue($this->DataSource->price_change_id->GetValue());
                    $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
                    $this->price_level->SetValue($this->DataSource->price_level->GetValue());
                    $this->ppu->SetValue($this->DataSource->ppu->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->price_change_id->SetText($this->FormParameters["price_change_id"][$this->RowNumber], $this->RowNumber);
                    $this->grade_id->SetText($this->FormParameters["grade_id"][$this->RowNumber], $this->RowNumber);
                    $this->price_level->SetText($this->FormParameters["price_level"][$this->RowNumber], $this->RowNumber);
                    $this->ppu->SetText($this->FormParameters["ppu"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["grade_id"][$this->RowNumber] = "";
                    $this->CachedColumns["price_change_id"][$this->RowNumber] = "";
                    $this->CachedColumns["price_level"][$this->RowNumber] = "";
                    $this->price_change_id->SetText("");
                    $this->grade_id->SetText("");
                    $this->price_level->SetText("");
                    $this->ppu->SetText("");
                } else {
                    $this->price_change_id->SetText($this->FormParameters["price_change_id"][$this->RowNumber], $this->RowNumber);
                    $this->grade_id->SetText($this->FormParameters["grade_id"][$this->RowNumber], $this->RowNumber);
                    $this->price_level->SetText($this->FormParameters["price_level"][$this->RowNumber], $this->RowNumber);
                    $this->ppu->SetText($this->FormParameters["ppu"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->price_change_id->Show($this->RowNumber);
                $this->grade_id->Show($this->RowNumber);
                $this->price_level->Show($this->RowNumber);
                $this->ppu->Show($this->RowNumber);
                $this->CheckBox_Delete->Show($this->RowNumber);
                if (isset($this->RowsErrors[$this->RowNumber]) && ($this->RowsErrors[$this->RowNumber] != "")) {
                    $Tpl->setblockvar("RowError", "");
                    $Tpl->setvar("Error", $this->RowsErrors[$this->RowNumber]);
                    $this->Attributes->Show();
                    $Tpl->parse("RowError", false);
                } else {
                    $Tpl->setblockvar("RowError", "");
                }
                $Tpl->setvar("FormScript", $this->FormScript($this->RowNumber));
                $Tpl->parse();
                if ($is_next_record) {
                    if ($this->FormSubmitted) {
                        $is_next_record = $this->RowNumber < $this->UpdatedRows;
                        if (($this->DataSource->CachedColumns["grade_id"] == $this->CachedColumns["grade_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["price_change_id"] == $this->CachedColumns["price_change_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["price_level"] == $this->CachedColumns["price_level"][$this->RowNumber])) {
                            if ($this->ReadAllowed) $this->DataSource->next_record();
                        }
                    }else{
                        $is_next_record = ($this->RowNumber < $this->PageSize) &&  $this->ReadAllowed && $this->DataSource->next_record();
                    }
                } else { 
                    $EmptyRowsLeft--;
                }
            } while($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed));
        } else {
            $Tpl->block_path = $EditableGridPath;
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $Tpl->block_path = $EditableGridPath;
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_price_change_id->Show();
        $this->Sorter_grade_id->Show();
        $this->Sorter_price_level->Show();
        $this->Sorter_ppu->Show();
        $this->Navigator->Show();
        $this->Button_Submit->Show();
        $this->Cancel->Show();

        if($this->CheckErrors()) {
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $Tpl->SetVar("HTMLFormProperties", "method=\"POST\" action=\"" . $this->HTMLFormAction . "\" name=\"" . $this->ComponentName . "\"");
        $Tpl->SetVar("FormState", CCToHTML($this->GetFormState($NonEmptyRows)));
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_prices_change_d Class @49-FCB6E20C

class clsssf_addin_prices_change_dDataSource extends clsDBConnection1 {  //ssf_addin_prices_change_dDataSource Class @49-9C49DB46

//DataSource Variables @49-BF3883B8
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;
    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $price_change_id;
    public $grade_id;
    public $price_level;
    public $ppu;
    public $CheckBox_Delete;
//End DataSource Variables

//DataSourceClass_Initialize Event @49-238D3E27
    function clsssf_addin_prices_change_dDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_addin_prices_change_d/Error";
        $this->Initialize();
        $this->price_change_id = new clsField("price_change_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->price_level = new clsField("price_level", ccsInteger, "");
        $this->ppu = new clsField("ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));

        $this->InsertFields["price_change_id"] = array("Name" => "price_change_id", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["grade_id"] = array("Name" => "grade_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["price_level"] = array("Name" => "price_level", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["ppu"] = array("Name" => "ppu", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["price_change_id"] = array("Name" => "price_change_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["grade_id"] = array("Name" => "grade_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["price_level"] = array("Name" => "price_level", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["ppu"] = array("Name" => "ppu", "Value" => "", "DataType" => ccsFloat);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @49-9B0AB4E5
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_price_change_id" => array("price_change_id", ""), 
            "Sorter_grade_id" => array("grade_id", ""), 
            "Sorter_price_level" => array("price_level", ""), 
            "Sorter_ppu" => array("ppu", "")));
    }
//End SetOrder Method

//Prepare Method @49-EB122E0B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlprice_change_id", ccsInteger, "", "", $this->Parameters["urlprice_change_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "price_change_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @49-16FFB7EF
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_prices_change_detail";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_prices_change_detail {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @49-B6F28F94
    function SetValues()
    {
        $this->CachedColumns["grade_id"] = $this->f("grade_id");
        $this->CachedColumns["price_change_id"] = $this->f("price_change_id");
        $this->CachedColumns["price_level"] = $this->f("price_level");
        $this->price_change_id->SetDBValue(trim($this->f("price_change_id")));
        $this->grade_id->SetDBValue($this->f("grade_id"));
        $this->price_level->SetDBValue(trim($this->f("price_level")));
        $this->ppu->SetDBValue(trim($this->f("ppu")));
    }
//End SetValues Method

//Insert Method @49-E218E046
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["price_change_id"]["Value"] = $this->price_change_id->GetDBValue(true);
        $this->InsertFields["grade_id"]["Value"] = $this->grade_id->GetDBValue(true);
        $this->InsertFields["price_level"]["Value"] = $this->price_level->GetDBValue(true);
        $this->InsertFields["ppu"]["Value"] = $this->ppu->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_addin_prices_change_detail", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @49-B9021693
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "grade_id=" . $this->ToSQL($this->CachedColumns["grade_id"], ccsText) . " AND price_change_id=" . $this->ToSQL($this->CachedColumns["price_change_id"], ccsInteger) . " AND price_level=" . $this->ToSQL($this->CachedColumns["price_level"], ccsInteger);
        $this->UpdateFields["price_change_id"]["Value"] = $this->price_change_id->GetDBValue(true);
        $this->UpdateFields["grade_id"]["Value"] = $this->grade_id->GetDBValue(true);
        $this->UpdateFields["price_level"]["Value"] = $this->price_level->GetDBValue(true);
        $this->UpdateFields["ppu"]["Value"] = $this->ppu->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_prices_change_detail", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Update Method

//Delete Method @49-D40D9AC2
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "grade_id=" . $this->ToSQL($this->CachedColumns["grade_id"], ccsText) . " AND price_change_id=" . $this->ToSQL($this->CachedColumns["price_change_id"], ccsInteger) . " AND price_level=" . $this->ToSQL($this->CachedColumns["price_level"], ccsInteger);
        $this->SQL = "DELETE FROM ssf_addin_prices_change_detail";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Delete Method

} //End ssf_addin_prices_change_dDataSource Class @49-FCB6E20C

class clsGridssf_addin_prices_change_d1 { //ssf_addin_prices_change_d1 class @105-8A50FDBF

//Variables @105-1A487223

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
    public $Sorter_price_change_id;
    public $Sorter_grade_id;
    public $Sorter_price_level;
    public $Sorter_ppu;
//End Variables

//Class_Initialize Event @105-560773A4
    function clsGridssf_addin_prices_change_d1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_prices_change_d1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_prices_change_d1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_prices_change_d1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_prices_change_d1Order", "");
        $this->SorterDirection = CCGetParam("ssf_addin_prices_change_d1Dir", "");

        $this->price_change_id = new clsControl(ccsLabel, "price_change_id", "price_change_id", ccsInteger, "", CCGetRequestParam("price_change_id", ccsGet, NULL), $this);
        $this->grade_id = new clsControl(ccsLabel, "grade_id", "grade_id", ccsText, "", CCGetRequestParam("grade_id", ccsGet, NULL), $this);
        $this->price_level = new clsControl(ccsLabel, "price_level", "price_level", ccsInteger, "", CCGetRequestParam("price_level", ccsGet, NULL), $this);
        $this->ppu = new clsControl(ccsLabel, "ppu", "ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("ppu", ccsGet, NULL), $this);
        $this->Sorter_price_change_id = new clsSorter($this->ComponentName, "Sorter_price_change_id", $FileName, $this);
        $this->Sorter_grade_id = new clsSorter($this->ComponentName, "Sorter_grade_id", $FileName, $this);
        $this->Sorter_price_level = new clsSorter($this->ComponentName, "Sorter_price_level", $FileName, $this);
        $this->Sorter_ppu = new clsSorter($this->ComponentName, "Sorter_ppu", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @105-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @105-0A924DD7
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlprice_change_id"] = CCGetFromGet("price_change_id", NULL);

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
            $this->ControlsVisible["price_change_id"] = $this->price_change_id->Visible;
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["price_level"] = $this->price_level->Visible;
            $this->ControlsVisible["ppu"] = $this->ppu->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->price_change_id->SetValue($this->DataSource->price_change_id->GetValue());
                $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
                $this->price_level->SetValue($this->DataSource->price_level->GetValue());
                $this->ppu->SetValue($this->DataSource->ppu->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->price_change_id->Show();
                $this->grade_id->Show();
                $this->price_level->Show();
                $this->ppu->Show();
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
        $this->Sorter_price_change_id->Show();
        $this->Sorter_grade_id->Show();
        $this->Sorter_price_level->Show();
        $this->Sorter_ppu->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @105-DBB8E6A3
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->price_change_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price_level->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_prices_change_d1 Class @105-FCB6E20C

class clsssf_addin_prices_change_d1DataSource extends clsDBConnection1 {  //ssf_addin_prices_change_d1DataSource Class @105-6261D4A9

//DataSource Variables @105-65BB810B
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $price_change_id;
    public $grade_id;
    public $price_level;
    public $ppu;
//End DataSource Variables

//DataSourceClass_Initialize Event @105-846AEA42
    function clsssf_addin_prices_change_d1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_prices_change_d1";
        $this->Initialize();
        $this->price_change_id = new clsField("price_change_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->price_level = new clsField("price_level", ccsInteger, "");
        $this->ppu = new clsField("ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @105-E453C8F4
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_addin_prices_change_detail.grade_id desc, ssf_addin_prices_change_detail.price_level desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_price_change_id" => array("price_change_id", ""), 
            "Sorter_grade_id" => array("grade_id", ""), 
            "Sorter_price_level" => array("price_level", ""), 
            "Sorter_ppu" => array("ppu", "")));
    }
//End SetOrder Method

//Prepare Method @105-2954BA3C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlprice_change_id", ccsInteger, "", "", $this->Parameters["urlprice_change_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_addin_prices_change_detail.price_change_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = "config_values.library = 'grade'";
        $this->wp->Criterion[3] = "config_values.groupname = 'general'";
        $this->wp->Criterion[4] = "config_values.parameter = 'number'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]);
    }
//End Prepare Method

//Open Method @105-5FF373AC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_prices_change_detail INNER JOIN config_values ON\n\n" .
        "ssf_addin_prices_change_detail.grade_id = config_values.param_value";
        $this->SQL = "SELECT price_change_id, price_level, ppu, id AS grade_id \n\n" .
        "FROM ssf_addin_prices_change_detail INNER JOIN config_values ON\n\n" .
        "ssf_addin_prices_change_detail.grade_id = config_values.param_value {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @105-94A37A66
    function SetValues()
    {
        $this->price_change_id->SetDBValue(trim($this->f("price_change_id")));
        $this->grade_id->SetDBValue($this->f("grade_id"));
        $this->price_level->SetDBValue(trim($this->f("price_level")));
        $this->ppu->SetDBValue(trim($this->f("ppu")));
    }
//End SetValues Method

} //End ssf_addin_prices_change_d1DataSource Class @105-FCB6E20C

//Initialize Page @1-7B7D1424
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
$TemplateFileName = "SSFChgPricesHeader.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-23E7F594
include("./SSFChgPricesHeader_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-DA57A931
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_prices_changeSearch = new clsRecordssf_addin_prices_changeSearch("", $MainPage);
$ssf_addin_prices_change = new clsGridssf_addin_prices_change("", $MainPage);
$ssf_addin_prices_change1 = new clsRecordssf_addin_prices_change1("", $MainPage);
$ssf_addin_prices_change_d = new clsEditableGridssf_addin_prices_change_d("", $MainPage);
$ssf_addin_prices_change_d1 = new clsGridssf_addin_prices_change_d1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_prices_changeSearch = & $ssf_addin_prices_changeSearch;
$MainPage->ssf_addin_prices_change = & $ssf_addin_prices_change;
$MainPage->ssf_addin_prices_change1 = & $ssf_addin_prices_change1;
$MainPage->ssf_addin_prices_change_d = & $ssf_addin_prices_change_d;
$MainPage->ssf_addin_prices_change_d1 = & $ssf_addin_prices_change_d1;
$ssf_addin_prices_change->Initialize();
$ssf_addin_prices_change1->Initialize();
$ssf_addin_prices_change_d->Initialize();
$ssf_addin_prices_change_d1->Initialize();

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

//Execute Components @1-BF701CB6
$SSFSpiritHeader->Operations();
$ssf_addin_prices_changeSearch->Operation();
$ssf_addin_prices_change1->Operation();
$ssf_addin_prices_change_d->Operation();
//End Execute Components

//Go to destination page @1-83BFDAEC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_prices_changeSearch);
    unset($ssf_addin_prices_change);
    unset($ssf_addin_prices_change1);
    unset($ssf_addin_prices_change_d);
    unset($ssf_addin_prices_change_d1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B78F9A39
$SSFSpiritHeader->Show();
$ssf_addin_prices_changeSearch->Show();
$ssf_addin_prices_change->Show();
$ssf_addin_prices_change1->Show();
$ssf_addin_prices_change_d->Show();
$ssf_addin_prices_change_d1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BD373906
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_prices_changeSearch);
unset($ssf_addin_prices_change);
unset($ssf_addin_prices_change1);
unset($ssf_addin_prices_change_d);
unset($ssf_addin_prices_change_d1);
unset($Tpl);
//End Unload Page


?>
