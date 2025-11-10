<?php
//Include Common Files @1-02E50FC0
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Accounts/");
define("FileName", "SSFFleetAccounts.php");
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

//Class_Initialize Event @10-F506FDF9
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
            $this->Link1->Page = "../../POS/SSFPopCustomerList.php";
            $this->s_tkt_accnt_active = new clsControl(ccsListBox, "s_tkt_accnt_active", "s_tkt_accnt_active", ccsText, "", CCGetRequestParam("s_tkt_accnt_active", $Method, NULL), $this);
            $this->s_tkt_accnt_active->DSType = dsListOfValues;
            $this->s_tkt_accnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_tkt_accnt_cust_id", "s_tkt_accnt_active", "ccsForm"));
            $this->ClearParameters->Page = "SSFFleetAccounts.php";
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

//Operation Method @10-E795DC9F
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
        $Redirect = "SSFFleetAccounts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetAccounts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
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

//Variables @3-C58D0FF4

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
    public $Sorter_tkt_accnt_active;
//End Variables

//Class_Initialize Event @3-5DCA6B48
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
        $this->tkt_accnt_cust_id->Page = "../../POS/Customers/SSFTicketCustomers.php";
        $this->tkt_accnt_id = new clsControl(ccsLink, "tkt_accnt_id", "tkt_accnt_id", ccsText, "", CCGetRequestParam("tkt_accnt_id", ccsGet, NULL), $this);
        $this->tkt_accnt_id->Page = "SSFFleetAccounts.php";
        $this->tkt_accnt_active = new clsControl(ccsLabel, "tkt_accnt_active", "tkt_accnt_active", ccsText, "", CCGetRequestParam("tkt_accnt_active", ccsGet, NULL), $this);
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFFleetSubAccounts.php";
        $this->Sorter_tkt_accnt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_cust_id", $FileName, $this);
        $this->Sorter_tkt_accnt_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_id", $FileName, $this);
        $this->Sorter_tkt_accnt_active = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_active", $FileName, $this);
        $this->ssf_tkt_fleet_account_insert = new clsControl(ccsLink, "ssf_tkt_fleet_account_insert", "ssf_tkt_fleet_account_insert", ccsText, "", CCGetRequestParam("ssf_tkt_fleet_account_insert", ccsGet, NULL), $this);
        $this->ssf_tkt_fleet_account_insert->Page = "SSFFleetAccounts.php";
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

//Show Method @3-799641D6
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
                $this->tkt_accnt_cust_id->Parameters = CCAddParam($this->tkt_accnt_cust_id->Parameters, "tkt_cust_id", $this->DataSource->f("fca_accnt_cust_id"));
                $this->tkt_accnt_cust_id->Parameters = CCAddParam($this->tkt_accnt_cust_id->Parameters, "s_tkt_cust_id", $this->DataSource->f("fca_accnt_cust_id"));
                $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                $this->tkt_accnt_id->Parameters = CCGetQueryString("QueryString", array("ssf_tkt_fleet_account_insert", "ccsForm"));
                $this->tkt_accnt_id->Parameters = CCAddParam($this->tkt_accnt_id->Parameters, "tkt_accnt_cust_id", $this->DataSource->f("fca_accnt_cust_id"));
                $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                $this->Link1->Parameters = "";
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "tkt_subaccnt_cust_id", $this->DataSource->f("fca_accnt_cust_id"));
                $this->Attributes->SetValue("stylenotactive", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_accnt_cust_id->Show();
                $this->tkt_accnt_id->Show();
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
        $this->ssf_tkt_fleet_account_insert->Parameters = CCGetQueryString("QueryString", array("tkt_accnt_cust_id", "ccsForm"));
        $this->ssf_tkt_fleet_account_insert->Parameters = CCAddParam($this->ssf_tkt_fleet_account_insert->Parameters, "ssf_tkt_fleet_account_insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_accnt_cust_id->Show();
        $this->Sorter_tkt_accnt_id->Show();
        $this->Sorter_tkt_accnt_active->Show();
        $this->ssf_tkt_fleet_account_insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-2191C051
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_accnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account1 Class @3-FCB6E20C

class clsssf_tkt_customers_account1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account1DataSource Class @3-7C026481

//DataSource Variables @3-B0118AF2
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
    public $tkt_accnt_active;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-1154C2F1
    function clsssf_tkt_customers_account1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account1";
        $this->Initialize();
        $this->tkt_accnt_cust_id = new clsField("tkt_accnt_cust_id", ccsText, "");
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-08391001
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "fca_accnt_cust_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_accnt_cust_id" => array("tkt_accnt_cust_id", ""), 
            "Sorter_tkt_accnt_id" => array("tkt_accnt_id", ""), 
            "Sorter_tkt_accnt_active" => array("tkt_accnt_active", "")));
    }
