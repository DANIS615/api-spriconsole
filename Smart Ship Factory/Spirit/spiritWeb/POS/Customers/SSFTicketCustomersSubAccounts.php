<?php
//Include Common Files @1-133B43FE
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomersSubAccounts.php");
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

//Class_Initialize Event @10-F0F09DDC
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
            $this->s_tkt_subaccnt_desc = new clsControl(ccsTextBox, "s_tkt_subaccnt_desc", $CCSLocales->GetText("tkt_subaccnt_description"), ccsText, "", CCGetRequestParam("s_tkt_subaccnt_desc", $Method, NULL), $this);
            $this->s_tkt_subaccnt_active = new clsControl(ccsListBox, "s_tkt_subaccnt_active", "s_tkt_subaccnt_active", ccsText, "", CCGetRequestParam("s_tkt_subaccnt_active", $Method, NULL), $this);
            $this->s_tkt_subaccnt_active->DSType = dsListOfValues;
            $this->s_tkt_subaccnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_tkt_subaccnt_desc", "s_tkt_subaccnt_active", "ccsForm"));
            $this->ClearParameters->Page = "SSFTicketCustomersSubAccounts.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @10-109DC6ED
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_subaccnt_desc->Validate() && $Validation);
        $Validation = ($this->s_tkt_subaccnt_active->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_subaccnt_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_subaccnt_active->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @10-FBEF67D1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_subaccnt_desc->Errors->Count());
        $errors = ($errors || $this->s_tkt_subaccnt_active->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @10-A4DBF556
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
        $Redirect = "SSFTicketCustomersSubAccounts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomersSubAccounts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @10-D14ED75A
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_subaccnt_active->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_subaccnt_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_subaccnt_active->Errors->ToString());
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

        $this->s_tkt_subaccnt_desc->Show();
        $this->s_tkt_subaccnt_active->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_account Class @10-FCB6E20C

