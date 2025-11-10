<?php
//Include Common Files @1-04EA56DB
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomersTax.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_customers_typesSearch { //ssf_tkt_customers_typesSearch Class @6-79211AC3

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

//Class_Initialize Event @6-C1B5EF4B
    function clsRecordssf_tkt_customers_typesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_typesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_typesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_cust_type_id = new clsControl(ccsTextBox, "s_tkt_cust_type_id", "s_tkt_cust_type_id", ccsText, "", CCGetRequestParam("s_tkt_cust_type_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-345FC456
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_cust_type_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_cust_type_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-AFC81FBE
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_cust_type_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-B7D33281
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
        $Redirect = "SSFTicketCustomersTax.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomersTax.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-1DB0829E
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
            $Error = ComposeStrings($Error, $this->s_tkt_cust_type_id->Errors->ToString());
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

        $this->s_tkt_cust_type_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_typesSearch Class @6-FCB6E20C

class clsGridssf_tkt_customers_types { //ssf_tkt_customers_types class @3-C798C287

//Variables @3-E5C4893B

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
    public $Sorter_tkt_cust_type_id;
    public $Sorter_tkt_cust_type_desc;
//End Variables

//Class_Initialize Event @3-AA4FFE5F
    function clsGridssf_tkt_customers_types($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers_types";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers_types";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customers_typesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_customers_typesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_customers_typesDir", "");

        $this->tkt_cust_type_id = new clsControl(ccsLink, "tkt_cust_type_id", "tkt_cust_type_id", ccsText, "", CCGetRequestParam("tkt_cust_type_id", ccsGet, NULL), $this);
        $this->tkt_cust_type_id->Page = "SSFTicketCustomersTax.php";
        $this->tkt_cust_type_desc = new clsControl(ccsLabel, "tkt_cust_type_desc", "tkt_cust_type_desc", ccsText, "", CCGetRequestParam("tkt_cust_type_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_cust_type_id = new clsSorter($this->ComponentName, "Sorter_tkt_cust_type_id", $FileName, $this);
        $this->Sorter_tkt_cust_type_desc = new clsSorter($this->ComponentName, "Sorter_tkt_cust_type_desc", $FileName, $this);
        $this->customers_types_Insert = new clsControl(ccsLink, "customers_types_Insert", "customers_types_Insert", ccsText, "", CCGetRequestParam("customers_types_Insert", ccsGet, NULL), $this);
        $this->customers_types_Insert->Page = "SSFTicketCustomersTax.php";
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

//Show Method @3-7834BDAD
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_cust_type_id"] = CCGetFromGet("s_tkt_cust_type_id", NULL);

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
            $this->ControlsVisible["tkt_cust_type_id"] = $this->tkt_cust_type_id->Visible;
            $this->ControlsVisible["tkt_cust_type_desc"] = $this->tkt_cust_type_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_cust_type_id->SetValue($this->DataSource->tkt_cust_type_id->GetValue());
                $this->tkt_cust_type_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_cust_type_id->Parameters = CCAddParam($this->tkt_cust_type_id->Parameters, "tkt_cust_type_id", $this->DataSource->f("tkt_cust_type_id"));
                $this->tkt_cust_type_desc->SetValue($this->DataSource->tkt_cust_type_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_cust_type_id->Show();
                $this->tkt_cust_type_desc->Show();
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
        $this->customers_types_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_cust_type_id", "ccsForm"));
        $this->customers_types_Insert->Parameters = CCAddParam($this->customers_types_Insert->Parameters, "customers_types_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_cust_type_id->Show();
        $this->Sorter_tkt_cust_type_desc->Show();
        $this->customers_types_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-FADC1D49
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_cust_type_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_type_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_types Class @3-FCB6E20C

class clsssf_tkt_customers_typesDataSource extends clsDBConnection1 {  //ssf_tkt_customers_typesDataSource Class @3-8BF2B625

//DataSource Variables @3-A8D333C6
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_cust_type_id;
    public $tkt_cust_type_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-91228D70
    function clsssf_tkt_customers_typesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_types";
        $this->Initialize();
        $this->tkt_cust_type_id = new clsField("tkt_cust_type_id", ccsText, "");
        $this->tkt_cust_type_desc = new clsField("tkt_cust_type_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-AF45C5CA
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_cust_type_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_cust_type_id" => array("tkt_cust_type_id", ""), 
            "Sorter_tkt_cust_type_desc" => array("tkt_cust_type_desc", "")));
    }
//End SetOrder Method

//Prepare Method @3-2EAA596F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_cust_type_id", ccsText, "", "", $this->Parameters["urls_tkt_cust_type_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tkt_cust_type_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-9DF1E0C0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_types";
        $this->SQL = "SELECT *, tkt_cust_type_id, tkt_cust_type_desc \n\n" .
        "FROM ssf_tkt_customers_types {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-13A4FEA0
    function SetValues()
    {
        $this->tkt_cust_type_id->SetDBValue($this->f("tkt_cust_type_id"));
        $this->tkt_cust_type_desc->SetDBValue($this->f("tkt_cust_type_desc"));
    }
//End SetValues Method

} //End ssf_tkt_customers_typesDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_customers_types1 { //ssf_tkt_customers_types1 Class @19-BAEC44F1

//Variables @19-9E315808

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

//Class_Initialize Event @19-8B9FB3EE
    function clsRecordssf_tkt_customers_types1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_types1/Error";
        $this->DataSource = new clsssf_tkt_customers_types1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_types1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_cust_type_id = new clsControl(ccsTextBox, "tkt_cust_type_id", $CCSLocales->GetText("tkt_cust_type_id"), ccsText, "", CCGetRequestParam("tkt_cust_type_id", $Method, NULL), $this);
            $this->tkt_cust_type_id->Required = true;
            $this->tkt_cust_type_desc = new clsControl(ccsTextBox, "tkt_cust_type_desc", $CCSLocales->GetText("tkt_cust_type_desc"), ccsText, "", CCGetRequestParam("tkt_cust_type_desc", $Method, NULL), $this);
            $this->tkt_cust_type_sell = new clsControl(ccsListBox, "tkt_cust_type_sell", $CCSLocales->GetText("tkt_cust_type_sell"), ccsText, "", CCGetRequestParam("tkt_cust_type_sell", $Method, NULL), $this);
            $this->tkt_cust_type_sell->DSType = dsTable;
            list($this->tkt_cust_type_sell->BoundColumn, $this->tkt_cust_type_sell->TextColumn, $this->tkt_cust_type_sell->DBFormat) = array("tkt_receipt_id", "tkt_receipt_id", "");
            $this->tkt_cust_type_sell->DataSource = new clsDBConnection1();
            $this->tkt_cust_type_sell->ds = & $this->tkt_cust_type_sell->DataSource;
            $this->tkt_cust_type_sell->DataSource->SQL = "SELECT * \n" .
"FROM ssf_tkt_receipt_format {SQL_Where} {SQL_OrderBy}";
            $this->tkt_cust_type_sell->DataSource->Order = "tkt_receipt_id";
            $this->tkt_cust_type_sell->DataSource->Order = "tkt_receipt_id";
            $this->tkt_cust_type_credit = new clsControl(ccsListBox, "tkt_cust_type_credit", $CCSLocales->GetText("tkt_cust_type_credit"), ccsText, "", CCGetRequestParam("tkt_cust_type_credit", $Method, NULL), $this);
            $this->tkt_cust_type_credit->DSType = dsTable;
            list($this->tkt_cust_type_credit->BoundColumn, $this->tkt_cust_type_credit->TextColumn, $this->tkt_cust_type_credit->DBFormat) = array("tkt_receipt_id", "tkt_receipt_id", "");
            $this->tkt_cust_type_credit->DataSource = new clsDBConnection1();
            $this->tkt_cust_type_credit->ds = & $this->tkt_cust_type_credit->DataSource;
            $this->tkt_cust_type_credit->DataSource->SQL = "SELECT * \n" .
"FROM ssf_tkt_receipt_format {SQL_Where} {SQL_OrderBy}";
            $this->tkt_cust_type_credit->DataSource->Order = "tkt_receipt_id";
            $this->tkt_cust_type_credit->DataSource->Order = "tkt_receipt_id";
            $this->tkt_cust_type_tax_id = new clsControl(ccsListBox, "tkt_cust_type_tax_id", $CCSLocales->GetText("tkt_cust_type_tax_id"), ccsText, "", CCGetRequestParam("tkt_cust_type_tax_id", $Method, NULL), $this);
            $this->tkt_cust_type_tax_id->DSType = dsTable;
            list($this->tkt_cust_type_tax_id->BoundColumn, $this->tkt_cust_type_tax_id->TextColumn, $this->tkt_cust_type_tax_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->tkt_cust_type_tax_id->DataSource = new clsDBConnection1();
            $this->tkt_cust_type_tax_id->ds = & $this->tkt_cust_type_tax_id->DataSource;
            $this->tkt_cust_type_tax_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_cust_type_tax_id->DataSource->Order = "tkt_catalog_code";
            $this->tkt_cust_type_tax_id->DataSource->wp = new clsSQLParameters();
            $this->tkt_cust_type_tax_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'tax_group_id'";
            $this->tkt_cust_type_tax_id->DataSource->Where = 
                 $this->tkt_cust_type_tax_id->DataSource->wp->Criterion[1];
            $this->tkt_cust_type_tax_id->DataSource->Order = "tkt_catalog_code";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @19-8D7201D9
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_cust_type_id"] = CCGetFromGet("tkt_cust_type_id", NULL);
    }
//End Initialize Method

//Validate Method @19-1434079A
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_cust_type_id->Validate() && $Validation);
        $Validation = ($this->tkt_cust_type_desc->Validate() && $Validation);
        $Validation = ($this->tkt_cust_type_sell->Validate() && $Validation);
        $Validation = ($this->tkt_cust_type_credit->Validate() && $Validation);
        $Validation = ($this->tkt_cust_type_tax_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_cust_type_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_type_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_type_sell->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_type_credit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_type_tax_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @19-B79BC9D5
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_cust_type_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_type_desc->Errors->Count());
        $errors = ($errors || $this->tkt_cust_type_sell->Errors->Count());
        $errors = ($errors || $this->tkt_cust_type_credit->Errors->Count());
        $errors = ($errors || $this->tkt_cust_type_tax_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @19-18000567
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
        $Redirect = "SSFTicketCustomersTax.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketCustomersTax.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "customers_types_Insert", "tkt_cust_type_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketCustomersTax.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "customers_types_Insert", "tkt_cust_type_id"));
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

//InsertRow Method @19-14A04DFC
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_cust_type_id->SetValue($this->tkt_cust_type_id->GetValue(true));
        $this->DataSource->tkt_cust_type_desc->SetValue($this->tkt_cust_type_desc->GetValue(true));
        $this->DataSource->tkt_cust_type_sell->SetValue($this->tkt_cust_type_sell->GetValue(true));
        $this->DataSource->tkt_cust_type_credit->SetValue($this->tkt_cust_type_credit->GetValue(true));
        $this->DataSource->tkt_cust_type_tax_id->SetValue($this->tkt_cust_type_tax_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @19-36AB994F
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_cust_type_id->SetValue($this->tkt_cust_type_id->GetValue(true));
        $this->DataSource->tkt_cust_type_desc->SetValue($this->tkt_cust_type_desc->GetValue(true));
        $this->DataSource->tkt_cust_type_sell->SetValue($this->tkt_cust_type_sell->GetValue(true));
        $this->DataSource->tkt_cust_type_credit->SetValue($this->tkt_cust_type_credit->GetValue(true));
        $this->DataSource->tkt_cust_type_tax_id->SetValue($this->tkt_cust_type_tax_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @19-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @19-77251E12
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_cust_type_sell->Prepare();
        $this->tkt_cust_type_credit->Prepare();
        $this->tkt_cust_type_tax_id->Prepare();

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
                    $this->tkt_cust_type_id->SetValue($this->DataSource->tkt_cust_type_id->GetValue());
                    $this->tkt_cust_type_desc->SetValue($this->DataSource->tkt_cust_type_desc->GetValue());
                    $this->tkt_cust_type_sell->SetValue($this->DataSource->tkt_cust_type_sell->GetValue());
                    $this->tkt_cust_type_credit->SetValue($this->DataSource->tkt_cust_type_credit->GetValue());
                    $this->tkt_cust_type_tax_id->SetValue($this->DataSource->tkt_cust_type_tax_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_cust_type_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_type_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_type_sell->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_type_credit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_type_tax_id->Errors->ToString());
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

        $this->tkt_cust_type_id->Show();
        $this->tkt_cust_type_desc->Show();
        $this->tkt_cust_type_sell->Show();
        $this->tkt_cust_type_credit->Show();
        $this->tkt_cust_type_tax_id->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers_types1 Class @19-FCB6E20C

class clsssf_tkt_customers_types1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_types1DataSource Class @19-B6CD5F26

//DataSource Variables @19-672B8BF0
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
    public $tkt_cust_type_id;
    public $tkt_cust_type_desc;
    public $tkt_cust_type_sell;
    public $tkt_cust_type_credit;
    public $tkt_cust_type_tax_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @19-3D3615D0
    function clsssf_tkt_customers_types1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_types1/Error";
        $this->Initialize();
        $this->tkt_cust_type_id = new clsField("tkt_cust_type_id", ccsText, "");
        $this->tkt_cust_type_desc = new clsField("tkt_cust_type_desc", ccsText, "");
        $this->tkt_cust_type_sell = new clsField("tkt_cust_type_sell", ccsText, "");
        $this->tkt_cust_type_credit = new clsField("tkt_cust_type_credit", ccsText, "");
        $this->tkt_cust_type_tax_id = new clsField("tkt_cust_type_tax_id", ccsText, "");

        $this->InsertFields["tkt_cust_type_id"] = array("Name" => "tkt_cust_type_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_type_desc"] = array("Name" => "tkt_cust_type_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_type_sell"] = array("Name" => "tkt_cust_type_sell", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_type_credit"] = array("Name" => "tkt_cust_type_credit", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_type_tax_id"] = array("Name" => "tkt_cust_type_tax_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type_id"] = array("Name" => "tkt_cust_type_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type_desc"] = array("Name" => "tkt_cust_type_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type_sell"] = array("Name" => "tkt_cust_type_sell", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type_credit"] = array("Name" => "tkt_cust_type_credit", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type_tax_id"] = array("Name" => "tkt_cust_type_tax_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @19-1B90A21F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_cust_type_id", ccsText, "", "", $this->Parameters["urltkt_cust_type_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_cust_type_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @19-525AF719
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers_types {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @19-26DCA6FD
    function SetValues()
    {
        $this->tkt_cust_type_id->SetDBValue($this->f("tkt_cust_type_id"));
        $this->tkt_cust_type_desc->SetDBValue($this->f("tkt_cust_type_desc"));
        $this->tkt_cust_type_sell->SetDBValue($this->f("tkt_cust_type_sell"));
        $this->tkt_cust_type_credit->SetDBValue($this->f("tkt_cust_type_credit"));
        $this->tkt_cust_type_tax_id->SetDBValue($this->f("tkt_cust_type_tax_id"));
    }
//End SetValues Method

//Insert Method @19-94C95124
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_cust_type_id"]["Value"] = $this->tkt_cust_type_id->GetDBValue(true);
        $this->InsertFields["tkt_cust_type_desc"]["Value"] = $this->tkt_cust_type_desc->GetDBValue(true);
        $this->InsertFields["tkt_cust_type_sell"]["Value"] = $this->tkt_cust_type_sell->GetDBValue(true);
        $this->InsertFields["tkt_cust_type_credit"]["Value"] = $this->tkt_cust_type_credit->GetDBValue(true);
        $this->InsertFields["tkt_cust_type_tax_id"]["Value"] = $this->tkt_cust_type_tax_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers_types", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @19-76AB7A23
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_cust_type_id"]["Value"] = $this->tkt_cust_type_id->GetDBValue(true);
        $this->UpdateFields["tkt_cust_type_desc"]["Value"] = $this->tkt_cust_type_desc->GetDBValue(true);
        $this->UpdateFields["tkt_cust_type_sell"]["Value"] = $this->tkt_cust_type_sell->GetDBValue(true);
        $this->UpdateFields["tkt_cust_type_credit"]["Value"] = $this->tkt_cust_type_credit->GetDBValue(true);
        $this->UpdateFields["tkt_cust_type_tax_id"]["Value"] = $this->tkt_cust_type_tax_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_customers_types", $this->UpdateFields, $this);
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

//Delete Method @19-272982B2
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers_types";
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

} //End ssf_tkt_customers_types1DataSource Class @19-FCB6E20C

//Initialize Page @1-F82301A4
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
$TemplateFileName = "SSFTicketCustomersTax.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F797784E
include("./SSFTicketCustomersTax_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A1AAC5A9
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_customers_typesSearch = new clsRecordssf_tkt_customers_typesSearch("", $MainPage);
$ssf_tkt_customers_types = new clsGridssf_tkt_customers_types("", $MainPage);
$ssf_tkt_customers_types1 = new clsRecordssf_tkt_customers_types1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customers_typesSearch = & $ssf_tkt_customers_typesSearch;
$MainPage->ssf_tkt_customers_types = & $ssf_tkt_customers_types;
$MainPage->ssf_tkt_customers_types1 = & $ssf_tkt_customers_types1;
$ssf_tkt_customers_types->Initialize();
$ssf_tkt_customers_types1->Initialize();

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

//Execute Components @1-C726BF25
$SSFSpiritHeader->Operations();
$ssf_tkt_customers_typesSearch->Operation();
$ssf_tkt_customers_types1->Operation();
//End Execute Components

//Go to destination page @1-4779A5B1
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_customers_typesSearch);
    unset($ssf_tkt_customers_types);
    unset($ssf_tkt_customers_types1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-AFB0C5D3
$SSFSpiritHeader->Show();
$ssf_tkt_customers_typesSearch->Show();
$ssf_tkt_customers_types->Show();
$ssf_tkt_customers_types1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6A3C78B9
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customers_typesSearch);
unset($ssf_tkt_customers_types);
unset($ssf_tkt_customers_types1);
unset($Tpl);
//End Unload Page


?>
