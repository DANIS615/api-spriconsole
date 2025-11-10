<?php
//Include Common Files @1-2DCC7F2A
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketSalesbyProd.php");
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

//Class_Initialize Event @67-5954D12A
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
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "prod_search", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "prod_search", "s_date_to", $this);
            $this->s_time_from = new clsControl(ccsTextBox, "s_time_from", "s_time_from", ccsText, "", CCGetRequestParam("s_time_from", $Method, NULL), $this);
            $this->s_time_to = new clsControl(ccsTextBox, "s_time_to", "s_time_to", ccsText, "", CCGetRequestParam("s_time_to", $Method, NULL), $this);
            $this->s_plu_type = new clsControl(ccsListBox, "s_plu_type", "s_plu_type", ccsText, "", CCGetRequestParam("s_plu_type", $Method, NULL), $this);
            $this->s_plu_type->DSType = dsTable;
            list($this->s_plu_type->BoundColumn, $this->s_plu_type->TextColumn, $this->s_plu_type->DBFormat) = array("", "", "");
            $this->s_plu_type->DataSource = new clsDBConnection1();
            $this->s_plu_type->ds = & $this->s_plu_type->DataSource;
            $this->s_plu_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->s_plu_type->DataSource->Order = "tkt_catalog_code";
            $this->s_plu_type->DataSource->wp = new clsSQLParameters();
            $this->s_plu_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'product_type'";
            $this->s_plu_type->DataSource->Where = 
                 $this->s_plu_type->DataSource->wp->Criterion[1];
            $this->s_plu_type->DataSource->Order = "tkt_catalog_code";
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
            $this->s_prod_id = new clsControl(ccsTextBox, "s_prod_id", "s_prod_id", ccsText, "", CCGetRequestParam("s_prod_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopProductsList.php";
            $this->rboption = new clsControl(ccsRadioButton, "rboption", "rboption", ccsText, "", CCGetRequestParam("rboption", $Method, NULL), $this);
            $this->rboption->DSType = dsListOfValues;
            $this->rboption->Values = array(array("0", $CCSLocales->GetText("ssf_pump_sales_by_grade")), array("1", $CCSLocales->GetText("ssf_salesbydate")), array("2", $CCSLocales->GetText("sales_by_prod_det")));
            $this->rboption->HTML = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketSalesbyProd.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->rboption->Value) && !strlen($this->rboption->Value) && $this->rboption->Value !== false)
                    $this->rboption->SetText(0);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @67-0774563A
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_time_from->Validate() && $Validation);
        $Validation = ($this->s_time_to->Validate() && $Validation);
        $Validation = ($this->s_plu_type->Validate() && $Validation);
        $Validation = ($this->lstLevel1->Validate() && $Validation);
        $Validation = ($this->lstLevel2->Validate() && $Validation);
        $Validation = ($this->lstLevel3->Validate() && $Validation);
        $Validation = ($this->s_prod_id->Validate() && $Validation);
        $Validation = ($this->rboption->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_plu_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel2->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel3->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_prod_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->rboption->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @67-4662B93D
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_time_from->Errors->Count());
        $errors = ($errors || $this->s_time_to->Errors->Count());
        $errors = ($errors || $this->s_plu_type->Errors->Count());
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->lstLevel1->Errors->Count());
        $errors = ($errors || $this->Label2->Errors->Count());
        $errors = ($errors || $this->lstLevel2->Errors->Count());
        $errors = ($errors || $this->Label3->Errors->Count());
        $errors = ($errors || $this->lstLevel3->Errors->Count());
        $errors = ($errors || $this->s_prod_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->rboption->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @67-191FA395
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
        $Redirect = "SSFTicketSalesbyProd.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketSalesbyProd.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @67-B8F75B02
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_plu_type->Prepare();
        $this->lstLevel1->Prepare();
        $this->lstLevel2->Prepare();
        $this->lstLevel3->Prepare();
        $this->rboption->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_from1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_plu_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_prod_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->rboption->Errors->ToString());
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

        $this->s_date_from->Show();
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_time_from->Show();
        $this->s_time_to->Show();
        $this->s_plu_type->Show();
        $this->Label1->Show();
        $this->lstLevel1->Show();
        $this->Label2->Show();
        $this->lstLevel2->Show();
        $this->Label3->Show();
        $this->lstLevel3->Show();
        $this->s_prod_id->Show();
        $this->Link2->Show();
        $this->rboption->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End prod_search Class @67-FCB6E20C