class clsGridssf_tkt_customers_account3 { //ssf_tkt_customers_account3 class @86-6861AA87

//Variables @86-6E51DF5A

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

//Class_Initialize Event @86-B0911A9D
    function clsGridssf_tkt_customers_account3($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers_account3";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers_account3";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customers_account3DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 1;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->tkt_accnt_id = new clsControl(ccsLabel, "tkt_accnt_id", "tkt_accnt_id", ccsText, "", CCGetRequestParam("tkt_accnt_id", ccsGet, NULL), $this);
        $this->tkt_accnt_active = new clsControl(ccsHidden, "tkt_accnt_active", "tkt_accnt_active", ccsText, "", CCGetRequestParam("tkt_accnt_active", ccsGet, NULL), $this);
        $this->tkt_accnt_credit_limit = new clsControl(ccsLabel, "tkt_accnt_credit_limit", "tkt_accnt_credit_limit", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_credit_limit", ccsGet, NULL), $this);
        $this->tkt_accnt_trx_limit = new clsControl(ccsLabel, "tkt_accnt_trx_limit", "tkt_accnt_trx_limit", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_trx_limit", ccsGet, NULL), $this);
        $this->tkt_accnt_credit_balance = new clsControl(ccsLabel, "tkt_accnt_credit_balance", "tkt_accnt_credit_balance", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_accnt_credit_balance", ccsGet, NULL), $this);
        $this->lblaccntbalance = new clsControl(ccsLabel, "lblaccntbalance", "lblaccntbalance", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lblaccntbalance", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @86-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @86-7F2A7D2C
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltkt_subaccnt_cust_id"] = CCGetFromGet("tkt_subaccnt_cust_id", NULL);

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
            $this->ControlsVisible["tkt_accnt_id"] = $this->tkt_accnt_id->Visible;
            $this->ControlsVisible["tkt_accnt_active"] = $this->tkt_accnt_active->Visible;
            $this->ControlsVisible["tkt_accnt_credit_limit"] = $this->tkt_accnt_credit_limit->Visible;
            $this->ControlsVisible["tkt_accnt_trx_limit"] = $this->tkt_accnt_trx_limit->Visible;
            $this->ControlsVisible["tkt_accnt_credit_balance"] = $this->tkt_accnt_credit_balance->Visible;
            $this->ControlsVisible["lblaccntbalance"] = $this->lblaccntbalance->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                $this->tkt_accnt_credit_limit->SetValue($this->DataSource->tkt_accnt_credit_limit->GetValue());
                $this->tkt_accnt_trx_limit->SetValue($this->DataSource->tkt_accnt_trx_limit->GetValue());
                $this->tkt_accnt_credit_balance->SetValue($this->DataSource->tkt_accnt_credit_balance->GetValue());
                $this->Attributes->SetValue("accntnegbalance", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_accnt_id->Show();
                $this->tkt_accnt_active->Show();
                $this->tkt_accnt_credit_limit->Show();
                $this->tkt_accnt_trx_limit->Show();
                $this->tkt_accnt_credit_balance->Show();
                $this->lblaccntbalance->Show();
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
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @86-A1841B49
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_credit_limit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_trx_limit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_credit_balance->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblaccntbalance->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account3 Class @86-FCB6E20C

class clsssf_tkt_customers_account3DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account3DataSource Class @86-384F4D50

//DataSource Variables @86-40E905ED
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_accnt_id;
    public $tkt_accnt_active;
    public $tkt_accnt_credit_limit;
    public $tkt_accnt_trx_limit;
    public $tkt_accnt_credit_balance;
//End DataSource Variables

//DataSourceClass_Initialize Event @86-40BC1C3C
    function clsssf_tkt_customers_account3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account3";
        $this->Initialize();
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");
        $this->tkt_accnt_credit_limit = new clsField("tkt_accnt_credit_limit", ccsFloat, "");
        $this->tkt_accnt_trx_limit = new clsField("tkt_accnt_trx_limit", ccsFloat, "");
        $this->tkt_accnt_credit_balance = new clsField("tkt_accnt_credit_balance", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @86-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @86-2FC0C444
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @86-E13A8A2C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_accounts";
        $this->SQL = "SELECT * \n\n" .
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

//SetValues Method @86-FB089F71
    function SetValues()
    {
        $this->tkt_accnt_id->SetDBValue($this->f("tkt_accnt_id"));
        $this->tkt_accnt_active->SetDBValue($this->f("tkt_accnt_active"));
        $this->tkt_accnt_credit_limit->SetDBValue(trim($this->f("tkt_accnt_credit_limit")));
        $this->tkt_accnt_trx_limit->SetDBValue(trim($this->f("tkt_accnt_trx_limit")));
        $this->tkt_accnt_credit_balance->SetDBValue(trim($this->f("tkt_accnt_credit_balance")));
    }
//End SetValues Method

} //End ssf_tkt_customers_account3DataSource Class @86-FCB6E20C

class clsGridssf_tkt_customers_account1 { //ssf_tkt_customers_account1 class @3-5A57C805

//Variables @3-0BB566AC

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
    public $Sorter_tkt_subaccnt_description;
    public $Sorter_tkt_accnt_credit_limit;
    public $Sorter_tkt_accnt_active;
//End Variables

//Class_Initialize Event @3-0F926C5E
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

        $this->tkt_subaccnt_cust_id = new clsControl(ccsLabel, "tkt_subaccnt_cust_id", "tkt_subaccnt_cust_id", ccsText, "", CCGetRequestParam("tkt_subaccnt_cust_id", ccsGet, NULL), $this);
        $this->tkt_subaccnt_id = new clsControl(ccsLink, "tkt_subaccnt_id", "tkt_subaccnt_id", ccsText, "", CCGetRequestParam("tkt_subaccnt_id", ccsGet, NULL), $this);
        $this->tkt_subaccnt_id->Page = "SSFTicketCustomersSubAccounts.php";
        $this->tkt_subaccnt_description = new clsControl(ccsLabel, "tkt_subaccnt_description", "tkt_subaccnt_description", ccsText, "", CCGetRequestParam("tkt_subaccnt_description", ccsGet, NULL), $this);
        $this->tkt_subaccnt_credit_limit = new clsControl(ccsLabel, "tkt_subaccnt_credit_limit", "tkt_subaccnt_credit_limit", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_subaccnt_credit_limit", ccsGet, NULL), $this);
        $this->tkt_subaccnt_active = new clsControl(ccsLabel, "tkt_subaccnt_active", "tkt_subaccnt_active", ccsText, "", CCGetRequestParam("tkt_subaccnt_active", ccsGet, NULL), $this);
        $this->Sorter_tkt_accnt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_cust_id", $FileName, $this);
        $this->Sorter_tkt_accnt_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_id", $FileName, $this);
        $this->Sorter_tkt_subaccnt_description = new clsSorter($this->ComponentName, "Sorter_tkt_subaccnt_description", $FileName, $this);
        $this->Sorter_tkt_accnt_credit_limit = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_credit_limit", $FileName, $this);
        $this->Sorter_tkt_accnt_active = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_active", $FileName, $this);
        $this->subaccnt_insert = new clsControl(ccsLink, "subaccnt_insert", "subaccnt_insert", ccsText, "", CCGetRequestParam("subaccnt_insert", ccsGet, NULL), $this);
        $this->subaccnt_insert->Page = "SSFTicketCustomersSubAccounts.php";
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

//Show Method @3-554177F9
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_subaccnt_desc"] = CCGetFromGet("s_tkt_subaccnt_desc", NULL);
        $this->DataSource->Parameters["urls_tkt_subaccnt_active"] = CCGetFromGet("s_tkt_subaccnt_active", NULL);
        $this->DataSource->Parameters["urltkt_subaccnt_cust_id"] = CCGetFromGet("tkt_subaccnt_cust_id", NULL);

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
            $this->ControlsVisible["tkt_subaccnt_cust_id"] = $this->tkt_subaccnt_cust_id->Visible;
            $this->ControlsVisible["tkt_subaccnt_id"] = $this->tkt_subaccnt_id->Visible;
            $this->ControlsVisible["tkt_subaccnt_description"] = $this->tkt_subaccnt_description->Visible;
            $this->ControlsVisible["tkt_subaccnt_credit_limit"] = $this->tkt_subaccnt_credit_limit->Visible;
            $this->ControlsVisible["tkt_subaccnt_active"] = $this->tkt_subaccnt_active->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_subaccnt_cust_id->SetValue($this->DataSource->tkt_subaccnt_cust_id->GetValue());
                $this->tkt_subaccnt_id->SetValue($this->DataSource->tkt_subaccnt_id->GetValue());
                $this->tkt_subaccnt_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_subaccnt_id->Parameters = CCAddParam($this->tkt_subaccnt_id->Parameters, "tkt_subaccnt_cust_id", $this->DataSource->f("tkt_subaccnt_cust_id"));
                $this->tkt_subaccnt_id->Parameters = CCAddParam($this->tkt_subaccnt_id->Parameters, "tkt_subaccnt_id", $this->DataSource->f("tkt_subaccnt_id"));
                $this->tkt_subaccnt_description->SetValue($this->DataSource->tkt_subaccnt_description->GetValue());
                $this->tkt_subaccnt_credit_limit->SetValue($this->DataSource->tkt_subaccnt_credit_limit->GetValue());
                $this->tkt_subaccnt_active->SetValue($this->DataSource->tkt_subaccnt_active->GetValue());
                $this->Attributes->SetValue("stylenotactive", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_subaccnt_cust_id->Show();
                $this->tkt_subaccnt_id->Show();
                $this->tkt_subaccnt_description->Show();
                $this->tkt_subaccnt_credit_limit->Show();
                $this->tkt_subaccnt_active->Show();
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
        $this->subaccnt_insert->Parameters = CCGetQueryString("QueryString", array("tkt_subaccnt_id", "ccsForm"));
        $this->subaccnt_insert->Parameters = CCAddParam($this->subaccnt_insert->Parameters, "subaccnt_insert", insert);
        $this->subaccnt_insert->Parameters = CCAddParam($this->subaccnt_insert->Parameters, "tkt_subaccnt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_accnt_cust_id->Show();
        $this->Sorter_tkt_accnt_id->Show();
        $this->Sorter_tkt_subaccnt_description->Show();
        $this->Sorter_tkt_accnt_credit_limit->Show();
        $this->Sorter_tkt_accnt_active->Show();
        $this->subaccnt_insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-2FEBF064
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_credit_limit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account1 Class @3-FCB6E20C

class clsssf_tkt_customers_account1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account1DataSource Class @3-7C026481

//DataSource Variables @3-B1CA72D0
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_subaccnt_cust_id;
    public $tkt_subaccnt_id;
    public $tkt_subaccnt_description;
    public $tkt_subaccnt_credit_limit;
    public $tkt_subaccnt_active;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-CE70C7BB
    function clsssf_tkt_customers_account1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account1";
        $this->Initialize();
        $this->tkt_subaccnt_cust_id = new clsField("tkt_subaccnt_cust_id", ccsText, "");
        $this->tkt_subaccnt_id = new clsField("tkt_subaccnt_id", ccsText, "");
        $this->tkt_subaccnt_description = new clsField("tkt_subaccnt_description", ccsText, "");
        $this->tkt_subaccnt_credit_limit = new clsField("tkt_subaccnt_credit_limit", ccsFloat, "");
        $this->tkt_subaccnt_active = new clsField("tkt_subaccnt_active", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-2A926941
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_subaccnt_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_accnt_cust_id" => array("tkt_subaccnt_cust_id", ""), 
            "Sorter_tkt_accnt_id" => array("tkt_subaccnt_id", ""), 
            "Sorter_tkt_subaccnt_description" => array("tkt_subaccnt_description", ""), 
            "Sorter_tkt_accnt_credit_limit" => array("tkt_accnt_credit_limit", ""), 
            "Sorter_tkt_accnt_active" => array("tkt_accnt_active", "")));
    }
//End SetOrder Method

//Prepare Method @3-B7A44095
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_subaccnt_desc", ccsText, "", "", $this->Parameters["urls_tkt_subaccnt_desc"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_subaccnt_active", ccsText, "", "", $this->Parameters["urls_tkt_subaccnt_active"], "", false);
        $this->wp->AddParameter("3", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tkt_subaccnt_description", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_subaccnt_active", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_subaccnt_cust_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-CE5FDF82
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_subaccounts";
        $this->SQL = "SELECT tkt_subaccnt_cust_id, tkt_subaccnt_id, tkt_subaccnt_credit_limit, tkt_subaccnt_description, tkt_subaccnt_active \n\n" .
        "FROM ssf_tkt_customers_subaccounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-09FA03AE
    function SetValues()
    {
        $this->tkt_subaccnt_cust_id->SetDBValue($this->f("tkt_subaccnt_cust_id"));
        $this->tkt_subaccnt_id->SetDBValue($this->f("tkt_subaccnt_id"));
        $this->tkt_subaccnt_description->SetDBValue($this->f("tkt_subaccnt_description"));
        $this->tkt_subaccnt_credit_limit->SetDBValue(trim($this->f("tkt_subaccnt_credit_limit")));
        $this->tkt_subaccnt_active->SetDBValue($this->f("tkt_subaccnt_active"));
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

//Class_Initialize Event @32-89188BAD
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
            $this->tkt_subaccnt_id = new clsControl(ccsTextBox, "tkt_subaccnt_id", $CCSLocales->GetText("tkt_accnt_id"), ccsText, "", CCGetRequestParam("tkt_subaccnt_id", $Method, NULL), $this);
            $this->tkt_subaccnt_id->Required = true;
            $this->tkt_subaccnt_description = new clsControl(ccsTextBox, "tkt_subaccnt_description", $CCSLocales->GetText("tkt_subaccnt_description"), ccsText, "", CCGetRequestParam("tkt_subaccnt_description", $Method, NULL), $this);
            $this->tkt_subaccnt_car_id = new clsControl(ccsTextBox, "tkt_subaccnt_car_id", $CCSLocales->GetText("tkt_subaccnt_car_id"), ccsText, "", CCGetRequestParam("tkt_subaccnt_car_id", $Method, NULL), $this);
            $this->tkt_subaccnt_credit_limit = new clsControl(ccsTextBox, "tkt_subaccnt_credit_limit", $CCSLocales->GetText("tkt_accnt_credit_limit"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_subaccnt_credit_limit", $Method, NULL), $this);
            $this->h_credit_balance = new clsControl(ccsHidden, "h_credit_balance", "h_credit_balance", ccsText, "", CCGetRequestParam("h_credit_balance", $Method, NULL), $this);
            $this->tkt_subaccnt_balance = new clsControl(ccsLabel, "tkt_subaccnt_balance", $CCSLocales->GetText("tkt_accnt_credit_balance"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("tkt_subaccnt_balance", $Method, NULL), $this);
            $this->lblsaldo = new clsControl(ccsLabel, "lblsaldo", "lblsaldo", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lblsaldo", $Method, NULL), $this);
            $this->tkt_accnt_active = new clsControl(ccsListBox, "tkt_accnt_active", $CCSLocales->GetText("tkt_accnt_active"), ccsText, "", CCGetRequestParam("tkt_accnt_active", $Method, NULL), $this);
            $this->tkt_accnt_active->DSType = dsListOfValues;
            $this->tkt_accnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->Button1 = new clsButton("Button1", $Method, $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_subaccnt_cust_id = new clsControl(ccsHidden, "tkt_subaccnt_cust_id", $CCSLocales->GetText("tkt_accnt_cust_id"), ccsText, "", CCGetRequestParam("tkt_subaccnt_cust_id", $Method, NULL), $this);
            $this->tkt_subaccnt_cust_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @32-F34C3A90
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_subaccnt_cust_id"] = CCGetFromGet("tkt_subaccnt_cust_id", NULL);
        $this->DataSource->Parameters["urltkt_subaccnt_id"] = CCGetFromGet("tkt_subaccnt_id", NULL);
    }
//End Initialize Method

//Validate Method @32-6C77D4C1
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_subaccnt_id->Validate() && $Validation);
        $Validation = ($this->tkt_subaccnt_description->Validate() && $Validation);
        $Validation = ($this->tkt_subaccnt_car_id->Validate() && $Validation);
        $Validation = ($this->tkt_subaccnt_credit_limit->Validate() && $Validation);
        $Validation = ($this->h_credit_balance->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_active->Validate() && $Validation);
        $Validation = ($this->tkt_subaccnt_cust_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_subaccnt_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_subaccnt_description->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_subaccnt_car_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_subaccnt_credit_limit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_credit_balance->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_active->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_subaccnt_cust_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @32-AF8CA9B4
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_subaccnt_id->Errors->Count());
        $errors = ($errors || $this->tkt_subaccnt_description->Errors->Count());
        $errors = ($errors || $this->tkt_subaccnt_car_id->Errors->Count());
        $errors = ($errors || $this->tkt_subaccnt_credit_limit->Errors->Count());
        $errors = ($errors || $this->h_credit_balance->Errors->Count());
        $errors = ($errors || $this->tkt_subaccnt_balance->Errors->Count());
        $errors = ($errors || $this->lblsaldo->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_active->Errors->Count());
        $errors = ($errors || $this->tkt_subaccnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @32-BCCBF445
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
            if($this->Button1->Pressed) {
                $this->PressedButton = "Button1";
            } else if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketCustomersSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketCustomersSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "subaccnt_insert", "tkt_subaccnt_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketCustomersSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "subaccnt_insert", "tkt_subaccnt_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button1") {
                if(!CCGetEvent($this->Button1->CCSEvents, "OnClick", $this->Button1)) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Insert") {
                $Redirect = "SSFTicketCustomersSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "subaccnt_insert", "tkt_subaccnt_id"));
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

//InsertRow Method @32-05CD981D
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_subaccnt_id->SetValue($this->tkt_subaccnt_id->GetValue(true));
        $this->DataSource->tkt_subaccnt_description->SetValue($this->tkt_subaccnt_description->GetValue(true));
        $this->DataSource->tkt_subaccnt_car_id->SetValue($this->tkt_subaccnt_car_id->GetValue(true));
        $this->DataSource->tkt_subaccnt_credit_limit->SetValue($this->tkt_subaccnt_credit_limit->GetValue(true));
        $this->DataSource->h_credit_balance->SetValue($this->h_credit_balance->GetValue(true));
        $this->DataSource->tkt_subaccnt_balance->SetValue($this->tkt_subaccnt_balance->GetValue(true));
        $this->DataSource->lblsaldo->SetValue($this->lblsaldo->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_subaccnt_cust_id->SetValue($this->tkt_subaccnt_cust_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @32-9D174B32
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_subaccnt_id->SetValue($this->tkt_subaccnt_id->GetValue(true));
        $this->DataSource->tkt_subaccnt_description->SetValue($this->tkt_subaccnt_description->GetValue(true));
        $this->DataSource->tkt_subaccnt_car_id->SetValue($this->tkt_subaccnt_car_id->GetValue(true));
        $this->DataSource->tkt_subaccnt_credit_limit->SetValue($this->tkt_subaccnt_credit_limit->GetValue(true));
        $this->DataSource->h_credit_balance->SetValue($this->h_credit_balance->GetValue(true));
        $this->DataSource->tkt_subaccnt_balance->SetValue($this->tkt_subaccnt_balance->GetValue(true));
        $this->DataSource->lblsaldo->SetValue($this->lblsaldo->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_subaccnt_cust_id->SetValue($this->tkt_subaccnt_cust_id->GetValue(true));
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

//Show Method @32-EC44547E
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
                $this->tkt_subaccnt_balance->SetValue($this->DataSource->tkt_subaccnt_balance->GetValue());
                if(!$this->FormSubmitted){
                    $this->tkt_subaccnt_id->SetValue($this->DataSource->tkt_subaccnt_id->GetValue());
                    $this->tkt_subaccnt_description->SetValue($this->DataSource->tkt_subaccnt_description->GetValue());
                    $this->tkt_subaccnt_car_id->SetValue($this->DataSource->tkt_subaccnt_car_id->GetValue());
                    $this->tkt_subaccnt_credit_limit->SetValue($this->DataSource->tkt_subaccnt_credit_limit->GetValue());
                    $this->h_credit_balance->SetValue($this->DataSource->h_credit_balance->GetValue());
                    $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                    $this->tkt_subaccnt_cust_id->SetValue($this->DataSource->tkt_subaccnt_cust_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_car_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_credit_limit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_credit_balance->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_balance->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblsaldo->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_active->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_subaccnt_cust_id->Errors->ToString());
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

        $this->Attributes->SetValue("subaccntnegbalance", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_subaccnt_id->Show();
        $this->tkt_subaccnt_description->Show();
        $this->tkt_subaccnt_car_id->Show();
        $this->tkt_subaccnt_credit_limit->Show();
        $this->h_credit_balance->Show();
        $this->tkt_subaccnt_balance->Show();
        $this->lblsaldo->Show();
        $this->tkt_accnt_active->Show();
        $this->Button1->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_subaccnt_cust_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers_account2 Class @32-FCB6E20C

class clsssf_tkt_customers_account2DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account2DataSource Class @32-F7D15A98

//DataSource Variables @32-EB96D340
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
    public $tkt_subaccnt_id;
    public $tkt_subaccnt_description;
    public $tkt_subaccnt_car_id;
    public $tkt_subaccnt_credit_limit;
    public $h_credit_balance;
    public $tkt_subaccnt_balance;
    public $lblsaldo;
    public $tkt_accnt_active;
    public $tkt_subaccnt_cust_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @32-C2535800
    function clsssf_tkt_customers_account2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_account2/Error";
        $this->Initialize();
        $this->tkt_subaccnt_id = new clsField("tkt_subaccnt_id", ccsText, "");
        $this->tkt_subaccnt_description = new clsField("tkt_subaccnt_description", ccsText, "");
        $this->tkt_subaccnt_car_id = new clsField("tkt_subaccnt_car_id", ccsText, "");
        $this->tkt_subaccnt_credit_limit = new clsField("tkt_subaccnt_credit_limit", ccsFloat, "");
        $this->h_credit_balance = new clsField("h_credit_balance", ccsText, "");
        $this->tkt_subaccnt_balance = new clsField("tkt_subaccnt_balance", ccsFloat, "");
        $this->lblsaldo = new clsField("lblsaldo", ccsFloat, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");
        $this->tkt_subaccnt_cust_id = new clsField("tkt_subaccnt_cust_id", ccsText, "");

        $this->InsertFields["tkt_subaccnt_id"] = array("Name" => "tkt_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_subaccnt_description"] = array("Name" => "tkt_subaccnt_description", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_subaccnt_car_id"] = array("Name" => "tkt_subaccnt_car_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_subaccnt_credit_limit"] = array("Name" => "tkt_subaccnt_credit_limit", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tkt_subaccnt_balance"] = array("Name" => "tkt_subaccnt_balance", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_subaccnt_active"] = array("Name" => "tkt_subaccnt_active", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_subaccnt_cust_id"] = array("Name" => "tkt_subaccnt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_id"] = array("Name" => "tkt_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_description"] = array("Name" => "tkt_subaccnt_description", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_car_id"] = array("Name" => "tkt_subaccnt_car_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_credit_limit"] = array("Name" => "tkt_subaccnt_credit_limit", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_subaccnt_balance"] = array("Name" => "tkt_subaccnt_balance", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_active"] = array("Name" => "tkt_subaccnt_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_subaccnt_cust_id"] = array("Name" => "tkt_subaccnt_cust_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @32-2911F18B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urltkt_subaccnt_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_subaccnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_subaccnt_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @32-A2FDD64C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers_subaccounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @32-4A59BB11
    function SetValues()
    {
        $this->tkt_subaccnt_id->SetDBValue($this->f("tkt_subaccnt_id"));
        $this->tkt_subaccnt_description->SetDBValue($this->f("tkt_subaccnt_description"));
        $this->tkt_subaccnt_car_id->SetDBValue($this->f("tkt_subaccnt_car_id"));
        $this->tkt_subaccnt_credit_limit->SetDBValue(trim($this->f("tkt_subaccnt_credit_limit")));
        $this->h_credit_balance->SetDBValue($this->f("tkt_subaccnt_balance"));
        $this->tkt_subaccnt_balance->SetDBValue(trim($this->f("tkt_subaccnt_balance")));
        $this->tkt_accnt_active->SetDBValue($this->f("tkt_subaccnt_active"));
        $this->tkt_subaccnt_cust_id->SetDBValue($this->f("tkt_subaccnt_cust_id"));
    }
//End SetValues Method

//Insert Method @32-6B216459
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_subaccnt_id"]["Value"] = $this->tkt_subaccnt_id->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_description"]["Value"] = $this->tkt_subaccnt_description->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_car_id"]["Value"] = $this->tkt_subaccnt_car_id->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_credit_limit"]["Value"] = $this->tkt_subaccnt_credit_limit->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_balance"]["Value"] = $this->h_credit_balance->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->InsertFields["tkt_subaccnt_cust_id"]["Value"] = $this->tkt_subaccnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers_subaccounts", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @32-4C553F37
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_subaccnt_id"]["Value"] = $this->tkt_subaccnt_id->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_description"]["Value"] = $this->tkt_subaccnt_description->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_car_id"]["Value"] = $this->tkt_subaccnt_car_id->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_credit_limit"]["Value"] = $this->tkt_subaccnt_credit_limit->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_balance"]["Value"] = $this->h_credit_balance->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->UpdateFields["tkt_subaccnt_cust_id"]["Value"] = $this->tkt_subaccnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_customers_subaccounts", $this->UpdateFields, $this);
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

//Delete Method @32-C0CFD55B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers_subaccounts";
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

//Initialize Page @1-91AE4E94
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
$TemplateFileName = "SSFTicketCustomersSubAccounts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-18BA10A4
include("./SSFTicketCustomersSubAccounts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-1AAF2C45
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_customers_account = new clsRecordssf_tkt_customers_account("", $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCAddParam($Link1->Parameters, "s_tkt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
$Link1->Page = "SSFTicketCustomers.php";
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Parameters = CCAddParam($Link2->Parameters, "tkt_accnt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
$Link2->Parameters = CCAddParam($Link2->Parameters, "s_tkt_accnt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
$Link2->Page = "SSFTicketCustomersAccounts.php";
$ssf_tkt_customers_account3 = new clsGridssf_tkt_customers_account3("", $MainPage);
$ssf_tkt_customers_account1 = new clsGridssf_tkt_customers_account1("", $MainPage);
$ssf_tkt_customers_account2 = new clsRecordssf_tkt_customers_account2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customers_account = & $ssf_tkt_customers_account;
$MainPage->Link1 = & $Link1;
$MainPage->Link2 = & $Link2;
$MainPage->ssf_tkt_customers_account3 = & $ssf_tkt_customers_account3;
$MainPage->ssf_tkt_customers_account1 = & $ssf_tkt_customers_account1;
$MainPage->ssf_tkt_customers_account2 = & $ssf_tkt_customers_account2;
$ssf_tkt_customers_account3->Initialize();
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

//Go to destination page @1-12A34B58
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_customers_account);
    unset($ssf_tkt_customers_account3);
    unset($ssf_tkt_customers_account1);
    unset($ssf_tkt_customers_account2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-0A9D7678
$SSFSpiritHeader->Show();
$ssf_tkt_customers_account->Show();
$ssf_tkt_customers_account3->Show();
$ssf_tkt_customers_account1->Show();
$ssf_tkt_customers_account2->Show();
$Link1->Show();
$Link2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-C82B330A
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customers_account);
unset($ssf_tkt_customers_account3);
unset($ssf_tkt_customers_account1);
unset($ssf_tkt_customers_account2);
unset($Tpl);
//End Unload Page


?>
