<?php
//Include Common Files @1-213B8E79
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Tax/");
define("FileName", "SSFTicketTaxes.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_catalog_ssf_tkt_t { //ssf_tkt_catalog_ssf_tkt_t Class @12-060FB747

//Variables @12-9E315808

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

//Class_Initialize Event @12-E93B5C20
    function clsRecordssf_tkt_catalog_ssf_tkt_t($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_catalog_ssf_tkt_t/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_catalog_ssf_tkt_t";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_tax_id = new clsControl(ccsTextBox, "s_tkt_tax_id", "s_tkt_tax_id", ccsText, "", CCGetRequestParam("s_tkt_tax_id", $Method, NULL), $this);
            $this->s_tkt_tax_type = new clsControl(ccsListBox, "s_tkt_tax_type", "s_tkt_tax_type", ccsText, "", CCGetRequestParam("s_tkt_tax_type", $Method, NULL), $this);
            $this->s_tkt_tax_type->DSType = dsTable;
            list($this->s_tkt_tax_type->BoundColumn, $this->s_tkt_tax_type->TextColumn, $this->s_tkt_tax_type->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->s_tkt_tax_type->DataSource = new clsDBConnection1();
            $this->s_tkt_tax_type->ds = & $this->s_tkt_tax_type->DataSource;
            $this->s_tkt_tax_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->s_tkt_tax_type->DataSource->Order = "tkt_catalog_code";
            $this->s_tkt_tax_type->DataSource->wp = new clsSQLParameters();
            $this->s_tkt_tax_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'tax_type'";
            $this->s_tkt_tax_type->DataSource->Where = 
                 $this->s_tkt_tax_type->DataSource->wp->Criterion[1];
            $this->s_tkt_tax_type->DataSource->Order = "tkt_catalog_code";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketTaxes.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @12-A666F2BE
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_tax_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_tax_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_tax_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_tax_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @12-F592CF14
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_tax_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_tax_type->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @12-0A46946B
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
        $Redirect = "SSFTicketTaxes.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketTaxes.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @12-F01D06A8
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_tax_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_tax_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_tax_type->Errors->ToString());
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

        $this->s_tkt_tax_id->Show();
        $this->s_tkt_tax_type->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_catalog_ssf_tkt_t Class @12-FCB6E20C

class clsGridssf_tkt_catalog_ssf_tkt_t1 { //ssf_tkt_catalog_ssf_tkt_t1 class @3-7A1C83D6

//Variables @3-C5523A05

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
    public $Sorter_tkt_tax_id;
    public $Sorter_tax_type;
    public $Sorter_tkt_tax_desc;
    public $Sorter_tkt_tax_value;
//End Variables

//Class_Initialize Event @3-548A5764
    function clsGridssf_tkt_catalog_ssf_tkt_t1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_catalog_ssf_tkt_t1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_catalog_ssf_tkt_t1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_catalog_ssf_tkt_t1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_catalog_ssf_tkt_t1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_catalog_ssf_tkt_t1Dir", "");

        $this->tkt_tax_id = new clsControl(ccsLink, "tkt_tax_id", "tkt_tax_id", ccsText, "", CCGetRequestParam("tkt_tax_id", ccsGet, NULL), $this);
        $this->tkt_tax_id->Page = "SSFTicketTaxes.php";
        $this->tax_type_desc = new clsControl(ccsLabel, "tax_type_desc", "tax_type_desc", ccsText, "", CCGetRequestParam("tax_type_desc", ccsGet, NULL), $this);
        $this->tkt_tax_desc = new clsControl(ccsLabel, "tkt_tax_desc", "tkt_tax_desc", ccsText, "", CCGetRequestParam("tkt_tax_desc", ccsGet, NULL), $this);
        $this->tkt_tax_value = new clsControl(ccsLabel, "tkt_tax_value", "tkt_tax_value", ccsFloat, "", CCGetRequestParam("tkt_tax_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_tax_id = new clsSorter($this->ComponentName, "Sorter_tkt_tax_id", $FileName, $this);
        $this->Sorter_tax_type = new clsSorter($this->ComponentName, "Sorter_tax_type", $FileName, $this);
        $this->Sorter_tkt_tax_desc = new clsSorter($this->ComponentName, "Sorter_tkt_tax_desc", $FileName, $this);
        $this->Sorter_tkt_tax_value = new clsSorter($this->ComponentName, "Sorter_tkt_tax_value", $FileName, $this);
        $this->taxes_insert = new clsControl(ccsLink, "taxes_insert", "taxes_insert", ccsText, "", CCGetRequestParam("taxes_insert", ccsGet, NULL), $this);
        $this->taxes_insert->Page = "SSFTicketTaxes.php";
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

//Show Method @3-426580E4
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_tax_id"] = CCGetFromGet("s_tkt_tax_id", NULL);
        $this->DataSource->Parameters["urls_tkt_tax_type"] = CCGetFromGet("s_tkt_tax_type", NULL);

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
            $this->ControlsVisible["tkt_tax_id"] = $this->tkt_tax_id->Visible;
            $this->ControlsVisible["tax_type_desc"] = $this->tax_type_desc->Visible;
            $this->ControlsVisible["tkt_tax_desc"] = $this->tkt_tax_desc->Visible;
            $this->ControlsVisible["tkt_tax_value"] = $this->tkt_tax_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_tax_id->SetValue($this->DataSource->tkt_tax_id->GetValue());
                $this->tkt_tax_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_tax_id->Parameters = CCAddParam($this->tkt_tax_id->Parameters, "tkt_tax_id", $this->DataSource->f("tkt_tax_id"));
                $this->tax_type_desc->SetValue($this->DataSource->tax_type_desc->GetValue());
                $this->tkt_tax_desc->SetValue($this->DataSource->tkt_tax_desc->GetValue());
                $this->tkt_tax_value->SetValue($this->DataSource->tkt_tax_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_tax_id->Show();
                $this->tax_type_desc->Show();
                $this->tkt_tax_desc->Show();
                $this->tkt_tax_value->Show();
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
        $this->taxes_insert->Parameters = CCGetQueryString("QueryString", array("tkt_tax_id", "ccsForm"));
        $this->taxes_insert->Parameters = CCAddParam($this->taxes_insert->Parameters, "taxes_insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_tax_id->Show();
        $this->Sorter_tax_type->Show();
        $this->Sorter_tkt_tax_desc->Show();
        $this->Sorter_tkt_tax_value->Show();
        $this->taxes_insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-0025CC75
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tax_type_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_catalog_ssf_tkt_t1 Class @3-FCB6E20C

class clsssf_tkt_catalog_ssf_tkt_t1DataSource extends clsDBConnection1 {  //ssf_tkt_catalog_ssf_tkt_t1DataSource Class @3-82446ECB

//DataSource Variables @3-038C131D
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_tax_id;
    public $tax_type_desc;
    public $tkt_tax_desc;
    public $tkt_tax_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-80CD9C41
    function clsssf_tkt_catalog_ssf_tkt_t1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_catalog_ssf_tkt_t1";
        $this->Initialize();
        $this->tkt_tax_id = new clsField("tkt_tax_id", ccsText, "");
        $this->tax_type_desc = new clsField("tax_type_desc", ccsText, "");
        $this->tkt_tax_desc = new clsField("tkt_tax_desc", ccsText, "");
        $this->tkt_tax_value = new clsField("tkt_tax_value", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-01D901B9
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_tax_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tax_id" => array("tkt_tax_id", ""), 
            "Sorter_tax_type" => array("tkt_catalog_value", ""), 
            "Sorter_tkt_tax_desc" => array("tkt_tax_desc", ""), 
            "Sorter_tkt_tax_value" => array("tkt_tax_value", "")));
    }
//End SetOrder Method

//Prepare Method @3-FC88FD7C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_tkt_tax_id", ccsText, "", "", $this->Parameters["urls_tkt_tax_id"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_tax_type", ccsText, "", "", $this->Parameters["urls_tkt_tax_type"], "", false);
        $this->wp->Criterion[1] = "ssf_tkt_catalog.tkt_catalog_id = 'tax_type'";
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "ssf_tkt_taxes.tkt_tax_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "ssf_tkt_taxes.tkt_tax_type", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-CE3AD527
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_taxes INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_taxes.tkt_tax_type = ssf_tkt_catalog.tkt_catalog_code";
        $this->SQL = "SELECT tkt_catalog_value AS tax_type_desc, ssf_tkt_taxes.* \n\n" .
        "FROM ssf_tkt_taxes INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_taxes.tkt_tax_type = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-BF3C39B4
    function SetValues()
    {
        $this->tkt_tax_id->SetDBValue($this->f("tkt_tax_id"));
        $this->tax_type_desc->SetDBValue($this->f("tax_type_desc"));
        $this->tkt_tax_desc->SetDBValue($this->f("tkt_tax_desc"));
        $this->tkt_tax_value->SetDBValue(trim($this->f("tkt_tax_value")));
    }
//End SetValues Method

} //End ssf_tkt_catalog_ssf_tkt_t1DataSource Class @3-FCB6E20C

class clsRecordssf_tkt_taxes { //ssf_tkt_taxes Class @29-C0B80666

//Variables @29-9E315808

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

//Class_Initialize Event @29-59BA5376
    function clsRecordssf_tkt_taxes($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_taxes/Error";
        $this->DataSource = new clsssf_tkt_taxesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_taxes";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_tax_id = new clsControl(ccsTextBox, "tkt_tax_id", $CCSLocales->GetText("tkt_tax_id"), ccsText, "", CCGetRequestParam("tkt_tax_id", $Method, NULL), $this);
            $this->tkt_tax_id->Required = true;
            $this->tkt_tax_desc = new clsControl(ccsTextBox, "tkt_tax_desc", $CCSLocales->GetText("tkt_tax_desc"), ccsText, "", CCGetRequestParam("tkt_tax_desc", $Method, NULL), $this);
            $this->tkt_tax_type = new clsControl(ccsListBox, "tkt_tax_type", $CCSLocales->GetText("tkt_tax_type"), ccsText, "", CCGetRequestParam("tkt_tax_type", $Method, NULL), $this);
            $this->tkt_tax_type->DSType = dsTable;
            list($this->tkt_tax_type->BoundColumn, $this->tkt_tax_type->TextColumn, $this->tkt_tax_type->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->tkt_tax_type->DataSource = new clsDBConnection1();
            $this->tkt_tax_type->ds = & $this->tkt_tax_type->DataSource;
            $this->tkt_tax_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_tax_type->DataSource->Order = "tkt_catalog_code";
            $this->tkt_tax_type->DataSource->wp = new clsSQLParameters();
            $this->tkt_tax_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'tax_type'";
            $this->tkt_tax_type->DataSource->Where = 
                 $this->tkt_tax_type->DataSource->wp->Criterion[1];
            $this->tkt_tax_type->DataSource->Order = "tkt_catalog_code";
            $this->tkt_tax_type->Required = true;
            $this->tkt_tax_included = new clsControl(ccsCheckBox, "tkt_tax_included", $CCSLocales->GetText("tkt_tax_included"), ccsText, "", CCGetRequestParam("tkt_tax_included", $Method, NULL), $this);
            $this->tkt_tax_included->CheckedValue = $this->tkt_tax_included->GetParsedValue("Y");
            $this->tkt_tax_included->UncheckedValue = $this->tkt_tax_included->GetParsedValue("N");
            $this->tkt_tax_value = new clsControl(ccsTextBox, "tkt_tax_value", $CCSLocales->GetText("tkt_tax_value"), ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("tkt_tax_value", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_tax_type->Value) && !strlen($this->tkt_tax_type->Value) && $this->tkt_tax_type->Value !== false)
                    $this->tkt_tax_type->SetText("P");
                if(!is_array($this->tkt_tax_included->Value) && !strlen($this->tkt_tax_included->Value) && $this->tkt_tax_included->Value !== false)
                    $this->tkt_tax_included->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @29-CA974AAF
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_tax_id"] = CCGetFromGet("tkt_tax_id", NULL);
    }
//End Initialize Method

//Validate Method @29-EDE93858
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_tax_id->Validate() && $Validation);
        $Validation = ($this->tkt_tax_desc->Validate() && $Validation);
        $Validation = ($this->tkt_tax_type->Validate() && $Validation);
        $Validation = ($this->tkt_tax_included->Validate() && $Validation);
        $Validation = ($this->tkt_tax_value->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_tax_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_included->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_value->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @29-03C2E19C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_tax_desc->Errors->Count());
        $errors = ($errors || $this->tkt_tax_type->Errors->Count());
        $errors = ($errors || $this->tkt_tax_included->Errors->Count());
        $errors = ($errors || $this->tkt_tax_value->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @29-B8B33B20
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
        $Redirect = "SSFTicketTaxes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketTaxes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "taxes_insert", "tkt_tax_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketTaxes.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "taxes_insert", "tkt_tax_id"));
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

//InsertRow Method @29-26496549
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_tax_id->SetValue($this->tkt_tax_id->GetValue(true));
        $this->DataSource->tkt_tax_desc->SetValue($this->tkt_tax_desc->GetValue(true));
        $this->DataSource->tkt_tax_type->SetValue($this->tkt_tax_type->GetValue(true));
        $this->DataSource->tkt_tax_included->SetValue($this->tkt_tax_included->GetValue(true));
        $this->DataSource->tkt_tax_value->SetValue($this->tkt_tax_value->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @29-C6C44E0E
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_tax_id->SetValue($this->tkt_tax_id->GetValue(true));
        $this->DataSource->tkt_tax_desc->SetValue($this->tkt_tax_desc->GetValue(true));
        $this->DataSource->tkt_tax_type->SetValue($this->tkt_tax_type->GetValue(true));
        $this->DataSource->tkt_tax_included->SetValue($this->tkt_tax_included->GetValue(true));
        $this->DataSource->tkt_tax_value->SetValue($this->tkt_tax_value->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @29-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @29-8588753F
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_tax_type->Prepare();

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
                    $this->tkt_tax_id->SetValue($this->DataSource->tkt_tax_id->GetValue());
                    $this->tkt_tax_desc->SetValue($this->DataSource->tkt_tax_desc->GetValue());
                    $this->tkt_tax_type->SetValue($this->DataSource->tkt_tax_type->GetValue());
                    $this->tkt_tax_included->SetValue($this->DataSource->tkt_tax_included->GetValue());
                    $this->tkt_tax_value->SetValue($this->DataSource->tkt_tax_value->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_tax_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_included->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_value->Errors->ToString());
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

        $this->tkt_tax_id->Show();
        $this->tkt_tax_desc->Show();
        $this->tkt_tax_type->Show();
        $this->tkt_tax_included->Show();
        $this->tkt_tax_value->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_taxes Class @29-FCB6E20C

class clsssf_tkt_taxesDataSource extends clsDBConnection1 {  //ssf_tkt_taxesDataSource Class @29-C76F1600

//DataSource Variables @29-CF6100D6
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
    public $tkt_tax_id;
    public $tkt_tax_desc;
    public $tkt_tax_type;
    public $tkt_tax_included;
    public $tkt_tax_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @29-0565CE4D
    function clsssf_tkt_taxesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_taxes/Error";
        $this->Initialize();
        $this->tkt_tax_id = new clsField("tkt_tax_id", ccsText, "");
        $this->tkt_tax_desc = new clsField("tkt_tax_desc", ccsText, "");
        $this->tkt_tax_type = new clsField("tkt_tax_type", ccsText, "");
        $this->tkt_tax_included = new clsField("tkt_tax_included", ccsText, "");
        $this->tkt_tax_value = new clsField("tkt_tax_value", ccsFloat, "");

        $this->InsertFields["tkt_tax_id"] = array("Name" => "tkt_tax_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tax_desc"] = array("Name" => "tkt_tax_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tax_type"] = array("Name" => "tkt_tax_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tax_included"] = array("Name" => "tkt_tax_included", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tax_value"] = array("Name" => "tkt_tax_value", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_tax_id"] = array("Name" => "tkt_tax_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_desc"] = array("Name" => "tkt_tax_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_type"] = array("Name" => "tkt_tax_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_included"] = array("Name" => "tkt_tax_included", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_value"] = array("Name" => "tkt_tax_value", "Value" => "", "DataType" => ccsFloat);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @29-C72FE846
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_tax_id", ccsText, "", "", $this->Parameters["urltkt_tax_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_tax_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @29-42D4B786
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_taxes {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @29-9246CBE6
    function SetValues()
    {
        $this->tkt_tax_id->SetDBValue($this->f("tkt_tax_id"));
        $this->tkt_tax_desc->SetDBValue($this->f("tkt_tax_desc"));
        $this->tkt_tax_type->SetDBValue($this->f("tkt_tax_type"));
        $this->tkt_tax_included->SetDBValue($this->f("tkt_tax_included"));
        $this->tkt_tax_value->SetDBValue(trim($this->f("tkt_tax_value")));
    }
//End SetValues Method

//Insert Method @29-CC476E5E
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_tax_id"]["Value"] = $this->tkt_tax_id->GetDBValue(true);
        $this->InsertFields["tkt_tax_desc"]["Value"] = $this->tkt_tax_desc->GetDBValue(true);
        $this->InsertFields["tkt_tax_type"]["Value"] = $this->tkt_tax_type->GetDBValue(true);
        $this->InsertFields["tkt_tax_included"]["Value"] = $this->tkt_tax_included->GetDBValue(true);
        $this->InsertFields["tkt_tax_value"]["Value"] = $this->tkt_tax_value->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_taxes", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @29-9DF3BE95
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_tax_id"]["Value"] = $this->tkt_tax_id->GetDBValue(true);
        $this->UpdateFields["tkt_tax_desc"]["Value"] = $this->tkt_tax_desc->GetDBValue(true);
        $this->UpdateFields["tkt_tax_type"]["Value"] = $this->tkt_tax_type->GetDBValue(true);
        $this->UpdateFields["tkt_tax_included"]["Value"] = $this->tkt_tax_included->GetDBValue(true);
        $this->UpdateFields["tkt_tax_value"]["Value"] = $this->tkt_tax_value->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_taxes", $this->UpdateFields, $this);
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

//Delete Method @29-2106B68C
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_taxes";
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

} //End ssf_tkt_taxesDataSource Class @29-FCB6E20C

//Initialize Page @1-33825AED
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
$TemplateFileName = "SSFTicketTaxes.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-319563EB
include("./SSFTicketTaxes_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B826472B
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_catalog_ssf_tkt_t = new clsRecordssf_tkt_catalog_ssf_tkt_t("", $MainPage);
$ssf_tkt_catalog_ssf_tkt_t1 = new clsGridssf_tkt_catalog_ssf_tkt_t1("", $MainPage);
$ssf_tkt_taxes = new clsRecordssf_tkt_taxes("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_catalog_ssf_tkt_t = & $ssf_tkt_catalog_ssf_tkt_t;
$MainPage->ssf_tkt_catalog_ssf_tkt_t1 = & $ssf_tkt_catalog_ssf_tkt_t1;
$MainPage->ssf_tkt_taxes = & $ssf_tkt_taxes;
$ssf_tkt_catalog_ssf_tkt_t1->Initialize();
$ssf_tkt_taxes->Initialize();

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

//Execute Components @1-05738E1C
$SSFSpiritHeader->Operations();
$ssf_tkt_catalog_ssf_tkt_t->Operation();
$ssf_tkt_taxes->Operation();
//End Execute Components

//Go to destination page @1-779CA8CF
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_catalog_ssf_tkt_t);
    unset($ssf_tkt_catalog_ssf_tkt_t1);
    unset($ssf_tkt_taxes);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-34E75DF8
$SSFSpiritHeader->Show();
$ssf_tkt_catalog_ssf_tkt_t->Show();
$ssf_tkt_catalog_ssf_tkt_t1->Show();
$ssf_tkt_taxes->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-15958CB5
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_catalog_ssf_tkt_t);
unset($ssf_tkt_catalog_ssf_tkt_t1);
unset($ssf_tkt_taxes);
unset($Tpl);
//End Unload Page


?>
