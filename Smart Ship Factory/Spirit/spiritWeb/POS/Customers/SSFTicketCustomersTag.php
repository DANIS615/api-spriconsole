<?php
//Include Common Files @1-C7500A81
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customers/");
define("FileName", "SSFTicketCustomersTag.php");
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

//Class_Initialize Event @5-024B88EF
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
            $this->s_tkt_tag_cust_id = new clsControl(ccsTextBox, "s_tkt_tag_cust_id", "s_tkt_tag_cust_id", ccsText, "", CCGetRequestParam("s_tkt_tag_cust_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopCustomerList.php";
            $this->s_tkt_tag_id = new clsControl(ccsTextBox, "s_tkt_tag_id", "s_tkt_tag_id", ccsText, "", CCGetRequestParam("s_tkt_tag_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketCustomersTag.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-B55882D1
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_tag_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_tag_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_tag_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_tag_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-2BF7F698
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_tag_cust_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->s_tkt_tag_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-1E40B62E
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
        $Redirect = "SSFTicketCustomersTag.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketCustomersTag.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-C302521D
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
            $Error = ComposeStrings($Error, $this->s_tkt_tag_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_tag_id->Errors->ToString());
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

        $this->s_tkt_tag_cust_id->Show();
        $this->Link2->Show();
        $this->s_tkt_tag_id->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_customers_tagsSearch Class @5-FCB6E20C

class clsGridssf_tkt_customers_tags { //ssf_tkt_customers_tags class @3-DE87B446

//Variables @3-A45A8D81

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
    public $Sorter_tkt_tag_cust_id;
    public $Sorter_tkt_cust_name;
    public $Sorter_tkt_tag_id;
//End Variables

//Class_Initialize Event @3-F8F78BA5
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

        $this->tkt_tag_cust_id = new clsControl(ccsLabel, "tkt_tag_cust_id", "tkt_tag_cust_id", ccsText, "", CCGetRequestParam("tkt_tag_cust_id", ccsGet, NULL), $this);
        $this->tkt_cust_name = new clsControl(ccsLabel, "tkt_cust_name", "tkt_cust_name", ccsText, "", CCGetRequestParam("tkt_cust_name", ccsGet, NULL), $this);
        $this->tkt_tag_id = new clsControl(ccsLink, "tkt_tag_id", "tkt_tag_id", ccsText, "", CCGetRequestParam("tkt_tag_id", ccsGet, NULL), $this);
        $this->tkt_tag_id->Page = "SSFTicketCustomersTag.php";
        $this->Sorter_tkt_tag_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_tag_cust_id", $FileName, $this);
        $this->Sorter_tkt_cust_name = new clsSorter($this->ComponentName, "Sorter_tkt_cust_name", $FileName, $this);
        $this->Sorter_tkt_tag_id = new clsSorter($this->ComponentName, "Sorter_tkt_tag_id", $FileName, $this);
        $this->ssf_tkt_customers_tags_Insert = new clsControl(ccsLink, "ssf_tkt_customers_tags_Insert", "ssf_tkt_customers_tags_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_customers_tags_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_customers_tags_Insert->Page = "SSFTicketCustomersTag.php";
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

//Show Method @3-D2BED40D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_tag_cust_id"] = CCGetFromGet("s_tkt_tag_cust_id", NULL);
        $this->DataSource->Parameters["urls_tkt_tag_id"] = CCGetFromGet("s_tkt_tag_id", NULL);

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
            $this->ControlsVisible["tkt_tag_cust_id"] = $this->tkt_tag_cust_id->Visible;
            $this->ControlsVisible["tkt_cust_name"] = $this->tkt_cust_name->Visible;
            $this->ControlsVisible["tkt_tag_id"] = $this->tkt_tag_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_tag_cust_id->SetValue($this->DataSource->tkt_tag_cust_id->GetValue());
                $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
                $this->tkt_tag_id->SetValue($this->DataSource->tkt_tag_id->GetValue());
                $this->tkt_tag_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_tag_id->Parameters = CCAddParam($this->tkt_tag_id->Parameters, "tkt_tag_id", $this->DataSource->f("tkt_tag_id"));
                $this->tkt_tag_id->Parameters = CCAddParam($this->tkt_tag_id->Parameters, "tkt_tag_cust_id", $this->DataSource->f("tkt_tag_cust_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_tag_cust_id->Show();
                $this->tkt_cust_name->Show();
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
        $this->Sorter_tkt_tag_cust_id->Show();
        $this->Sorter_tkt_cust_name->Show();
        $this->Sorter_tkt_tag_id->Show();
        $this->ssf_tkt_customers_tags_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-E61F71AC
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tag_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tag_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_customers_tags Class @3-FCB6E20C

class clsssf_tkt_customers_tagsDataSource extends clsDBConnection1 {  //ssf_tkt_customers_tagsDataSource Class @3-3314286E

//DataSource Variables @3-F78E3F0C
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_tag_cust_id;
    public $tkt_cust_name;
    public $tkt_tag_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-F30AC4C8
    function clsssf_tkt_customers_tagsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_customers_tags";
        $this->Initialize();
        $this->tkt_tag_cust_id = new clsField("tkt_tag_cust_id", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->tkt_tag_id = new clsField("tkt_tag_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-6D04DF30
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_customers_tags.tkt_tag_cust_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tag_cust_id" => array("tkt_tag_cust_id", ""), 
            "Sorter_tkt_cust_name" => array("tkt_cust_name", ""), 
            "Sorter_tkt_tag_id" => array("tkt_tag_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-2CB2C612
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_tag_cust_id", ccsText, "", "", $this->Parameters["urls_tkt_tag_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_tag_id", ccsText, "", "", $this->Parameters["urls_tkt_tag_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "ssf_tkt_customers_tags.tkt_tag_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "ssf_tkt_customers_tags.tkt_tag_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-12F9D6A0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_customers_tags INNER JOIN ssf_tkt_customers ON\n\n" .
        "ssf_tkt_customers_tags.tkt_tag_cust_id = ssf_tkt_customers.tkt_cust_id";
        $this->SQL = "SELECT tkt_tag_id, tkt_tag_cust_id, tkt_cust_name \n\n" .
        "FROM ssf_tkt_customers_tags INNER JOIN ssf_tkt_customers ON\n\n" .
        "ssf_tkt_customers_tags.tkt_tag_cust_id = ssf_tkt_customers.tkt_cust_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-82646229
    function SetValues()
    {
        $this->tkt_tag_cust_id->SetDBValue($this->f("tkt_tag_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
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

//Class_Initialize Event @20-EA9FDFFE
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
            $this->tkt_tag_cust_id = new clsControl(ccsTextBox, "tkt_tag_cust_id", $CCSLocales->GetText("tkt_tag_cust_id"), ccsText, "", CCGetRequestParam("tkt_tag_cust_id", $Method, NULL), $this);
            $this->customerlnk = new clsControl(ccsLink, "customerlnk", "customerlnk", ccsText, "", CCGetRequestParam("customerlnk", $Method, NULL), $this);
            $this->customerlnk->Page = "../SSFPopCustomerList.php";
            $this->tkt_tag_id = new clsControl(ccsTextBox, "tkt_tag_id", $CCSLocales->GetText("tkt_tag_id"), ccsText, "", CCGetRequestParam("tkt_tag_id", $Method, NULL), $this);
            $this->tkt_tag_id->Required = true;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
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

//Validate Method @20-2789476F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_tag_cust_id->Validate() && $Validation);
        $Validation = ($this->tkt_tag_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_tag_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tag_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @20-92B3C56E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tag_cust_id->Errors->Count());
        $errors = ($errors || $this->customerlnk->Errors->Count());
        $errors = ($errors || $this->tkt_tag_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @20-E717FF85
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_customers_tags_Insert", "tkt_tag_id", "tkt_tag_cust_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_customers_tags_Insert", "tkt_tag_id", "tkt_tag_cust_id"));
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

//InsertRow Method @20-1A44A214
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_tag_cust_id->SetValue($this->tkt_tag_cust_id->GetValue(true));
        $this->DataSource->customerlnk->SetValue($this->customerlnk->GetValue(true));
        $this->DataSource->tkt_tag_id->SetValue($this->tkt_tag_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @20-01F8CA51
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_tag_cust_id->SetValue($this->tkt_tag_cust_id->GetValue(true));
        $this->DataSource->customerlnk->SetValue($this->customerlnk->GetValue(true));
        $this->DataSource->tkt_tag_id->SetValue($this->tkt_tag_id->GetValue(true));
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

//Show Method @20-0E35ECBA
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
                    $this->tkt_tag_cust_id->SetValue($this->DataSource->tkt_tag_cust_id->GetValue());
                    $this->tkt_tag_id->SetValue($this->DataSource->tkt_tag_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_tag_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->customerlnk->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tag_id->Errors->ToString());
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

        $this->tkt_tag_cust_id->Show();
        $this->customerlnk->Show();
        $this->tkt_tag_id->Show();
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

//DataSource Variables @20-3F4118A9
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
    public $tkt_tag_cust_id;
    public $customerlnk;
    public $tkt_tag_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @20-5D1691FB
    function clsssf_tkt_customers_tags1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_customers_tags1/Error";
        $this->Initialize();
        $this->tkt_tag_cust_id = new clsField("tkt_tag_cust_id", ccsText, "");
        $this->customerlnk = new clsField("customerlnk", ccsText, "");
        $this->tkt_tag_id = new clsField("tkt_tag_id", ccsText, "");

        $this->InsertFields["tkt_tag_cust_id"] = array("Name" => "tkt_tag_cust_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tag_id"] = array("Name" => "tkt_tag_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tag_cust_id"] = array("Name" => "tkt_tag_cust_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tag_id"] = array("Name" => "tkt_tag_id", "Value" => "", "DataType" => ccsText);
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

//Open Method @20-D7BF2052
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_customers_tags {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @20-1881F7F9
    function SetValues()
    {
        $this->tkt_tag_cust_id->SetDBValue($this->f("tkt_tag_cust_id"));
        $this->tkt_tag_id->SetDBValue($this->f("tkt_tag_id"));
    }
//End SetValues Method

//Insert Method @20-430AE5A2
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_tag_cust_id"]["Value"] = $this->tkt_tag_cust_id->GetDBValue(true);
        $this->InsertFields["tkt_tag_id"]["Value"] = $this->tkt_tag_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_customers_tags", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @20-95A1FB07
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_tag_cust_id"]["Value"] = $this->tkt_tag_cust_id->GetDBValue(true);
        $this->UpdateFields["tkt_tag_id"]["Value"] = $this->tkt_tag_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_customers_tags", $this->UpdateFields, $this);
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

//Delete Method @20-FA7E1F45
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_customers_tags";
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

//Initialize Page @1-C11DB8DF
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
$TemplateFileName = "SSFTicketCustomersTag.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-E77D249C
include("./SSFTicketCustomersTag_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-27D6E085
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
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