//End SetOrder Method

//Prepare Method @3-2D795D2A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_accnt_cust_id", ccsText, "", "", $this->Parameters["urls_tkt_accnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_accnt_active", ccsText, "", "", $this->Parameters["urls_tkt_accnt_active"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "fca_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "fca_accnt_active", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-7453B479
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_customers_accounts";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_customers_accounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-79D37B3D
    function SetValues()
    {
        $this->tkt_accnt_cust_id->SetDBValue($this->f("fca_accnt_cust_id"));
        $this->tkt_accnt_id->SetDBValue($this->f("fca_accnt_id"));
        $this->tkt_accnt_active->SetDBValue($this->f("fca_accnt_active"));
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

//Class_Initialize Event @32-198AFB2A
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
            $this->t_tkt_accnt_cust_id = new clsControl(ccsTextBox, "t_tkt_accnt_cust_id", "t_tkt_accnt_cust_id", ccsText, "", CCGetRequestParam("t_tkt_accnt_cust_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopCustomerList.php";
            $this->fca_fleet_model_id = new clsControl(ccsTextBox, "fca_fleet_model_id", "fca_fleet_model_id", ccsText, "", CCGetRequestParam("fca_fleet_model_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopFleetModelList.php";
            $this->tkt_accnt_active = new clsControl(ccsListBox, "tkt_accnt_active", $CCSLocales->GetText("tkt_accnt_active"), ccsText, "", CCGetRequestParam("tkt_accnt_active", $Method, NULL), $this);
            $this->tkt_accnt_active->DSType = dsListOfValues;
            $this->tkt_accnt_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->lp_trx_limit_amount = new clsControl(ccsLabel, "lp_trx_limit_amount", "lp_trx_limit_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lp_trx_limit_amount", $Method, NULL), $this);
            $this->lp_trx_limit_volume = new clsControl(ccsLabel, "lp_trx_limit_volume", "lp_trx_limit_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lp_trx_limit_volume", $Method, NULL), $this);
            $this->lp_day_qty_trx = new clsControl(ccsLabel, "lp_day_qty_trx", "lp_day_qty_trx", ccsInteger, "", CCGetRequestParam("lp_day_qty_trx", $Method, NULL), $this);
            $this->fca_day_qty_trx_bal = new clsControl(ccsLabel, "fca_day_qty_trx_bal", "fca_day_qty_trx_bal", ccsFloat, array(False, 0, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("fca_day_qty_trx_bal", $Method, NULL), $this);
            $this->lbl_day_qty_trx_bal = new clsControl(ccsLabel, "lbl_day_qty_trx_bal", "lbl_day_qty_trx_bal", ccsInteger, array(False, 0, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lbl_day_qty_trx_bal", $Method, NULL), $this);
            $this->lp_day_limit_amount = new clsControl(ccsLabel, "lp_day_limit_amount", "lp_day_limit_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lp_day_limit_amount", $Method, NULL), $this);
            $this->fca_day_amount_bal = new clsControl(ccsLabel, "fca_day_amount_bal", $CCSLocales->GetText("tkt_accnt_credit_balance"), ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("fca_day_amount_bal", $Method, NULL), $this);
            $this->lbl_day_amount_bal = new clsControl(ccsLabel, "lbl_day_amount_bal", "lbl_day_amount_bal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lbl_day_amount_bal", $Method, NULL), $this);
            $this->lp_month_limit_amount = new clsControl(ccsLabel, "lp_month_limit_amount", "lp_month_limit_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lp_month_limit_amount", $Method, NULL), $this);
            $this->fca_month_amount_bal = new clsControl(ccsLabel, "fca_month_amount_bal", "fca_month_amount_bal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("fca_month_amount_bal", $Method, NULL), $this);
            $this->lbl_month_amount_bal = new clsControl(ccsLabel, "lbl_month_amount_bal", "lbl_month_amount_bal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), CCGetRequestParam("lbl_month_amount_bal", $Method, NULL), $this);
            $this->lp_day_limit_volume = new clsControl(ccsLabel, "lp_day_limit_volume", "lp_day_limit_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lp_day_limit_volume", $Method, NULL), $this);
            $this->fca_day_volume_bal = new clsControl(ccsLabel, "fca_day_volume_bal", "fca_day_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("fca_day_volume_bal", $Method, NULL), $this);
            $this->lbl_day_volume_bal = new clsControl(ccsLabel, "lbl_day_volume_bal", "lbl_day_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lbl_day_volume_bal", $Method, NULL), $this);
            $this->lp_month_limit_volume = new clsControl(ccsLabel, "lp_month_limit_volume", "lp_month_limit_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lp_month_limit_volume", $Method, NULL), $this);
            $this->fca_month_volume_bal = new clsControl(ccsLabel, "fca_month_volume_bal", "fca_month_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("fca_month_volume_bal", $Method, NULL), $this);
            $this->lbl_month_volume_bal = new clsControl(ccsLabel, "lbl_month_volume_bal", "lbl_month_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lbl_month_volume_bal", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
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

//Validate Method @32-8AF2E05C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_accnt_id->Validate() && $Validation);
        $Validation = ($this->t_tkt_accnt_cust_id->Validate() && $Validation);
        $Validation = ($this->fca_fleet_model_id->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_active->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_cust_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_accnt_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->t_tkt_accnt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fca_fleet_model_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_active->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_cust_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @32-1E41651E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_accnt_id->Errors->Count());
        $errors = ($errors || $this->t_tkt_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->fca_fleet_model_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_active->Errors->Count());
        $errors = ($errors || $this->lp_trx_limit_amount->Errors->Count());
        $errors = ($errors || $this->lp_trx_limit_volume->Errors->Count());
        $errors = ($errors || $this->lp_day_qty_trx->Errors->Count());
        $errors = ($errors || $this->fca_day_qty_trx_bal->Errors->Count());
        $errors = ($errors || $this->lbl_day_qty_trx_bal->Errors->Count());
        $errors = ($errors || $this->lp_day_limit_amount->Errors->Count());
        $errors = ($errors || $this->fca_day_amount_bal->Errors->Count());
        $errors = ($errors || $this->lbl_day_amount_bal->Errors->Count());
        $errors = ($errors || $this->lp_month_limit_amount->Errors->Count());
        $errors = ($errors || $this->fca_month_amount_bal->Errors->Count());
        $errors = ($errors || $this->lbl_month_amount_bal->Errors->Count());
        $errors = ($errors || $this->lp_day_limit_volume->Errors->Count());
        $errors = ($errors || $this->fca_day_volume_bal->Errors->Count());
        $errors = ($errors || $this->lbl_day_volume_bal->Errors->Count());
        $errors = ($errors || $this->lp_month_limit_volume->Errors->Count());
        $errors = ($errors || $this->fca_month_volume_bal->Errors->Count());
        $errors = ($errors || $this->lbl_month_volume_bal->Errors->Count());
        $errors = ($errors || $this->tkt_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @32-7A8DAE34
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
        $Redirect = "SSFFleetAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFFleetAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_accnt_cust_id", "ssf_tkt_fleet_account_insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFFleetAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_accnt_cust_id", "ssf_tkt_fleet_account_insert"));
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

//InsertRow Method @32-E1F8F8A3
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->fca_fleet_model_id->SetValue($this->fca_fleet_model_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_accnt_cust_id->SetValue($this->tkt_accnt_cust_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @32-A86A9731
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->fca_fleet_model_id->SetValue($this->fca_fleet_model_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
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

//Show Method @32-1AF2241D
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
                if(!$this->FormSubmitted){
                    $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                    $this->fca_fleet_model_id->SetValue($this->DataSource->fca_fleet_model_id->GetValue());
                    $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                    $this->tkt_accnt_cust_id->SetValue($this->DataSource->tkt_accnt_cust_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_accnt_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->t_tkt_accnt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_fleet_model_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_accnt_active->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_trx_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_trx_limit_volume->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_qty_trx->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_day_qty_trx_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_day_qty_trx_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_day_amount_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_day_amount_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_month_limit_amount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_month_amount_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_month_amount_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_day_limit_volume->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_day_volume_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_day_volume_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lp_month_limit_volume->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fca_month_volume_bal->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_month_volume_bal->Errors->ToString());
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
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->Attributes->SetValue("accntnegbalance", "");
        $this->Attributes->SetValue("lbl_day_amount_negbal", "");
        $this->Attributes->SetValue("lbl_month_amount_negbal", "");
        $this->Attributes->SetValue("lbl_day_volume_negbal", "");
        $this->Attributes->SetValue("lbl_month_volume_negbal", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_accnt_id->Show();
        $this->t_tkt_accnt_cust_id->Show();
        $this->Link1->Show();
        $this->fca_fleet_model_id->Show();
        $this->Link2->Show();
        $this->tkt_accnt_active->Show();
        $this->lp_trx_limit_amount->Show();
        $this->lp_trx_limit_volume->Show();
        $this->lp_day_qty_trx->Show();
        $this->fca_day_qty_trx_bal->Show();
        $this->lbl_day_qty_trx_bal->Show();
        $this->lp_day_limit_amount->Show();
        $this->fca_day_amount_bal->Show();
        $this->lbl_day_amount_bal->Show();
        $this->lp_month_limit_amount->Show();
        $this->fca_month_amount_bal->Show();
        $this->lbl_month_amount_bal->Show();
        $this->lp_day_limit_volume->Show();
        $this->fca_day_volume_bal->Show();
        $this->lbl_day_volume_bal->Show();
        $this->lp_month_limit_volume->Show();
        $this->fca_month_volume_bal->Show();
        $this->lbl_month_volume_bal->Show();
        $this->Button_Insert->Show();
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

//DataSource Variables @32-D6F440F6
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
    public $t_tkt_accnt_cust_id;
    public $Link1;
    public $fca_fleet_model_id;
    public $Link2;
    public $tkt_accnt_active;
    public $lp_trx_limit_amount;
    public $lp_trx_limit_volume;
    public $lp_day_qty_trx;
    public $fca_day_qty_trx_bal;
    public $lbl_day_qty_trx_bal;
    public $lp_day_limit_amount;
    public $fca_day_amount_bal;
    public $lbl_day_amount_bal;
    public $lp_month_limit_amount;
    public $fca_month_amount_bal;
    public $lbl_month_amount_bal;
    public $lp_day_limit_volume;
    public $fca_day_volume_bal;
    public $lbl_day_volume_bal;
    public $lp_month_limit_volume;
    public $fca_month_volume_bal;
    public $lbl_month_volume_bal;
    public $tkt_accnt_cust_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @32-A93A4467
    function clsssf_tkt_customers_account2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_account2/Error";
        $this->Initialize();
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->t_tkt_accnt_cust_id = new clsField("t_tkt_accnt_cust_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->fca_fleet_model_id = new clsField("fca_fleet_model_id", ccsText, "");
        $this->Link2 = new clsField("Link2", ccsText, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");
        $this->lp_trx_limit_amount = new clsField("lp_trx_limit_amount", ccsFloat, "");
        $this->lp_trx_limit_volume = new clsField("lp_trx_limit_volume", ccsFloat, "");
        $this->lp_day_qty_trx = new clsField("lp_day_qty_trx", ccsInteger, "");
        $this->fca_day_qty_trx_bal = new clsField("fca_day_qty_trx_bal", ccsFloat, "");
        $this->lbl_day_qty_trx_bal = new clsField("lbl_day_qty_trx_bal", ccsInteger, "");
        $this->lp_day_limit_amount = new clsField("lp_day_limit_amount", ccsFloat, "");
        $this->fca_day_amount_bal = new clsField("fca_day_amount_bal", ccsFloat, "");
        $this->lbl_day_amount_bal = new clsField("lbl_day_amount_bal", ccsFloat, "");
        $this->lp_month_limit_amount = new clsField("lp_month_limit_amount", ccsFloat, "");
        $this->fca_month_amount_bal = new clsField("fca_month_amount_bal", ccsFloat, "");
        $this->lbl_month_amount_bal = new clsField("lbl_month_amount_bal", ccsFloat, "");
        $this->lp_day_limit_volume = new clsField("lp_day_limit_volume", ccsFloat, "");
        $this->fca_day_volume_bal = new clsField("fca_day_volume_bal", ccsFloat, "");
        $this->lbl_day_volume_bal = new clsField("lbl_day_volume_bal", ccsFloat, "");
        $this->lp_month_limit_volume = new clsField("lp_month_limit_volume", ccsFloat, "");
        $this->fca_month_volume_bal = new clsField("fca_month_volume_bal", ccsFloat, "");
        $this->lbl_month_volume_bal = new clsField("lbl_month_volume_bal", ccsFloat, "");
        $this->tkt_accnt_cust_id = new clsField("tkt_accnt_cust_id", ccsText, "");

        $this->InsertFields["fca_accnt_id"] = array("Name" => "fca_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fca_fleet_model_id"] = array("Name" => "fca_fleet_model_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fca_accnt_active"] = array("Name" => "fca_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fca_accnt_cust_id"] = array("Name" => "fca_accnt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fca_accnt_id"] = array("Name" => "fca_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fca_fleet_model_id"] = array("Name" => "fca_fleet_model_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fca_accnt_active"] = array("Name" => "fca_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fca_accnt_cust_id"] = array("Name" => "fca_accnt_cust_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @32-0A4D6CE3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_accnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_accnt_cust_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "fca_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @32-FFE334EA
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_customers_accounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @32-055EC393
    function SetValues()
    {
        $this->tkt_accnt_id->SetDBValue($this->f("fca_accnt_id"));
        $this->fca_fleet_model_id->SetDBValue($this->f("fca_fleet_model_id"));
        $this->tkt_accnt_active->SetDBValue($this->f("fca_accnt_active"));
        $this->tkt_accnt_cust_id->SetDBValue($this->f("fca_accnt_cust_id"));
    }
//End SetValues Method

//Insert Method @32-E1B252D4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["fca_accnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->InsertFields["fca_fleet_model_id"]["Value"] = $this->fca_fleet_model_id->GetDBValue(true);
        $this->InsertFields["fca_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->InsertFields["fca_accnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_customers_accounts", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @32-FC5DB6DF
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["fca_accnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->UpdateFields["fca_fleet_model_id"]["Value"] = $this->fca_fleet_model_id->GetDBValue(true);
        $this->UpdateFields["fca_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->UpdateFields["fca_accnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_customers_accounts", $this->UpdateFields, $this);
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

//Delete Method @32-5D47C133
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_customers_accounts";
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

//Initialize Page @1-165A99FC
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
$TemplateFileName = "SSFFleetAccounts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-6195B079
include("./SSFFleetAccounts_events.php");
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
