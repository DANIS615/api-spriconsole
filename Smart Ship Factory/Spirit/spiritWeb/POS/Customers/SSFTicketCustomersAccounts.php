<?php
//Include Common Files @1-71B71755
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomersAccounts.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_customers_account { //ssf_tkt_customers_account Class @10-22C1D732

//Variables @10-9E315808

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

//Class_Initialize Event @10-DED07C5A
    function clsRecordssf_tkt_customers_account($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_account/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_account";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_accnt_cust_id = new clsControl(ccsTextBox, "s_tkt_accnt_cust_id", "s_tkt_accnt_cust_id", ccsText, "", CCGetRequestParam("s_tkt_accnt_cust_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopCustomerList.php";
            $this->s_tkt_accnt_active = new clsControl(ccsListBox, "s_tkt_accnt_active", "s_tkt_accnt_active", ccsText, "", CCGetRequestParam("s_tkt_accnt_active", $Method, NULL), $this);
            $this->s_tkt_accnt_active->DSType = dsListOfValues;
            $this->s_tkt_accnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_tkt_accnt_cust_id", "s_tkt_accnt_active", "ccsForm"));
            $this->ClearParameters->Page = "SSFTicketCustomersAccounts.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @10-9632DB3D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_accnt_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_accnt_active->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_accnt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_accnt_active->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @10-53078FA1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tkt_accnt_active->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @10-47E4AEE9
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
        $Redirect = "SSFTicketCustomersAccounts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomersAccounts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @10-9764E280
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_accnt_active->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_accnt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_accnt_active->Errors->ToString());
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

        $this->s_tkt_accnt_cust_id->Show();
        $this->Link1->Show();
        $this->s_tkt_accnt_active->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_account Class @10-FCB6E20C

class clsGridssf_tkt_customers_account1 { //ssf_tkt_customers_account1 class @3-5A57C805

//Variables @3-53E45325

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
    public $Sorter_tkt_accnt_cust_id;
    public $Sorter_tkt_accnt_id;
    public $Sorter_tkt_accnt_credit_limit;
    public $Sorter_tkt_accnt_active;
//End Variables

//Class_Initialize Event @3-80458A93
    function clsGridssf_tkt_customers_account1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers_account1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers_account1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customers_account1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_customers_account1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_customers_account1Dir", "");

        $this->tkt_accnt_cust_id = new clsControl(ccsLink, "tkt_accnt_cust_id", "tkt_accnt_cust_id", ccsText, "", CCGetRequestParam("tkt_accnt_cust_id", ccsGet, NULL), $this);
        $this->tkt_accnt_cust_id->Page = "SSFTicketCustomers.php";
        $this->tkt_accnt_id = new clsControl(ccsLink, "tkt_accnt_id", "tkt_accnt_id", ccsText, "", CCGetRequestParam("tkt_accnt_id", ccsGet, NULL), $this);
        $this->tkt_accnt_id->Page = "SSFTicketCustomersAccounts.php";
        $this->tkt_accnt_credit_limit = new clsControl(ccsLabel, "tkt_accnt_credit_limit", "tkt_accnt_credit_limit", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_credit_limit", ccsGet, NULL), $this);
        $this->tkt_accnt_active = new clsControl(ccsLabel, "tkt_accnt_active", "tkt_accnt_active", ccsText, "", CCGetRequestParam("tkt_accnt_active", ccsGet, NULL), $this);
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTicketCustomersSubAccounts.php";
        $this->Sorter_tkt_accnt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_cust_id", $FileName, $this);
        $this->Sorter_tkt_accnt_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_id", $FileName, $this);
        $this->Sorter_tkt_accnt_credit_limit = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_credit_limit", $FileName, $this);
        $this->Sorter_tkt_accnt_active = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_active", $FileName, $this);
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

//Show Method @3-D14C677D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_accnt_cust_id"] = CCGetFromGet("s_tkt_accnt_cust_id", NULL);
        $this->DataSource->Parameters["urls_tkt_accnt_active"] = CCGetFromGet("s_tkt_accnt_active", NULL);

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
            $this->ControlsVisible["tkt_accnt_cust_id"] = $this->tkt_accnt_cust_id->Visible;
            $this->ControlsVisible["tkt_accnt_id"] = $this->tkt_accnt_id->Visible;
            $this->ControlsVisible["tkt_accnt_credit_limit"] = $this->tkt_accnt_credit_limit->Visible;
            $this->ControlsVisible["tkt_accnt_active"] = $this->tkt_accnt_active->Visible;
            $this->ControlsVisible["Link1"] = $this->Link1->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_accnt_cust_id->SetValue($this->DataSource->tkt_accnt_cust_id->GetValue());
                $this->tkt_accnt_cust_id->Parameters = "";
                $this->tkt_accnt_cust_id->Parameters = CCAddParam($this->tkt_accnt_cust_id->Parameters, "tkt_cust_id", $this->DataSource->f("tkt_accnt_cust_id"));
                $this->tkt_accnt_cust_id->Parameters = CCAddParam($this->tkt_accnt_cust_id->Parameters, "s_tkt_cust_id", $this->DataSource->f("tkt_accnt_cust_id"));
                $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                $this->tkt_accnt_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_accnt_id->Parameters = CCAddParam($this->tkt_accnt_id->Parameters, "tkt_accnt_cust_id", $this->DataSource->f("tkt_accnt_cust_id"));
                $this->tkt_accnt_credit_limit->SetValue($this->DataSource->tkt_accnt_credit_limit->GetValue());
                $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                $this->Link1->Parameters = "";
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "tkt_subaccnt_cust_id", $this->DataSource->f("tkt_accnt_cust_id"));
                $this->Attributes->SetValue("stylenotactive", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_accnt_cust_id->Show();
                $this->tkt_accnt_id->Show();
                $this->tkt_accnt_credit_limit->Show();
                $this->tkt_accnt_active->Show();
                $this->Link1->Show();
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
        $this->Sorter_tkt_accnt_cust_id->Show();
        $this->Sorter_tkt_accnt_id->Show();
        $this->Sorter_tkt_accnt_credit_limit->Show();
        $this->Sorter_tkt_accnt_active->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-21FC2252
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_accnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_credit_limit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account1 Class @3-FCB6E20C

class clsssf_tkt_customers_account1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account1DataSource Class @3-7C026481

//DataSource Variables @3-5350546C
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_accnt_cust_id;
    public $tkt_accnt_id;
    public $tkt_accnt_credit_limit;
    public $tkt_accnt_active;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-5F838C31
    function clsssf_tkt_customers_account1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account1";
        $this->Initialize();
        $this->tkt_accnt_cust_id = new clsField("tkt_accnt_cust_id", ccsText, "");
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->tkt_accnt_credit_limit = new clsField("tkt_accnt_credit_limit", ccsFloat, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-7770CE89
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_accnt_cust_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_accnt_cust_id" => array("tkt_accnt_cust_id", ""), 
            "Sorter_tkt_accnt_id" => array("tkt_accnt_id", ""), 
            "Sorter_tkt_accnt_credit_limit" => array("tkt_accnt_credit_limit", ""), 
            "Sorter_tkt_accnt_active" => array("tkt_accnt_active", "")));
    }
//End SetOrder Method

//Prepare Method @3-EFAE2A27
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_accnt_cust_id", ccsText, "", "", $this->Parameters["urls_tkt_accnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_accnt_active", ccsText, "", "", $this->Parameters["urls_tkt_accnt_active"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tkt_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "tkt_accnt_active", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-B2BFD5A8
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_accounts";
        $this->SQL = "SELECT *, tkt_accnt_cust_id, tkt_accnt_id, tkt_accnt_credit_limit, tkt_accnt_active \n\n" .
        "FROM ssf_tkt_customers_accounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-9095CFDB
    function SetValues()
    {
        $this->tkt_accnt_cust_id->SetDBValue($this->f("tkt_accnt_cust_id"));
        $this->tkt_accnt_id->SetDBValue($this->f("tkt_accnt_id"));
        $this->tkt_accnt_credit_limit->SetDBValue(trim($this->f("tkt_accnt_credit_limit")));
        $this->tkt_accnt_active->SetDBValue($this->f("tkt_accnt_active"));
    }
//End SetValues Method

} //End ssf_tkt_customers_account1DataSource Class @3-FCB6E20C

