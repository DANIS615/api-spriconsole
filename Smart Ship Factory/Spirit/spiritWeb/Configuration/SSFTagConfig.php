<?php
//Include Common Files @1-5EFFCB39
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFTagConfig.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_customers_tagsSearch { //ssf_tkt_customers_tagsSearch Class @5-64D81393

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

//Class_Initialize Event @5-62ED6D60
    function clsRecordssf_tkt_customers_tagsSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_tagsSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_tagsSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_tag_id = new clsControl(ccsTextBox, "s_tkt_tag_id", "s_tkt_tag_id", ccsText, "", CCGetRequestParam("s_tkt_tag_id", $Method, NULL), $this);
            $this->s_grade_id = new clsControl(ccsListBox, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("param_value", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "param_value";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTagConfig.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-E5CC05FE
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_tag_id->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_tag_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-3100331A
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_tag_id->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-71457CC5
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
        $Redirect = "SSFTagConfig.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTagConfig.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-3B60994A
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_grade_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_tag_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
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

        $this->s_tkt_tag_id->Show();
        $this->s_grade_id->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_tagsSearch Class @5-FCB6E20C

class clsGridssf_tkt_customers_tags { //ssf_tkt_customers_tags class @3-DE87B446

//Variables @3-C17D8710

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
    public $Sorter_tkt_tag_id;
//End Variables

//Class_Initialize Event @3-9CBC3B54
    function clsGridssf_tkt_customers_tags($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_customers_tags";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_customers_tags";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_customers_tagsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_customers_tagsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_customers_tagsDir", "");

        $this->tkt_tag_id = new clsControl(ccsLink, "tkt_tag_id", "tkt_tag_id", ccsText, "", CCGetRequestParam("tkt_tag_id", ccsGet, NULL), $this);
        $this->tkt_tag_id->Page = "SSFTagConfig.php";
        $this->Sorter_tkt_tag_id = new clsSorter($this->ComponentName, "Sorter_tkt_tag_id", $FileName, $this);
        $this->ssf_tkt_customers_tags_Insert = new clsControl(ccsLink, "ssf_tkt_customers_tags_Insert", "ssf_tkt_customers_tags_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_customers_tags_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_customers_tags_Insert->Page = "SSFTagConfig.php";
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

//Show Method @3-4A192B34
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_tag_id"] = CCGetFromGet("s_tkt_tag_id", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);

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
            $this->ControlsVisible["tkt_tag_id"] = $this->tkt_tag_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_tag_id->SetValue($this->DataSource->tkt_tag_id->GetValue());
                $this->tkt_tag_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_tag_id->Parameters = CCAddParam($this->tkt_tag_id->Parameters, "tkt_tag_id", $this->DataSource->f("tkt_tag_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_tag_id->Show();
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
        $this->ssf_tkt_customers_tags_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_tag_id", "tkt_tag_cust_id", "ccsForm"));
        $this->ssf_tkt_customers_tags_Insert->Parameters = CCAddParam($this->ssf_tkt_customers_tags_Insert->Parameters, "ssf_tkt_customers_tags_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_tag_id->Show();
        $this->ssf_tkt_customers_tags_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-9FF5C8FB
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tag_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_tags Class @3-FCB6E20C

class clsssf_tkt_customers_tagsDataSource extends clsDBConnection1 {  //ssf_tkt_customers_tagsDataSource Class @3-3314286E

//DataSource Variables @3-C41AC4A4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_tag_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-E183E968
    function clsssf_tkt_customers_tagsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_tags";
        $this->Initialize();
        $this->tkt_tag_id = new clsField("tkt_tag_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-4C668A88
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_tag_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tag_id" => array("tkt_tag_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-3F538BA8
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_tag_id", ccsText, "", "", $this->Parameters["urls_tkt_tag_id"], "", false);
        $this->wp->AddParameter("2", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tkt_tag_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_tag_grade_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-74BFDFCD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_tags_data";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_tags_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-1CE28A27
    function SetValues()
    {
        $this->tkt_tag_id->SetDBValue($this->f("tkt_tag_id"));
    }
//End SetValues Method

} //End ssf_tkt_customers_tagsDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_customers_tags1 { //ssf_tkt_customers_tags1 Class @20-E2AB6D07

//Variables @20-9E315808

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

//Class_Initialize Event @20-408B17D3
    function clsRecordssf_tkt_customers_tags1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_customers_tags1/Error";
        $this->DataSource = new clsssf_tkt_customers_tags1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_customers_tags1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_tag_id = new clsControl(ccsTextBox, "tkt_tag_id", $CCSLocales->GetText("tkt_tag_id"), ccsText, "", CCGetRequestParam("tkt_tag_id", $Method, NULL), $this);
            $this->tkt_tag_id->Required = true;
            $this->tkt_tag_limit_type = new clsControl(ccsListBox, "tkt_tag_limit_type", "tkt_tag_limit_type", ccsText, "", CCGetRequestParam("tkt_tag_limit_type", $Method, NULL), $this);
            $this->tkt_tag_limit_type->DSType = dsListOfValues;
            $this->tkt_tag_limit_type->Values = array(array("A", $CCSLocales->GetText("money")), array("V", $CCSLocales->GetText("volume")));
            $this->tkt_tag_limit = new clsControl(ccsTextBox, "tkt_tag_limit", $CCSLocales->GetText("ssf_tag_limit"), ccsFloat, "", CCGetRequestParam("tkt_tag_limit", $Method, NULL), $this);
            $this->tkt_tag_grade_id = new clsControl(ccsListBox, "tkt_tag_grade_id", $CCSLocales->GetText("grade_id"), ccsText, "", CCGetRequestParam("tkt_tag_grade_id", $Method, NULL), $this);
            $this->tkt_tag_grade_id->DSType = dsSQL;
            list($this->tkt_tag_grade_id->BoundColumn, $this->tkt_tag_grade_id->TextColumn, $this->tkt_tag_grade_id->DBFormat) = array("param_value", "id", "");
            $this->tkt_tag_grade_id->DataSource = new clsDBConnection1();
            $this->tkt_tag_grade_id->ds = & $this->tkt_tag_grade_id->DataSource;
            $this->tkt_tag_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->tkt_tag_grade_id->DataSource->Order = "param_value";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_tag_limit_type->Value) && !strlen($this->tkt_tag_limit_type->Value) && $this->tkt_tag_limit_type->Value !== false)
                    $this->tkt_tag_limit_type->SetText(A);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @20-2D494816
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_tag_id"] = CCGetFromGet("tkt_tag_id", NULL);
    }
//End Initialize Method

//Validate Method @20-12C8EEA7
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_tag_id->Validate() && $Validation);
        $Validation = ($this->tkt_tag_limit_type->Validate() && $Validation);
        $Validation = ($this->tkt_tag_limit->Validate() && $Validation);
        $Validation = ($this->tkt_tag_grade_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_tag_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tag_limit_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tag_limit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tag_grade_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @20-FBCA9D53
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tag_id->Errors->Count());
        $errors = ($errors || $this->tkt_tag_limit_type->Errors->Count());
        $errors = ($errors || $this->tkt_tag_limit->Errors->Count());
        $errors = ($errors || $this->tkt_tag_grade_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @20-2306D0D0
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_customers_tags_Insert", "tkt_tag_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_customers_tags_Insert", "tkt_tag_id"));
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

//InsertRow Method @20-CB015FF6
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_tag_id->SetValue($this->tkt_tag_id->GetValue(true));
        $this->DataSource->tkt_tag_limit_type->SetValue($this->tkt_tag_limit_type->GetValue(true));
        $this->DataSource->tkt_tag_limit->SetValue($this->tkt_tag_limit->GetValue(true));
        $this->DataSource->tkt_tag_grade_id->SetValue($this->tkt_tag_grade_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @20-390857AD
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_tag_id->SetValue($this->tkt_tag_id->GetValue(true));
        $this->DataSource->tkt_tag_limit_type->SetValue($this->tkt_tag_limit_type->GetValue(true));
        $this->DataSource->tkt_tag_limit->SetValue($this->tkt_tag_limit->GetValue(true));
        $this->DataSource->tkt_tag_grade_id->SetValue($this->tkt_tag_grade_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @20-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @20-34979F2B
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_tag_limit_type->Prepare();
        $this->tkt_tag_grade_id->Prepare();

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
                    $this->tkt_tag_id->SetValue($this->DataSource->tkt_tag_id->GetValue());
                    $this->tkt_tag_limit_type->SetValue($this->DataSource->tkt_tag_limit_type->GetValue());
                    $this->tkt_tag_limit->SetValue($this->DataSource->tkt_tag_limit->GetValue());
                    $this->tkt_tag_grade_id->SetValue($this->DataSource->tkt_tag_grade_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_tag_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tag_limit_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tag_limit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tag_grade_id->Errors->ToString());
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

        $this->tkt_tag_id->Show();
        $this->tkt_tag_limit_type->Show();
        $this->tkt_tag_limit->Show();
        $this->tkt_tag_grade_id->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_customers_tags1 Class @20-FCB6E20C

class clsssf_tkt_customers_tags1DataSource extends clsDBConnection1 {  //ssf_tkt_customers_tags1DataSource Class @20-577B21A0

//DataSource Variables @20-1B3A84B7
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
    public $tkt_tag_id;
    public $tkt_tag_limit_type;
    public $tkt_tag_limit;
    public $tkt_tag_grade_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @20-44AB6A57
    function clsssf_tkt_customers_tags1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_tags1/Error";
        $this->Initialize();
        $this->tkt_tag_id = new clsField("tkt_tag_id", ccsText, "");
        $this->tkt_tag_limit_type = new clsField("tkt_tag_limit_type", ccsText, "");
        $this->tkt_tag_limit = new clsField("tkt_tag_limit", ccsFloat, "");
        $this->tkt_tag_grade_id = new clsField("tkt_tag_grade_id", ccsText, "");

        $this->InsertFields["tkt_tag_id"] = array("Name" => "tkt_tag_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tag_limit_type"] = array("Name" => "tkt_tag_limit_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tag_limit"] = array("Name" => "tkt_tag_limit", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tkt_tag_grade_id"] = array("Name" => "tkt_tag_grade_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tag_id"] = array("Name" => "tkt_tag_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tag_limit_type"] = array("Name" => "tkt_tag_limit_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tag_limit"] = array("Name" => "tkt_tag_limit", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_tag_grade_id"] = array("Name" => "tkt_tag_grade_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @20-C93B248F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_tag_id", ccsText, "", "", $this->Parameters["urltkt_tag_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_tag_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @20-E49CB568
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_tags_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @20-238C11BA
    function SetValues()
    {
        $this->tkt_tag_id->SetDBValue($this->f("tkt_tag_id"));
        $this->tkt_tag_limit_type->SetDBValue($this->f("tkt_tag_limit_type"));
        $this->tkt_tag_limit->SetDBValue(trim($this->f("tkt_tag_limit")));
        $this->tkt_tag_grade_id->SetDBValue($this->f("tkt_tag_grade_id"));
    }
//End SetValues Method

//Insert Method @20-AF0674AA
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_tag_id"]["Value"] = $this->tkt_tag_id->GetDBValue(true);
        $this->InsertFields["tkt_tag_limit_type"]["Value"] = $this->tkt_tag_limit_type->GetDBValue(true);
        $this->InsertFields["tkt_tag_limit"]["Value"] = $this->tkt_tag_limit->GetDBValue(true);
        $this->InsertFields["tkt_tag_grade_id"]["Value"] = $this->tkt_tag_grade_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_addin_tags_data", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @20-23525958
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_tag_id"]["Value"] = $this->tkt_tag_id->GetDBValue(true);
        $this->UpdateFields["tkt_tag_limit_type"]["Value"] = $this->tkt_tag_limit_type->GetDBValue(true);
        $this->UpdateFields["tkt_tag_limit"]["Value"] = $this->tkt_tag_limit->GetDBValue(true);
        $this->UpdateFields["tkt_tag_grade_id"]["Value"] = $this->tkt_tag_grade_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_tags_data", $this->UpdateFields, $this);
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

//Delete Method @20-B554BE16
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_addin_tags_data";
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

} //End ssf_tkt_customers_tags1DataSource Class @20-FCB6E20C

//Initialize Page @1-70DDB232
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
$TemplateFileName = "SSFTagConfig.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-9B48D6C5
include("./SSFTagConfig_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C7BE2A51
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_customers_tagsSearch = new clsRecordssf_tkt_customers_tagsSearch("", $MainPage);
$ssf_tkt_customers_tags = new clsGridssf_tkt_customers_tags("", $MainPage);
$ssf_tkt_customers_tags1 = new clsRecordssf_tkt_customers_tags1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_customers_tagsSearch = & $ssf_tkt_customers_tagsSearch;
$MainPage->ssf_tkt_customers_tags = & $ssf_tkt_customers_tags;
$MainPage->ssf_tkt_customers_tags1 = & $ssf_tkt_customers_tags1;
$ssf_tkt_customers_tags->Initialize();
$ssf_tkt_customers_tags1->Initialize();

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

//Execute Components @1-4C4A1E56
$SSFSpiritHeader->Operations();
$ssf_tkt_customers_tagsSearch->Operation();
$ssf_tkt_customers_tags1->Operation();
//End Execute Components

//Go to destination page @1-58E3C61A
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_customers_tagsSearch);
    unset($ssf_tkt_customers_tags);
    unset($ssf_tkt_customers_tags1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-9404CC8C
$SSFSpiritHeader->Show();
$ssf_tkt_customers_tagsSearch->Show();
$ssf_tkt_customers_tags->Show();
$ssf_tkt_customers_tags1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-A151F8C9
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_customers_tagsSearch);
unset($ssf_tkt_customers_tags);
unset($ssf_tkt_customers_tags1);
unset($Tpl);
//End Unload Page


?>
