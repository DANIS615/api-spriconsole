<?php
//Include Common Files @1-B1A8C358
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFTicketTenders.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_catalog_ssf_tkt_t { //ssf_tkt_catalog_ssf_tkt_t Class @10-060FB747

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

//Class_Initialize Event @10-422FC33A
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
            $this->s_tkt_tender_id = new clsControl(ccsTextBox, "s_tkt_tender_id", "s_tkt_tender_id", ccsText, "", CCGetRequestParam("s_tkt_tender_id", $Method, NULL), $this);
            $this->s_tkt_tender_desc = new clsControl(ccsTextBox, "s_tkt_tender_desc", "s_tkt_tender_desc", ccsText, "", CCGetRequestParam("s_tkt_tender_desc", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @10-38F2665B
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_tender_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_tender_desc->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_tender_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_tender_desc->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @10-A9A9E1EE
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_tender_desc->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @10-D6D68AF3
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
        $Redirect = "SSFTicketTenders.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketTenders.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @10-3944FFB2
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
            $Error = ComposeStrings($Error, $this->s_tkt_tender_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_tender_desc->Errors->ToString());
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

        $this->s_tkt_tender_id->Show();
        $this->s_tkt_tender_desc->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_catalog_ssf_tkt_t Class @10-FCB6E20C

class clsGridssf_tkt_catalog_ssf_tkt_t1 { //ssf_tkt_catalog_ssf_tkt_t1 class @3-7A1C83D6

//Variables @3-4CA50345

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
    public $Sorter_tkt_tender_id;
    public $Sorter_tkt_tender_desc;
    public $Sorter_tender_type_desc;
//End Variables

//Class_Initialize Event @3-2DAFA9E6
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

        $this->tkt_tender_id = new clsControl(ccsLink, "tkt_tender_id", "tkt_tender_id", ccsText, "", CCGetRequestParam("tkt_tender_id", ccsGet, NULL), $this);
        $this->tkt_tender_id->Page = "SSFTicketTenders.php";
        $this->tkt_tender_desc = new clsControl(ccsLabel, "tkt_tender_desc", "tkt_tender_desc", ccsText, "", CCGetRequestParam("tkt_tender_desc", ccsGet, NULL), $this);
        $this->tender_type_desc = new clsControl(ccsLabel, "tender_type_desc", "tender_type_desc", ccsText, "", CCGetRequestParam("tender_type_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_tender_id = new clsSorter($this->ComponentName, "Sorter_tkt_tender_id", $FileName, $this);
        $this->Sorter_tkt_tender_desc = new clsSorter($this->ComponentName, "Sorter_tkt_tender_desc", $FileName, $this);
        $this->Sorter_tender_type_desc = new clsSorter($this->ComponentName, "Sorter_tender_type_desc", $FileName, $this);
        $this->tender_Insert = new clsControl(ccsLink, "tender_Insert", "tender_Insert", ccsText, "", CCGetRequestParam("tender_Insert", ccsGet, NULL), $this);
        $this->tender_Insert->Page = "SSFTicketTenders.php";
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

//Show Method @3-28C065DC
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_tender_id"] = CCGetFromGet("s_tkt_tender_id", NULL);
        $this->DataSource->Parameters["urls_tkt_tender_desc"] = CCGetFromGet("s_tkt_tender_desc", NULL);

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
            $this->ControlsVisible["tkt_tender_id"] = $this->tkt_tender_id->Visible;
            $this->ControlsVisible["tkt_tender_desc"] = $this->tkt_tender_desc->Visible;
            $this->ControlsVisible["tender_type_desc"] = $this->tender_type_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
                $this->tkt_tender_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_tender_id->Parameters = CCAddParam($this->tkt_tender_id->Parameters, "tkt_tender_id", $this->DataSource->f("tkt_tender_id"));
                $this->tkt_tender_desc->SetValue($this->DataSource->tkt_tender_desc->GetValue());
                $this->tender_type_desc->SetValue($this->DataSource->tender_type_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_tender_id->Show();
                $this->tkt_tender_desc->Show();
                $this->tender_type_desc->Show();
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
        $this->tender_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_tender_id", "ccsForm"));
        $this->tender_Insert->Parameters = CCAddParam($this->tender_Insert->Parameters, "tender_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_tender_id->Show();
        $this->Sorter_tkt_tender_desc->Show();
        $this->Sorter_tender_type_desc->Show();
        $this->tender_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-E9307E72
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tender_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tender_type_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_catalog_ssf_tkt_t1 Class @3-FCB6E20C

class clsssf_tkt_catalog_ssf_tkt_t1DataSource extends clsDBConnection1 {  //ssf_tkt_catalog_ssf_tkt_t1DataSource Class @3-82446ECB

//DataSource Variables @3-73B704BE
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_tender_id;
    public $tkt_tender_desc;
    public $tender_type_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-B6592251
    function clsssf_tkt_catalog_ssf_tkt_t1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_catalog_ssf_tkt_t1";
        $this->Initialize();
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_desc = new clsField("tkt_tender_desc", ccsText, "");
        $this->tender_type_desc = new clsField("tender_type_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-31369D94
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_catalog_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tender_id" => array("tkt_tender_id", ""), 
            "Sorter_tkt_tender_desc" => array("tkt_tender_desc", ""), 
            "Sorter_tender_type_desc" => array("tkt_catalog_value", "")));
    }
//End SetOrder Method

//Prepare Method @3-18F1A1A8
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_tkt_tender_id", ccsText, "", "", $this->Parameters["urls_tkt_tender_id"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_tender_desc", ccsText, "", "", $this->Parameters["urls_tkt_tender_desc"], "", false);
        $this->wp->Criterion[1] = "ssf_tkt_catalog.tkt_catalog_id = 'tender_type'";
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "ssf_tkt_tender.tkt_tender_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "ssf_tkt_tender.tkt_tender_desc", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-8623DF9B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_tender INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_tender.tkt_tender_type = ssf_tkt_catalog.tkt_catalog_code";
        $this->SQL = "SELECT ssf_tkt_tender.*, tkt_catalog_value AS tender_type_desc \n\n" .
        "FROM ssf_tkt_tender INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_tender.tkt_tender_type = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-72CE22E1
    function SetValues()
    {
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_desc->SetDBValue($this->f("tkt_tender_desc"));
        $this->tender_type_desc->SetDBValue($this->f("tender_type_desc"));
    }
//End SetValues Method

} //End ssf_tkt_catalog_ssf_tkt_t1DataSource Class @3-FCB6E20C

class clsRecordssf_tkt_tender { //ssf_tkt_tender Class @25-B4201888

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

//Class_Initialize Event @25-8E389A48
    function clsRecordssf_tkt_tender($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_tender/Error";
        $this->DataSource = new clsssf_tkt_tenderDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_tender";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_tender_id = new clsControl(ccsTextBox, "tkt_tender_id", $CCSLocales->GetText("tkt_tender_id"), ccsText, "", CCGetRequestParam("tkt_tender_id", $Method, NULL), $this);
            $this->tkt_tender_id->Required = true;
            $this->tkt_tender_desc = new clsControl(ccsTextBox, "tkt_tender_desc", $CCSLocales->GetText("tkt_tender_desc"), ccsText, "", CCGetRequestParam("tkt_tender_desc", $Method, NULL), $this);
            $this->tkt_tender_change = new clsControl(ccsCheckBox, "tkt_tender_change", $CCSLocales->GetText("tkt_tender_change"), ccsText, "", CCGetRequestParam("tkt_tender_change", $Method, NULL), $this);
            $this->tkt_tender_change->CheckedValue = $this->tkt_tender_change->GetParsedValue("Y");
            $this->tkt_tender_change->UncheckedValue = $this->tkt_tender_change->GetParsedValue("N");
            $this->tkt_tender_enabled = new clsControl(ccsCheckBox, "tkt_tender_enabled", $CCSLocales->GetText("tkt_tender_enabled"), ccsText, "", CCGetRequestParam("tkt_tender_enabled", $Method, NULL), $this);
            $this->tkt_tender_enabled->CheckedValue = $this->tkt_tender_enabled->GetParsedValue("Y");
            $this->tkt_tender_enabled->UncheckedValue = $this->tkt_tender_enabled->GetParsedValue("N");
            $this->tkt_tender_type = new clsControl(ccsListBox, "tkt_tender_type", $CCSLocales->GetText("tkt_tender_type"), ccsText, "", CCGetRequestParam("tkt_tender_type", $Method, NULL), $this);
            $this->tkt_tender_type->DSType = dsTable;
            list($this->tkt_tender_type->BoundColumn, $this->tkt_tender_type->TextColumn, $this->tkt_tender_type->DBFormat) = array("", "", "");
            $this->tkt_tender_type->DataSource = new clsDBConnection1();
            $this->tkt_tender_type->ds = & $this->tkt_tender_type->DataSource;
            $this->tkt_tender_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_tender_type->DataSource->Order = "tkt_catalog_code";
            $this->tkt_tender_type->DataSource->wp = new clsSQLParameters();
            $this->tkt_tender_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'tender_type'";
            $this->tkt_tender_type->DataSource->Where = 
                 $this->tkt_tender_type->DataSource->wp->Criterion[1];
            $this->tkt_tender_type->DataSource->Order = "tkt_catalog_code";
            $this->tkt_tender_type->Required = true;
            $this->tkt_tender_default = new clsControl(ccsCheckBox, "tkt_tender_default", $CCSLocales->GetText("tkt_tender_default"), ccsText, "", CCGetRequestParam("tkt_tender_default", $Method, NULL), $this);
            $this->tkt_tender_default->CheckedValue = $this->tkt_tender_default->GetParsedValue("Y");
            $this->tkt_tender_default->UncheckedValue = $this->tkt_tender_default->GetParsedValue("N");
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_tender_change->Value) && !strlen($this->tkt_tender_change->Value) && $this->tkt_tender_change->Value !== false)
                    $this->tkt_tender_change->SetValue(true);
                if(!is_array($this->tkt_tender_enabled->Value) && !strlen($this->tkt_tender_enabled->Value) && $this->tkt_tender_enabled->Value !== false)
                    $this->tkt_tender_enabled->SetValue(true);
                if(!is_array($this->tkt_tender_default->Value) && !strlen($this->tkt_tender_default->Value) && $this->tkt_tender_default->Value !== false)
                    $this->tkt_tender_default->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @25-05BDD1EC
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_tender_id"] = CCGetFromGet("tkt_tender_id", NULL);
    }
//End Initialize Method

//Validate Method @25-E5569DF1
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_tender_id->Validate() && $Validation);
        $Validation = ($this->tkt_tender_desc->Validate() && $Validation);
        $Validation = ($this->tkt_tender_change->Validate() && $Validation);
        $Validation = ($this->tkt_tender_enabled->Validate() && $Validation);
        $Validation = ($this->tkt_tender_type->Validate() && $Validation);
        $Validation = ($this->tkt_tender_default->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_tender_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tender_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tender_change->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tender_enabled->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tender_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tender_default->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @25-D3EBF903
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_desc->Errors->Count());
        $errors = ($errors || $this->tkt_tender_change->Errors->Count());
        $errors = ($errors || $this->tkt_tender_enabled->Errors->Count());
        $errors = ($errors || $this->tkt_tender_type->Errors->Count());
        $errors = ($errors || $this->tkt_tender_default->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @25-0D4FC0BC
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
        $Redirect = "SSFTicketTenders.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketTenders.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_tender_id", "tender_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketTenders.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_tender_id", "tender_Insert"));
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

//InsertRow Method @25-D3463E60
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_tender_id->SetValue($this->tkt_tender_id->GetValue(true));
        $this->DataSource->tkt_tender_desc->SetValue($this->tkt_tender_desc->GetValue(true));
        $this->DataSource->tkt_tender_change->SetValue($this->tkt_tender_change->GetValue(true));
        $this->DataSource->tkt_tender_enabled->SetValue($this->tkt_tender_enabled->GetValue(true));
        $this->DataSource->tkt_tender_type->SetValue($this->tkt_tender_type->GetValue(true));
        $this->DataSource->tkt_tender_default->SetValue($this->tkt_tender_default->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @25-11E80EF2
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_tender_id->SetValue($this->tkt_tender_id->GetValue(true));
        $this->DataSource->tkt_tender_desc->SetValue($this->tkt_tender_desc->GetValue(true));
        $this->DataSource->tkt_tender_change->SetValue($this->tkt_tender_change->GetValue(true));
        $this->DataSource->tkt_tender_enabled->SetValue($this->tkt_tender_enabled->GetValue(true));
        $this->DataSource->tkt_tender_type->SetValue($this->tkt_tender_type->GetValue(true));
        $this->DataSource->tkt_tender_default->SetValue($this->tkt_tender_default->GetValue(true));
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

//Show Method @25-9F25FB6A
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_tender_type->Prepare();

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
                    $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
                    $this->tkt_tender_desc->SetValue($this->DataSource->tkt_tender_desc->GetValue());
                    $this->tkt_tender_change->SetValue($this->DataSource->tkt_tender_change->GetValue());
                    $this->tkt_tender_enabled->SetValue($this->DataSource->tkt_tender_enabled->GetValue());
                    $this->tkt_tender_type->SetValue($this->DataSource->tkt_tender_type->GetValue());
                    $this->tkt_tender_default->SetValue($this->DataSource->tkt_tender_default->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_tender_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tender_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tender_change->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tender_enabled->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tender_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tender_default->Errors->ToString());
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

        $this->tkt_tender_id->Show();
        $this->tkt_tender_desc->Show();
        $this->tkt_tender_change->Show();
        $this->tkt_tender_enabled->Show();
        $this->tkt_tender_type->Show();
        $this->tkt_tender_default->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_tender Class @25-FCB6E20C

class clsssf_tkt_tenderDataSource extends clsDBConnection1 {  //ssf_tkt_tenderDataSource Class @25-F588664C

//DataSource Variables @25-5AFE5E50
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
    public $tkt_tender_id;
    public $tkt_tender_desc;
    public $tkt_tender_change;
    public $tkt_tender_enabled;
    public $tkt_tender_type;
    public $tkt_tender_default;
//End DataSource Variables

//DataSourceClass_Initialize Event @25-6AADA8C7
    function clsssf_tkt_tenderDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_tender/Error";
        $this->Initialize();
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_desc = new clsField("tkt_tender_desc", ccsText, "");
        $this->tkt_tender_change = new clsField("tkt_tender_change", ccsText, "");
        $this->tkt_tender_enabled = new clsField("tkt_tender_enabled", ccsText, "");
        $this->tkt_tender_type = new clsField("tkt_tender_type", ccsText, "");
        $this->tkt_tender_default = new clsField("tkt_tender_default", ccsText, "");

        $this->InsertFields["tkt_tender_id"] = array("Name" => "tkt_tender_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tender_desc"] = array("Name" => "tkt_tender_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tender_change"] = array("Name" => "tkt_tender_change", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tender_enabled"] = array("Name" => "tkt_tender_enabled", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tender_type"] = array("Name" => "tkt_tender_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tender_default"] = array("Name" => "tkt_tender_default", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_id"] = array("Name" => "tkt_tender_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_desc"] = array("Name" => "tkt_tender_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_change"] = array("Name" => "tkt_tender_change", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_enabled"] = array("Name" => "tkt_tender_enabled", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_type"] = array("Name" => "tkt_tender_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tender_default"] = array("Name" => "tkt_tender_default", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @25-7A6A580B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_tender_id", ccsText, "", "", $this->Parameters["urltkt_tender_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_tender_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @25-E7642565
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_tender {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @25-AE1786AC
    function SetValues()
    {
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_desc->SetDBValue($this->f("tkt_tender_desc"));
        $this->tkt_tender_change->SetDBValue($this->f("tkt_tender_change"));
        $this->tkt_tender_enabled->SetDBValue($this->f("tkt_tender_enabled"));
        $this->tkt_tender_type->SetDBValue($this->f("tkt_tender_type"));
        $this->tkt_tender_default->SetDBValue($this->f("tkt_tender_default"));
    }
//End SetValues Method

//Insert Method @25-33E36E8B
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_tender_id"]["Value"] = $this->tkt_tender_id->GetDBValue(true);
        $this->InsertFields["tkt_tender_desc"]["Value"] = $this->tkt_tender_desc->GetDBValue(true);
        $this->InsertFields["tkt_tender_change"]["Value"] = $this->tkt_tender_change->GetDBValue(true);
        $this->InsertFields["tkt_tender_enabled"]["Value"] = $this->tkt_tender_enabled->GetDBValue(true);
        $this->InsertFields["tkt_tender_type"]["Value"] = $this->tkt_tender_type->GetDBValue(true);
        $this->InsertFields["tkt_tender_default"]["Value"] = $this->tkt_tender_default->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_tender", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @25-6659366C
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_tender_id"]["Value"] = $this->tkt_tender_id->GetDBValue(true);
        $this->UpdateFields["tkt_tender_desc"]["Value"] = $this->tkt_tender_desc->GetDBValue(true);
        $this->UpdateFields["tkt_tender_change"]["Value"] = $this->tkt_tender_change->GetDBValue(true);
        $this->UpdateFields["tkt_tender_enabled"]["Value"] = $this->tkt_tender_enabled->GetDBValue(true);
        $this->UpdateFields["tkt_tender_type"]["Value"] = $this->tkt_tender_type->GetDBValue(true);
        $this->UpdateFields["tkt_tender_default"]["Value"] = $this->tkt_tender_default->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_tender", $this->UpdateFields, $this);
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

//Delete Method @25-7F31E7F5
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_tender";
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

} //End ssf_tkt_tenderDataSource Class @25-FCB6E20C

//Initialize Page @1-C748D646
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
$TemplateFileName = "SSFTicketTenders.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-179B6793
include("./SSFTicketTenders_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-27634B64
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_catalog_ssf_tkt_t = new clsRecordssf_tkt_catalog_ssf_tkt_t("", $MainPage);
$ssf_tkt_catalog_ssf_tkt_t1 = new clsGridssf_tkt_catalog_ssf_tkt_t1("", $MainPage);
$ssf_tkt_tender = new clsRecordssf_tkt_tender("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_catalog_ssf_tkt_t = & $ssf_tkt_catalog_ssf_tkt_t;
$MainPage->ssf_tkt_catalog_ssf_tkt_t1 = & $ssf_tkt_catalog_ssf_tkt_t1;
$MainPage->ssf_tkt_tender = & $ssf_tkt_tender;
$ssf_tkt_catalog_ssf_tkt_t1->Initialize();
$ssf_tkt_tender->Initialize();

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

//Execute Components @1-DC0BF307
$SSFSpiritHeader->Operations();
$ssf_tkt_catalog_ssf_tkt_t->Operation();
$ssf_tkt_tender->Operation();
//End Execute Components

//Go to destination page @1-F352D66E
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_catalog_ssf_tkt_t);
    unset($ssf_tkt_catalog_ssf_tkt_t1);
    unset($ssf_tkt_tender);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-F3C4EA47
$SSFSpiritHeader->Show();
$ssf_tkt_catalog_ssf_tkt_t->Show();
$ssf_tkt_catalog_ssf_tkt_t1->Show();
$ssf_tkt_tender->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-D4A93AF2
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_catalog_ssf_tkt_t);
unset($ssf_tkt_catalog_ssf_tkt_t1);
unset($ssf_tkt_tender);
unset($Tpl);
//End Unload Page


?>
