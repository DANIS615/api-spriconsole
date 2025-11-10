<?php
//Include Common Files @1-709AA065
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomers.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_customersSearch { //ssf_tkt_customersSearch Class @5-FD19348D

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

//Class_Initialize Event @5-F5DC9EF6
    function clsRecordssf_tkt_customersSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customersSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customersSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_cust_id = new clsControl(ccsTextBox, "s_tkt_cust_id", "s_tkt_cust_id", ccsText, "", CCGetRequestParam("s_tkt_cust_id", $Method, NULL), $this);
            $this->s_tkt_cust_name = new clsControl(ccsTextBox, "s_tkt_cust_name", "s_tkt_cust_name", ccsText, "", CCGetRequestParam("s_tkt_cust_name", $Method, NULL), $this);
            $this->s_tkt_cust_tax_id = new clsControl(ccsTextBox, "s_tkt_cust_tax_id", "s_tkt_cust_tax_id", ccsText, "", CCGetRequestParam("s_tkt_cust_tax_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketCustomers.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-97FB9686
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_cust_name->Validate() && $Validation);
        $Validation = ($this->s_tkt_cust_tax_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_cust_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_cust_tax_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-A5DA0622
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_cust_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->s_tkt_cust_tax_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-FF9B9E9A
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
        $Redirect = "SSFTicketCustomers.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomers.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-26AAB054
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
            $Error = ComposeStrings($Error, $this->s_tkt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_cust_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_cust_tax_id->Errors->ToString());
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

        $this->s_tkt_cust_id->Show();
        $this->s_tkt_cust_name->Show();
        $this->s_tkt_cust_tax_id->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customersSearch Class @5-FCB6E20C

class clsGridssf_tkt_customers { //ssf_tkt_customers class @3-8DB929C4

//Variables @3-689ABA1A

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
    public $Sorter_tkt_cust_id;
    public $Sorter_tkt_cust_name;
    public $Sorter_tkt_cust_tax_id;
//End Variables

//Class_Initialize Event @3-ACE56125
    function clsGridssf_tkt_customers($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customersDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_customersOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_customersDir", "");

        $this->tkt_cust_id = new clsControl(ccsLink, "tkt_cust_id", "tkt_cust_id", ccsText, "", CCGetRequestParam("tkt_cust_id", ccsGet, NULL), $this);
        $this->tkt_cust_id->Page = "SSFTicketCustomers.php";
        $this->tkt_cust_name = new clsControl(ccsLabel, "tkt_cust_name", "tkt_cust_name", ccsText, "", CCGetRequestParam("tkt_cust_name", ccsGet, NULL), $this);
        $this->tkt_cust_tax_id = new clsControl(ccsLabel, "tkt_cust_tax_id", "tkt_cust_tax_id", ccsText, "", CCGetRequestParam("tkt_cust_tax_id", ccsGet, NULL), $this);
        $this->Sorter_tkt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_cust_id", $FileName, $this);
        $this->Sorter_tkt_cust_name = new clsSorter($this->ComponentName, "Sorter_tkt_cust_name", $FileName, $this);
        $this->Sorter_tkt_cust_tax_id = new clsSorter($this->ComponentName, "Sorter_tkt_cust_tax_id", $FileName, $this);
        $this->ssf_tkt_customers_Insert = new clsControl(ccsLink, "ssf_tkt_customers_Insert", "ssf_tkt_customers_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_customers_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_customers_Insert->Page = "SSFTicketCustomers.php";
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

//Show Method @3-F86F7510
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_cust_id"] = CCGetFromGet("s_tkt_cust_id", NULL);
        $this->DataSource->Parameters["urls_tkt_cust_name"] = CCGetFromGet("s_tkt_cust_name", NULL);
        $this->DataSource->Parameters["urls_tkt_cust_tax_id"] = CCGetFromGet("s_tkt_cust_tax_id", NULL);

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
            $this->ControlsVisible["tkt_cust_id"] = $this->tkt_cust_id->Visible;
            $this->ControlsVisible["tkt_cust_name"] = $this->tkt_cust_name->Visible;
            $this->ControlsVisible["tkt_cust_tax_id"] = $this->tkt_cust_tax_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_cust_id->SetValue($this->DataSource->tkt_cust_id->GetValue());
                $this->tkt_cust_id->Parameters = CCGetQueryString("QueryString", array("ssf_tkt_customers_Insert", "ccsForm"));
                $this->tkt_cust_id->Parameters = CCAddParam($this->tkt_cust_id->Parameters, "tkt_cust_id", $this->DataSource->f("tkt_cust_id"));
                $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
                $this->tkt_cust_tax_id->SetValue($this->DataSource->tkt_cust_tax_id->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_cust_id->Show();
                $this->tkt_cust_name->Show();
                $this->tkt_cust_tax_id->Show();
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
        $this->ssf_tkt_customers_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_cust_id", "ccsForm"));
        $this->ssf_tkt_customers_Insert->Parameters = CCAddParam($this->ssf_tkt_customers_Insert->Parameters, "ssf_tkt_customers_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_cust_id->Show();
        $this->Sorter_tkt_cust_name->Show();
        $this->Sorter_tkt_cust_tax_id->Show();
        $this->ssf_tkt_customers_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-522CDD05
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers Class @3-FCB6E20C

class clsssf_tkt_customersDataSource extends clsDBConnection1 {  //ssf_tkt_customersDataSource Class @3-59730E05

//DataSource Variables @3-79641DC6
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_cust_id;
    public $tkt_cust_name;
    public $tkt_cust_tax_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-BE2B182D
    function clsssf_tkt_customersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers";
        $this->Initialize();
        $this->tkt_cust_id = new clsField("tkt_cust_id", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->tkt_cust_tax_id = new clsField("tkt_cust_tax_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-A3986E34
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_cust_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_cust_id" => array("tkt_cust_id", ""), 
            "Sorter_tkt_cust_name" => array("tkt_cust_name", ""), 
            "Sorter_tkt_cust_tax_id" => array("tkt_cust_tax_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-312DFD32
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_cust_id", ccsText, "", "", $this->Parameters["urls_tkt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_cust_name", ccsText, "", "", $this->Parameters["urls_tkt_cust_name"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_cust_tax_id", ccsText, "", "", $this->Parameters["urls_tkt_cust_tax_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "tkt_cust_name", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_cust_tax_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-DDB5F447
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers";
        $this->SQL = "SELECT tkt_cust_id, tkt_cust_name, tkt_cust_tax_id \n\n" .
        "FROM ssf_tkt_customers {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-F6E0F335
    function SetValues()
    {
        $this->tkt_cust_id->SetDBValue($this->f("tkt_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
        $this->tkt_cust_tax_id->SetDBValue($this->f("tkt_cust_tax_id"));
    }
//End SetValues Method

} //End ssf_tkt_customersDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_customers1 { //ssf_tkt_customers1 Class @25-DC68F361

//Variables @25-9E315808

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

//Class_Initialize Event @25-61B16BFB
    function clsRecordssf_tkt_customers1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers1/Error";
        $this->DataSource = new clsssf_tkt_customers1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_cust_id = new clsControl(ccsTextBox, "tkt_cust_id", $CCSLocales->GetText("tkt_cust_id"), ccsText, "", CCGetRequestParam("tkt_cust_id", $Method, NULL), $this);
            $this->tkt_cust_id->Required = true;
            $this->lnkAccount = new clsControl(ccsLink, "lnkAccount", "lnkAccount", ccsText, "", CCGetRequestParam("lnkAccount", $Method, NULL), $this);
            $this->lnkAccount->Page = "SSFTicketCustomersAccounts.php";
            $this->tkt_cust_name = new clsControl(ccsTextBox, "tkt_cust_name", $CCSLocales->GetText("tkt_cust_name"), ccsText, "", CCGetRequestParam("tkt_cust_name", $Method, NULL), $this);
            $this->tkt_cust_tax_id = new clsControl(ccsTextBox, "tkt_cust_tax_id", $CCSLocales->GetText("tkt_cust_tax_id"), ccsText, "", CCGetRequestParam("tkt_cust_tax_id", $Method, NULL), $this);
            $this->tkt_cust_address = new clsControl(ccsTextBox, "tkt_cust_address", $CCSLocales->GetText("tkt_cust_address"), ccsText, "", CCGetRequestParam("tkt_cust_address", $Method, NULL), $this);
            $this->tkt_cust_type = new clsControl(ccsListBox, "tkt_cust_type", $CCSLocales->GetText("tkt_cust_type"), ccsText, "", CCGetRequestParam("tkt_cust_type", $Method, NULL), $this);
            $this->tkt_cust_type->DSType = dsTable;
            list($this->tkt_cust_type->BoundColumn, $this->tkt_cust_type->TextColumn, $this->tkt_cust_type->DBFormat) = array("", "", "");
            $this->tkt_cust_type->DataSource = new clsDBConnection1();
            $this->tkt_cust_type->ds = & $this->tkt_cust_type->DataSource;
            $this->tkt_cust_type->DataSource->SQL = "SELECT tkt_cust_type_id, tkt_cust_type_desc \n" .
"FROM ssf_tkt_customers_types {SQL_Where} {SQL_OrderBy}";
            $this->tkt_cust_type->DataSource->Order = "tkt_cust_type_id";
            $this->tkt_cust_type->DataSource->Order = "tkt_cust_type_id";
            $this->tkt_cust_price_list_id = new clsControl(ccsTextBox, "tkt_cust_price_list_id", "tkt_cust_price_list_id", ccsInteger, "", CCGetRequestParam("tkt_cust_price_list_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopPriceList.php";
            $this->Button_Account = new clsButton("Button_Account", $Method, $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_cust_price_list_id->Value) && !strlen($this->tkt_cust_price_list_id->Value) && $this->tkt_cust_price_list_id->Value !== false)
                    $this->tkt_cust_price_list_id->SetText(0);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @25-F1F68F0D
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_cust_id"] = CCGetFromGet("tkt_cust_id", NULL);
    }
//End Initialize Method

//Validate Method @25-08452F46
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_cust_id->Validate() && $Validation);
        $Validation = ($this->tkt_cust_name->Validate() && $Validation);
        $Validation = ($this->tkt_cust_tax_id->Validate() && $Validation);
        $Validation = ($this->tkt_cust_address->Validate() && $Validation);
        $Validation = ($this->tkt_cust_type->Validate() && $Validation);
        $Validation = ($this->tkt_cust_price_list_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_tax_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_address->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cust_price_list_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @25-26E39E78
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_cust_id->Errors->Count());
        $errors = ($errors || $this->lnkAccount->Errors->Count());
        $errors = ($errors || $this->tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->tkt_cust_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_address->Errors->Count());
        $errors = ($errors || $this->tkt_cust_type->Errors->Count());
        $errors = ($errors || $this->tkt_cust_price_list_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @25-A9A2004C
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
            if($this->Button_Account->Pressed) {
                $this->PressedButton = "Button_Account";
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
        $Redirect = "SSFTicketCustomers.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketCustomers.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_cust_id", "ssf_tkt_customers_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketCustomers.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_cust_id", "ssf_tkt_customers_Insert"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Account") {
                if(!CCGetEvent($this->Button_Account->CCSEvents, "OnClick", $this->Button_Account)) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Insert") {
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

//InsertRow Method @25-03274E29
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_cust_id->SetValue($this->tkt_cust_id->GetValue(true));
        $this->DataSource->lnkAccount->SetValue($this->lnkAccount->GetValue(true));
        $this->DataSource->tkt_cust_name->SetValue($this->tkt_cust_name->GetValue(true));
        $this->DataSource->tkt_cust_tax_id->SetValue($this->tkt_cust_tax_id->GetValue(true));
        $this->DataSource->tkt_cust_address->SetValue($this->tkt_cust_address->GetValue(true));
        $this->DataSource->tkt_cust_type->SetValue($this->tkt_cust_type->GetValue(true));
        $this->DataSource->tkt_cust_price_list_id->SetValue($this->tkt_cust_price_list_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @25-625D6CB5
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_cust_id->SetValue($this->tkt_cust_id->GetValue(true));
        $this->DataSource->lnkAccount->SetValue($this->lnkAccount->GetValue(true));
        $this->DataSource->tkt_cust_name->SetValue($this->tkt_cust_name->GetValue(true));
        $this->DataSource->tkt_cust_tax_id->SetValue($this->tkt_cust_tax_id->GetValue(true));
        $this->DataSource->tkt_cust_address->SetValue($this->tkt_cust_address->GetValue(true));
        $this->DataSource->tkt_cust_type->SetValue($this->tkt_cust_type->GetValue(true));
        $this->DataSource->tkt_cust_price_list_id->SetValue($this->tkt_cust_price_list_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @25-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @25-7C39842E
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_cust_type->Prepare();

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
                    $this->tkt_cust_id->SetValue($this->DataSource->tkt_cust_id->GetValue());
                    $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
                    $this->tkt_cust_tax_id->SetValue($this->DataSource->tkt_cust_tax_id->GetValue());
                    $this->tkt_cust_address->SetValue($this->DataSource->tkt_cust_address->GetValue());
                    $this->tkt_cust_type->SetValue($this->DataSource->tkt_cust_type->GetValue());
                    $this->tkt_cust_price_list_id->SetValue($this->DataSource->tkt_cust_price_list_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        $this->lnkAccount->Parameters = "";
        $this->lnkAccount->Parameters = CCAddParam($this->lnkAccount->Parameters, "tkt_accnt_cust_id", $this->DataSource->f("tkt_cust_id"));
        $this->lnkAccount->Parameters = CCAddParam($this->lnkAccount->Parameters, "s_tkt_accnt_cust_id", $this->DataSource->f("tkt_cust_id"));

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lnkAccount->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_tax_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_address->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cust_price_list_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
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

        $this->tkt_cust_id->Show();
        $this->lnkAccount->Show();
        $this->tkt_cust_name->Show();
        $this->tkt_cust_tax_id->Show();
        $this->tkt_cust_address->Show();
        $this->tkt_cust_type->Show();
        $this->tkt_cust_price_list_id->Show();
        $this->Link1->Show();
        $this->Button_Account->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers1 Class @25-FCB6E20C

class clsssf_tkt_customers1DataSource extends clsDBConnection1 {  //ssf_tkt_customers1DataSource Class @25-8D71FE56

//DataSource Variables @25-ABB1350C
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
    public $tkt_cust_id;
    public $lnkAccount;
    public $tkt_cust_name;
    public $tkt_cust_tax_id;
    public $tkt_cust_address;
    public $tkt_cust_type;
    public $tkt_cust_price_list_id;
    public $Link1;
//End DataSource Variables

//DataSourceClass_Initialize Event @25-A42FE97E
    function clsssf_tkt_customers1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers1/Error";
        $this->Initialize();
        $this->tkt_cust_id = new clsField("tkt_cust_id", ccsText, "");
        $this->lnkAccount = new clsField("lnkAccount", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->tkt_cust_tax_id = new clsField("tkt_cust_tax_id", ccsText, "");
        $this->tkt_cust_address = new clsField("tkt_cust_address", ccsText, "");
        $this->tkt_cust_type = new clsField("tkt_cust_type", ccsText, "");
        $this->tkt_cust_price_list_id = new clsField("tkt_cust_price_list_id", ccsInteger, "");
        $this->Link1 = new clsField("Link1", ccsText, "");

        $this->InsertFields["tkt_cust_id"] = array("Name" => "tkt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_name"] = array("Name" => "tkt_cust_name", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_tax_id"] = array("Name" => "tkt_cust_tax_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_address"] = array("Name" => "tkt_cust_address", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_type"] = array("Name" => "tkt_cust_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cust_price_list_id"] = array("Name" => "tkt_cust_price_list_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_cust_id"] = array("Name" => "tkt_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_name"] = array("Name" => "tkt_cust_name", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_tax_id"] = array("Name" => "tkt_cust_tax_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_address"] = array("Name" => "tkt_cust_address", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_type"] = array("Name" => "tkt_cust_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_cust_price_list_id"] = array("Name" => "tkt_cust_price_list_id", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @25-9117E198
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_cust_id", ccsText, "", "", $this->Parameters["urltkt_cust_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @25-EE968635
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @25-BCE43B15
    function SetValues()
    {
        $this->tkt_cust_id->SetDBValue($this->f("tkt_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
        $this->tkt_cust_tax_id->SetDBValue($this->f("tkt_cust_tax_id"));
        $this->tkt_cust_address->SetDBValue($this->f("tkt_cust_address"));
        $this->tkt_cust_type->SetDBValue($this->f("tkt_cust_type"));
        $this->tkt_cust_price_list_id->SetDBValue(trim($this->f("tkt_cust_price_list_id")));
    }
//End SetValues Method

//Insert Method @25-7ADC3D4F
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_cust_id"]["Value"] = $this->tkt_cust_id->GetDBValue(true);
        $this->InsertFields["tkt_cust_name"]["Value"] = $this->tkt_cust_name->GetDBValue(true);
        $this->InsertFields["tkt_cust_tax_id"]["Value"] = $this->tkt_cust_tax_id->GetDBValue(true);
        $this->InsertFields["tkt_cust_address"]["Value"] = $this->tkt_cust_address->GetDBValue(true);
        $this->InsertFields["tkt_cust_type"]["Value"] = $this->tkt_cust_type->GetDBValue(true);
        $this->InsertFields["tkt_cust_price_list_id"]["Value"] = $this->tkt_cust_price_list_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @25-CA8EBA1B
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_cust_id"]["Value"] = $this->tkt_cust_id->GetDBValue(true);
        $this->UpdateFields["tkt_cust_name"]["Value"] = $this->tkt_cust_name->GetDBValue(true);
        $this->UpdateFields["tkt_cust_tax_id"]["Value"] = $this->tkt_cust_tax_id->GetDBValue(true);
        $this->UpdateFields["tkt_cust_address"]["Value"] = $this->tkt_cust_address->GetDBValue(true);
        $this->UpdateFields["tkt_cust_type"]["Value"] = $this->tkt_cust_type->GetDBValue(true);
        $this->UpdateFields["tkt_cust_price_list_id"]["Value"] = $this->tkt_cust_price_list_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_customers", $this->UpdateFields, $this);
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

//Delete Method @25-39FC873B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers";
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

} //End ssf_tkt_customers1DataSource Class @25-FCB6E20C

//Initialize Page @1-2368574C
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
$TemplateFileName = "SSFTicketCustomers.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-A0379BE6
include("./SSFTicketCustomers_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-FC053CDD
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_customersSearch = new clsRecordssf_tkt_customersSearch("", $MainPage);
$ssf_tkt_customers = new clsGridssf_tkt_customers("", $MainPage);
$ssf_tkt_customers1 = new clsRecordssf_tkt_customers1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customersSearch = & $ssf_tkt_customersSearch;
$MainPage->ssf_tkt_customers = & $ssf_tkt_customers;
$MainPage->ssf_tkt_customers1 = & $ssf_tkt_customers1;
$ssf_tkt_customers->Initialize();
$ssf_tkt_customers1->Initialize();

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

//Execute Components @1-88945085
$SSFSpiritHeader->Operations();
$ssf_tkt_customersSearch->Operation();
$ssf_tkt_customers1->Operation();
//End Execute Components

//Go to destination page @1-23951B20
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_customersSearch);
    unset($ssf_tkt_customers);
    unset($ssf_tkt_customers1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-D9A91DBD
$SSFSpiritHeader->Show();
$ssf_tkt_customersSearch->Show();
$ssf_tkt_customers->Show();
$ssf_tkt_customers1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-8D400DB4
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customersSearch);
unset($ssf_tkt_customers);
unset($ssf_tkt_customers1);
unset($Tpl);
//End Unload Page


?>
