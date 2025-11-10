<?php
//Include Common Files @1-EF9D9117
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Accounts/");
define("FileName", "SSFFleetSubAccounts.php");
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

//Class_Initialize Event @10-B114E01A
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
            $this->ClearParameters->Page = "SSFFleetSubAccounts.php";
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

//Operation Method @10-AF90E925
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
        $Redirect = "SSFFleetSubAccounts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetSubAccounts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
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

//Class_Initialize Event @86-DC3307E3
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

//Show Method @86-8055C7BF
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
        $this->Attributes->SetValue("accntnegbalance", "");
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["tkt_accnt_id"] = $this->tkt_accnt_id->Visible;
            $this->ControlsVisible["tkt_accnt_active"] = $this->tkt_accnt_active->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_accnt_id->SetValue($this->DataSource->tkt_accnt_id->GetValue());
                $this->tkt_accnt_active->SetValue($this->DataSource->tkt_accnt_active->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_accnt_id->Show();
                $this->tkt_accnt_active->Show();
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

//GetErrors Method @86-D338B46E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_accnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account3 Class @86-FCB6E20C

class clsssf_tkt_customers_account3DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account3DataSource Class @86-384F4D50

//DataSource Variables @86-A36ACA77
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
//End DataSource Variables

//DataSourceClass_Initialize Event @86-E29962D3
    function clsssf_tkt_customers_account3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account3";
        $this->Initialize();
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->tkt_accnt_active = new clsField("tkt_accnt_active", ccsText, "");

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

//Prepare Method @86-BA8F40AA
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "fca_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @86-7453B479
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

//SetValues Method @86-AB11A9F6
    function SetValues()
    {
        $this->tkt_accnt_id->SetDBValue($this->f("fca_accnt_id"));
        $this->tkt_accnt_active->SetDBValue($this->f("fca_accnt_active"));
    }
//End SetValues Method

} //End ssf_tkt_customers_account3DataSource Class @86-FCB6E20C

class clsGridssf_tkt_customers_account1 { //ssf_tkt_customers_account1 class @3-5A57C805

//Variables @3-5B5CE662

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
    public $Sorter_tkt_accnt_active;
//End Variables

//Class_Initialize Event @3-51F7D0F2
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
        $this->tkt_subaccnt_id->Page = "SSFFleetSubAccounts.php";
        $this->tkt_subaccnt_description = new clsControl(ccsLabel, "tkt_subaccnt_description", "tkt_subaccnt_description", ccsText, "", CCGetRequestParam("tkt_subaccnt_description", ccsGet, NULL), $this);
        $this->tkt_subaccnt_active = new clsControl(ccsLabel, "tkt_subaccnt_active", "tkt_subaccnt_active", ccsText, "", CCGetRequestParam("tkt_subaccnt_active", ccsGet, NULL), $this);
        $this->Sorter_tkt_accnt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_cust_id", $FileName, $this);
        $this->Sorter_tkt_accnt_id = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_id", $FileName, $this);
        $this->Sorter_tkt_subaccnt_description = new clsSorter($this->ComponentName, "Sorter_tkt_subaccnt_description", $FileName, $this);
        $this->Sorter_tkt_accnt_active = new clsSorter($this->ComponentName, "Sorter_tkt_accnt_active", $FileName, $this);
        $this->subaccnt_insert = new clsControl(ccsLink, "subaccnt_insert", "subaccnt_insert", ccsText, "", CCGetRequestParam("subaccnt_insert", ccsGet, NULL), $this);
        $this->subaccnt_insert->Page = "SSFFleetSubAccounts.php";
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

//Show Method @3-4B48F216
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
                $this->tkt_subaccnt_id->Parameters = CCAddParam($this->tkt_subaccnt_id->Parameters, "tkt_subaccnt_cust_id", $this->DataSource->f("fcs_subaccnt_cust_id"));
                $this->tkt_subaccnt_id->Parameters = CCAddParam($this->tkt_subaccnt_id->Parameters, "tkt_subaccnt_id", $this->DataSource->f("fcs_subaccnt_id"));
                $this->tkt_subaccnt_description->SetValue($this->DataSource->tkt_subaccnt_description->GetValue());
                $this->tkt_subaccnt_active->SetValue($this->DataSource->tkt_subaccnt_active->GetValue());
                $this->Attributes->SetValue("stylenotactive", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_subaccnt_cust_id->Show();
                $this->tkt_subaccnt_id->Show();
                $this->tkt_subaccnt_description->Show();
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
        $this->subaccnt_insert->Parameters = CCGetQueryString("QueryString", array("tkt_subaccnt_cust_id", "tkt_subaccnt_id", "ccsForm"));
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
        $this->Sorter_tkt_accnt_active->Show();
        $this->subaccnt_insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-E1FB7D03
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_subaccnt_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_account1 Class @3-FCB6E20C

class clsssf_tkt_customers_account1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account1DataSource Class @3-7C026481

//DataSource Variables @3-EA477668
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
    public $tkt_subaccnt_active;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-1F40807D
    function clsssf_tkt_customers_account1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_account1";
        $this->Initialize();
        $this->tkt_subaccnt_cust_id = new clsField("tkt_subaccnt_cust_id", ccsText, "");
        $this->tkt_subaccnt_id = new clsField("tkt_subaccnt_id", ccsText, "");
        $this->tkt_subaccnt_description = new clsField("tkt_subaccnt_description", ccsText, "");
        $this->tkt_subaccnt_active = new clsField("tkt_subaccnt_active", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-3309A13B
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "fcs_subaccnt_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_accnt_cust_id" => array("fcs_subaccnt_cust_id", ""), 
            "Sorter_tkt_accnt_id" => array("fcs_subaccnt_id", ""), 
            "Sorter_tkt_subaccnt_description" => array("fcs_subaccnt_description", ""), 
            "Sorter_tkt_accnt_active" => array("fcs_accnt_active", "")));
    }
