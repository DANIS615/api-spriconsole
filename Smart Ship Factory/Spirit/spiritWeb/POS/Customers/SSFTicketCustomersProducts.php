<?php
//Include Common Files @1-EFCAA324
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomersProducts.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsRecordssf_tkt_customers_product { //ssf_tkt_customers_product Class @8-5BB313C4

//Variables @8-9E315808

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

//Class_Initialize Event @8-9013FE5D
    function clsRecordssf_tkt_customers_product($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_product/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_product";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->lblReference = new clsControl(ccsLabel, "lblReference", "lblReference", ccsText, "", CCGetRequestParam("lblReference", $Method, NULL), $this);
            $this->s_tkt_cp_product_id = new clsControl(ccsTextBox, "s_tkt_cp_product_id", "s_tkt_cp_product_id", ccsText, "", CCGetRequestParam("s_tkt_cp_product_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @8-A71C583F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_cp_product_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_cp_product_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @8-3206C402
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->lblReference->Errors->Count());
        $errors = ($errors || $this->s_tkt_cp_product_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @8-83AE19F3
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
        $Redirect = "SSFTicketCustomersProducts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomersProducts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y", "ssf_tkt_cust_prod_Insert", "tkt_cp_product_id")), CCGetQueryString("QueryString", array("s_tkt_cp_product_id", "ccsForm", "ssf_tkt_cust_prod_Insert", "tkt_cp_product_id")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @8-615513B9
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
            $Error = ComposeStrings($Error, $this->lblReference->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_cp_product_id->Errors->ToString());
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

        $this->lblReference->Show();
        $this->s_tkt_cp_product_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_product Class @8-FCB6E20C

class clsGridssf_tkt_customers_product1 { //ssf_tkt_customers_product1 class @2-0EF0EDE8

//Variables @2-D29671D6

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
    public $Sorter_tkt_cp_product_id;
//End Variables

//Class_Initialize Event @2-6FF0812C
    function clsGridssf_tkt_customers_product1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers_product1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers_product1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customers_product1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_customers_product1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_customers_product1Dir", "");

        $this->tkt_cp_product_id = new clsControl(ccsLink, "tkt_cp_product_id", "tkt_cp_product_id", ccsText, "", CCGetRequestParam("tkt_cp_product_id", ccsGet, NULL), $this);
        $this->tkt_cp_product_id->Page = "SSFTicketCustomersProducts.php";
        $this->tkt_plu_long_desc = new clsControl(ccsLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", CCGetRequestParam("tkt_plu_long_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_cp_product_id = new clsSorter($this->ComponentName, "Sorter_tkt_cp_product_id", $FileName, $this);
        $this->ssf_tkt_cust_prod_Insert = new clsControl(ccsLink, "ssf_tkt_cust_prod_Insert", "ssf_tkt_cust_prod_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_cust_prod_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_cust_prod_Insert->Page = "SSFTicketCustomersProducts.php";
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

//Show Method @2-CB870C00
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltkt_cp_reference_id"] = CCGetFromGet("tkt_cp_reference_id", NULL);
        $this->DataSource->Parameters["urls_tkt_cp_product_id"] = CCGetFromGet("s_tkt_cp_product_id", NULL);

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
            $this->ControlsVisible["tkt_cp_product_id"] = $this->tkt_cp_product_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_cp_product_id->SetValue($this->DataSource->tkt_cp_product_id->GetValue());
                $this->tkt_cp_product_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_cp_product_id->Parameters = CCAddParam($this->tkt_cp_product_id->Parameters, "tkt_cp_product_id", $this->DataSource->f("tkt_cp_product_id"));
                $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_cp_product_id->Show();
                $this->tkt_plu_long_desc->Show();
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
        $this->ssf_tkt_cust_prod_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_cp_product_id", "ccsForm"));
        $this->ssf_tkt_cust_prod_Insert->Parameters = CCAddParam($this->ssf_tkt_cust_prod_Insert->Parameters, "ssf_tkt_cust_prod_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_cp_product_id->Show();
        $this->ssf_tkt_cust_prod_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-F071B7FA
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_cp_product_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_product1 Class @2-FCB6E20C

class clsssf_tkt_customers_product1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_product1DataSource Class @2-2E5C4436

//DataSource Variables @2-1BD3D778
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_cp_product_id;
    public $tkt_plu_long_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-2F593F63
    function clsssf_tkt_customers_product1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_product1";
        $this->Initialize();
        $this->tkt_cp_product_id = new clsField("tkt_cp_product_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-B4E9EE78
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_customers_products.tkt_cp_product_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_cp_product_id" => array("tkt_cp_product_id", "")));
    }
//End SetOrder Method

//Prepare Method @2-69C2D27C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_cp_reference_id", ccsText, "", "", $this->Parameters["urltkt_cp_reference_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_cp_product_id", ccsText, "", "", $this->Parameters["urls_tkt_cp_product_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_customers_products.tkt_cp_reference_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "ssf_tkt_customers_products.tkt_cp_product_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @2-3B713D9F
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_products LEFT JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_customers_products.tkt_cp_product_id = ssf_tkt_plu.tkt_plu_id";
        $this->SQL = "SELECT tkt_cp_reference_id, tkt_cp_product_id, tkt_cp_ref_type, tkt_plu_long_desc \n\n" .
        "FROM ssf_tkt_customers_products LEFT JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_customers_products.tkt_cp_product_id = ssf_tkt_plu.tkt_plu_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-886BBA4E
    function SetValues()
    {
        $this->tkt_cp_product_id->SetDBValue($this->f("tkt_cp_product_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
    }
//End SetValues Method

} //End ssf_tkt_customers_product1DataSource Class @2-FCB6E20C

class clsRecordssf_tkt_customers_product2 { //ssf_tkt_customers_product2 Class @19-A83C06CF

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

//Class_Initialize Event @19-74C327C0
    function clsRecordssf_tkt_customers_product2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_product2/Error";
        $this->DataSource = new clsssf_tkt_customers_product2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_product2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_cp_product_id = new clsControl(ccsTextBox, "tkt_cp_product_id", $CCSLocales->GetText("tkt_cp_product_id"), ccsText, "", CCGetRequestParam("tkt_cp_product_id", $Method, NULL), $this);
            $this->tkt_cp_product_id->Required = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopProductsList.php";
            $this->tkt_cp_ref_type = new clsControl(ccsHidden, "tkt_cp_ref_type", "tkt_cp_ref_type", ccsText, "", CCGetRequestParam("tkt_cp_ref_type", $Method, NULL), $this);
            $this->tkt_cp_reference_id = new clsControl(ccsHidden, "tkt_cp_reference_id", "tkt_cp_reference_id", ccsText, "", CCGetRequestParam("tkt_cp_reference_id", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @19-8103FADF
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_cp_reference_id"] = CCGetFromGet("tkt_cp_reference_id", NULL);
        $this->DataSource->Parameters["urltkt_cp_product_id"] = CCGetFromGet("tkt_cp_product_id", NULL);
    }
//End Initialize Method

//Validate Method @19-04B19B3D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_cp_product_id->Validate() && $Validation);
        $Validation = ($this->tkt_cp_ref_type->Validate() && $Validation);
        $Validation = ($this->tkt_cp_reference_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_cp_product_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cp_ref_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_cp_reference_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @19-97D91DFC
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_cp_product_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->tkt_cp_ref_type->Errors->Count());
        $errors = ($errors || $this->tkt_cp_reference_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @19-1CDC7A84
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
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_cust_prod_Insert", "tkt_cp_product_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_cust_prod_Insert", "tkt_cp_product_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update)) {
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

//InsertRow Method @19-E607E834
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_cp_product_id->SetValue($this->tkt_cp_product_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_cp_ref_type->SetValue($this->tkt_cp_ref_type->GetValue(true));
        $this->DataSource->tkt_cp_reference_id->SetValue($this->tkt_cp_reference_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

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

//Show Method @19-679FF0ED
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
                    $this->tkt_cp_product_id->SetValue($this->DataSource->tkt_cp_product_id->GetValue());
                    $this->tkt_cp_ref_type->SetValue($this->DataSource->tkt_cp_ref_type->GetValue());
                    $this->tkt_cp_reference_id->SetValue($this->DataSource->tkt_cp_reference_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_cp_product_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cp_ref_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_cp_reference_id->Errors->ToString());
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

        $this->tkt_cp_product_id->Show();
        $this->Link1->Show();
        $this->tkt_cp_ref_type->Show();
        $this->tkt_cp_reference_id->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers_product2 Class @19-FCB6E20C

class clsssf_tkt_customers_product2DataSource extends clsDBConnection1 {  //ssf_tkt_customers_product2DataSource Class @19-A58F7A2F

//DataSource Variables @19-AB13B8A4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();

    // Datasource fields
    public $tkt_cp_product_id;
    public $Link1;
    public $tkt_cp_ref_type;
    public $tkt_cp_reference_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @19-845B13AF
    function clsssf_tkt_customers_product2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_product2/Error";
        $this->Initialize();
        $this->tkt_cp_product_id = new clsField("tkt_cp_product_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->tkt_cp_ref_type = new clsField("tkt_cp_ref_type", ccsText, "");
        $this->tkt_cp_reference_id = new clsField("tkt_cp_reference_id", ccsText, "");

        $this->InsertFields["tkt_cp_product_id"] = array("Name" => "tkt_cp_product_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cp_ref_type"] = array("Name" => "tkt_cp_ref_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_cp_reference_id"] = array("Name" => "tkt_cp_reference_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @19-74CDD5D4
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_cp_reference_id", ccsText, "", "", $this->Parameters["urltkt_cp_reference_id"], "", false);
        $this->wp->AddParameter("2", "urltkt_cp_product_id", ccsText, "", "", $this->Parameters["urltkt_cp_product_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_cp_reference_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_cp_product_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @19-1995F411
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers_products {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @19-D0C85184
    function SetValues()
    {
        $this->tkt_cp_product_id->SetDBValue($this->f("tkt_cp_product_id"));
        $this->tkt_cp_ref_type->SetDBValue($this->f("tkt_cp_ref_type"));
        $this->tkt_cp_reference_id->SetDBValue($this->f("tkt_cp_reference_id"));
    }
//End SetValues Method

//Insert Method @19-A85A7CE4
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_cp_product_id"]["Value"] = $this->tkt_cp_product_id->GetDBValue(true);
        $this->InsertFields["tkt_cp_ref_type"]["Value"] = $this->tkt_cp_ref_type->GetDBValue(true);
        $this->InsertFields["tkt_cp_reference_id"]["Value"] = $this->tkt_cp_reference_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers_products", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Delete Method @19-B0150D53
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers_products";
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

} //End ssf_tkt_customers_product2DataSource Class @19-FCB6E20C

//Initialize Page @1-12C10CB4
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
$TemplateFileName = "SSFTicketCustomersProducts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F58BE34D
include("./SSFTicketCustomersProducts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-329F3C47
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link2->Page = "";
$ssf_tkt_customers_product = new clsRecordssf_tkt_customers_product("", $MainPage);
$ssf_tkt_customers_product1 = new clsGridssf_tkt_customers_product1("", $MainPage);
$ssf_tkt_customers_product2 = new clsRecordssf_tkt_customers_product2("", $MainPage);
$MainPage->Link2 = & $Link2;
$MainPage->ssf_tkt_customers_product = & $ssf_tkt_customers_product;
$MainPage->ssf_tkt_customers_product1 = & $ssf_tkt_customers_product1;
$MainPage->ssf_tkt_customers_product2 = & $ssf_tkt_customers_product2;
$ssf_tkt_customers_product1->Initialize();
$ssf_tkt_customers_product2->Initialize();

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

//Execute Components @1-E11A084D
$ssf_tkt_customers_product->Operation();
$ssf_tkt_customers_product2->Operation();
//End Execute Components

//Go to destination page @1-C32FD7C4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_tkt_customers_product);
    unset($ssf_tkt_customers_product1);
    unset($ssf_tkt_customers_product2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-F734AD26
$ssf_tkt_customers_product->Show();
$ssf_tkt_customers_product1->Show();
$ssf_tkt_customers_product2->Show();
$Link2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-73949851
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_customers_product);
unset($ssf_tkt_customers_product1);
unset($ssf_tkt_customers_product2);
unset($Tpl);
//End Unload Page


?>