class clsRecordssf_tkt_customers_account2 { //ssf_tkt_customers_account2 Class @32-FC9B2322

//Variables @32-9E315808

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

//Class_Initialize Event @32-5B9612AB
    function clsRecordssf_tkt_customers_account2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_account2/Error";
        $this->DataSource = new clsssf_tkt_customers_account2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_account2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_accnt_id = new clsControl(ccsTextBox, "tkt_accnt_id", $CCSLocales->GetText("tkt_accnt_id"), ccsText, "", CCGetRequestParam("tkt_accnt_id", $Method, NULL), $this);
            $this->tkt_accnt_id->Required = true;
            $this->tkt_accnt_credit_limit = new clsControl(ccsTextBox, "tkt_accnt_credit_limit", $CCSLocales->GetText("tkt_accnt_credit_limit"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_credit_limit", $Method, NULL), $this);
            $this->tkt_accnt_credit_balance = new clsControl(ccsLabel, "tkt_accnt_credit_balance", $CCSLocales->GetText("tkt_accnt_credit_balance"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_credit_balance", $Method, NULL), $this);
            $this->h_credit_balance = new clsControl(ccsHidden, "h_credit_balance", "h_credit_balance", ccsText, "", CCGetRequestParam("h_credit_balance", $Method, NULL), $this);
            $this->lblsaldo = new clsControl(ccsLabel, "lblsaldo", "lblsaldo", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lblsaldo", $Method, NULL), $this);
            $this->tkt_accnt_trx_limit = new clsControl(ccsTextBox, "tkt_accnt_trx_limit", $CCSLocales->GetText("tkt_accnt_trx_limit"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_trx_limit", $Method, NULL), $this);
            $this->tkt_accnt_active = new clsControl(ccsListBox, "tkt_accnt_active", $CCSLocales->GetText("tkt_accnt_active"), ccsText, "", CCGetRequestParam("tkt_accnt_active", $Method, NULL), $this);
            $this->tkt_accnt_active->DSType = dsListOfValues;
            $this->tkt_accnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->Button1 = new clsButton("Button1", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_accnt_cust_id = new clsControl(ccsHidden, "tkt_accnt_cust_id", $CCSLocales->GetText("tkt_accnt_cust_id"), ccsText, "", CCGetRequestParam("tkt_accnt_cust_id", $Method, NULL), $this);
            $this->tkt_accnt_cust_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @32-B480A3D8
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_accnt_cust_id"] = CCGetFromGet("tkt_accnt_cust_id", NULL);
    }
//End Initialize Method

//Validate Method @32-F0330D89
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_accnt_id->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_credit_limit->Validate() && $Validation);
        $Validation = ($this->h_credit_balance->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_trx_limit->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_active->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_cust_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_accnt_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_credit_limit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_credit_balance->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_trx_limit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_active->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_cust_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @32-EC0AC81E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_accnt_id->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_credit_limit->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_credit_balance->Errors->Count());
        $errors = ($errors || $this->h_credit_balance->Errors->Count());
        $errors = ($errors || $this->lblsaldo->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_trx_limit->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_active->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @32-288FE172
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button1";
            if($this->Button1->Pressed) {
                $this->PressedButton = "Button1";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketCustomersAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketCustomersAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_accnt_cust_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketCustomersAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_accnt_cust_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button1") {
                if(!CCGetEvent($this->Button1->CCSEvents, "OnClick", $this->Button1)) {
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

//InsertRow Method @32-7F90E40E
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->tkt_accnt_credit_limit->SetValue($this->tkt_accnt_credit_limit->GetValue(true));
        $this->DataSource->tkt_accnt_credit_balance->SetValue($this->tkt_accnt_credit_balance->GetValue(true));
        $this->DataSource->h_credit_balance->SetValue($this->h_credit_balance->GetValue(true));
        $this->DataSource->lblsaldo->SetValue($this->lblsaldo->GetValue(true));
        $this->DataSource->tkt_accnt_trx_limit->SetValue($this->tkt_accnt_trx_limit->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_accnt_cust_id->SetValue($this->tkt_accnt_cust_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @32-747742FB
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->tkt_accnt_credit_limit->SetValue($this->tkt_accnt_credit_limit->GetValue(true));
        $this->DataSource->tkt_accnt_credit_balance->SetValue($this->tkt_accnt_credit_balance->GetValue(true));
        $this->DataSource->h_credit_balance->SetValue($this->h_credit_balance->GetValue(true));
        $this->DataSource->lblsaldo->SetValue($this->lblsaldo->GetValue(true));
        $this->DataSource->tkt_accnt_trx_limit->SetValue($this->tkt_accnt_trx_limit->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_accnt_cust_id->SetValue($this->tkt_accnt_cust_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @32-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @32-F27C8585
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_accnt_active->Prepare();

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
                $this->tkt_accnt_credit_balance->SetValue($this->DataSource->tkt_accnt_credit_balance->GetValue());
                if(!$this->FormSubmitted){
                    $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                    $this->tkt_accnt_credit_limit->SetValue($this->DataSource->tkt_accnt_credit_limit->GetValue());
                    $this->h_credit_balance->SetValue($this->DataSource->h_credit_balance->GetValue());
                    $this->tkt_accnt_trx_limit->SetValue($this->DataSource->tkt_accnt_trx_limit->GetValue());
                    $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                    $this->tkt_accnt_cust_id->SetValue($this->DataSource->tkt_accnt_cust_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_accnt_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_credit_limit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_credit_balance->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_credit_balance->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblsaldo->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_trx_limit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_active->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_cust_id->Errors->ToString());
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
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->Attributes->SetValue("accntnegbalance", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_accnt_id->Show();
        $this->tkt_accnt_credit_limit->Show();
        $this->tkt_accnt_credit_balance->Show();
        $this->h_credit_balance->Show();
        $this->lblsaldo->Show();
        $this->tkt_accnt_trx_limit->Show();
        $this->tkt_accnt_active->Show();
        $this->Button1->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_accnt_cust_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers_account2 Class @32-FCB6E20C

class clsssf_tkt_customers_account2DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account2DataSource Class @32-F7D15A98

//DataSource Variables @32-9A09F888
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
    public $tkt_accnt_id;
    public $tkt_accnt_credit_limit;
    public $tkt_accnt_credit_balance;
    public $h_credit_balance;
    public $lblsaldo;
    public $tkt_accnt_trx_limit;
    public $tkt_accnt_active;
    public $tkt_accnt_cust_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @32-5DE62830
    function clsssf_tkt_customers_account2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_account2/Error";
        $this->Initialize();
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->tkt_accnt_credit_limit = new clsField("tkt_accnt_credit_limit", ccsFloat, "");
        $this->tkt_accnt_credit_balance = new clsField("tkt_accnt_credit_balance", ccsFloat, "");
        $this->h_credit_balance = new clsField("h_credit_balance", ccsText, "");
        $this->lblsaldo = new clsField("lblsaldo", ccsFloat, "");
        $this->tkt_accnt_trx_limit = new clsField("tkt_accnt_trx_limit", ccsFloat, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");
        $this->tkt_accnt_cust_id = new clsField("tkt_accnt_cust_id", ccsText, "");

        $this->InsertFields["tkt_accnt_id"] = array("Name" => "tkt_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_accnt_credit_limit"] = array("Name" => "tkt_accnt_credit_limit", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tkt_accnt_credit_balance"] = array("Name" => "tkt_accnt_credit_balance", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_accnt_trx_limit"] = array("Name" => "tkt_accnt_trx_limit", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tkt_accnt_active"] = array("Name" => "tkt_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_accnt_cust_id"] = array("Name" => "tkt_accnt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_accnt_id"] = array("Name" => "tkt_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_accnt_credit_limit"] = array("Name" => "tkt_accnt_credit_limit", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_accnt_credit_balance"] = array("Name" => "tkt_accnt_credit_balance", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_accnt_trx_limit"] = array("Name" => "tkt_accnt_trx_limit", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_accnt_active"] = array("Name" => "tkt_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_accnt_cust_id"] = array("Name" => "tkt_accnt_cust_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @32-9F02E80D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_accnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_accnt_cust_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @32-88FF495E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers_accounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @32-FD5FCFC8
    function SetValues()
    {
        $this->tkt_accnt_id->SetDBValue($this->f("tkt_accnt_id"));
        $this->tkt_accnt_credit_limit->SetDBValue(trim($this->f("tkt_accnt_credit_limit")));
        $this->tkt_accnt_credit_balance->SetDBValue(trim($this->f("tkt_accnt_credit_balance")));
        $this->h_credit_balance->SetDBValue($this->f("tkt_accnt_credit_balance"));
        $this->tkt_accnt_trx_limit->SetDBValue(trim($this->f("tkt_accnt_trx_limit")));
        $this->tkt_accnt_active->SetDBValue($this->f("tkt_accnt_active"));
        $this->tkt_accnt_cust_id->SetDBValue($this->f("tkt_accnt_cust_id"));
    }
//End SetValues Method

//Insert Method @32-294109B4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_accnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->InsertFields["tkt_accnt_credit_limit"]["Value"] = $this->tkt_accnt_credit_limit->GetDBValue(true);
        $this->InsertFields["tkt_accnt_credit_balance"]["Value"] = $this->h_credit_balance->GetDBValue(true);
        $this->InsertFields["tkt_accnt_trx_limit"]["Value"] = $this->tkt_accnt_trx_limit->GetDBValue(true);
        $this->InsertFields["tkt_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->InsertFields["tkt_accnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers_accounts", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @32-AAA47CCA
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_accnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->UpdateFields["tkt_accnt_credit_limit"]["Value"] = $this->tkt_accnt_credit_limit->GetDBValue(true);
        $this->UpdateFields["tkt_accnt_credit_balance"]["Value"] = $this->h_credit_balance->GetDBValue(true);
        $this->UpdateFields["tkt_accnt_trx_limit"]["Value"] = $this->tkt_accnt_trx_limit->GetDBValue(true);
        $this->UpdateFields["tkt_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->UpdateFields["tkt_accnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_customers_accounts", $this->UpdateFields, $this);
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

//Delete Method @32-22451D5B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers_accounts";
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

} //End ssf_tkt_customers_account2DataSource Class @32-FCB6E20C

//Initialize Page @1-0469FA39
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
$TemplateFileName = "SSFTicketCustomersAccounts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F415596B
include("./SSFTicketCustomersAccounts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-0976D430
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_customers_account = new clsRecordssf_tkt_customers_account("", $MainPage);
$ssf_tkt_customers_account1 = new clsGridssf_tkt_customers_account1("", $MainPage);
$ssf_tkt_customers_account2 = new clsRecordssf_tkt_customers_account2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customers_account = & $ssf_tkt_customers_account;
$MainPage->ssf_tkt_customers_account1 = & $ssf_tkt_customers_account1;
$MainPage->ssf_tkt_customers_account2 = & $ssf_tkt_customers_account2;
$ssf_tkt_customers_account1->Initialize();
$ssf_tkt_customers_account2->Initialize();

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

//Execute Components @1-9C4C9C7D
$SSFSpiritHeader->Operations();
$ssf_tkt_customers_account->Operation();
$ssf_tkt_customers_account2->Operation();
//End Execute Components

//Go to destination page @1-DE46B5E5
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_customers_account);
    unset($ssf_tkt_customers_account1);
    unset($ssf_tkt_customers_account2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-1BA8BDC8
$SSFSpiritHeader->Show();
$ssf_tkt_customers_account->Show();
$ssf_tkt_customers_account1->Show();
$ssf_tkt_customers_account2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-B0DAED11
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customers_account);
unset($ssf_tkt_customers_account1);
unset($ssf_tkt_customers_account2);
unset($Tpl);
//End Unload Page


?>