//End SetOrder Method

//Prepare Method @3-437D949C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_subaccnt_desc", ccsText, "", "", $this->Parameters["urls_tkt_subaccnt_desc"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_subaccnt_active", ccsText, "", "", $this->Parameters["urls_tkt_subaccnt_active"], "", false);
        $this->wp->AddParameter("3", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "fcs_subaccnt_description", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "fcs_accnt_active", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "fcs_subaccnt_cust_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-9A187EAB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_customers_subaccounts";
        $this->SQL = "SELECT fcs_subaccnt_cust_id, fcs_subaccnt_id, fcs_subaccnt_description, fcs_accnt_active \n\n" .
        "FROM ssf_flt_customers_subaccounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-43032430
    function SetValues()
    {
        $this->tkt_subaccnt_cust_id->SetDBValue($this->f("fcs_subaccnt_cust_id"));
        $this->tkt_subaccnt_id->SetDBValue($this->f("fcs_subaccnt_id"));
        $this->tkt_subaccnt_description->SetDBValue($this->f("fcs_subaccnt_description"));
        $this->tkt_subaccnt_active->SetDBValue($this->f("fcs_accnt_active"));
    }
//End SetValues Method

} //End ssf_tkt_customers_account1DataSource Class @3-FCB6E20C



class clsRecordssf_tkt_customers_account4 { //ssf_tkt_customers_account4 Class @112-AAC184A4

//Variables @112-9E315808

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

//Class_Initialize Event @112-D3EE6ACA
    function clsRecordssf_tkt_customers_account4($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_account4/Error";
        $this->DataSource = new clsssf_tkt_customers_account4DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_account4";
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
            $this->fca_fleet_model_id = new clsControl(ccsTextBox, "fca_fleet_model_id", "fca_fleet_model_id", ccsText, "", CCGetRequestParam("fca_fleet_model_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopFleetModelList.php";
            $this->fcs_subaccnt_description = new clsControl(ccsTextBox, "fcs_subaccnt_description", "fcs_subaccnt_description", ccsText, "", CCGetRequestParam("fcs_subaccnt_description", $Method, NULL), $this);
            $this->fcs_subaccnt_car_id = new clsControl(ccsTextBox, "fcs_subaccnt_car_id", "fcs_subaccnt_car_id", ccsText, "", CCGetRequestParam("fcs_subaccnt_car_id", $Method, NULL), $this);
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

//Initialize Method @112-F34C3A90
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_subaccnt_cust_id"] = CCGetFromGet("tkt_subaccnt_cust_id", NULL);
        $this->DataSource->Parameters["urltkt_subaccnt_id"] = CCGetFromGet("tkt_subaccnt_id", NULL);
    }
//End Initialize Method

//Validate Method @112-C0AE2F83
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_accnt_id->Validate() && $Validation);
        $Validation = ($this->fca_fleet_model_id->Validate() && $Validation);
        $Validation = ($this->fcs_subaccnt_description->Validate() && $Validation);
        $Validation = ($this->fcs_subaccnt_car_id->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_active->Validate() && $Validation);
        $Validation = ($this->tkt_accnt_cust_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_accnt_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fca_fleet_model_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fcs_subaccnt_description->Errors->Count() == 0);
        $Validation =  $Validation && ($this->fcs_subaccnt_car_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_active->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_accnt_cust_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @112-1331FAF8
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_accnt_id->Errors->Count());
        $errors = ($errors || $this->fca_fleet_model_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_description->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_car_id->Errors->Count());
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

//Operation Method @112-0AB17EFC
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
        $Redirect = "SSFFleetSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFFleetSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "subaccnt_insert", "tkt_subaccnt_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFFleetSubAccounts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "subaccnt_insert", "tkt_subaccnt_id"));
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

