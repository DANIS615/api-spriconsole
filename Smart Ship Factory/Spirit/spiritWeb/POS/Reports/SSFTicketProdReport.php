<?php
//Include Common Files @1-50E9BE58
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketProdReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridssf_tkt_categories { //ssf_tkt_categories class @94-88E9A4FD

//Variables @94-6E51DF5A

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

//Class_Initialize Event @94-4C64123F
    function clsGridssf_tkt_categories($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_categories";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_categories";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_categoriesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->tkt_category_id = new clsControl(ccsLabel, "tkt_category_id", "tkt_category_id", ccsText, "", CCGetRequestParam("tkt_category_id", ccsGet, NULL), $this);
        $this->tkt_category_desc = new clsControl(ccsLabel, "tkt_category_desc", "tkt_category_desc", ccsText, "", CCGetRequestParam("tkt_category_desc", ccsGet, NULL), $this);
        $this->tkt_category_parent = new clsControl(ccsLabel, "tkt_category_parent", "tkt_category_parent", ccsText, "", CCGetRequestParam("tkt_category_parent", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @94-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @94-7DF13617
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


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
            $this->ControlsVisible["tkt_category_id"] = $this->tkt_category_id->Visible;
            $this->ControlsVisible["tkt_category_desc"] = $this->tkt_category_desc->Visible;
            $this->ControlsVisible["tkt_category_parent"] = $this->tkt_category_parent->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                // Parse Separator
                if($this->RowNumber) {
                    $this->Attributes->Show();
                    $Tpl->parseto("Separator", true, "Row");
                }
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_category_id->SetValue($this->DataSource->tkt_category_id->GetValue());
                $this->tkt_category_desc->SetValue($this->DataSource->tkt_category_desc->GetValue());
                $this->tkt_category_parent->SetValue($this->DataSource->tkt_category_parent->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_category_id->Show();
                $this->tkt_category_desc->Show();
                $this->tkt_category_parent->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
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

//GetErrors Method @94-C90945D1
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_category_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_category_parent->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_categories Class @94-FCB6E20C

class clsssf_tkt_categoriesDataSource extends clsDBConnection1 {  //ssf_tkt_categoriesDataSource Class @94-ABDA9E2F

//DataSource Variables @94-354F239F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_category_id;
    public $tkt_category_desc;
    public $tkt_category_parent;
//End DataSource Variables

//DataSourceClass_Initialize Event @94-A3BFC4C3
    function clsssf_tkt_categoriesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_categories";
        $this->Initialize();
        $this->tkt_category_id = new clsField("tkt_category_id", ccsText, "");
        $this->tkt_category_desc = new clsField("tkt_category_desc", ccsText, "");
        $this->tkt_category_parent = new clsField("tkt_category_parent", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @94-6D09A468
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_category_desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @94-8AAD4392
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_category_level = 2";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @94-7B10CDE2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_categories";
        $this->SQL = "SELECT tkt_category_id, tkt_category_desc, tkt_category_parent \n\n" .
        "FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @94-34608B33
    function SetValues()
    {
        $this->tkt_category_id->SetDBValue($this->f("tkt_category_id"));
        $this->tkt_category_desc->SetDBValue($this->f("tkt_category_desc"));
        $this->tkt_category_parent->SetDBValue($this->f("tkt_category_parent"));
    }
//End SetValues Method

} //End ssf_tkt_categoriesDataSource Class @94-FCB6E20C

class clsGridssf_tkt_categories1 { //ssf_tkt_categories1 class @103-DCC787B3

//Variables @103-6E51DF5A

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

//Class_Initialize Event @103-C8885CD4
    function clsGridssf_tkt_categories1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_categories1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_categories1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_categories1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->tkt_category_id = new clsControl(ccsLabel, "tkt_category_id", "tkt_category_id", ccsText, "", CCGetRequestParam("tkt_category_id", ccsGet, NULL), $this);
        $this->tkt_category_desc = new clsControl(ccsLabel, "tkt_category_desc", "tkt_category_desc", ccsText, "", CCGetRequestParam("tkt_category_desc", ccsGet, NULL), $this);
        $this->tkt_category_parent = new clsControl(ccsLabel, "tkt_category_parent", "tkt_category_parent", ccsText, "", CCGetRequestParam("tkt_category_parent", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @103-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @103-7DF13617
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


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
            $this->ControlsVisible["tkt_category_id"] = $this->tkt_category_id->Visible;
            $this->ControlsVisible["tkt_category_desc"] = $this->tkt_category_desc->Visible;
            $this->ControlsVisible["tkt_category_parent"] = $this->tkt_category_parent->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                // Parse Separator
                if($this->RowNumber) {
                    $this->Attributes->Show();
                    $Tpl->parseto("Separator", true, "Row");
                }
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_category_id->SetValue($this->DataSource->tkt_category_id->GetValue());
                $this->tkt_category_desc->SetValue($this->DataSource->tkt_category_desc->GetValue());
                $this->tkt_category_parent->SetValue($this->DataSource->tkt_category_parent->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_category_id->Show();
                $this->tkt_category_desc->Show();
                $this->tkt_category_parent->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
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

//GetErrors Method @103-C90945D1
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_category_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_category_parent->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_categories1 Class @103-FCB6E20C

class clsssf_tkt_categories1DataSource extends clsDBConnection1 {  //ssf_tkt_categories1DataSource Class @103-56389E10

//DataSource Variables @103-354F239F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_category_id;
    public $tkt_category_desc;
    public $tkt_category_parent;
//End DataSource Variables

//DataSourceClass_Initialize Event @103-85A6C3AC
    function clsssf_tkt_categories1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_categories1";
        $this->Initialize();
        $this->tkt_category_id = new clsField("tkt_category_id", ccsText, "");
        $this->tkt_category_desc = new clsField("tkt_category_desc", ccsText, "");
        $this->tkt_category_parent = new clsField("tkt_category_parent", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @103-6D09A468
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_category_desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @103-62BAD333
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_category_level = 3";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @103-7B10CDE2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_categories";
        $this->SQL = "SELECT tkt_category_id, tkt_category_desc, tkt_category_parent \n\n" .
        "FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @103-34608B33
    function SetValues()
    {
        $this->tkt_category_id->SetDBValue($this->f("tkt_category_id"));
        $this->tkt_category_desc->SetDBValue($this->f("tkt_category_desc"));
        $this->tkt_category_parent->SetDBValue($this->f("tkt_category_parent"));
    }
//End SetValues Method

} //End ssf_tkt_categories1DataSource Class @103-FCB6E20C

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordprod_search { //prod_search Class @67-344ECBDA

//Variables @67-9E315808

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

//Class_Initialize Event @67-38299DE7
    function clsRecordprod_search($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record prod_search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "prod_search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->lstLevel1 = new clsControl(ccsListBox, "lstLevel1", "lstLevel1", ccsText, "", CCGetRequestParam("lstLevel1", $Method, NULL), $this);
            $this->lstLevel1->DSType = dsTable;
            list($this->lstLevel1->BoundColumn, $this->lstLevel1->TextColumn, $this->lstLevel1->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel1->DataSource = new clsDBConnection1();
            $this->lstLevel1->ds = & $this->lstLevel1->DataSource;
            $this->lstLevel1->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel1->DataSource->Order = "tkt_category_desc";
            $this->lstLevel1->DataSource->wp = new clsSQLParameters();
            $this->lstLevel1->DataSource->wp->Criterion[1] = "tkt_category_level = 1";
            $this->lstLevel1->DataSource->Where = 
                 $this->lstLevel1->DataSource->wp->Criterion[1];
            $this->lstLevel1->DataSource->Order = "tkt_category_desc";
            $this->Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", $Method, NULL), $this);
            $this->lstLevel2 = new clsControl(ccsListBox, "lstLevel2", "lstLevel2", ccsText, "", CCGetRequestParam("lstLevel2", $Method, NULL), $this);
            $this->lstLevel2->DSType = dsTable;
            list($this->lstLevel2->BoundColumn, $this->lstLevel2->TextColumn, $this->lstLevel2->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel2->DataSource = new clsDBConnection1();
            $this->lstLevel2->ds = & $this->lstLevel2->DataSource;
            $this->lstLevel2->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel2->DataSource->Order = "tkt_category_desc";
            $this->lstLevel2->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
            $this->lstLevel2->DataSource->wp = new clsSQLParameters();
            $this->lstLevel2->DataSource->wp->AddParameter("2", "urllstLevel1", ccsText, "", "", $this->lstLevel2->DataSource->Parameters["urllstLevel1"], "", false);
            $this->lstLevel2->DataSource->wp->Criterion[1] = "tkt_category_level = 2";
            $this->lstLevel2->DataSource->wp->Criterion[2] = $this->lstLevel2->DataSource->wp->Operation(opEqual, "tkt_category_parent", $this->lstLevel2->DataSource->wp->GetDBValue("2"), $this->lstLevel2->DataSource->ToSQL($this->lstLevel2->DataSource->wp->GetDBValue("2"), ccsText),false);
            $this->lstLevel2->DataSource->Where = $this->lstLevel2->DataSource->wp->opAND(
                 false, 
                 $this->lstLevel2->DataSource->wp->Criterion[1], 
                 $this->lstLevel2->DataSource->wp->Criterion[2]);
            $this->lstLevel2->DataSource->Order = "tkt_category_desc";
            $this->Label3 = new clsControl(ccsLabel, "Label3", "Label3", ccsText, "", CCGetRequestParam("Label3", $Method, NULL), $this);
            $this->lstLevel3 = new clsControl(ccsListBox, "lstLevel3", "lstLevel3", ccsText, "", CCGetRequestParam("lstLevel3", $Method, NULL), $this);
            $this->lstLevel3->DSType = dsTable;
            list($this->lstLevel3->BoundColumn, $this->lstLevel3->TextColumn, $this->lstLevel3->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel3->DataSource = new clsDBConnection1();
            $this->lstLevel3->ds = & $this->lstLevel3->DataSource;
            $this->lstLevel3->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel3->DataSource->Order = "tkt_category_desc";
            $this->lstLevel3->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
            $this->lstLevel3->DataSource->wp = new clsSQLParameters();
            $this->lstLevel3->DataSource->wp->AddParameter("2", "urllstLevel2", ccsText, "", "", $this->lstLevel3->DataSource->Parameters["urllstLevel2"], "", false);
            $this->lstLevel3->DataSource->wp->Criterion[1] = "tkt_category_level = 3";
            $this->lstLevel3->DataSource->wp->Criterion[2] = $this->lstLevel3->DataSource->wp->Operation(opEqual, "tkt_category_parent", $this->lstLevel3->DataSource->wp->GetDBValue("2"), $this->lstLevel3->DataSource->ToSQL($this->lstLevel3->DataSource->wp->GetDBValue("2"), ccsText),false);
            $this->lstLevel3->DataSource->Where = $this->lstLevel3->DataSource->wp->opAND(
                 false, 
                 $this->lstLevel3->DataSource->wp->Criterion[1], 
                 $this->lstLevel3->DataSource->wp->Criterion[2]);
            $this->lstLevel3->DataSource->Order = "tkt_category_desc";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketProdReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @67-8D6CF4FF
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->lstLevel1->Validate() && $Validation);
        $Validation = ($this->lstLevel2->Validate() && $Validation);
        $Validation = ($this->lstLevel3->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->lstLevel1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel2->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel3->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @67-922AFBA1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->lstLevel1->Errors->Count());
        $errors = ($errors || $this->Label2->Errors->Count());
        $errors = ($errors || $this->lstLevel2->Errors->Count());
        $errors = ($errors || $this->Label3->Errors->Count());
        $errors = ($errors || $this->lstLevel3->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @67-A0417047
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
        $Redirect = "SSFTicketProdReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketProdReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @67-97307B98
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->lstLevel1->Prepare();
        $this->lstLevel2->Prepare();
        $this->lstLevel3->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel3->Errors->ToString());
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

        $this->Label1->Show();
        $this->lstLevel1->Show();
        $this->Label2->Show();
        $this->lstLevel2->Show();
        $this->Label3->Show();
        $this->lstLevel3->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End prod_search Class @67-FCB6E20C

//Report1 ReportGroup class @3-990E8815
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $cat1_tkt_category_desc, $_cat1_tkt_category_descAttributes;
    public $cat2_tkt_category_desc, $_cat2_tkt_category_descAttributes;
    public $cat3_tkt_category_desc, $_cat3_tkt_category_descAttributes;
    public $prod_type, $_prod_typeAttributes;
    public $tkt_plu_tax, $_tkt_plu_taxAttributes;
    public $tkt_plu_unit, $_tkt_plu_unitAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_plu_id = $this->Parent->tkt_plu_id->Value;
        $this->tkt_plu_long_desc = $this->Parent->tkt_plu_long_desc->Value;
        $this->cat1_tkt_category_desc = $this->Parent->cat1_tkt_category_desc->Value;
        $this->cat2_tkt_category_desc = $this->Parent->cat2_tkt_category_desc->Value;
        $this->cat3_tkt_category_desc = $this->Parent->cat3_tkt_category_desc->Value;
        $this->prod_type = $this->Parent->prod_type->Value;
        $this->tkt_plu_tax = $this->Parent->tkt_plu_tax->Value;
        $this->tkt_plu_unit = $this->Parent->tkt_plu_unit->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_idAttributes = $this->Parent->Sorter_tkt_plu_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_long_descAttributes = $this->Parent->Sorter_tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_Sorter1Attributes = $this->Parent->Sorter1->Attributes->GetAsArray();
        $this->_Sorter_cat2_tkt_category_descAttributes = $this->Parent->Sorter_cat2_tkt_category_desc->Attributes->GetAsArray();
        $this->_Sorter_cat3_tkt_category_descAttributes = $this->Parent->Sorter_cat3_tkt_category_desc->Attributes->GetAsArray();
        $this->_Sorter_prod_typeAttributes = $this->Parent->Sorter_prod_type->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_taxAttributes = $this->Parent->Sorter_tkt_plu_tax->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_unitAttributes = $this->Parent->Sorter_tkt_plu_unit->Attributes->GetAsArray();
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_cat1_tkt_category_descAttributes = $this->Parent->cat1_tkt_category_desc->Attributes->GetAsArray();
        $this->_cat2_tkt_category_descAttributes = $this->Parent->cat2_tkt_category_desc->Attributes->GetAsArray();
        $this->_cat3_tkt_category_descAttributes = $this->Parent->cat3_tkt_category_desc->Attributes->GetAsArray();
        $this->_prod_typeAttributes = $this->Parent->prod_type->Attributes->GetAsArray();
        $this->_tkt_plu_taxAttributes = $this->Parent->tkt_plu_tax->Attributes->GetAsArray();
        $this->_tkt_plu_unitAttributes = $this->Parent->tkt_plu_unit->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->cat1_tkt_category_desc = $Header->cat1_tkt_category_desc;
        $Header->_cat1_tkt_category_descAttributes = $this->_cat1_tkt_category_descAttributes;
        $this->Parent->cat1_tkt_category_desc->Value = $Header->cat1_tkt_category_desc;
        $this->Parent->cat1_tkt_category_desc->Attributes->RestoreFromArray($Header->_cat1_tkt_category_descAttributes);
        $this->cat2_tkt_category_desc = $Header->cat2_tkt_category_desc;
        $Header->_cat2_tkt_category_descAttributes = $this->_cat2_tkt_category_descAttributes;
        $this->Parent->cat2_tkt_category_desc->Value = $Header->cat2_tkt_category_desc;
        $this->Parent->cat2_tkt_category_desc->Attributes->RestoreFromArray($Header->_cat2_tkt_category_descAttributes);
        $this->cat3_tkt_category_desc = $Header->cat3_tkt_category_desc;
        $Header->_cat3_tkt_category_descAttributes = $this->_cat3_tkt_category_descAttributes;
        $this->Parent->cat3_tkt_category_desc->Value = $Header->cat3_tkt_category_desc;
        $this->Parent->cat3_tkt_category_desc->Attributes->RestoreFromArray($Header->_cat3_tkt_category_descAttributes);
        $this->prod_type = $Header->prod_type;
        $Header->_prod_typeAttributes = $this->_prod_typeAttributes;
        $this->Parent->prod_type->Value = $Header->prod_type;
        $this->Parent->prod_type->Attributes->RestoreFromArray($Header->_prod_typeAttributes);
        $this->tkt_plu_tax = $Header->tkt_plu_tax;
        $Header->_tkt_plu_taxAttributes = $this->_tkt_plu_taxAttributes;
        $this->Parent->tkt_plu_tax->Value = $Header->tkt_plu_tax;
        $this->Parent->tkt_plu_tax->Attributes->RestoreFromArray($Header->_tkt_plu_taxAttributes);
        $this->tkt_plu_unit = $Header->tkt_plu_unit;
        $Header->_tkt_plu_unitAttributes = $this->_tkt_plu_unitAttributes;
        $this->Parent->tkt_plu_unit->Value = $Header->tkt_plu_unit;
        $this->Parent->tkt_plu_unit->Attributes->RestoreFromArray($Header->_tkt_plu_unitAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @3-9CB4D2F0
class clsGroupsCollectionReport1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_plu_id->Value = $this->Parent->tkt_plu_id->initialValue;
        $this->Parent->tkt_plu_long_desc->Value = $this->Parent->tkt_plu_long_desc->initialValue;
        $this->Parent->cat1_tkt_category_desc->Value = $this->Parent->cat1_tkt_category_desc->initialValue;
        $this->Parent->cat2_tkt_category_desc->Value = $this->Parent->cat2_tkt_category_desc->initialValue;
        $this->Parent->cat3_tkt_category_desc->Value = $this->Parent->cat3_tkt_category_desc->initialValue;
        $this->Parent->prod_type->Value = $this->Parent->prod_type->initialValue;
        $this->Parent->tkt_plu_tax->Value = $this->Parent->tkt_plu_tax->initialValue;
        $this->Parent->tkt_plu_unit->Value = $this->Parent->tkt_plu_unit->initialValue;
    }

    function OpenPage() {
        $this->TotalPages++;
        $Group = & $this->InitGroup();
        $this->Parent->Page_Header->CCSEventResult = CCGetEvent($this->Parent->Page_Header->CCSEvents, "OnInitialize", $this->Parent->Page_Header);
        if ($this->Parent->Page_Header->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Page_Header->Height;
        $Group->SetTotalControls("GetNextValue");
        $this->Parent->Page_Header->CCSEventResult = CCGetEvent($this->Parent->Page_Header->CCSEvents, "OnCalculate", $this->Parent->Page_Header);
        $Group->SetControls();
        $Group->Mode = 1;
        $Group->GroupType = "Page";
        $Group->PageTotalIndex = count($this->Groups);
        $this->mPageCurrentHeaderIndex = count($this->Groups);
        $this->Groups[] =  & $Group;
        $this->Pages[] =  count($this->Groups) == 2 ? 0 : count($this->Groups) - 1;
    }

    function OpenGroup($groupName) {
        $Group = "";
        $OpenFlag = false;
        if ($groupName == "Report") {
            $Group = & $this->InitGroup(true);
            $this->Parent->Report_Header->CCSEventResult = CCGetEvent($this->Parent->Report_Header->CCSEvents, "OnInitialize", $this->Parent->Report_Header);
            if ($this->Parent->Report_Header->Visible) 
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Report_Header->Height;
                $Group->SetTotalControls("GetNextValue");
            $this->Parent->Report_Header->CCSEventResult = CCGetEvent($this->Parent->Report_Header->CCSEvents, "OnCalculate", $this->Parent->Report_Header);
            $Group->SetControls();
            $Group->Mode = 1;
            $Group->GroupType = "Report";
            $this->Groups[] = & $Group;
            $this->OpenPage();
        }
    }

    function ClosePage() {
        $Group = & $this->InitGroup();
        $this->Parent->Page_Footer->CCSEventResult = CCGetEvent($this->Parent->Page_Footer->CCSEvents, "OnInitialize", $this->Parent->Page_Footer);
        $Group->SetTotalControls("GetPrevValue");
        $Group->SyncWithHeader($this->Groups[$this->mPageCurrentHeaderIndex]);
        $this->Parent->Page_Footer->CCSEventResult = CCGetEvent($this->Parent->Page_Footer->CCSEvents, "OnCalculate", $this->Parent->Page_Footer);
        $Group->SetControls();
        $this->RestoreValues();
        $this->CurrentPageSize = 0;
        $Group->Mode = 2;
        $Group->GroupType = "Page";
        $this->Groups[] = & $Group;
    }

    function CloseGroup($groupName)
    {
        $Group = "";
        if ($groupName == "Report") {
            $Group = & $this->InitGroup(true);
            $this->Parent->Report_Footer->CCSEventResult = CCGetEvent($this->Parent->Report_Footer->CCSEvents, "OnInitialize", $this->Parent->Report_Footer);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->Report_Footer->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->Report_Footer->Height;
            if (($this->PageSize > 0) and $this->Parent->Report_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            $Group->SetTotalControls("GetPrevValue");
            $Group->SyncWithHeader($this->Groups[0]);
            if ($this->Parent->Report_Footer->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Report_Footer->Height;
            $this->Parent->Report_Footer->CCSEventResult = CCGetEvent($this->Parent->Report_Footer->CCSEvents, "OnCalculate", $this->Parent->Report_Footer);
            $Group->SetControls();
            $this->RestoreValues();
            $Group->Mode = 2;
            $Group->GroupType = "Report";
            $this->Groups[] = & $Group;
            $this->ClosePage();
            return;
        }
    }

    function AddItem()
    {
        $Group = & $this->InitGroup(true);
        $this->Parent->Detail->CCSEventResult = CCGetEvent($this->Parent->Detail->CCSEvents, "OnInitialize", $this->Parent->Detail);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->Detail->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->Detail->Height;
        if (($this->PageSize > 0) and $this->Parent->Detail->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $this->TotalRows++;
        if ($this->LastDetailIndex)
            $PrevGroup = & $this->Groups[$this->LastDetailIndex];
        else
            $PrevGroup = "";
        $Group->SetTotalControls("", $PrevGroup);
        if ($this->Parent->Detail->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Detail->Height;
        $this->Parent->Detail->CCSEventResult = CCGetEvent($this->Parent->Detail->CCSEvents, "OnCalculate", $this->Parent->Detail);
        $Group->SetControls($PrevGroup);
        $this->LastDetailIndex = count($this->Groups);
        $this->Groups[] = & $Group;
    }
}
//End Report1 GroupsCollection class

class clsReportReport1 { //Report1 Class @3-BC2FB08C

//Report1 Variables @3-28968BFF

    public $ComponentType = "Report";
    public $PageSize;
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $CCSEvents = array();
    public $CCSEventResult;
    public $RelativePath = "";
    public $ViewMode = "Web";
    public $TemplateBlock;
    public $PageNumber;
    public $RowNumber;
    public $TotalRows;
    public $TotalPages;
    public $ControlsVisible = array();
    public $IsEmpty;
    public $Attributes;
    public $DetailBlock, $Detail;
    public $Report_FooterBlock, $Report_Footer;
    public $Report_HeaderBlock, $Report_Header;
    public $Page_FooterBlock, $Page_Footer;
    public $Page_HeaderBlock, $Page_Header;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter1;
    public $Sorter_cat2_tkt_category_desc;
    public $Sorter_cat3_tkt_category_desc;
    public $Sorter_prod_type;
    public $Sorter_tkt_plu_tax;
    public $Sorter_tkt_plu_unit;
//End Report1 Variables

//Class_Initialize Event @3-AC295B76
    function clsReportReport1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Report_Footer = new clsSection($this);
        $this->Report_Header = new clsSection($this);
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 50;
             else if ($PageSize == "0")
                $this->PageSize = 0;
             else 
                $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
             else if ($PageSize == "0")
                $this->PageSize = 100;
             else 
                $this->PageSize = min(100, $PageSize);
        }
        $MinPageSize += $MaxSectionSize;
        if ($this->PageSize && $MinPageSize && $this->PageSize < $MinPageSize)
            $this->PageSize = $MinPageSize;
        $this->PageNumber = $this->ViewMode == "Print" ? 1 : intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0 ) {
            $this->PageNumber = 1;
        }
        $this->SorterName = CCGetParam("Report1Order", "");
        $this->SorterDirection = CCGetParam("Report1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter1 = new clsSorter($this->ComponentName, "Sorter1", $FileName, $this);
        $this->Sorter_cat2_tkt_category_desc = new clsSorter($this->ComponentName, "Sorter_cat2_tkt_category_desc", $FileName, $this);
        $this->Sorter_cat3_tkt_category_desc = new clsSorter($this->ComponentName, "Sorter_cat3_tkt_category_desc", $FileName, $this);
        $this->Sorter_prod_type = new clsSorter($this->ComponentName, "Sorter_prod_type", $FileName, $this);
        $this->Sorter_tkt_plu_tax = new clsSorter($this->ComponentName, "Sorter_tkt_plu_tax", $FileName, $this);
        $this->Sorter_tkt_plu_unit = new clsSorter($this->ComponentName, "Sorter_tkt_plu_unit", $FileName, $this);
        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsText, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", "", $this);
        $this->tkt_plu_long_desc->HTML = true;
        $this->tkt_plu_long_desc->EmptyText = "&nbsp;";
        $this->cat1_tkt_category_desc = new clsControl(ccsReportLabel, "cat1_tkt_category_desc", "cat1_tkt_category_desc", ccsText, "", "", $this);
        $this->cat1_tkt_category_desc->HTML = true;
        $this->cat1_tkt_category_desc->EmptyText = "&nbsp;";
        $this->cat2_tkt_category_desc = new clsControl(ccsReportLabel, "cat2_tkt_category_desc", "cat2_tkt_category_desc", ccsText, "", "", $this);
        $this->cat2_tkt_category_desc->HTML = true;
        $this->cat2_tkt_category_desc->EmptyText = "&nbsp;";
        $this->cat3_tkt_category_desc = new clsControl(ccsReportLabel, "cat3_tkt_category_desc", "cat3_tkt_category_desc", ccsText, "", "", $this);
        $this->cat3_tkt_category_desc->HTML = true;
        $this->cat3_tkt_category_desc->EmptyText = "&nbsp;";
        $this->prod_type = new clsControl(ccsReportLabel, "prod_type", "prod_type", ccsText, "", "", $this);
        $this->prod_type->HTML = true;
        $this->prod_type->EmptyText = "&nbsp;";
        $this->tkt_plu_tax = new clsControl(ccsReportLabel, "tkt_plu_tax", "tkt_plu_tax", ccsText, "", "", $this);
        $this->tkt_plu_tax->HTML = true;
        $this->tkt_plu_tax->EmptyText = "&nbsp;";
        $this->tkt_plu_unit = new clsControl(ccsReportLabel, "tkt_plu_unit", "tkt_plu_unit", ccsText, "", "", $this);
        $this->tkt_plu_unit->HTML = true;
        $this->tkt_plu_unit->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_CurrentDateTime->HTML = true;
        $this->Report_CurrentDateTime->EmptyText = "&nbsp;";
        $this->Report_CurrentPage = new clsControl(ccsReportLabel, "Report_CurrentPage", "Report_CurrentPage", ccsInteger, "", "", $this);
        $this->Report_CurrentPage->HTML = true;
        $this->Report_CurrentPage->EmptyText = "&nbsp;";
        $this->Report_TotalPages = new clsControl(ccsReportLabel, "Report_TotalPages", "Report_TotalPages", ccsInteger, "", "", $this);
        $this->Report_TotalPages->HTML = true;
        $this->Report_TotalPages->EmptyText = "&nbsp;";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->PageBreak = new clsPanel("PageBreak", $this);
    }
//End Class_Initialize Event

//Initialize Method @3-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @3-A381511D
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->cat1_tkt_category_desc->Errors->Count());
        $errors = ($errors || $this->cat2_tkt_category_desc->Errors->Count());
        $errors = ($errors || $this->cat3_tkt_category_desc->Errors->Count());
        $errors = ($errors || $this->prod_type->Errors->Count());
        $errors = ($errors || $this->tkt_plu_tax->Errors->Count());
        $errors = ($errors || $this->tkt_plu_unit->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-C9E813E3
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->cat1_tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->cat2_tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->cat3_tkt_category_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_tax->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_unit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-49535817
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tkt_plu_cat1"] = CCGetFromGet("s_tkt_plu_cat1", NULL);
        $this->DataSource->Parameters["urls_tkt_plu_cat2"] = CCGetFromGet("s_tkt_plu_cat2", NULL);
        $this->DataSource->Parameters["urls_tkt_plu_cat3"] = CCGetFromGet("s_tkt_plu_cat3", NULL);
        $this->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
        $this->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
        $this->DataSource->Parameters["urllstLevel3"] = CCGetFromGet("lstLevel3", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
            $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
            $this->cat1_tkt_category_desc->SetValue($this->DataSource->cat1_tkt_category_desc->GetValue());
            $this->cat2_tkt_category_desc->SetValue($this->DataSource->cat2_tkt_category_desc->GetValue());
            $this->cat3_tkt_category_desc->SetValue($this->DataSource->cat3_tkt_category_desc->GetValue());
            $this->prod_type->SetValue($this->DataSource->prod_type->GetValue());
            $this->tkt_plu_tax->SetValue($this->DataSource->tkt_plu_tax->GetValue());
            $this->tkt_plu_unit->SetValue($this->DataSource->tkt_plu_unit->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            $Groups->AddItem();
            $is_next_record = $this->DataSource->next_record();
        }
        if (!count($Groups->Groups)) 
            $Groups->OpenGroup("Report");
        else
            $this->NoRecords->Visible = false;
        $Groups->CloseGroup("Report");
        $this->TotalPages = $Groups->TotalPages;
        $this->TotalRows = $Groups->TotalRows;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $this->Attributes->Show();
        $ReportBlock = "Report " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;

        if($this->CheckErrors()) {
            $Tpl->replaceblock("", $this->GetErrors());
            $Tpl->block_path = $ParentPath;
            return;
        } else {
            $items = & $Groups->Groups;
            $i = $Groups->Pages[min($this->PageNumber, $Groups->TotalPages) - 1];
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["cat1_tkt_category_desc"] = $this->cat1_tkt_category_desc->Visible;
            $this->ControlsVisible["cat2_tkt_category_desc"] = $this->cat2_tkt_category_desc->Visible;
            $this->ControlsVisible["cat3_tkt_category_desc"] = $this->cat3_tkt_category_desc->Visible;
            $this->ControlsVisible["prod_type"] = $this->prod_type->Visible;
            $this->ControlsVisible["tkt_plu_tax"] = $this->tkt_plu_tax->Visible;
            $this->ControlsVisible["tkt_plu_unit"] = $this->tkt_plu_unit->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_plu_id->SetValue($items[$i]->tkt_plu_id);
                        $this->tkt_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_plu_idAttributes);
                        $this->tkt_plu_long_desc->SetValue($items[$i]->tkt_plu_long_desc);
                        $this->tkt_plu_long_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_long_descAttributes);
                        $this->cat1_tkt_category_desc->SetValue($items[$i]->cat1_tkt_category_desc);
                        $this->cat1_tkt_category_desc->Attributes->RestoreFromArray($items[$i]->_cat1_tkt_category_descAttributes);
                        $this->cat2_tkt_category_desc->SetValue($items[$i]->cat2_tkt_category_desc);
                        $this->cat2_tkt_category_desc->Attributes->RestoreFromArray($items[$i]->_cat2_tkt_category_descAttributes);
                        $this->cat3_tkt_category_desc->SetValue($items[$i]->cat3_tkt_category_desc);
                        $this->cat3_tkt_category_desc->Attributes->RestoreFromArray($items[$i]->_cat3_tkt_category_descAttributes);
                        $this->prod_type->SetValue($items[$i]->prod_type);
                        $this->prod_type->Attributes->RestoreFromArray($items[$i]->_prod_typeAttributes);
                        $this->tkt_plu_tax->SetValue($items[$i]->tkt_plu_tax);
                        $this->tkt_plu_tax->Attributes->RestoreFromArray($items[$i]->_tkt_plu_taxAttributes);
                        $this->tkt_plu_unit->SetValue($items[$i]->tkt_plu_unit);
                        $this->tkt_plu_unit->Attributes->RestoreFromArray($items[$i]->_tkt_plu_unitAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->cat1_tkt_category_desc->Show();
                        $this->cat2_tkt_category_desc->Show();
                        $this->cat3_tkt_category_desc->Show();
                        $this->prod_type->Show();
                        $this->tkt_plu_tax->Show();
                        $this->tkt_plu_unit->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_TotalRecords->SetValue($items[$i]->Report_TotalRecords);
                            $this->Report_TotalRecords->Attributes->RestoreFromArray($items[$i]->_Report_TotalRecordsAttributes);
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
                                $this->Report_TotalRecords->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "Page":
                        if ($items[$i]->Mode == 1) {
                            $this->Page_Header->CCSEventResult = CCGetEvent($this->Page_Header->CCSEvents, "BeforeShow", $this->Page_Header);
                            if ($this->Page_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Header";
                                $this->Attributes->Show();
                                $this->Sorter_tkt_plu_id->Show();
                                $this->Sorter_tkt_plu_long_desc->Show();
                                $this->Sorter1->Show();
                                $this->Sorter_cat2_tkt_category_desc->Show();
                                $this->Sorter_cat3_tkt_category_desc->Show();
                                $this->Sorter_prod_type->Show();
                                $this->Sorter_tkt_plu_tax->Show();
                                $this->Sorter_tkt_plu_unit->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
                            $this->Report_CurrentDateTime->SetValue(CCFormatDate(CCGetDateArray(), $this->Report_CurrentDateTime->Format));
                            $this->Report_CurrentDateTime->Attributes->RestoreFromArray($items[$i]->_Report_CurrentDateTimeAttributes);
                            $this->Report_CurrentPage->SetValue($items[$i]->PageNumber);
                            $this->Report_CurrentPage->Attributes->RestoreFromArray($items[$i]->_Report_CurrentPageAttributes);
                            $this->Report_TotalPages->SetValue($Groups->TotalPages);
                            $this->Report_TotalPages->Attributes->RestoreFromArray($items[$i]->_Report_TotalPagesAttributes);
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Report_CurrentDateTime->Show();
                                $this->Report_CurrentPage->Show();
                                $this->Report_TotalPages->Show();
                                $this->Navigator->Show();
                                $this->PageBreak->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                }
                $i++;
            } while ($i < count($items) && ($this->ViewMode == "Print" ||  !($i > 1 && $items[$i]->GroupType == 'Page' && $items[$i]->Mode == 1)));
            $Tpl->block_path = $ParentPath;
            $Tpl->parse($ReportBlock);
            $this->DataSource->close();
        }

    }
//End Show Method

} //End Report1 Class @3-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @3-20EE0F53

//DataSource Variables @3-5F4EC917
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $cat1_tkt_category_desc;
    public $cat2_tkt_category_desc;
    public $cat3_tkt_category_desc;
    public $prod_type;
    public $tkt_plu_tax;
    public $tkt_plu_unit;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-2C06A230
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->cat1_tkt_category_desc = new clsField("cat1_tkt_category_desc", ccsText, "");
        $this->cat2_tkt_category_desc = new clsField("cat2_tkt_category_desc", ccsText, "");
        $this->cat3_tkt_category_desc = new clsField("cat3_tkt_category_desc", ccsText, "");
        $this->prod_type = new clsField("prod_type", ccsText, "");
        $this->tkt_plu_tax = new clsField("tkt_plu_tax", ccsText, "");
        $this->tkt_plu_unit = new clsField("tkt_plu_unit", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-35D852ED
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter1" => array("cat1_tkt_category_desc", ""), 
            "Sorter_cat2_tkt_category_desc" => array("cat2_tkt_category_desc", ""), 
            "Sorter_cat3_tkt_category_desc" => array("cat3_tkt_category_desc", ""), 
            "Sorter_prod_type" => array("prod_type", ""), 
            "Sorter_tkt_plu_tax" => array("tkt_plu_tax", ""), 
            "Sorter_tkt_plu_unit" => array("tkt_plu_unit", "")));
    }
//End SetOrder Method

//Prepare Method @3-0855A6A3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_plu_cat1", ccsText, "", "", $this->Parameters["urls_tkt_plu_cat1"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_plu_cat2", ccsText, "", "", $this->Parameters["urls_tkt_plu_cat2"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_plu_cat3", ccsText, "", "", $this->Parameters["urls_tkt_plu_cat3"], "", false);
        $this->wp->AddParameter("4", "urllstLevel1", ccsText, "", "", $this->Parameters["urllstLevel1"], "", false);
        $this->wp->AddParameter("5", "urllstLevel2", ccsText, "", "", $this->Parameters["urllstLevel2"], "", false);
        $this->wp->AddParameter("6", "urllstLevel3", ccsText, "", "", $this->Parameters["urllstLevel3"], "", false);
    }
//End Prepare Method

//Open Method @3-356A469F
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT tkt_plu_id, tkt_plu_long_desc, tkt_plu_short_desc, cat1.tkt_category_desc AS cat1_tkt_category_desc, \n" .
        "cat2.tkt_category_desc AS cat2_tkt_category_desc, cat3.tkt_category_desc AS cat3_tkt_category_desc, tkt_catalog_value AS prod_type, tkt_plu_tax, tkt_plu_unit\n" .
        "FROM (((ssf_tkt_plu LEFT JOIN ssf_tkt_categories cat1 ON\n" .
        "ssf_tkt_plu.tkt_plu_cat1 = cat1.tkt_category_id and  cat1.tkt_category_level = 1 ) LEFT JOIN ssf_tkt_categories cat2 ON\n" .
        "ssf_tkt_plu.tkt_plu_cat2 = cat2.tkt_category_id and  cat2.tkt_category_level = 2 ) LEFT JOIN ssf_tkt_categories cat3 ON\n" .
        "ssf_tkt_plu.tkt_plu_cat3 = cat3.tkt_category_id and cat3.tkt_category_level = 3 ) INNER JOIN ssf_tkt_catalog ON\n" .
        "ssf_tkt_plu.tkt_plu_type = ssf_tkt_catalog.tkt_catalog_code\n" .
        "WHERE ( ssf_tkt_catalog.tkt_catalog_id = 'product_type' ) \n" .
        "and (cat1.tkt_category_id = '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' ) \n" .
        "and (cat2.tkt_category_id = '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' ) \n" .
        "and (cat3.tkt_category_id = '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' ) ";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-C99BAC35
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->cat1_tkt_category_desc->SetDBValue($this->f("cat1_tkt_category_desc"));
        $this->cat2_tkt_category_desc->SetDBValue($this->f("cat2_tkt_category_desc"));
        $this->cat3_tkt_category_desc->SetDBValue($this->f("cat3_tkt_category_desc"));
        $this->prod_type->SetDBValue($this->f("prod_type"));
        $this->tkt_plu_tax->SetDBValue($this->f("tkt_plu_tax"));
        $this->tkt_plu_unit->SetDBValue($this->f("tkt_plu_unit"));
    }
//End SetValues Method

} //End Report1DataSource Class @3-FCB6E20C

//Initialize Page @1-1807706B
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
$TemplateFileName = "SSFTicketProdReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-65C7DBC6
include("./SSFTicketProdReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C4FFE2A6
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$ssf_tkt_categories = new clsGridssf_tkt_categories("", $MainPage);
$ssf_tkt_categories1 = new clsGridssf_tkt_categories1("", $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$prod_search = new clsRecordprod_search("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$MainPage->ssf_tkt_categories = & $ssf_tkt_categories;
$MainPage->ssf_tkt_categories1 = & $ssf_tkt_categories1;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->prod_search = & $prod_search;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$ssf_tkt_categories->Initialize();
$ssf_tkt_categories1->Initialize();
$Report1->Initialize();

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

//Execute Components @1-01367BA2
$SSFSpiritHeader->Operations();
$prod_search->Operation();
//End Execute Components

//Go to destination page @1-46F3F29F
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_tkt_categories);
    unset($ssf_tkt_categories1);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($prod_search);
    unset($Report1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-008727BE
$ssf_tkt_categories->Show();
$ssf_tkt_categories1->Show();
$SSFSpiritHeader->Show();
$prod_search->Show();
$Button1->Show();
$Report1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-88A8C546
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_categories);
unset($ssf_tkt_categories1);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($prod_search);
unset($Report1);
unset($Tpl);
//End Unload Page


?>