//Report1 ReportGroup class @132-56112430
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $tkt_qty, $_tkt_qtyAttributes;
    public $avg_tkt_ppu, $_avg_tkt_ppuAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $TotalSum_tkt_net_amount, $_TotalSum_tkt_net_amountAttributes;
    public $TotalSum_tkt_total_amount, $_TotalSum_tkt_total_amountAttributes;
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
        $this->tkt_qty = $this->Parent->tkt_qty->Value;
        $this->avg_tkt_ppu = $this->Parent->avg_tkt_ppu->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_idAttributes = $this->Parent->Sorter_tkt_plu_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_long_descAttributes = $this->Parent->Sorter_tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_Sorter_tkt_qtyAttributes = $this->Parent->Sorter_tkt_qty->Attributes->GetAsArray();
        $this->_Sorter_avg_tkt_ppuAttributes = $this->Parent->Sorter_avg_tkt_ppu->Attributes->GetAsArray();
        $this->_Sorter_tkt_net_amountAttributes = $this->Parent->Sorter_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_tkt_qtyAttributes = $this->Parent->tkt_qty->Attributes->GetAsArray();
        $this->_avg_tkt_ppuAttributes = $this->Parent->avg_tkt_ppu->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_net_amountAttributes = $this->Parent->TotalSum_tkt_net_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_tkt_net_amount = $this->TotalSum_tkt_net_amount;
        $Header->_TotalSum_tkt_net_amountAttributes = $this->_TotalSum_tkt_net_amountAttributes;
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->tkt_qty = $Header->tkt_qty;
        $Header->_tkt_qtyAttributes = $this->_tkt_qtyAttributes;
        $this->Parent->tkt_qty->Value = $Header->tkt_qty;
        $this->Parent->tkt_qty->Attributes->RestoreFromArray($Header->_tkt_qtyAttributes);
        $this->avg_tkt_ppu = $Header->avg_tkt_ppu;
        $Header->_avg_tkt_ppuAttributes = $this->_avg_tkt_ppuAttributes;
        $this->Parent->avg_tkt_ppu->Value = $Header->avg_tkt_ppu;
        $this->Parent->avg_tkt_ppu->Attributes->RestoreFromArray($Header->_avg_tkt_ppuAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetValue();
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @132-BF40F840
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
        $this->Parent->tkt_qty->Value = $this->Parent->tkt_qty->initialValue;
        $this->Parent->avg_tkt_ppu->Value = $this->Parent->avg_tkt_ppu->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->TotalSum_tkt_net_amount->Value = $this->Parent->TotalSum_tkt_net_amount->initialValue;
        $this->Parent->TotalSum_tkt_total_amount->Value = $this->Parent->TotalSum_tkt_total_amount->initialValue;
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

class clsReportReport1 { //Report1 Class @132-BC2FB08C

//Report1 Variables @132-0553CFD3

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
    public $Sorter_tkt_qty;
    public $Sorter_avg_tkt_ppu;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_total_amount;
//End Report1 Variables

//Class_Initialize Event @132-7283C0DA
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
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 1;
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
                $this->PageSize = 40;
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
        $this->Sorter_tkt_qty = new clsSorter($this->ComponentName, "Sorter_tkt_qty", $FileName, $this);
        $this->Sorter_avg_tkt_ppu = new clsSorter($this->ComponentName, "Sorter_avg_tkt_ppu", $FileName, $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsText, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", "", $this);
        $this->tkt_plu_long_desc->HTML = true;
        $this->tkt_plu_long_desc->EmptyText = "&nbsp;";
        $this->tkt_qty = new clsControl(ccsReportLabel, "tkt_qty", "tkt_qty", ccsFloat, "", "", $this);
        $this->tkt_qty->HTML = true;
        $this->tkt_qty->EmptyText = "&nbsp;";
        $this->avg_tkt_ppu = new clsControl(ccsReportLabel, "avg_tkt_ppu", "avg_tkt_ppu", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->avg_tkt_ppu->HTML = true;
        $this->avg_tkt_ppu->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_net_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_net_amount", "TotalSum_tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_net_amount->HTML = true;
        $this->TotalSum_tkt_net_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_net_amount->EmptyText = "&nbsp;";
        $this->TotalSum_tkt_total_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_total_amount", "TotalSum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_total_amount->HTML = true;
        $this->TotalSum_tkt_total_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_total_amount->EmptyText = "&nbsp;";
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
    }
//End Class_Initialize Event

//Initialize Method @132-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @132-7EA0CB5B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->tkt_qty->Errors->Count());
        $errors = ($errors || $this->avg_tkt_ppu->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @132-2F41603E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->avg_tkt_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @132-84710212
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
        $this->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
        $this->DataSource->Parameters["urllstLevel3"] = CCGetFromGet("lstLevel3", NULL);
        $this->DataSource->Parameters["urls_prod_id"] = CCGetFromGet("s_prod_id", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_plu_type"] = CCGetFromGet("s_plu_type", NULL);

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
            $this->tkt_qty->SetValue($this->DataSource->tkt_qty->GetValue());
            $this->avg_tkt_ppu->SetValue($this->DataSource->avg_tkt_ppu->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->TotalSum_tkt_net_amount->SetValue($this->DataSource->TotalSum_tkt_net_amount->GetValue());
            $this->TotalSum_tkt_total_amount->SetValue($this->DataSource->TotalSum_tkt_total_amount->GetValue());
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
            $this->ControlsVisible["tkt_qty"] = $this->tkt_qty->Visible;
            $this->ControlsVisible["avg_tkt_ppu"] = $this->avg_tkt_ppu->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
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
                        $this->tkt_qty->SetValue($items[$i]->tkt_qty);
                        $this->tkt_qty->Attributes->RestoreFromArray($items[$i]->_tkt_qtyAttributes);
                        $this->avg_tkt_ppu->SetValue($items[$i]->avg_tkt_ppu);
                        $this->avg_tkt_ppu->Attributes->RestoreFromArray($items[$i]->_avg_tkt_ppuAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->tkt_qty->Show();
                        $this->avg_tkt_ppu->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_total_amount->Show();
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
                            $this->TotalSum_tkt_net_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_net_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_net_amountAttributes);
                            $this->TotalSum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_total_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_total_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_net_amount->Show();
                                $this->TotalSum_tkt_total_amount->Show();
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
                                $this->Sorter_tkt_qty->Show();
                                $this->Sorter_avg_tkt_ppu->Show();
                                $this->Sorter_tkt_net_amount->Show();
                                $this->Sorter_tkt_total_amount->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
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

} //End Report1 Class @132-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @132-20EE0F53

//DataSource Variables @132-9B880E43
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $tkt_qty;
    public $avg_tkt_ppu;
    public $tkt_net_amount;
    public $tkt_total_amount;
    public $TotalSum_tkt_net_amount;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @132-009FFCBD
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_qty = new clsField("tkt_qty", ccsFloat, "");
        $this->avg_tkt_ppu = new clsField("avg_tkt_ppu", ccsFloat, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->TotalSum_tkt_net_amount = new clsField("TotalSum_tkt_net_amount", ccsFloat, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @132-46149AFB
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "p.tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_qty" => array("tkt_qty", ""), 
            "Sorter_avg_tkt_ppu" => array("avg_tkt_ppu", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", "")));
    }
//End SetOrder Method

//Prepare Method @132-B4D96E64
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urllstLevel1", ccsText, "", "", $this->Parameters["urllstLevel1"], "", false);
        $this->wp->AddParameter("4", "urllstLevel2", ccsText, "", "", $this->Parameters["urllstLevel2"], "", false);
        $this->wp->AddParameter("5", "urllstLevel3", ccsText, "", "", $this->Parameters["urllstLevel3"], "", false);
        $this->wp->AddParameter("6", "urls_prod_id", ccsText, "", "", $this->Parameters["urls_prod_id"], "", false);
        $this->wp->AddParameter("7", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("8", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
        $this->wp->AddParameter("9", "urls_plu_type", ccsText, "", "", $this->Parameters["urls_plu_type"], "", false);
    }
//End Prepare Method

//Open Method @132-B5BC3411
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT p.tkt_plu_id, p.tkt_plu_long_desc, sum(d.tkt_qty * ReplacetoNumberCatalog) as tkt_qty, sum(d.tkt_net_amount * ReplacetoNumberCatalog) as tkt_net_amount,\n" .
        "sum(d.tkt_total_amount * ReplacetoNumberCatalog) as tkt_total_amount, avg(d.tkt_ppu) as avg_tkt_ppu\n" .
        "FROM (ssf_tkt_trx_header h INNER JOIN (ssf_tkt_trx_detail d INNER JOIN ssf_tkt_plu p ON\n" .
        "d.tkt_plu_id = p.tkt_plu_id) ON h.tkt_trans_id = d.tkt_trans_id ) LEFT JOIN ssf_tkt_catalog ON\n" .
        "h.tkt_type = ssf_tkt_catalog.tkt_catalog_code  and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "where ( h.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = '' )\n" .
        "and ( h.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = ''  )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time <= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = ''  )\n" .
        "and (p.tkt_plu_cat1 = '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat2 = '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat3 = '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_id = '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or  '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_type = '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' = '' )\n" .
        "group by p.tkt_plu_id, p.tkt_plu_long_desc {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @132-FBB6826D
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_qty->SetDBValue(trim($this->f("tkt_qty")));
        $this->avg_tkt_ppu->SetDBValue(trim($this->f("avg_tkt_ppu")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->TotalSum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End Report1DataSource Class @132-FCB6E20C

//Report2 ReportGroup class @172-1E68B7A8
class clsReportGroupReport2 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_date, $tkt_dateDup, $_tkt_dateAttributes;
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $tkt_qty, $_tkt_qtyAttributes;
    public $avg_tkt_ppu, $_avg_tkt_ppuAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $Sum_tkt_net_amount, $_Sum_tkt_net_amountAttributes;
    public $Sum_tkt_total_amount, $_Sum_tkt_total_amountAttributes;
    public $TotalSum_tkt_net_amount, $_TotalSum_tkt_net_amountAttributes;
    public $TotalSum_tkt_total_amount, $_TotalSum_tkt_total_amountAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $tkt_dateTotalIndex;

    function clsReportGroupReport2(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_date = $this->Parent->tkt_date->Value;
        $this->tkt_plu_id = $this->Parent->tkt_plu_id->Value;
        $this->tkt_plu_long_desc = $this->Parent->tkt_plu_long_desc->Value;
        $this->tkt_qty = $this->Parent->tkt_qty->Value;
        $this->avg_tkt_ppu = $this->Parent->avg_tkt_ppu->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
        if ($PrevGroup) {
            $this->tkt_dateDup =  CCCompareValues($this->tkt_date, $PrevGroup->tkt_date, $this->Parent->tkt_date->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_tkt_net_amount = $this->Parent->Sum_tkt_net_amount->GetTotalValue($mode);
        $this->Sum_tkt_total_amount = $this->Parent->Sum_tkt_total_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_idAttributes = $this->Parent->Sorter_tkt_plu_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_long_descAttributes = $this->Parent->Sorter_tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_Sorter_tkt_qtyAttributes = $this->Parent->Sorter_tkt_qty->Attributes->GetAsArray();
        $this->_Sorter_avg_tkt_ppuAttributes = $this->Parent->Sorter_avg_tkt_ppu->Attributes->GetAsArray();
        $this->_Sorter_tkt_net_amountAttributes = $this->Parent->Sorter_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_dateAttributes = $this->Parent->tkt_date->Attributes->GetAsArray();
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_tkt_qtyAttributes = $this->Parent->tkt_qty->Attributes->GetAsArray();
        $this->_avg_tkt_ppuAttributes = $this->Parent->avg_tkt_ppu->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_Sum_tkt_net_amountAttributes = $this->Parent->Sum_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sum_tkt_total_amountAttributes = $this->Parent->Sum_tkt_total_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_net_amountAttributes = $this->Parent->TotalSum_tkt_net_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Sum_tkt_net_amount = $this->Sum_tkt_net_amount;
        $Header->_Sum_tkt_net_amountAttributes = $this->_Sum_tkt_net_amountAttributes;
        $Header->Sum_tkt_total_amount = $this->Sum_tkt_total_amount;
        $Header->_Sum_tkt_total_amountAttributes = $this->_Sum_tkt_total_amountAttributes;
        $Header->TotalSum_tkt_net_amount = $this->TotalSum_tkt_net_amount;
        $Header->_TotalSum_tkt_net_amountAttributes = $this->_TotalSum_tkt_net_amountAttributes;
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_date = $Header->tkt_date;
        $Header->_tkt_dateAttributes = $this->_tkt_dateAttributes;
        $this->Parent->tkt_date->Value = $Header->tkt_date;
        $this->Parent->tkt_date->Attributes->RestoreFromArray($Header->_tkt_dateAttributes);
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->tkt_qty = $Header->tkt_qty;
        $Header->_tkt_qtyAttributes = $this->_tkt_qtyAttributes;
        $this->Parent->tkt_qty->Value = $Header->tkt_qty;
        $this->Parent->tkt_qty->Attributes->RestoreFromArray($Header->_tkt_qtyAttributes);
        $this->avg_tkt_ppu = $Header->avg_tkt_ppu;
        $Header->_avg_tkt_ppuAttributes = $this->_avg_tkt_ppuAttributes;
        $this->Parent->avg_tkt_ppu->Value = $Header->avg_tkt_ppu;
        $this->Parent->avg_tkt_ppu->Attributes->RestoreFromArray($Header->_avg_tkt_ppuAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Sum_tkt_net_amount = $this->Parent->Sum_tkt_net_amount->GetValue();
        $this->Sum_tkt_total_amount = $this->Parent->Sum_tkt_total_amount->GetValue();
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetValue();
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End Report2 ReportGroup class

//Report2 GroupsCollection class @172-D1F2A9EA
class clsGroupsCollectionReport2 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mtkt_dateCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport2(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mtkt_dateCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport2($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->tkt_dateTotalIndex = $this->mtkt_dateCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_date->Value = $this->Parent->tkt_date->initialValue;
        $this->Parent->tkt_plu_id->Value = $this->Parent->tkt_plu_id->initialValue;
        $this->Parent->tkt_plu_long_desc->Value = $this->Parent->tkt_plu_long_desc->initialValue;
        $this->Parent->tkt_qty->Value = $this->Parent->tkt_qty->initialValue;
        $this->Parent->avg_tkt_ppu->Value = $this->Parent->avg_tkt_ppu->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->Sum_tkt_net_amount->Value = $this->Parent->Sum_tkt_net_amount->initialValue;
        $this->Parent->Sum_tkt_total_amount->Value = $this->Parent->Sum_tkt_total_amount->initialValue;
        $this->Parent->TotalSum_tkt_net_amount->Value = $this->Parent->TotalSum_tkt_net_amount->initialValue;
        $this->Parent->TotalSum_tkt_total_amount->Value = $this->Parent->TotalSum_tkt_total_amount->initialValue;
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
        if ($groupName == "tkt_date") {
            $Grouptkt_date = & $this->InitGroup(true);
            $this->Parent->tkt_date_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_date_Header->CCSEvents, "OnInitialize", $this->Parent->tkt_date_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->tkt_date_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->tkt_date_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->tkt_date_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->tkt_date_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_date_Header->Height;
                $Grouptkt_date->SetTotalControls("GetNextValue");
            $this->Parent->tkt_date_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_date_Header->CCSEvents, "OnCalculate", $this->Parent->tkt_date_Header);
            $Grouptkt_date->SetControls();
            $Grouptkt_date->Mode = 1;
            $Grouptkt_date->GroupType = "tkt_date";
            $this->mtkt_dateCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouptkt_date;
            $this->Parent->Sum_tkt_net_amount->Reset();
            $this->Parent->Sum_tkt_total_amount->Reset();
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
        $Grouptkt_date = & $this->InitGroup(true);
        $this->Parent->tkt_date_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_date_Footer->CCSEvents, "OnInitialize", $this->Parent->tkt_date_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->tkt_date_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->tkt_date_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->tkt_date_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouptkt_date->SetTotalControls("GetPrevValue");
        $Grouptkt_date->SyncWithHeader($this->Groups[$this->mtkt_dateCurrentHeaderIndex]);
        if ($this->Parent->tkt_date_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_date_Footer->Height;
        $this->Parent->tkt_date_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_date_Footer->CCSEvents, "OnCalculate", $this->Parent->tkt_date_Footer);
        $Grouptkt_date->SetControls();
        $this->Parent->Sum_tkt_net_amount->Reset();
        $this->Parent->Sum_tkt_total_amount->Reset();
        $this->RestoreValues();
        $Grouptkt_date->Mode = 2;
        $Grouptkt_date->GroupType ="tkt_date";
        $this->Groups[] = & $Grouptkt_date;
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
//End Report2 GroupsCollection class

class clsReportReport2 { //Report2 Class @172-9702E34F

//Report2 Variables @172-1D52C934

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
    public $tkt_date_HeaderBlock, $tkt_date_Header;
    public $tkt_date_FooterBlock, $tkt_date_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $tkt_date_HeaderControls, $tkt_date_FooterControls;
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter_tkt_qty;
    public $Sorter_avg_tkt_ppu;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_total_amount;
//End Report2 Variables

//Class_Initialize Event @172-43FB3AF8
    function clsReportReport2($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report2";
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
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->tkt_date_Footer = new clsSection($this);
        $this->tkt_date_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->tkt_date_Footer->Height);
        $this->tkt_date_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
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
        $this->SorterName = CCGetParam("Report2Order", "");
        $this->SorterDirection = CCGetParam("Report2Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter_tkt_qty = new clsSorter($this->ComponentName, "Sorter_tkt_qty", $FileName, $this);
        $this->Sorter_avg_tkt_ppu = new clsSorter($this->ComponentName, "Sorter_avg_tkt_ppu", $FileName, $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->tkt_date = new clsControl(ccsReportLabel, "tkt_date", "tkt_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_date->HTML = true;
        $this->tkt_date->EmptyText = "&nbsp;";
        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsText, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", "", $this);
        $this->tkt_plu_long_desc->HTML = true;
        $this->tkt_plu_long_desc->EmptyText = "&nbsp;";
        $this->tkt_qty = new clsControl(ccsReportLabel, "tkt_qty", "tkt_qty", ccsFloat, "", "", $this);
        $this->tkt_qty->HTML = true;
        $this->tkt_qty->EmptyText = "&nbsp;";
        $this->avg_tkt_ppu = new clsControl(ccsReportLabel, "avg_tkt_ppu", "avg_tkt_ppu", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->avg_tkt_ppu->HTML = true;
        $this->avg_tkt_ppu->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->Sum_tkt_net_amount = new clsControl(ccsReportLabel, "Sum_tkt_net_amount", "Sum_tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_tkt_net_amount->HTML = true;
        $this->Sum_tkt_net_amount->TotalFunction = "Sum";
        $this->Sum_tkt_net_amount->EmptyText = "&nbsp;";
        $this->Sum_tkt_total_amount = new clsControl(ccsReportLabel, "Sum_tkt_total_amount", "Sum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_tkt_total_amount->HTML = true;
        $this->Sum_tkt_total_amount->TotalFunction = "Sum";
        $this->Sum_tkt_total_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_net_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_net_amount", "TotalSum_tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_net_amount->HTML = true;
        $this->TotalSum_tkt_net_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_net_amount->EmptyText = "&nbsp;";
        $this->TotalSum_tkt_total_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_total_amount", "TotalSum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_total_amount->HTML = true;
        $this->TotalSum_tkt_total_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_total_amount->EmptyText = "&nbsp;";
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
    }
//End Class_Initialize Event

//Initialize Method @172-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @172-09A49067
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_date->Errors->Count());
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->tkt_qty->Errors->Count());
        $errors = ($errors || $this->avg_tkt_ppu->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Sum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->Sum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @172-B5882811
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->avg_tkt_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @172-5C90EC0A
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
        $this->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
        $this->DataSource->Parameters["urllstLevel3"] = CCGetFromGet("lstLevel3", NULL);
        $this->DataSource->Parameters["urls_prod_id"] = CCGetFromGet("s_prod_id", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_plu_type"] = CCGetFromGet("s_plu_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $tkt_dateKey = "";
        $Groups = new clsGroupsCollectionReport2($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
            $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
            $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
            $this->tkt_qty->SetValue($this->DataSource->tkt_qty->GetValue());
            $this->avg_tkt_ppu->SetValue($this->DataSource->avg_tkt_ppu->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->Sum_tkt_net_amount->SetValue($this->DataSource->Sum_tkt_net_amount->GetValue());
            $this->Sum_tkt_total_amount->SetValue($this->DataSource->Sum_tkt_total_amount->GetValue());
            $this->TotalSum_tkt_net_amount->SetValue($this->DataSource->TotalSum_tkt_net_amount->GetValue());
            $this->TotalSum_tkt_total_amount->SetValue($this->DataSource->TotalSum_tkt_total_amount->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $tkt_dateKey != $this->DataSource->f("tkt_date")) {
                $Groups->OpenGroup("tkt_date");
            }
            $Groups->AddItem();
            $tkt_dateKey = $this->DataSource->f("tkt_date");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $tkt_dateKey != $this->DataSource->f("tkt_date")) {
                $Groups->CloseGroup("tkt_date");
            }
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
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["tkt_qty"] = $this->tkt_qty->Visible;
            $this->ControlsVisible["avg_tkt_ppu"] = $this->avg_tkt_ppu->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["Sum_tkt_net_amount"] = $this->Sum_tkt_net_amount->Visible;
            $this->ControlsVisible["Sum_tkt_total_amount"] = $this->Sum_tkt_total_amount->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_date->Visible = $this->ControlsVisible["tkt_date"] && !$items[$i]->tkt_dateDup;
                        $this->tkt_date->SetValue($items[$i]->tkt_date);
                        $this->tkt_date->Attributes->RestoreFromArray($items[$i]->_tkt_dateAttributes);
                        $this->tkt_plu_id->SetValue($items[$i]->tkt_plu_id);
                        $this->tkt_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_plu_idAttributes);
                        $this->tkt_plu_long_desc->SetValue($items[$i]->tkt_plu_long_desc);
                        $this->tkt_plu_long_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_long_descAttributes);
                        $this->tkt_qty->SetValue($items[$i]->tkt_qty);
                        $this->tkt_qty->Attributes->RestoreFromArray($items[$i]->_tkt_qtyAttributes);
                        $this->avg_tkt_ppu->SetValue($items[$i]->avg_tkt_ppu);
                        $this->avg_tkt_ppu->Attributes->RestoreFromArray($items[$i]->_avg_tkt_ppuAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_date->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->tkt_qty->Show();
                        $this->avg_tkt_ppu->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_total_amount->Show();
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
                            $this->TotalSum_tkt_net_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_net_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_net_amountAttributes);
                            $this->TotalSum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_total_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_total_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_net_amount->Show();
                                $this->TotalSum_tkt_total_amount->Show();
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
                                $this->Sorter_tkt_qty->Show();
                                $this->Sorter_avg_tkt_ppu->Show();
                                $this->Sorter_tkt_net_amount->Show();
                                $this->Sorter_tkt_total_amount->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
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
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "tkt_date":
                        if ($items[$i]->Mode == 1) {
                            $this->tkt_date_Header->CCSEventResult = CCGetEvent($this->tkt_date_Header->CCSEvents, "BeforeShow", $this->tkt_date_Header);
                            if ($this->tkt_date_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_date_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_date_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_tkt_net_amount->SetText(CCFormatNumber($items[$i]->Sum_tkt_net_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_Sum_tkt_net_amountAttributes);
                            $this->Sum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->Sum_tkt_total_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_Sum_tkt_total_amountAttributes);
                            $this->tkt_date_Footer->CCSEventResult = CCGetEvent($this->tkt_date_Footer->CCSEvents, "BeforeShow", $this->tkt_date_Footer);
                            if ($this->tkt_date_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_date_Footer";
                                $this->Sum_tkt_net_amount->Show();
                                $this->Sum_tkt_total_amount->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_date_Footer", true, "Section Detail");
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

} //End Report2 Class @172-FCB6E20C

class clsReport2DataSource extends clsDBConnection1 {  //Report2DataSource Class @172-AB3D314A

//DataSource Variables @172-1395EEAF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_date;
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $tkt_qty;
    public $avg_tkt_ppu;
    public $tkt_net_amount;
    public $tkt_total_amount;
    public $Sum_tkt_net_amount;
    public $Sum_tkt_total_amount;
    public $TotalSum_tkt_net_amount;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @172-7B34F526
    function clsReport2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report2";
        $this->Initialize();
        $this->tkt_date = new clsField("tkt_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_qty = new clsField("tkt_qty", ccsFloat, "");
        $this->avg_tkt_ppu = new clsField("avg_tkt_ppu", ccsFloat, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->Sum_tkt_net_amount = new clsField("Sum_tkt_net_amount", ccsFloat, "");
        $this->Sum_tkt_total_amount = new clsField("Sum_tkt_total_amount", ccsFloat, "");
        $this->TotalSum_tkt_net_amount = new clsField("TotalSum_tkt_net_amount", ccsFloat, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @172-E3F89F6D
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "h.tkt_date desc, p.tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_qty" => array("tkt_qty", ""), 
            "Sorter_avg_tkt_ppu" => array("avg_tkt_ppu", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", "")));
    }
//End SetOrder Method

//Prepare Method @172-B4D96E64
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urllstLevel1", ccsText, "", "", $this->Parameters["urllstLevel1"], "", false);
        $this->wp->AddParameter("4", "urllstLevel2", ccsText, "", "", $this->Parameters["urllstLevel2"], "", false);
        $this->wp->AddParameter("5", "urllstLevel3", ccsText, "", "", $this->Parameters["urllstLevel3"], "", false);
        $this->wp->AddParameter("6", "urls_prod_id", ccsText, "", "", $this->Parameters["urls_prod_id"], "", false);
        $this->wp->AddParameter("7", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("8", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
        $this->wp->AddParameter("9", "urls_plu_type", ccsText, "", "", $this->Parameters["urls_plu_type"], "", false);
    }
//End Prepare Method

//Open Method @172-403755E9
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT h.tkt_date, p.tkt_plu_id, p.tkt_plu_long_desc, sum(d.tkt_qty * ReplacetoNumberCatalog) as tkt_qty, \n" .
        "sum(d.tkt_net_amount * ReplacetoNumberCatalog) as tkt_net_amount,\n" .
        "sum(d.tkt_total_amount * ReplacetoNumberCatalog) as tkt_total_amount, avg(d.tkt_ppu) as avg_tkt_ppu\n" .
        "FROM (ssf_tkt_trx_header h INNER JOIN (ssf_tkt_trx_detail d INNER JOIN ssf_tkt_plu p ON\n" .
        "d.tkt_plu_id = p.tkt_plu_id) ON h.tkt_trans_id = d.tkt_trans_id )  LEFT JOIN ssf_tkt_catalog ON\n" .
        "h.tkt_type = ssf_tkt_catalog.tkt_catalog_code  and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "where ( h.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = '' )\n" .
        "and ( h.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = ''  )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time <= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = ''  )\n" .
        "and (p.tkt_plu_cat1 = '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat2 = '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat3 = '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_id = '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or  '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_type = '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' = '' )\n" .
        "group by h.tkt_date, p.tkt_plu_id, p.tkt_plu_long_desc {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "tkt_date asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @172-314A0043
    function SetValues()
    {
        $this->tkt_date->SetDBValue(trim($this->f("tkt_date")));
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_qty->SetDBValue(trim($this->f("tkt_qty")));
        $this->avg_tkt_ppu->SetDBValue(trim($this->f("avg_tkt_ppu")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->Sum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->Sum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->TotalSum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End Report2DataSource Class @172-FCB6E20C

//Report3 ReportGroup class @228-DBAC5E83
class clsReportGroupReport3 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_date, $_tkt_dateAttributes;
    public $tkt_time, $_tkt_timeAttributes;
    public $tkt_receipt_type, $_tkt_receipt_typeAttributes;
    public $tkt_receipt_group, $_tkt_receipt_groupAttributes;
    public $tkt_receipt_number, $_tkt_receipt_numberAttributes;
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $tkt_qty, $_tkt_qtyAttributes;
    public $avg_tkt_ppu, $_avg_tkt_ppuAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $TotalSum_tkt_net_amount, $_TotalSum_tkt_net_amountAttributes;
    public $TotalSum_tkt_total_amount, $_TotalSum_tkt_total_amountAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupReport3(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_date = $this->Parent->tkt_date->Value;
        $this->tkt_time = $this->Parent->tkt_time->Value;
        $this->tkt_receipt_type = $this->Parent->tkt_receipt_type->Value;
        $this->tkt_receipt_group = $this->Parent->tkt_receipt_group->Value;
        $this->tkt_receipt_number = $this->Parent->tkt_receipt_number->Value;
        $this->tkt_plu_id = $this->Parent->tkt_plu_id->Value;
        $this->tkt_plu_long_desc = $this->Parent->tkt_plu_long_desc->Value;
        $this->tkt_qty = $this->Parent->tkt_qty->Value;
        $this->avg_tkt_ppu = $this->Parent->avg_tkt_ppu->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_dateAttributes = $this->Parent->Sorter_tkt_date->Attributes->GetAsArray();
        $this->_Sorter_tkt_timeAttributes = $this->Parent->Sorter_tkt_time->Attributes->GetAsArray();
        $this->_Sorter_tkt_receipt_typeAttributes = $this->Parent->Sorter_tkt_receipt_type->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_idAttributes = $this->Parent->Sorter_tkt_plu_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_long_descAttributes = $this->Parent->Sorter_tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_Sorter_tkt_qtyAttributes = $this->Parent->Sorter_tkt_qty->Attributes->GetAsArray();
        $this->_Sorter_avg_tkt_ppuAttributes = $this->Parent->Sorter_avg_tkt_ppu->Attributes->GetAsArray();
        $this->_Sorter_tkt_net_amountAttributes = $this->Parent->Sorter_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_dateAttributes = $this->Parent->tkt_date->Attributes->GetAsArray();
        $this->_tkt_timeAttributes = $this->Parent->tkt_time->Attributes->GetAsArray();
        $this->_tkt_receipt_typeAttributes = $this->Parent->tkt_receipt_type->Attributes->GetAsArray();
        $this->_tkt_receipt_groupAttributes = $this->Parent->tkt_receipt_group->Attributes->GetAsArray();
        $this->_tkt_receipt_numberAttributes = $this->Parent->tkt_receipt_number->Attributes->GetAsArray();
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_tkt_qtyAttributes = $this->Parent->tkt_qty->Attributes->GetAsArray();
        $this->_avg_tkt_ppuAttributes = $this->Parent->avg_tkt_ppu->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_net_amountAttributes = $this->Parent->TotalSum_tkt_net_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_tkt_net_amount = $this->TotalSum_tkt_net_amount;
        $Header->_TotalSum_tkt_net_amountAttributes = $this->_TotalSum_tkt_net_amountAttributes;
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_date = $Header->tkt_date;
        $Header->_tkt_dateAttributes = $this->_tkt_dateAttributes;
        $this->Parent->tkt_date->Value = $Header->tkt_date;
        $this->Parent->tkt_date->Attributes->RestoreFromArray($Header->_tkt_dateAttributes);
        $this->tkt_time = $Header->tkt_time;
        $Header->_tkt_timeAttributes = $this->_tkt_timeAttributes;
        $this->Parent->tkt_time->Value = $Header->tkt_time;
        $this->Parent->tkt_time->Attributes->RestoreFromArray($Header->_tkt_timeAttributes);
        $this->tkt_receipt_type = $Header->tkt_receipt_type;
        $Header->_tkt_receipt_typeAttributes = $this->_tkt_receipt_typeAttributes;
        $this->Parent->tkt_receipt_type->Value = $Header->tkt_receipt_type;
        $this->Parent->tkt_receipt_type->Attributes->RestoreFromArray($Header->_tkt_receipt_typeAttributes);
        $this->tkt_receipt_group = $Header->tkt_receipt_group;
        $Header->_tkt_receipt_groupAttributes = $this->_tkt_receipt_groupAttributes;
        $this->Parent->tkt_receipt_group->Value = $Header->tkt_receipt_group;
        $this->Parent->tkt_receipt_group->Attributes->RestoreFromArray($Header->_tkt_receipt_groupAttributes);
        $this->tkt_receipt_number = $Header->tkt_receipt_number;
        $Header->_tkt_receipt_numberAttributes = $this->_tkt_receipt_numberAttributes;
        $this->Parent->tkt_receipt_number->Value = $Header->tkt_receipt_number;
        $this->Parent->tkt_receipt_number->Attributes->RestoreFromArray($Header->_tkt_receipt_numberAttributes);
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->tkt_qty = $Header->tkt_qty;
        $Header->_tkt_qtyAttributes = $this->_tkt_qtyAttributes;
        $this->Parent->tkt_qty->Value = $Header->tkt_qty;
        $this->Parent->tkt_qty->Attributes->RestoreFromArray($Header->_tkt_qtyAttributes);
        $this->avg_tkt_ppu = $Header->avg_tkt_ppu;
        $Header->_avg_tkt_ppuAttributes = $this->_avg_tkt_ppuAttributes;
        $this->Parent->avg_tkt_ppu->Value = $Header->avg_tkt_ppu;
        $this->Parent->avg_tkt_ppu->Attributes->RestoreFromArray($Header->_avg_tkt_ppuAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetValue();
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End Report3 ReportGroup class

//Report3 GroupsCollection class @228-62CA7298
class clsGroupsCollectionReport3 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport3(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport3($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_date->Value = $this->Parent->tkt_date->initialValue;
        $this->Parent->tkt_time->Value = $this->Parent->tkt_time->initialValue;
        $this->Parent->tkt_receipt_type->Value = $this->Parent->tkt_receipt_type->initialValue;
        $this->Parent->tkt_receipt_group->Value = $this->Parent->tkt_receipt_group->initialValue;
        $this->Parent->tkt_receipt_number->Value = $this->Parent->tkt_receipt_number->initialValue;
        $this->Parent->tkt_plu_id->Value = $this->Parent->tkt_plu_id->initialValue;
        $this->Parent->tkt_plu_long_desc->Value = $this->Parent->tkt_plu_long_desc->initialValue;
        $this->Parent->tkt_qty->Value = $this->Parent->tkt_qty->initialValue;
        $this->Parent->avg_tkt_ppu->Value = $this->Parent->avg_tkt_ppu->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->TotalSum_tkt_net_amount->Value = $this->Parent->TotalSum_tkt_net_amount->initialValue;
        $this->Parent->TotalSum_tkt_total_amount->Value = $this->Parent->TotalSum_tkt_total_amount->initialValue;
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
//End Report3 GroupsCollection class

class clsReportReport3 { //Report3 Class @228-8E19D20E

//Report3 Variables @228-344502FA

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
    public $Sorter_tkt_date;
    public $Sorter_tkt_time;
    public $Sorter_tkt_receipt_type;
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter_tkt_qty;
    public $Sorter_avg_tkt_ppu;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_total_amount;
//End Report3 Variables

//Class_Initialize Event @228-45A2B16F
    function clsReportReport3($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report3";
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
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport3DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
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
        $this->SorterName = CCGetParam("Report3Order", "");
        $this->SorterDirection = CCGetParam("Report3Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_date = new clsSorter($this->ComponentName, "Sorter_tkt_date", $FileName, $this);
        $this->Sorter_tkt_time = new clsSorter($this->ComponentName, "Sorter_tkt_time", $FileName, $this);
        $this->Sorter_tkt_receipt_type = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_type", $FileName, $this);
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter_tkt_qty = new clsSorter($this->ComponentName, "Sorter_tkt_qty", $FileName, $this);
        $this->Sorter_avg_tkt_ppu = new clsSorter($this->ComponentName, "Sorter_avg_tkt_ppu", $FileName, $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->tkt_date = new clsControl(ccsReportLabel, "tkt_date", "tkt_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_time = new clsControl(ccsReportLabel, "tkt_time", "tkt_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->tkt_receipt_type = new clsControl(ccsReportLabel, "tkt_receipt_type", "tkt_receipt_type", ccsText, "", "", $this);
        $this->tkt_receipt_group = new clsControl(ccsReportLabel, "tkt_receipt_group", "tkt_receipt_group", ccsText, "", "", $this);
        $this->tkt_receipt_number = new clsControl(ccsReportLabel, "tkt_receipt_number", "tkt_receipt_number", ccsText, "", "", $this);
        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsText, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", "", $this);
        $this->tkt_plu_long_desc->HTML = true;
        $this->tkt_plu_long_desc->EmptyText = "&nbsp;";
        $this->tkt_qty = new clsControl(ccsReportLabel, "tkt_qty", "tkt_qty", ccsFloat, "", "", $this);
        $this->tkt_qty->HTML = true;
        $this->tkt_qty->EmptyText = "&nbsp;";
        $this->avg_tkt_ppu = new clsControl(ccsReportLabel, "avg_tkt_ppu", "avg_tkt_ppu", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->avg_tkt_ppu->HTML = true;
        $this->avg_tkt_ppu->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_net_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_net_amount", "TotalSum_tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_net_amount->HTML = true;
        $this->TotalSum_tkt_net_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_net_amount->EmptyText = "&nbsp;";
        $this->TotalSum_tkt_total_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_total_amount", "TotalSum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_total_amount->HTML = true;
        $this->TotalSum_tkt_total_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_total_amount->EmptyText = "&nbsp;";
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

//Initialize Method @228-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @228-84B59731
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_date->Errors->Count());
        $errors = ($errors || $this->tkt_time->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_group->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_number->Errors->Count());
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->tkt_qty->Errors->Count());
        $errors = ($errors || $this->avg_tkt_ppu->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @228-FA1DA96F
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->avg_tkt_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @228-D2CFC84D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
        $this->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
        $this->DataSource->Parameters["urllstLevel3"] = CCGetFromGet("lstLevel3", NULL);
        $this->DataSource->Parameters["urls_prod_id"] = CCGetFromGet("s_prod_id", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_plu_type"] = CCGetFromGet("s_plu_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport3($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
            $this->tkt_time->SetValue($this->DataSource->tkt_time->GetValue());
            $this->tkt_receipt_type->SetValue($this->DataSource->tkt_receipt_type->GetValue());
            $this->tkt_receipt_group->SetValue($this->DataSource->tkt_receipt_group->GetValue());
            $this->tkt_receipt_number->SetValue($this->DataSource->tkt_receipt_number->GetValue());
            $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
            $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
            $this->tkt_qty->SetValue($this->DataSource->tkt_qty->GetValue());
            $this->avg_tkt_ppu->SetValue($this->DataSource->avg_tkt_ppu->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->TotalSum_tkt_net_amount->SetValue($this->DataSource->TotalSum_tkt_net_amount->GetValue());
            $this->TotalSum_tkt_total_amount->SetValue($this->DataSource->TotalSum_tkt_total_amount->GetValue());
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
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["tkt_time"] = $this->tkt_time->Visible;
            $this->ControlsVisible["tkt_receipt_type"] = $this->tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_receipt_group"] = $this->tkt_receipt_group->Visible;
            $this->ControlsVisible["tkt_receipt_number"] = $this->tkt_receipt_number->Visible;
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["tkt_qty"] = $this->tkt_qty->Visible;
            $this->ControlsVisible["avg_tkt_ppu"] = $this->avg_tkt_ppu->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_date->SetValue($items[$i]->tkt_date);
                        $this->tkt_date->Attributes->RestoreFromArray($items[$i]->_tkt_dateAttributes);
                        $this->tkt_time->SetValue($items[$i]->tkt_time);
                        $this->tkt_time->Attributes->RestoreFromArray($items[$i]->_tkt_timeAttributes);
                        $this->tkt_receipt_type->SetValue($items[$i]->tkt_receipt_type);
                        $this->tkt_receipt_type->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_typeAttributes);
                        $this->tkt_receipt_group->SetValue($items[$i]->tkt_receipt_group);
                        $this->tkt_receipt_group->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_groupAttributes);
                        $this->tkt_receipt_number->SetValue($items[$i]->tkt_receipt_number);
                        $this->tkt_receipt_number->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_numberAttributes);
                        $this->tkt_plu_id->SetValue($items[$i]->tkt_plu_id);
                        $this->tkt_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_plu_idAttributes);
                        $this->tkt_plu_long_desc->SetValue($items[$i]->tkt_plu_long_desc);
                        $this->tkt_plu_long_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_long_descAttributes);
                        $this->tkt_qty->SetValue($items[$i]->tkt_qty);
                        $this->tkt_qty->Attributes->RestoreFromArray($items[$i]->_tkt_qtyAttributes);
                        $this->avg_tkt_ppu->SetValue($items[$i]->avg_tkt_ppu);
                        $this->avg_tkt_ppu->Attributes->RestoreFromArray($items[$i]->_avg_tkt_ppuAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_date->Show();
                        $this->tkt_time->Show();
                        $this->tkt_receipt_type->Show();
                        $this->tkt_receipt_group->Show();
                        $this->tkt_receipt_number->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->tkt_qty->Show();
                        $this->avg_tkt_ppu->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_total_amount->Show();
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
                            $this->TotalSum_tkt_net_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_net_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_net_amountAttributes);
                            $this->TotalSum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_total_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_total_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_net_amount->Show();
                                $this->TotalSum_tkt_total_amount->Show();
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
                                $this->Sorter_tkt_date->Show();
                                $this->Sorter_tkt_time->Show();
                                $this->Sorter_tkt_receipt_type->Show();
                                $this->Sorter_tkt_plu_id->Show();
                                $this->Sorter_tkt_plu_long_desc->Show();
                                $this->Sorter_tkt_qty->Show();
                                $this->Sorter_avg_tkt_ppu->Show();
                                $this->Sorter_tkt_net_amount->Show();
                                $this->Sorter_tkt_total_amount->Show();
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

} //End Report3 Class @228-FCB6E20C

class clsReport3DataSource extends clsDBConnection1 {  //Report3DataSource Class @228-64A32682

//DataSource Variables @228-A9B2E8AF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_date;
    public $tkt_time;
    public $tkt_receipt_type;
    public $tkt_receipt_group;
    public $tkt_receipt_number;
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $tkt_qty;
    public $avg_tkt_ppu;
    public $tkt_net_amount;
    public $tkt_total_amount;
    public $TotalSum_tkt_net_amount;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @228-7DF156EA
    function clsReport3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report3";
        $this->Initialize();
        $this->tkt_date = new clsField("tkt_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_time = new clsField("tkt_time", ccsDate, array("hh", "nn", "ss"));
        $this->tkt_receipt_type = new clsField("tkt_receipt_type", ccsText, "");
        $this->tkt_receipt_group = new clsField("tkt_receipt_group", ccsText, "");
        $this->tkt_receipt_number = new clsField("tkt_receipt_number", ccsText, "");
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_qty = new clsField("tkt_qty", ccsFloat, "");
        $this->avg_tkt_ppu = new clsField("avg_tkt_ppu", ccsFloat, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->TotalSum_tkt_net_amount = new clsField("TotalSum_tkt_net_amount", ccsFloat, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @228-AC3E27A0
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "h.tkt_date, h.tkt_receipt_type, h.tkt_receipt_group, h.tkt_receipt_number ";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_date" => array("tkt_date", ""), 
            "Sorter_tkt_time" => array("tkt_time", ""), 
            "Sorter_tkt_receipt_type" => array("tkt_receipt_type", ""), 
            "Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_qty" => array("tkt_qty", ""), 
            "Sorter_avg_tkt_ppu" => array("avg_tkt_ppu", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", "")));
    }
//End SetOrder Method

//Prepare Method @228-B4D96E64
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urllstLevel1", ccsText, "", "", $this->Parameters["urllstLevel1"], "", false);
        $this->wp->AddParameter("4", "urllstLevel2", ccsText, "", "", $this->Parameters["urllstLevel2"], "", false);
        $this->wp->AddParameter("5", "urllstLevel3", ccsText, "", "", $this->Parameters["urllstLevel3"], "", false);
        $this->wp->AddParameter("6", "urls_prod_id", ccsText, "", "", $this->Parameters["urls_prod_id"], "", false);
        $this->wp->AddParameter("7", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("8", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
        $this->wp->AddParameter("9", "urls_plu_type", ccsText, "", "", $this->Parameters["urls_plu_type"], "", false);
    }
//End Prepare Method

//Open Method @228-89D8FA85
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT p.tkt_plu_id, p.tkt_plu_long_desc, (d.tkt_qty * ReplacetoNumberCatalog) as tkt_qty, (d.tkt_net_amount * ReplacetoNumberCatalog) as tkt_net_amount,\n" .
        "(d.tkt_total_amount * ReplacetoNumberCatalog) as tkt_total_amount, (d.tkt_ppu) as avg_tkt_ppu,\n" .
        "h.tkt_date, h.tkt_time, h.tkt_receipt_type, h.tkt_receipt_group, h.tkt_receipt_number \n" .
        "FROM (ssf_tkt_trx_header h INNER JOIN (ssf_tkt_trx_detail d INNER JOIN ssf_tkt_plu p ON\n" .
        "d.tkt_plu_id = p.tkt_plu_id) ON h.tkt_trans_id = d.tkt_trans_id ) LEFT JOIN ssf_tkt_catalog ON\n" .
        "h.tkt_type = ssf_tkt_catalog.tkt_catalog_code  and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "where ( h.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = '' )\n" .
        "and ( h.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = ''  )\n" .
        "AND ( ( h.tkt_date SQLConcat h.tkt_time <= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = ''  )\n" .
        "and (p.tkt_plu_cat1 = '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat2 = '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_cat3 = '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_id = '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or  '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' )\n" .
        "and (p.tkt_plu_type = '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("9"), ccsText) . "' = '' ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @228-09D81839
    function SetValues()
    {
        $this->tkt_date->SetDBValue(trim($this->f("tkt_date")));
        $this->tkt_time->SetDBValue(trim($this->f("tkt_time")));
        $this->tkt_receipt_type->SetDBValue($this->f("tkt_receipt_type"));
        $this->tkt_receipt_group->SetDBValue($this->f("tkt_receipt_group"));
        $this->tkt_receipt_number->SetDBValue($this->f("tkt_receipt_number"));
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_qty->SetDBValue(trim($this->f("tkt_qty")));
        $this->avg_tkt_ppu->SetDBValue(trim($this->f("avg_tkt_ppu")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->TotalSum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End Report3DataSource Class @228-FCB6E20C



//Initialize Page @1-8D4D501A
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
$TemplateFileName = "SSFTicketSalesbyProd.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-1501B4C0
include("./SSFTicketSalesbyProd_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C43776BA
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
$lnkExcel = new clsControl(ccsImageLink, "lnkExcel", "lnkExcel", ccsText, "", CCGetRequestParam("lnkExcel", ccsGet, NULL), $MainPage);
$lnkExcel->Page = "SSFTicketSalesbyProd.php";
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$Report2 = new clsReportReport2("", $MainPage);
$Report3 = new clsReportReport3("", $MainPage);
$MainPage->ssf_tkt_categories = & $ssf_tkt_categories;
$MainPage->ssf_tkt_categories1 = & $ssf_tkt_categories1;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->prod_search = & $prod_search;
$MainPage->lnkExcel = & $lnkExcel;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$MainPage->Report2 = & $Report2;
$MainPage->Report3 = & $Report3;
$lnkExcel->Parameters = CCGetQueryString("All", array("ccsForm"));
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "ViewMode", "Print");
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "export", "1");
$ssf_tkt_categories->Initialize();
$ssf_tkt_categories1->Initialize();
$Report1->Initialize();
$Report2->Initialize();
$Report3->Initialize();

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

//Go to destination page @1-CAF6DFB2
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
    unset($Report2);
    unset($Report3);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C8778CB1
$ssf_tkt_categories->Show();
$ssf_tkt_categories1->Show();
$SSFSpiritHeader->Show();
$prod_search->Show();
$Button1->Show();
$Report1->Show();
$Report2->Show();
$Report3->Show();
$lnkExcel->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-B51E84FB
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_categories);
unset($ssf_tkt_categories1);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($prod_search);
unset($Report1);
unset($Report2);
unset($Report3);
unset($Tpl);
//End Unload Page


?>