//InsertRow Method @112-CFC3B4AC
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->fca_fleet_model_id->SetValue($this->fca_fleet_model_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
        $this->DataSource->fcs_subaccnt_description->SetValue($this->fcs_subaccnt_description->GetValue(true));
        $this->DataSource->fcs_subaccnt_car_id->SetValue($this->fcs_subaccnt_car_id->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_accnt_cust_id->SetValue($this->tkt_accnt_cust_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @112-F74C8F9B
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_accnt_id->SetValue($this->tkt_accnt_id->GetValue(true));
        $this->DataSource->fca_fleet_model_id->SetValue($this->fca_fleet_model_id->GetValue(true));
        $this->DataSource->Link2->SetValue($this->Link2->GetValue(true));
        $this->DataSource->fcs_subaccnt_description->SetValue($this->fcs_subaccnt_description->GetValue(true));
        $this->DataSource->fcs_subaccnt_car_id->SetValue($this->fcs_subaccnt_car_id->GetValue(true));
        $this->DataSource->tkt_accnt_active->SetValue($this->tkt_accnt_active->GetValue(true));
        $this->DataSource->tkt_accnt_cust_id->SetValue($this->tkt_accnt_cust_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @112-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @112-BEC74473
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
                    $this->fcs_subaccnt_description->SetValue($this->DataSource->fcs_subaccnt_description->GetValue());
                    $this->fcs_subaccnt_car_id->SetValue($this->DataSource->fcs_subaccnt_car_id->GetValue());
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
            $Error = ComposeStrings($Error, $this->fca_fleet_model_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fcs_subaccnt_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->fcs_subaccnt_car_id->Errors->ToString());
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
        $this->fca_fleet_model_id->Show();
        $this->Link2->Show();
        $this->fcs_subaccnt_description->Show();
        $this->fcs_subaccnt_car_id->Show();
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

} //End ssf_tkt_customers_account4 Class @112-FCB6E20C

class clsssf_tkt_customers_account4DataSource extends clsDBConnection1 {  //ssf_tkt_customers_account4DataSource Class @112-3B0620EB

//DataSource Variables @112-02CED9DA
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
    public $fca_fleet_model_id;
    public $Link2;
    public $fcs_subaccnt_description;
    public $fcs_subaccnt_car_id;
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

//DataSourceClass_Initialize Event @112-BDCBB3D5
    function clsssf_tkt_customers_account4DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_account4/Error";
        $this->Initialize();
        $this->tkt_accnt_id = new clsField("tkt_accnt_id", ccsText, "");
        $this->fca_fleet_model_id = new clsField("fca_fleet_model_id", ccsText, "");
        $this->Link2 = new clsField("Link2", ccsText, "");
        $this->fcs_subaccnt_description = new clsField("fcs_subaccnt_description", ccsText, "");
        $this->fcs_subaccnt_car_id = new clsField("fcs_subaccnt_car_id", ccsText, "");
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

        $this->InsertFields["fcs_subaccnt_id"] = array("Name" => "fcs_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fcs_fleet_model_id"] = array("Name" => "fcs_fleet_model_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fcs_subaccnt_description"] = array("Name" => "fcs_subaccnt_description", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fcs_subaccnt_car_id"] = array("Name" => "fcs_subaccnt_car_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fcs_accnt_active"] = array("Name" => "fcs_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["fcs_subaccnt_cust_id"] = array("Name" => "fcs_subaccnt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_subaccnt_id"] = array("Name" => "fcs_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_fleet_model_id"] = array("Name" => "fcs_fleet_model_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_subaccnt_description"] = array("Name" => "fcs_subaccnt_description", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_subaccnt_car_id"] = array("Name" => "fcs_subaccnt_car_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_accnt_active"] = array("Name" => "fcs_accnt_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["fcs_subaccnt_cust_id"] = array("Name" => "fcs_subaccnt_cust_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @112-9BD88510
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urltkt_subaccnt_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "fcs_subaccnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "fcs_subaccnt_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @112-EE3ADB03
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_customers_subaccounts {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @112-656DD701
    function SetValues()
    {
        $this->tkt_accnt_id->SetDBValue($this->f("fcs_subaccnt_id"));
        $this->fca_fleet_model_id->SetDBValue($this->f("fcs_fleet_model_id"));
        $this->fcs_subaccnt_description->SetDBValue($this->f("fcs_subaccnt_description"));
        $this->fcs_subaccnt_car_id->SetDBValue($this->f("fcs_subaccnt_car_id"));
        $this->tkt_accnt_active->SetDBValue($this->f("fcs_accnt_active"));
        $this->tkt_accnt_cust_id->SetDBValue($this->f("fcs_subaccnt_cust_id"));
    }
//End SetValues Method

//Insert Method @112-334D04F5
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["fcs_subaccnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->InsertFields["fcs_fleet_model_id"]["Value"] = $this->fca_fleet_model_id->GetDBValue(true);
        $this->InsertFields["fcs_subaccnt_description"]["Value"] = $this->fcs_subaccnt_description->GetDBValue(true);
        $this->InsertFields["fcs_subaccnt_car_id"]["Value"] = $this->fcs_subaccnt_car_id->GetDBValue(true);
        $this->InsertFields["fcs_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->InsertFields["fcs_subaccnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_customers_subaccounts", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @112-6F93C750
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["fcs_subaccnt_id"]["Value"] = $this->tkt_accnt_id->GetDBValue(true);
        $this->UpdateFields["fcs_fleet_model_id"]["Value"] = $this->fca_fleet_model_id->GetDBValue(true);
        $this->UpdateFields["fcs_subaccnt_description"]["Value"] = $this->fcs_subaccnt_description->GetDBValue(true);
        $this->UpdateFields["fcs_subaccnt_car_id"]["Value"] = $this->fcs_subaccnt_car_id->GetDBValue(true);
        $this->UpdateFields["fcs_accnt_active"]["Value"] = $this->tkt_accnt_active->GetDBValue(true);
        $this->UpdateFields["fcs_subaccnt_cust_id"]["Value"] = $this->tkt_accnt_cust_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_customers_subaccounts", $this->UpdateFields, $this);
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

//Delete Method @112-4588A483
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_customers_subaccounts";
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

} //End ssf_tkt_customers_account4DataSource Class @112-FCB6E20C

class clsEditableGridssf_flt_tags_data { //ssf_flt_tags_data Class @152-CF3C9BE6

//Variables @152-AA444FF8

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
    public $Sorter_ftd_tag_id;
    public $Sorter_ftd_tag_active;
//End Variables

//Class_Initialize Event @152-6B81B52A
    function clsEditableGridssf_flt_tags_data($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_flt_tags_data/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_flt_tags_data";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["ftd_accnt_id"][0] = "ftd_accnt_id";
        $this->CachedColumns["ftd_subaccnt_id"][0] = "ftd_subaccnt_id";
        $this->CachedColumns["ftd_tag_id"][0] = "ftd_tag_id";
        $this->DataSource = new clsssf_flt_tags_dataDataSource($this);
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

        $this->SorterName = CCGetParam("ssf_flt_tags_dataOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_tags_dataDir", "");

        $this->Sorter_ftd_tag_id = new clsSorter($this->ComponentName, "Sorter_ftd_tag_id", $FileName, $this);
        $this->Sorter_ftd_tag_active = new clsSorter($this->ComponentName, "Sorter_ftd_tag_active", $FileName, $this);
        $this->ftd_tag_id = new clsControl(ccsTextBox, "ftd_tag_id", $CCSLocales->GetText("ftd_tag_id"), ccsText, "", NULL, $this);
        $this->ftd_subaccnt_id = new clsControl(ccsHidden, "ftd_subaccnt_id", $CCSLocales->GetText("ftd_subaccnt_id"), ccsText, "", NULL, $this);
        $this->ftd_subaccnt_id->Required = true;
        $this->ftd_accnt_id = new clsControl(ccsHidden, "ftd_accnt_id", $CCSLocales->GetText("ftd_accnt_id"), ccsText, "", NULL, $this);
        $this->ftd_accnt_id->Required = true;
        $this->ftd_tag_active = new clsControl(ccsListBox, "ftd_tag_active", $CCSLocales->GetText("ftd_tag_active"), ccsText, "", NULL, $this);
        $this->ftd_tag_active->DSType = dsListOfValues;
        $this->ftd_tag_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @152-826664BD
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urltkt_subaccnt_id"] = CCGetFromGet("tkt_subaccnt_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @152-FF9E34C9
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["ftd_tag_id"][$RowNumber] = CCGetFromPost("ftd_tag_id_" . $RowNumber, NULL);
            $this->FormParameters["ftd_subaccnt_id"][$RowNumber] = CCGetFromPost("ftd_subaccnt_id_" . $RowNumber, NULL);
            $this->FormParameters["ftd_accnt_id"][$RowNumber] = CCGetFromPost("ftd_accnt_id_" . $RowNumber, NULL);
            $this->FormParameters["ftd_tag_active"][$RowNumber] = CCGetFromPost("ftd_tag_active_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @152-729BFF3B
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["ftd_accnt_id"] = $this->CachedColumns["ftd_accnt_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ftd_subaccnt_id"] = $this->CachedColumns["ftd_subaccnt_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ftd_tag_id"] = $this->CachedColumns["ftd_tag_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->ftd_tag_id->SetText($this->FormParameters["ftd_tag_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_subaccnt_id->SetText($this->FormParameters["ftd_subaccnt_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_accnt_id->SetText($this->FormParameters["ftd_accnt_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_tag_active->SetText($this->FormParameters["ftd_tag_active"][$this->RowNumber], $this->RowNumber);
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

//ValidateRow Method @152-B535533E
    function ValidateRow()
    {
        global $CCSLocales;
        $this->ftd_tag_id->Validate();
        $this->ftd_subaccnt_id->Validate();
        $this->ftd_accnt_id->Validate();
        $this->ftd_tag_active->Validate();
        $this->CheckBox_Delete->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->ftd_tag_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ftd_subaccnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ftd_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ftd_tag_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $this->ftd_tag_id->Errors->Clear();
        $this->ftd_subaccnt_id->Errors->Clear();
        $this->ftd_accnt_id->Errors->Clear();
        $this->ftd_tag_active->Errors->Clear();
        $this->CheckBox_Delete->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @152-FE1147F2
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["ftd_tag_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["ftd_subaccnt_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["ftd_accnt_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["ftd_tag_active"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @152-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @152-6B923CC2
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

//UpdateGrid Method @152-F1947069
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["ftd_accnt_id"] = $this->CachedColumns["ftd_accnt_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ftd_subaccnt_id"] = $this->CachedColumns["ftd_subaccnt_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ftd_tag_id"] = $this->CachedColumns["ftd_tag_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->ftd_tag_id->SetText($this->FormParameters["ftd_tag_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_subaccnt_id->SetText($this->FormParameters["ftd_subaccnt_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_accnt_id->SetText($this->FormParameters["ftd_accnt_id"][$this->RowNumber], $this->RowNumber);
            $this->ftd_tag_active->SetText($this->FormParameters["ftd_tag_active"][$this->RowNumber], $this->RowNumber);
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

//InsertRow Method @152-7EFCBFA6
    function InsertRow()
    {
        if(!$this->InsertAllowed) return false;
        $this->DataSource->ftd_tag_id->SetValue($this->ftd_tag_id->GetValue(true));
        $this->DataSource->ftd_subaccnt_id->SetValue($this->ftd_subaccnt_id->GetValue(true));
        $this->DataSource->ftd_accnt_id->SetValue($this->ftd_accnt_id->GetValue(true));
        $this->DataSource->ftd_tag_active->SetValue($this->ftd_tag_active->GetValue(true));
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

//UpdateRow Method @152-8CF2ADE0
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->ftd_tag_id->SetValue($this->ftd_tag_id->GetValue(true));
        $this->DataSource->ftd_subaccnt_id->SetValue($this->ftd_subaccnt_id->GetValue(true));
        $this->DataSource->ftd_accnt_id->SetValue($this->ftd_accnt_id->GetValue(true));
        $this->DataSource->ftd_tag_active->SetValue($this->ftd_tag_active->GetValue(true));
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

//DeleteRow Method @152-A4A656F6
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

//FormScript Method @152-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @152-E9FEA0C1
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
                $this->CachedColumns["ftd_accnt_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["ftd_subaccnt_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 2];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["ftd_tag_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["ftd_accnt_id"][$RowNumber] = "";
                $this->CachedColumns["ftd_subaccnt_id"][$RowNumber] = "";
                $this->CachedColumns["ftd_tag_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @152-FC062D88
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ftd_accnt_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ftd_subaccnt_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ftd_tag_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @152-9E154602
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->ftd_tag_active->Prepare();

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
        $this->ControlsVisible["ftd_tag_id"] = $this->ftd_tag_id->Visible;
        $this->ControlsVisible["ftd_subaccnt_id"] = $this->ftd_subaccnt_id->Visible;
        $this->ControlsVisible["ftd_accnt_id"] = $this->ftd_accnt_id->Visible;
        $this->ControlsVisible["ftd_tag_active"] = $this->ftd_tag_active->Visible;
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
                    $this->CachedColumns["ftd_accnt_id"][$this->RowNumber] = $this->DataSource->CachedColumns["ftd_accnt_id"];
                    $this->CachedColumns["ftd_subaccnt_id"][$this->RowNumber] = $this->DataSource->CachedColumns["ftd_subaccnt_id"];
                    $this->CachedColumns["ftd_tag_id"][$this->RowNumber] = $this->DataSource->CachedColumns["ftd_tag_id"];
                    $this->CheckBox_Delete->SetValue("");
                    $this->ftd_tag_id->SetValue($this->DataSource->ftd_tag_id->GetValue());
                    $this->ftd_subaccnt_id->SetValue($this->DataSource->ftd_subaccnt_id->GetValue());
                    $this->ftd_accnt_id->SetValue($this->DataSource->ftd_accnt_id->GetValue());
                    $this->ftd_tag_active->SetValue($this->DataSource->ftd_tag_active->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->ftd_tag_id->SetText($this->FormParameters["ftd_tag_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_subaccnt_id->SetText($this->FormParameters["ftd_subaccnt_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_accnt_id->SetText($this->FormParameters["ftd_accnt_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_tag_active->SetText($this->FormParameters["ftd_tag_active"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["ftd_accnt_id"][$this->RowNumber] = "";
                    $this->CachedColumns["ftd_subaccnt_id"][$this->RowNumber] = "";
                    $this->CachedColumns["ftd_tag_id"][$this->RowNumber] = "";
                    $this->ftd_tag_id->SetText("");
                    $this->ftd_subaccnt_id->SetText("");
                    $this->ftd_accnt_id->SetText("");
                    $this->ftd_tag_active->SetText("");
                } else {
                    $this->ftd_tag_id->SetText($this->FormParameters["ftd_tag_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_subaccnt_id->SetText($this->FormParameters["ftd_subaccnt_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_accnt_id->SetText($this->FormParameters["ftd_accnt_id"][$this->RowNumber], $this->RowNumber);
                    $this->ftd_tag_active->SetText($this->FormParameters["ftd_tag_active"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->ftd_tag_id->Show($this->RowNumber);
                $this->ftd_subaccnt_id->Show($this->RowNumber);
                $this->ftd_accnt_id->Show($this->RowNumber);
                $this->ftd_tag_active->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["ftd_accnt_id"] == $this->CachedColumns["ftd_accnt_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["ftd_subaccnt_id"] == $this->CachedColumns["ftd_subaccnt_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["ftd_tag_id"] == $this->CachedColumns["ftd_tag_id"][$this->RowNumber])) {
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
        $this->Sorter_ftd_tag_id->Show();
        $this->Sorter_ftd_tag_active->Show();
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

} //End ssf_flt_tags_data Class @152-FCB6E20C

class clsssf_flt_tags_dataDataSource extends clsDBConnection1 {  //ssf_flt_tags_dataDataSource Class @152-249F063F

//DataSource Variables @152-E577D2A7
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
    public $ftd_tag_id;
    public $ftd_subaccnt_id;
    public $ftd_accnt_id;
    public $ftd_tag_active;
    public $CheckBox_Delete;
//End DataSource Variables

//DataSourceClass_Initialize Event @152-AB1A6CAA
    function clsssf_flt_tags_dataDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_flt_tags_data/Error";
        $this->Initialize();
        $this->ftd_tag_id = new clsField("ftd_tag_id", ccsText, "");
        $this->ftd_subaccnt_id = new clsField("ftd_subaccnt_id", ccsText, "");
        $this->ftd_accnt_id = new clsField("ftd_accnt_id", ccsText, "");
        $this->ftd_tag_active = new clsField("ftd_tag_active", ccsText, "");
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));

        $this->InsertFields["ftd_tag_id"] = array("Name" => "ftd_tag_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ftd_subaccnt_id"] = array("Name" => "ftd_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ftd_accnt_id"] = array("Name" => "ftd_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ftd_tag_active"] = array("Name" => "ftd_tag_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ftd_tag_id"] = array("Name" => "ftd_tag_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ftd_subaccnt_id"] = array("Name" => "ftd_subaccnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ftd_accnt_id"] = array("Name" => "ftd_accnt_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ftd_tag_active"] = array("Name" => "ftd_tag_active", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @152-D909C9EE
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ftd_tag_id" => array("ftd_tag_id", ""), 
            "Sorter_ftd_tag_active" => array("ftd_tag_active", "")));
    }
//End SetOrder Method

//Prepare Method @152-B6324A21
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_subaccnt_id", ccsText, "", "", $this->Parameters["urltkt_subaccnt_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ftd_subaccnt_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @152-779C1C88
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_tags_data";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_tags_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @152-A63C0A21
    function SetValues()
    {
        $this->CachedColumns["ftd_accnt_id"] = $this->f("ftd_accnt_id");
        $this->CachedColumns["ftd_subaccnt_id"] = $this->f("ftd_subaccnt_id");
        $this->CachedColumns["ftd_tag_id"] = $this->f("ftd_tag_id");
        $this->ftd_tag_id->SetDBValue($this->f("ftd_tag_id"));
        $this->ftd_subaccnt_id->SetDBValue($this->f("ftd_subaccnt_id"));
        $this->ftd_accnt_id->SetDBValue($this->f("ftd_accnt_id"));
        $this->ftd_tag_active->SetDBValue($this->f("ftd_tag_active"));
    }
//End SetValues Method

//Insert Method @152-D0031FB0
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["ftd_tag_id"]["Value"] = $this->ftd_tag_id->GetDBValue(true);
        $this->InsertFields["ftd_subaccnt_id"]["Value"] = $this->ftd_subaccnt_id->GetDBValue(true);
        $this->InsertFields["ftd_accnt_id"]["Value"] = $this->ftd_accnt_id->GetDBValue(true);
        $this->InsertFields["ftd_tag_active"]["Value"] = $this->ftd_tag_active->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_tags_data", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @152-4D127E22
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "ftd_accnt_id=" . $this->ToSQL($this->CachedColumns["ftd_accnt_id"], ccsText) . " AND ftd_subaccnt_id=" . $this->ToSQL($this->CachedColumns["ftd_subaccnt_id"], ccsText) . " AND ftd_tag_id=" . $this->ToSQL($this->CachedColumns["ftd_tag_id"], ccsText);
        $this->UpdateFields["ftd_tag_id"]["Value"] = $this->ftd_tag_id->GetDBValue(true);
        $this->UpdateFields["ftd_subaccnt_id"]["Value"] = $this->ftd_subaccnt_id->GetDBValue(true);
        $this->UpdateFields["ftd_accnt_id"]["Value"] = $this->ftd_accnt_id->GetDBValue(true);
        $this->UpdateFields["ftd_tag_active"]["Value"] = $this->ftd_tag_active->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_tags_data", $this->UpdateFields, $this);
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

//Delete Method @152-FB1A6362
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "ftd_accnt_id=" . $this->ToSQL($this->CachedColumns["ftd_accnt_id"], ccsText) . " AND ftd_subaccnt_id=" . $this->ToSQL($this->CachedColumns["ftd_subaccnt_id"], ccsText) . " AND ftd_tag_id=" . $this->ToSQL($this->CachedColumns["ftd_tag_id"], ccsText);
        $this->SQL = "DELETE FROM ssf_flt_tags_data";
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

} //End ssf_flt_tags_dataDataSource Class @152-FCB6E20C

//Initialize Page @1-F7CA435F
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
$TemplateFileName = "SSFFleetSubAccounts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-651CACAA
include("./SSFFleetSubAccounts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C457A14E
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
$Link1->Page = "../../POS/Customers/SSFTicketCustomers.php";
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Parameters = CCAddParam($Link2->Parameters, "tkt_accnt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
$Link2->Parameters = CCAddParam($Link2->Parameters, "s_tkt_accnt_cust_id", CCGetFromGet("tkt_subaccnt_cust_id", NULL));
$Link2->Page = "SSFFleetAccounts.php";
$ssf_tkt_customers_account3 = new clsGridssf_tkt_customers_account3("", $MainPage);
$ssf_tkt_customers_account1 = new clsGridssf_tkt_customers_account1("", $MainPage);
$ssf_tkt_customers_account4 = new clsRecordssf_tkt_customers_account4("", $MainPage);
$ssf_flt_tags_data = new clsEditableGridssf_flt_tags_data("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customers_account = & $ssf_tkt_customers_account;
$MainPage->Link1 = & $Link1;
$MainPage->Link2 = & $Link2;
$MainPage->ssf_tkt_customers_account3 = & $ssf_tkt_customers_account3;
$MainPage->ssf_tkt_customers_account1 = & $ssf_tkt_customers_account1;
$MainPage->ssf_tkt_customers_account4 = & $ssf_tkt_customers_account4;
$MainPage->ssf_flt_tags_data = & $ssf_flt_tags_data;
$ssf_tkt_customers_account3->Initialize();
$ssf_tkt_customers_account1->Initialize();
$ssf_tkt_customers_account4->Initialize();
$ssf_flt_tags_data->Initialize();

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

//Execute Components @1-F4B724C6
$SSFSpiritHeader->Operations();
$ssf_tkt_customers_account->Operation();
$ssf_tkt_customers_account4->Operation();
$ssf_flt_tags_data->Operation();
//End Execute Components

//Go to destination page @1-9C8FB7A1
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
    unset($ssf_tkt_customers_account4);
    unset($ssf_flt_tags_data);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-924D8A10
$SSFSpiritHeader->Show();
$ssf_tkt_customers_account->Show();
$ssf_tkt_customers_account3->Show();
$ssf_tkt_customers_account1->Show();
$ssf_tkt_customers_account4->Show();
$ssf_flt_tags_data->Show();
$Link1->Show();
$Link2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-A4F084CB
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customers_account);
unset($ssf_tkt_customers_account3);
unset($ssf_tkt_customers_account1);
unset($ssf_tkt_customers_account4);
unset($ssf_flt_tags_data);
unset($Tpl);
//End Unload Page


?>
