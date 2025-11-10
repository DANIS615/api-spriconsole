<?php
//Include Common Files @1-8D5FB8F9
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Products/");
define("FileName", "SSFTicketProducts.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridssf_tkt_categories { //ssf_tkt_categories class @80-88E9A4FD

//Variables @80-6E51DF5A

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

//Class_Initialize Event @80-4C64123F
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

//Initialize Method @80-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @80-7DF13617
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

//GetErrors Method @80-C90945D1
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

} //End ssf_tkt_categories Class @80-FCB6E20C

class clsssf_tkt_categoriesDataSource extends clsDBConnection1 {  //ssf_tkt_categoriesDataSource Class @80-ABDA9E2F

//DataSource Variables @80-354F239F
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

//DataSourceClass_Initialize Event @80-A3BFC4C3
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

//SetOrder Method @80-6D09A468
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_category_desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @80-8AAD4392
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

//Open Method @80-7B10CDE2
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

//SetValues Method @80-34608B33
    function SetValues()
    {
        $this->tkt_category_id->SetDBValue($this->f("tkt_category_id"));
        $this->tkt_category_desc->SetDBValue($this->f("tkt_category_desc"));
        $this->tkt_category_parent->SetDBValue($this->f("tkt_category_parent"));
    }
//End SetValues Method

} //End ssf_tkt_categoriesDataSource Class @80-FCB6E20C

class clsGridssf_tkt_categories1 { //ssf_tkt_categories1 class @89-DCC787B3

//Variables @89-6E51DF5A

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

//Class_Initialize Event @89-C8885CD4
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

//Initialize Method @89-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @89-7DF13617
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

//GetErrors Method @89-C90945D1
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

} //End ssf_tkt_categories1 Class @89-FCB6E20C

class clsssf_tkt_categories1DataSource extends clsDBConnection1 {  //ssf_tkt_categories1DataSource Class @89-56389E10

//DataSource Variables @89-354F239F
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

//DataSourceClass_Initialize Event @89-85A6C3AC
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

//SetOrder Method @89-6D09A468
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_category_desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @89-62BAD333
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

//Open Method @89-7B10CDE2
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

//SetValues Method @89-34608B33
    function SetValues()
    {
        $this->tkt_category_id->SetDBValue($this->f("tkt_category_id"));
        $this->tkt_category_desc->SetDBValue($this->f("tkt_category_desc"));
        $this->tkt_category_parent->SetDBValue($this->f("tkt_category_parent"));
    }
//End SetValues Method

} //End ssf_tkt_categories1DataSource Class @89-FCB6E20C

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_pluSearch { //ssf_tkt_pluSearch Class @5-3A651535

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

//Class_Initialize Event @5-1596E1DE
    function clsRecordssf_tkt_pluSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_pluSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_pluSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_plu_id = new clsControl(ccsTextBox, "s_tkt_plu_id", "s_tkt_plu_id", ccsText, "", CCGetRequestParam("s_tkt_plu_id", $Method, NULL), $this);
            $this->s_tkt_plu_long_desc = new clsControl(ccsTextBox, "s_tkt_plu_long_desc", "s_tkt_plu_long_desc", ccsText, "", CCGetRequestParam("s_tkt_plu_long_desc", $Method, NULL), $this);
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_tkt_plu_id", "s_tkt_plu_long_desc", "ccsForm"));
            $this->ClearParameters->Page = "SSFTicketProducts.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-BBDB234D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_plu_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_plu_long_desc->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_plu_long_desc->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-F36C26C6
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-BC608155
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
        $Redirect = "SSFTicketProducts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketProducts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-27838714
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
            $Error = ComposeStrings($Error, $this->s_tkt_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_plu_long_desc->Errors->ToString());
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

        $this->s_tkt_plu_id->Show();
        $this->s_tkt_plu_long_desc->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_pluSearch Class @5-FCB6E20C

class clsGridssf_tkt_plu { //ssf_tkt_plu class @3-A6348CE0

//Variables @3-6AD11317

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
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter_tkt_plu_type;
    public $Sorter_tkt_plu_unit;
//End Variables

//Class_Initialize Event @3-722D86A6
    function clsGridssf_tkt_plu($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_plu";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_plu";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_pluDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_pluOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_pluDir", "");

        $this->tkt_plu_id = new clsControl(ccsLink, "tkt_plu_id", "tkt_plu_id", ccsText, "", CCGetRequestParam("tkt_plu_id", ccsGet, NULL), $this);
        $this->tkt_plu_id->Page = "SSFTicketProducts.php";
        $this->ImageLink1 = new clsControl(ccsImageLink, "ImageLink1", "ImageLink1", ccsText, "", CCGetRequestParam("ImageLink1", ccsGet, NULL), $this);
        $this->ImageLink1->Page = "SSFTicketProductPrices.php";
        $this->tkt_plu_long_desc = new clsControl(ccsLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", CCGetRequestParam("tkt_plu_long_desc", ccsGet, NULL), $this);
        $this->h_tkt_plu_type = new clsControl(ccsHidden, "h_tkt_plu_type", "h_tkt_plu_type", ccsText, "", CCGetRequestParam("h_tkt_plu_type", ccsGet, NULL), $this);
        $this->tkt_plu_type = new clsControl(ccsLabel, "tkt_plu_type", "tkt_plu_type", ccsText, "", CCGetRequestParam("tkt_plu_type", ccsGet, NULL), $this);
        $this->tkt_plu_unit = new clsControl(ccsLink, "tkt_plu_unit", "tkt_plu_unit", ccsText, "", CCGetRequestParam("tkt_plu_unit", ccsGet, NULL), $this);
        $this->tkt_plu_unit->Page = "../SSFTicketUOM.php";
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter_tkt_plu_type = new clsSorter($this->ComponentName, "Sorter_tkt_plu_type", $FileName, $this);
        $this->Sorter_tkt_plu_unit = new clsSorter($this->ComponentName, "Sorter_tkt_plu_unit", $FileName, $this);
        $this->ssf_tkt_plu_Insert = new clsControl(ccsLink, "ssf_tkt_plu_Insert", "ssf_tkt_plu_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_plu_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_plu_Insert->Page = "SSFTicketProducts.php";
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

//Show Method @3-EC25B63A
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tkt_plu_id"] = CCGetFromGet("s_tkt_plu_id", NULL);
        $this->DataSource->Parameters["urls_tkt_plu_long_desc"] = CCGetFromGet("s_tkt_plu_long_desc", NULL);

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
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["ImageLink1"] = $this->ImageLink1->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["h_tkt_plu_type"] = $this->h_tkt_plu_type->Visible;
            $this->ControlsVisible["tkt_plu_type"] = $this->tkt_plu_type->Visible;
            $this->ControlsVisible["tkt_plu_unit"] = $this->tkt_plu_unit->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                $this->tkt_plu_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_plu_id->Parameters = CCAddParam($this->tkt_plu_id->Parameters, "tkt_plu_id", $this->DataSource->f("tkt_plu_id"));
                $this->ImageLink1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ImageLink1->Parameters = CCAddParam($this->ImageLink1->Parameters, "s_tkt_price_plu_id", $this->DataSource->f("tkt_plu_id"));
                $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                $this->h_tkt_plu_type->SetValue($this->DataSource->h_tkt_plu_type->GetValue());
                $this->tkt_plu_type->SetValue($this->DataSource->tkt_plu_type->GetValue());
                $this->tkt_plu_unit->SetValue($this->DataSource->tkt_plu_unit->GetValue());
                $this->tkt_plu_unit->Parameters = "";
                $this->tkt_plu_unit->Parameters = CCAddParam($this->tkt_plu_unit->Parameters, "tkt_unit_id", $this->DataSource->f("tkt_plu_unit"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_plu_id->Show();
                $this->ImageLink1->Show();
                $this->tkt_plu_long_desc->Show();
                $this->h_tkt_plu_type->Show();
                $this->tkt_plu_type->Show();
                $this->tkt_plu_unit->Show();
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
        $this->ssf_tkt_plu_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_plu_id", "ccsForm"));
        $this->ssf_tkt_plu_Insert->Parameters = CCAddParam($this->ssf_tkt_plu_Insert->Parameters, "ssf_tkt_plu_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_plu_id->Show();
        $this->Sorter_tkt_plu_long_desc->Show();
        $this->Sorter_tkt_plu_type->Show();
        $this->Sorter_tkt_plu_unit->Show();
        $this->ssf_tkt_plu_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-86DB69DB
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ImageLink1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->h_tkt_plu_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_unit->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_plu Class @3-FCB6E20C

class clsssf_tkt_pluDataSource extends clsDBConnection1 {  //ssf_tkt_pluDataSource Class @3-6F67E6FF

//DataSource Variables @3-7E0D24CD
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $h_tkt_plu_type;
    public $tkt_plu_type;
    public $tkt_plu_unit;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-92C80F57
    function clsssf_tkt_pluDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_plu";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->h_tkt_plu_type = new clsField("h_tkt_plu_type", ccsText, "");
        $this->tkt_plu_type = new clsField("tkt_plu_type", ccsText, "");
        $this->tkt_plu_unit = new clsField("tkt_plu_unit", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-05912369
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_plu.tkt_plu_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_plu_type" => array("tkt_plu_type", ""), 
            "Sorter_tkt_plu_unit" => array("tkt_plu_unit", "")));
    }
//End SetOrder Method

//Prepare Method @3-67127875
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_plu_id", ccsText, "", "", $this->Parameters["urls_tkt_plu_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_plu_long_desc", ccsText, "", "", $this->Parameters["urls_tkt_plu_long_desc"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "ssf_tkt_plu.tkt_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "ssf_tkt_plu.tkt_plu_long_desc", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = "ssf_tkt_catalog.tkt_catalog_id = 'product_type'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-B2CFDEEC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (ssf_tkt_plu INNER JOIN ssf_tkt_measure_units ON\n\n" .
        "ssf_tkt_plu.tkt_plu_unit = ssf_tkt_measure_units.tkt_unit_id) INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_plu.tkt_plu_type = ssf_tkt_catalog.tkt_catalog_code";
        $this->SQL = "SELECT tkt_plu_id, tkt_plu_long_desc, tkt_plu_type, tkt_plu_unit, tkt_unit_desc, tkt_catalog_value AS type_desc \n\n" .
        "FROM (ssf_tkt_plu INNER JOIN ssf_tkt_measure_units ON\n\n" .
        "ssf_tkt_plu.tkt_plu_unit = ssf_tkt_measure_units.tkt_unit_id) INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_plu.tkt_plu_type = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-A4733FDB
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->h_tkt_plu_type->SetDBValue($this->f("tkt_plu_type"));
        $this->tkt_plu_type->SetDBValue($this->f("type_desc"));
        $this->tkt_plu_unit->SetDBValue($this->f("tkt_unit_desc"));
    }
//End SetValues Method

} //End ssf_tkt_pluDataSource Class @3-FCB6E20C

class clsRecordproduct_record { //product_record Class @27-4195E2F9

//Variables @27-9E315808

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

//Class_Initialize Event @27-28680347
    function clsRecordproduct_record($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record product_record/Error";
        $this->DataSource = new clsproduct_recordDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "product_record";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_plu_type = new clsControl(ccsListBox, "tkt_plu_type", $CCSLocales->GetText("tkt_plu_type"), ccsText, "", CCGetRequestParam("tkt_plu_type", $Method, NULL), $this);
            $this->tkt_plu_type->DSType = dsTable;
            list($this->tkt_plu_type->BoundColumn, $this->tkt_plu_type->TextColumn, $this->tkt_plu_type->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->tkt_plu_type->DataSource = new clsDBConnection1();
            $this->tkt_plu_type->ds = & $this->tkt_plu_type->DataSource;
            $this->tkt_plu_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_plu_type->DataSource->Order = "tkt_catalog_value";
            $this->tkt_plu_type->DataSource->wp = new clsSQLParameters();
            $this->tkt_plu_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'product_type'";
            $this->tkt_plu_type->DataSource->Where = 
                 $this->tkt_plu_type->DataSource->wp->Criterion[1];
            $this->tkt_plu_type->DataSource->Order = "tkt_catalog_value";
            $this->h_tkt_plu_type = new clsControl(ccsHidden, "h_tkt_plu_type", "h_tkt_plu_type", ccsText, "", CCGetRequestParam("h_tkt_plu_type", $Method, NULL), $this);
            $this->tkt_plu_id = new clsControl(ccsTextBox, "tkt_plu_id", $CCSLocales->GetText("tkt_plu_id"), ccsText, "", CCGetRequestParam("tkt_plu_id", $Method, NULL), $this);
            $this->tkt_plu_id->Required = true;
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->lstLevel1 = new clsControl(ccsListBox, "lstLevel1", $CCSLocales->GetText("tkt_plu_cat1"), ccsText, "", CCGetRequestParam("lstLevel1", $Method, NULL), $this);
            $this->lstLevel1->DSType = dsTable;
            list($this->lstLevel1->BoundColumn, $this->lstLevel1->TextColumn, $this->lstLevel1->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel1->DataSource = new clsDBConnection1();
            $this->lstLevel1->ds = & $this->lstLevel1->DataSource;
            $this->lstLevel1->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel1->DataSource->Order = "tkt_category_id";
            $this->lstLevel1->DataSource->wp = new clsSQLParameters();
            $this->lstLevel1->DataSource->wp->Criterion[1] = "tkt_category_level = 1";
            $this->lstLevel1->DataSource->Where = 
                 $this->lstLevel1->DataSource->wp->Criterion[1];
            $this->lstLevel1->DataSource->Order = "tkt_category_id";
            $this->Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", $Method, NULL), $this);
            $this->lstLevel2 = new clsControl(ccsListBox, "lstLevel2", $CCSLocales->GetText("tkt_plu_cat2"), ccsText, "", CCGetRequestParam("lstLevel2", $Method, NULL), $this);
            $this->lstLevel2->DSType = dsTable;
            list($this->lstLevel2->BoundColumn, $this->lstLevel2->TextColumn, $this->lstLevel2->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel2->DataSource = new clsDBConnection1();
            $this->lstLevel2->ds = & $this->lstLevel2->DataSource;
            $this->lstLevel2->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel2->DataSource->Order = "tkt_category_id";
            $this->lstLevel2->DataSource->Parameters["urllstLevel1"] = CCGetFromGet("lstLevel1", NULL);
            $this->lstLevel2->DataSource->wp = new clsSQLParameters();
            $this->lstLevel2->DataSource->wp->AddParameter("2", "urllstLevel1", ccsText, "", "", $this->lstLevel2->DataSource->Parameters["urllstLevel1"], "", false);
            $this->lstLevel2->DataSource->wp->Criterion[1] = "tkt_category_level = 2";
            $this->lstLevel2->DataSource->wp->Criterion[2] = $this->lstLevel2->DataSource->wp->Operation(opEqual, "tkt_category_parent", $this->lstLevel2->DataSource->wp->GetDBValue("2"), $this->lstLevel2->DataSource->ToSQL($this->lstLevel2->DataSource->wp->GetDBValue("2"), ccsText),false);
            $this->lstLevel2->DataSource->Where = $this->lstLevel2->DataSource->wp->opAND(
                 false, 
                 $this->lstLevel2->DataSource->wp->Criterion[1], 
                 $this->lstLevel2->DataSource->wp->Criterion[2]);
            $this->lstLevel2->DataSource->Order = "tkt_category_id";
            $this->Label3 = new clsControl(ccsLabel, "Label3", "Label3", ccsText, "", CCGetRequestParam("Label3", $Method, NULL), $this);
            $this->lstLevel3 = new clsControl(ccsListBox, "lstLevel3", $CCSLocales->GetText("tkt_plu_cat3"), ccsText, "", CCGetRequestParam("lstLevel3", $Method, NULL), $this);
            $this->lstLevel3->DSType = dsTable;
            list($this->lstLevel3->BoundColumn, $this->lstLevel3->TextColumn, $this->lstLevel3->DBFormat) = array("tkt_category_id", "tkt_category_desc", "");
            $this->lstLevel3->DataSource = new clsDBConnection1();
            $this->lstLevel3->ds = & $this->lstLevel3->DataSource;
            $this->lstLevel3->DataSource->SQL = "SELECT tkt_category_id, tkt_category_desc \n" .
"FROM ssf_tkt_categories {SQL_Where} {SQL_OrderBy}";
            $this->lstLevel3->DataSource->Order = "tkt_category_id";
            $this->lstLevel3->DataSource->Parameters["urllstLevel2"] = CCGetFromGet("lstLevel2", NULL);
            $this->lstLevel3->DataSource->wp = new clsSQLParameters();
            $this->lstLevel3->DataSource->wp->AddParameter("2", "urllstLevel2", ccsText, "", "", $this->lstLevel3->DataSource->Parameters["urllstLevel2"], "", false);
            $this->lstLevel3->DataSource->wp->Criterion[1] = "tkt_category_level = 3";
            $this->lstLevel3->DataSource->wp->Criterion[2] = $this->lstLevel3->DataSource->wp->Operation(opEqual, "tkt_category_parent", $this->lstLevel3->DataSource->wp->GetDBValue("2"), $this->lstLevel3->DataSource->ToSQL($this->lstLevel3->DataSource->wp->GetDBValue("2"), ccsText),false);
            $this->lstLevel3->DataSource->Where = $this->lstLevel3->DataSource->wp->opAND(
                 false, 
                 $this->lstLevel3->DataSource->wp->Criterion[1], 
                 $this->lstLevel3->DataSource->wp->Criterion[2]);
            $this->lstLevel3->DataSource->Order = "tkt_category_id";
            $this->tkt_plu_long_desc = new clsControl(ccsTextBox, "tkt_plu_long_desc", $CCSLocales->GetText("tkt_plu_long_desc"), ccsText, "", CCGetRequestParam("tkt_plu_long_desc", $Method, NULL), $this);
            $this->tkt_plu_short_desc = new clsControl(ccsTextBox, "tkt_plu_short_desc", $CCSLocales->GetText("tkt_plu_short_desc"), ccsText, "", CCGetRequestParam("tkt_plu_short_desc", $Method, NULL), $this);
            $this->tkt_plu_unit = new clsControl(ccsListBox, "tkt_plu_unit", $CCSLocales->GetText("tkt_plu_unit"), ccsText, "", CCGetRequestParam("tkt_plu_unit", $Method, NULL), $this);
            $this->tkt_plu_unit->DSType = dsTable;
            list($this->tkt_plu_unit->BoundColumn, $this->tkt_plu_unit->TextColumn, $this->tkt_plu_unit->DBFormat) = array("tkt_unit_id", "tkt_unit_desc", "");
            $this->tkt_plu_unit->DataSource = new clsDBConnection1();
            $this->tkt_plu_unit->ds = & $this->tkt_plu_unit->DataSource;
            $this->tkt_plu_unit->DataSource->SQL = "SELECT tkt_unit_id, tkt_unit_desc \n" .
"FROM ssf_tkt_measure_units {SQL_Where} {SQL_OrderBy}";
            $this->tkt_plu_unit->DataSource->Order = "tkt_unit_desc";
            $this->tkt_plu_unit->DataSource->Order = "tkt_unit_desc";
            $this->tkt_plu_unit->Required = true;
            $this->tkt_plu_tax = new clsControl(ccsListBox, "tkt_plu_tax", $CCSLocales->GetText("tkt_plu_tax"), ccsText, "", CCGetRequestParam("tkt_plu_tax", $Method, NULL), $this);
            $this->tkt_plu_tax->DSType = dsTable;
            list($this->tkt_plu_tax->BoundColumn, $this->tkt_plu_tax->TextColumn, $this->tkt_plu_tax->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->tkt_plu_tax->DataSource = new clsDBConnection1();
            $this->tkt_plu_tax->ds = & $this->tkt_plu_tax->DataSource;
            $this->tkt_plu_tax->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_plu_tax->DataSource->Order = "tkt_catalog_code";
            $this->tkt_plu_tax->DataSource->wp = new clsSQLParameters();
            $this->tkt_plu_tax->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'tax_group_id'";
            $this->tkt_plu_tax->DataSource->Where = 
                 $this->tkt_plu_tax->DataSource->wp->Criterion[1];
            $this->tkt_plu_tax->DataSource->Order = "tkt_catalog_code";
            $this->tkt_plu_enabled = new clsControl(ccsListBox, "tkt_plu_enabled", $CCSLocales->GetText("tkt_plu_enabled"), ccsText, "", CCGetRequestParam("tkt_plu_enabled", $Method, NULL), $this);
            $this->tkt_plu_enabled->DSType = dsListOfValues;
            $this->tkt_plu_enabled->Values = array(array("Y", $CCSLocales->GetText("Habilitado")), array("N", $CCSLocales->GetText("Inhabilitado")));
            $this->tkt_plu_enabled->Required = true;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @27-8F2D345E
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_plu_id"] = CCGetFromGet("tkt_plu_id", NULL);
    }
//End Initialize Method

//Validate Method @27-862012FF
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_plu_type->Validate() && $Validation);
        $Validation = ($this->h_tkt_plu_type->Validate() && $Validation);
        $Validation = ($this->tkt_plu_id->Validate() && $Validation);
        $Validation = ($this->lstLevel1->Validate() && $Validation);
        $Validation = ($this->lstLevel2->Validate() && $Validation);
        $Validation = ($this->lstLevel3->Validate() && $Validation);
        $Validation = ($this->tkt_plu_long_desc->Validate() && $Validation);
        $Validation = ($this->tkt_plu_short_desc->Validate() && $Validation);
        $Validation = ($this->tkt_plu_unit->Validate() && $Validation);
        $Validation = ($this->tkt_plu_tax->Validate() && $Validation);
        $Validation = ($this->tkt_plu_enabled->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_plu_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_plu_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel2->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstLevel3->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_long_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_short_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_unit->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_tax->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_plu_enabled->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @27-C7D8FCC1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_plu_type->Errors->Count());
        $errors = ($errors || $this->h_tkt_plu_type->Errors->Count());
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->lstLevel1->Errors->Count());
        $errors = ($errors || $this->Label2->Errors->Count());
        $errors = ($errors || $this->lstLevel2->Errors->Count());
        $errors = ($errors || $this->Label3->Errors->Count());
        $errors = ($errors || $this->lstLevel3->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->tkt_plu_short_desc->Errors->Count());
        $errors = ($errors || $this->tkt_plu_unit->Errors->Count());
        $errors = ($errors || $this->tkt_plu_tax->Errors->Count());
        $errors = ($errors || $this->tkt_plu_enabled->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @27-07EC60BE
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
        $Redirect = "SSFTicketProducts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketProducts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_plu_Insert", "tkt_plu_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketProducts.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_plu_Insert", "tkt_plu_id"));
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

//InsertRow Method @27-7A1BA969
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_plu_type->SetValue($this->tkt_plu_type->GetValue(true));
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->lstLevel1->SetValue($this->lstLevel1->GetValue(true));
        $this->DataSource->lstLevel2->SetValue($this->lstLevel2->GetValue(true));
        $this->DataSource->lstLevel3->SetValue($this->lstLevel3->GetValue(true));
        $this->DataSource->tkt_plu_long_desc->SetValue($this->tkt_plu_long_desc->GetValue(true));
        $this->DataSource->tkt_plu_short_desc->SetValue($this->tkt_plu_short_desc->GetValue(true));
        $this->DataSource->tkt_plu_unit->SetValue($this->tkt_plu_unit->GetValue(true));
        $this->DataSource->tkt_plu_tax->SetValue($this->tkt_plu_tax->GetValue(true));
        $this->DataSource->tkt_plu_enabled->SetValue($this->tkt_plu_enabled->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @27-D3DEE606
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_plu_type->SetValue($this->h_tkt_plu_type->GetValue(true));
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->lstLevel1->SetValue($this->lstLevel1->GetValue(true));
        $this->DataSource->lstLevel2->SetValue($this->lstLevel2->GetValue(true));
        $this->DataSource->lstLevel3->SetValue($this->lstLevel3->GetValue(true));
        $this->DataSource->tkt_plu_long_desc->SetValue($this->tkt_plu_long_desc->GetValue(true));
        $this->DataSource->tkt_plu_short_desc->SetValue($this->tkt_plu_short_desc->GetValue(true));
        $this->DataSource->tkt_plu_unit->SetValue($this->tkt_plu_unit->GetValue(true));
        $this->DataSource->tkt_plu_tax->SetValue($this->tkt_plu_tax->GetValue(true));
        $this->DataSource->tkt_plu_enabled->SetValue($this->tkt_plu_enabled->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @27-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @27-6F62AB08
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_plu_type->Prepare();
        $this->lstLevel1->Prepare();
        $this->lstLevel2->Prepare();
        $this->lstLevel3->Prepare();
        $this->tkt_plu_unit->Prepare();
        $this->tkt_plu_tax->Prepare();
        $this->tkt_plu_enabled->Prepare();

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
                    $this->tkt_plu_type->SetValue($this->DataSource->tkt_plu_type->GetValue());
                    $this->h_tkt_plu_type->SetValue($this->DataSource->h_tkt_plu_type->GetValue());
                    $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                    $this->lstLevel1->SetValue($this->DataSource->lstLevel1->GetValue());
                    $this->lstLevel2->SetValue($this->DataSource->lstLevel2->GetValue());
                    $this->lstLevel3->SetValue($this->DataSource->lstLevel3->GetValue());
                    $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                    $this->tkt_plu_short_desc->SetValue($this->DataSource->tkt_plu_short_desc->GetValue());
                    $this->tkt_plu_unit->SetValue($this->DataSource->tkt_plu_unit->GetValue());
                    $this->tkt_plu_tax->SetValue($this->DataSource->tkt_plu_tax->GetValue());
                    $this->tkt_plu_enabled->SetValue($this->DataSource->tkt_plu_enabled->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_plu_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_plu_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstLevel3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_long_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_short_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_unit->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_tax->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_plu_enabled->Errors->ToString());
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

        $this->tkt_plu_type->Show();
        $this->h_tkt_plu_type->Show();
        $this->tkt_plu_id->Show();
        $this->Label1->Show();
        $this->lstLevel1->Show();
        $this->Label2->Show();
        $this->lstLevel2->Show();
        $this->Label3->Show();
        $this->lstLevel3->Show();
        $this->tkt_plu_long_desc->Show();
        $this->tkt_plu_short_desc->Show();
        $this->tkt_plu_unit->Show();
        $this->tkt_plu_tax->Show();
        $this->tkt_plu_enabled->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End product_record Class @27-FCB6E20C

class clsproduct_recordDataSource extends clsDBConnection1 {  //product_recordDataSource Class @27-77232A61

//DataSource Variables @27-1E444DE1
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
    public $tkt_plu_type;
    public $h_tkt_plu_type;
    public $tkt_plu_id;
    public $Label1;
    public $lstLevel1;
    public $Label2;
    public $lstLevel2;
    public $Label3;
    public $lstLevel3;
    public $tkt_plu_long_desc;
    public $tkt_plu_short_desc;
    public $tkt_plu_unit;
    public $tkt_plu_tax;
    public $tkt_plu_enabled;
//End DataSource Variables

//DataSourceClass_Initialize Event @27-8F9358EB
    function clsproduct_recordDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record product_record/Error";
        $this->Initialize();
        $this->tkt_plu_type = new clsField("tkt_plu_type", ccsText, "");
        $this->h_tkt_plu_type = new clsField("h_tkt_plu_type", ccsText, "");
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->lstLevel1 = new clsField("lstLevel1", ccsText, "");
        $this->Label2 = new clsField("Label2", ccsText, "");
        $this->lstLevel2 = new clsField("lstLevel2", ccsText, "");
        $this->Label3 = new clsField("Label3", ccsText, "");
        $this->lstLevel3 = new clsField("lstLevel3", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_plu_short_desc = new clsField("tkt_plu_short_desc", ccsText, "");
        $this->tkt_plu_unit = new clsField("tkt_plu_unit", ccsText, "");
        $this->tkt_plu_tax = new clsField("tkt_plu_tax", ccsText, "");
        $this->tkt_plu_enabled = new clsField("tkt_plu_enabled", ccsText, "");

        $this->InsertFields["tkt_plu_type"] = array("Name" => "tkt_plu_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_cat1"] = array("Name" => "tkt_plu_cat1", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_cat2"] = array("Name" => "tkt_plu_cat2", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_cat3"] = array("Name" => "tkt_plu_cat3", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_long_desc"] = array("Name" => "tkt_plu_long_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_short_desc"] = array("Name" => "tkt_plu_short_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_unit"] = array("Name" => "tkt_plu_unit", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_tax"] = array("Name" => "tkt_plu_tax", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_enabled"] = array("Name" => "tkt_plu_enabled", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_type"] = array("Name" => "tkt_plu_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_cat1"] = array("Name" => "tkt_plu_cat1", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_cat2"] = array("Name" => "tkt_plu_cat2", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_cat3"] = array("Name" => "tkt_plu_cat3", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_long_desc"] = array("Name" => "tkt_plu_long_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_short_desc"] = array("Name" => "tkt_plu_short_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_unit"] = array("Name" => "tkt_plu_unit", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_tax"] = array("Name" => "tkt_plu_tax", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_enabled"] = array("Name" => "tkt_plu_enabled", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @27-A0E9AE44
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_plu_id", ccsText, "", "", $this->Parameters["urltkt_plu_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @27-60A134A2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_plu {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @27-B4A1D2BB
    function SetValues()
    {
        $this->tkt_plu_type->SetDBValue($this->f("tkt_plu_type"));
        $this->h_tkt_plu_type->SetDBValue($this->f("tkt_plu_type"));
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->lstLevel1->SetDBValue($this->f("tkt_plu_cat1"));
        $this->lstLevel2->SetDBValue($this->f("tkt_plu_cat2"));
        $this->lstLevel3->SetDBValue($this->f("tkt_plu_cat3"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_plu_short_desc->SetDBValue($this->f("tkt_plu_short_desc"));
        $this->tkt_plu_unit->SetDBValue($this->f("tkt_plu_unit"));
        $this->tkt_plu_tax->SetDBValue($this->f("tkt_plu_tax"));
        $this->tkt_plu_enabled->SetDBValue($this->f("tkt_plu_enabled"));
    }
//End SetValues Method

//Insert Method @27-E689259B
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_plu_type"] = new clsSQLParameter("ctrltkt_plu_type", ccsText, "", "", $this->tkt_plu_type->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_id"] = new clsSQLParameter("ctrltkt_plu_id", ccsText, "", "", $this->tkt_plu_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat1"] = new clsSQLParameter("ctrllstLevel1", ccsText, "", "", $this->lstLevel1->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat2"] = new clsSQLParameter("ctrllstLevel2", ccsText, "", "", $this->lstLevel2->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat3"] = new clsSQLParameter("ctrllstLevel3", ccsText, "", "", $this->lstLevel3->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_long_desc"] = new clsSQLParameter("ctrltkt_plu_long_desc", ccsText, "", "", $this->tkt_plu_long_desc->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_short_desc"] = new clsSQLParameter("ctrltkt_plu_short_desc", ccsText, "", "", $this->tkt_plu_short_desc->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_unit"] = new clsSQLParameter("ctrltkt_plu_unit", ccsText, "", "", $this->tkt_plu_unit->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_tax"] = new clsSQLParameter("ctrltkt_plu_tax", ccsText, "", "", $this->tkt_plu_tax->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_enabled"] = new clsSQLParameter("ctrltkt_plu_enabled", ccsText, "", "", $this->tkt_plu_enabled->GetValue(true), Y, false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_plu_type"]->GetValue()) and !strlen($this->cp["tkt_plu_type"]->GetText()) and !is_bool($this->cp["tkt_plu_type"]->GetValue())) 
            $this->cp["tkt_plu_type"]->SetValue($this->tkt_plu_type->GetValue(true));
        if (!is_null($this->cp["tkt_plu_id"]->GetValue()) and !strlen($this->cp["tkt_plu_id"]->GetText()) and !is_bool($this->cp["tkt_plu_id"]->GetValue())) 
            $this->cp["tkt_plu_id"]->SetValue($this->tkt_plu_id->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat1"]->GetValue()) and !strlen($this->cp["tkt_plu_cat1"]->GetText()) and !is_bool($this->cp["tkt_plu_cat1"]->GetValue())) 
            $this->cp["tkt_plu_cat1"]->SetValue($this->lstLevel1->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat2"]->GetValue()) and !strlen($this->cp["tkt_plu_cat2"]->GetText()) and !is_bool($this->cp["tkt_plu_cat2"]->GetValue())) 
            $this->cp["tkt_plu_cat2"]->SetValue($this->lstLevel2->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat3"]->GetValue()) and !strlen($this->cp["tkt_plu_cat3"]->GetText()) and !is_bool($this->cp["tkt_plu_cat3"]->GetValue())) 
            $this->cp["tkt_plu_cat3"]->SetValue($this->lstLevel3->GetValue(true));
        if (!is_null($this->cp["tkt_plu_long_desc"]->GetValue()) and !strlen($this->cp["tkt_plu_long_desc"]->GetText()) and !is_bool($this->cp["tkt_plu_long_desc"]->GetValue())) 
            $this->cp["tkt_plu_long_desc"]->SetValue($this->tkt_plu_long_desc->GetValue(true));
        if (!is_null($this->cp["tkt_plu_short_desc"]->GetValue()) and !strlen($this->cp["tkt_plu_short_desc"]->GetText()) and !is_bool($this->cp["tkt_plu_short_desc"]->GetValue())) 
            $this->cp["tkt_plu_short_desc"]->SetValue($this->tkt_plu_short_desc->GetValue(true));
        if (!is_null($this->cp["tkt_plu_unit"]->GetValue()) and !strlen($this->cp["tkt_plu_unit"]->GetText()) and !is_bool($this->cp["tkt_plu_unit"]->GetValue())) 
            $this->cp["tkt_plu_unit"]->SetValue($this->tkt_plu_unit->GetValue(true));
        if (!is_null($this->cp["tkt_plu_tax"]->GetValue()) and !strlen($this->cp["tkt_plu_tax"]->GetText()) and !is_bool($this->cp["tkt_plu_tax"]->GetValue())) 
            $this->cp["tkt_plu_tax"]->SetValue($this->tkt_plu_tax->GetValue(true));
        if (!is_null($this->cp["tkt_plu_enabled"]->GetValue()) and !strlen($this->cp["tkt_plu_enabled"]->GetText()) and !is_bool($this->cp["tkt_plu_enabled"]->GetValue())) 
            $this->cp["tkt_plu_enabled"]->SetValue($this->tkt_plu_enabled->GetValue(true));
        if (!strlen($this->cp["tkt_plu_enabled"]->GetText()) and !is_bool($this->cp["tkt_plu_enabled"]->GetValue(true))) 
            $this->cp["tkt_plu_enabled"]->SetText(Y);
        $this->InsertFields["tkt_plu_type"]["Value"] = $this->cp["tkt_plu_type"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_id"]["Value"] = $this->cp["tkt_plu_id"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_cat1"]["Value"] = $this->cp["tkt_plu_cat1"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_cat2"]["Value"] = $this->cp["tkt_plu_cat2"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_cat3"]["Value"] = $this->cp["tkt_plu_cat3"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_long_desc"]["Value"] = $this->cp["tkt_plu_long_desc"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_short_desc"]["Value"] = $this->cp["tkt_plu_short_desc"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_unit"]["Value"] = $this->cp["tkt_plu_unit"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_tax"]["Value"] = $this->cp["tkt_plu_tax"]->GetDBValue(true);
        $this->InsertFields["tkt_plu_enabled"]["Value"] = $this->cp["tkt_plu_enabled"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_plu", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @27-22DACC44
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_plu_type"] = new clsSQLParameter("ctrlh_tkt_plu_type", ccsText, "", "", $this->h_tkt_plu_type->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_id"] = new clsSQLParameter("ctrltkt_plu_id", ccsText, "", "", $this->tkt_plu_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat1"] = new clsSQLParameter("ctrllstLevel1", ccsText, "", "", $this->lstLevel1->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat2"] = new clsSQLParameter("ctrllstLevel2", ccsText, "", "", $this->lstLevel2->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_cat3"] = new clsSQLParameter("ctrllstLevel3", ccsText, "", "", $this->lstLevel3->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_long_desc"] = new clsSQLParameter("ctrltkt_plu_long_desc", ccsText, "", "", $this->tkt_plu_long_desc->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_short_desc"] = new clsSQLParameter("ctrltkt_plu_short_desc", ccsText, "", "", $this->tkt_plu_short_desc->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_unit"] = new clsSQLParameter("ctrltkt_plu_unit", ccsText, "", "", $this->tkt_plu_unit->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_tax"] = new clsSQLParameter("ctrltkt_plu_tax", ccsText, "", "", $this->tkt_plu_tax->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_plu_enabled"] = new clsSQLParameter("ctrltkt_plu_enabled", ccsText, "", "", $this->tkt_plu_enabled->GetValue(true), Y, false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urltkt_plu_id", ccsText, "", "", CCGetFromGet("tkt_plu_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_plu_type"]->GetValue()) and !strlen($this->cp["tkt_plu_type"]->GetText()) and !is_bool($this->cp["tkt_plu_type"]->GetValue())) 
            $this->cp["tkt_plu_type"]->SetValue($this->h_tkt_plu_type->GetValue(true));
        if (!is_null($this->cp["tkt_plu_id"]->GetValue()) and !strlen($this->cp["tkt_plu_id"]->GetText()) and !is_bool($this->cp["tkt_plu_id"]->GetValue())) 
            $this->cp["tkt_plu_id"]->SetValue($this->tkt_plu_id->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat1"]->GetValue()) and !strlen($this->cp["tkt_plu_cat1"]->GetText()) and !is_bool($this->cp["tkt_plu_cat1"]->GetValue())) 
            $this->cp["tkt_plu_cat1"]->SetValue($this->lstLevel1->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat2"]->GetValue()) and !strlen($this->cp["tkt_plu_cat2"]->GetText()) and !is_bool($this->cp["tkt_plu_cat2"]->GetValue())) 
            $this->cp["tkt_plu_cat2"]->SetValue($this->lstLevel2->GetValue(true));
        if (!is_null($this->cp["tkt_plu_cat3"]->GetValue()) and !strlen($this->cp["tkt_plu_cat3"]->GetText()) and !is_bool($this->cp["tkt_plu_cat3"]->GetValue())) 
            $this->cp["tkt_plu_cat3"]->SetValue($this->lstLevel3->GetValue(true));
        if (!is_null($this->cp["tkt_plu_long_desc"]->GetValue()) and !strlen($this->cp["tkt_plu_long_desc"]->GetText()) and !is_bool($this->cp["tkt_plu_long_desc"]->GetValue())) 
            $this->cp["tkt_plu_long_desc"]->SetValue($this->tkt_plu_long_desc->GetValue(true));
        if (!is_null($this->cp["tkt_plu_short_desc"]->GetValue()) and !strlen($this->cp["tkt_plu_short_desc"]->GetText()) and !is_bool($this->cp["tkt_plu_short_desc"]->GetValue())) 
            $this->cp["tkt_plu_short_desc"]->SetValue($this->tkt_plu_short_desc->GetValue(true));
        if (!is_null($this->cp["tkt_plu_unit"]->GetValue()) and !strlen($this->cp["tkt_plu_unit"]->GetText()) and !is_bool($this->cp["tkt_plu_unit"]->GetValue())) 
            $this->cp["tkt_plu_unit"]->SetValue($this->tkt_plu_unit->GetValue(true));
        if (!is_null($this->cp["tkt_plu_tax"]->GetValue()) and !strlen($this->cp["tkt_plu_tax"]->GetText()) and !is_bool($this->cp["tkt_plu_tax"]->GetValue())) 
            $this->cp["tkt_plu_tax"]->SetValue($this->tkt_plu_tax->GetValue(true));
        if (!is_null($this->cp["tkt_plu_enabled"]->GetValue()) and !strlen($this->cp["tkt_plu_enabled"]->GetText()) and !is_bool($this->cp["tkt_plu_enabled"]->GetValue())) 
            $this->cp["tkt_plu_enabled"]->SetValue($this->tkt_plu_enabled->GetValue(true));
        if (!strlen($this->cp["tkt_plu_enabled"]->GetText()) and !is_bool($this->cp["tkt_plu_enabled"]->GetValue(true))) 
            $this->cp["tkt_plu_enabled"]->SetText(Y);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_plu_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->UpdateFields["tkt_plu_type"]["Value"] = $this->cp["tkt_plu_type"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_id"]["Value"] = $this->cp["tkt_plu_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_cat1"]["Value"] = $this->cp["tkt_plu_cat1"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_cat2"]["Value"] = $this->cp["tkt_plu_cat2"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_cat3"]["Value"] = $this->cp["tkt_plu_cat3"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_long_desc"]["Value"] = $this->cp["tkt_plu_long_desc"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_short_desc"]["Value"] = $this->cp["tkt_plu_short_desc"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_unit"]["Value"] = $this->cp["tkt_plu_unit"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_tax"]["Value"] = $this->cp["tkt_plu_tax"]->GetDBValue(true);
        $this->UpdateFields["tkt_plu_enabled"]["Value"] = $this->cp["tkt_plu_enabled"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_plu", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @27-EA6FFF04
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urltkt_plu_id", ccsText, "", "", CCGetFromGet("tkt_plu_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_plu_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM ssf_tkt_plu";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End product_recordDataSource Class @27-FCB6E20C

class clsEditableGridssf_tkt_bar_codes { //ssf_tkt_bar_codes Class @137-75C34716

//Variables @137-0AADA924

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
//End Variables

//Class_Initialize Event @137-B73777E8
    function clsEditableGridssf_tkt_bar_codes($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_tkt_bar_codes/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_tkt_bar_codes";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["tkt_plu_id"][0] = "tkt_plu_id";
        $this->CachedColumns["tkt_plu_bar_code"][0] = "tkt_plu_bar_code";
        $this->DataSource = new clsssf_tkt_bar_codesDataSource($this);
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

        $this->tkt_plu_bar_code = new clsControl(ccsTextBox, "tkt_plu_bar_code", $CCSLocales->GetText("tkt_plu_bar_code"), ccsText, "", NULL, $this);
        $this->tkt_plu_id = new clsControl(ccsHidden, "tkt_plu_id", $CCSLocales->GetText("tkt_plu_id"), ccsText, "", NULL, $this);
        $this->tkt_plu_id->Required = true;
        $this->tkt_plu_bar_code_desc = new clsControl(ccsTextBox, "tkt_plu_bar_code_desc", $CCSLocales->GetText("tkt_plu_bar_code_desc"), ccsText, "", NULL, $this);
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @137-008239F2
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urltkt_plu_id"] = CCGetFromGet("tkt_plu_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @137-9E937F9C
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["tkt_plu_bar_code"][$RowNumber] = CCGetFromPost("tkt_plu_bar_code_" . $RowNumber, NULL);
            $this->FormParameters["tkt_plu_id"][$RowNumber] = CCGetFromPost("tkt_plu_id_" . $RowNumber, NULL);
            $this->FormParameters["tkt_plu_bar_code_desc"][$RowNumber] = CCGetFromPost("tkt_plu_bar_code_desc_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @137-5D32C0EA
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["tkt_plu_id"] = $this->CachedColumns["tkt_plu_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["tkt_plu_bar_code"] = $this->CachedColumns["tkt_plu_bar_code"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->tkt_plu_bar_code->SetText($this->FormParameters["tkt_plu_bar_code"][$this->RowNumber], $this->RowNumber);
            $this->tkt_plu_id->SetText($this->FormParameters["tkt_plu_id"][$this->RowNumber], $this->RowNumber);
            $this->tkt_plu_bar_code_desc->SetText($this->FormParameters["tkt_plu_bar_code_desc"][$this->RowNumber], $this->RowNumber);
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

//ValidateRow Method @137-6619EB5F
    function ValidateRow()
    {
        global $CCSLocales;
        $this->tkt_plu_bar_code->Validate();
        $this->tkt_plu_id->Validate();
        $this->tkt_plu_bar_code_desc->Validate();
        $this->CheckBox_Delete->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_bar_code->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_bar_code_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $this->tkt_plu_bar_code->Errors->Clear();
        $this->tkt_plu_id->Errors->Clear();
        $this->tkt_plu_bar_code_desc->Errors->Clear();
        $this->CheckBox_Delete->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @137-24666486
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["tkt_plu_bar_code"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["tkt_plu_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["tkt_plu_bar_code_desc"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @137-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @137-6B923CC2
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

//UpdateGrid Method @137-D5A9344E
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["tkt_plu_id"] = $this->CachedColumns["tkt_plu_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["tkt_plu_bar_code"] = $this->CachedColumns["tkt_plu_bar_code"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->tkt_plu_bar_code->SetText($this->FormParameters["tkt_plu_bar_code"][$this->RowNumber], $this->RowNumber);
            $this->tkt_plu_id->SetText($this->FormParameters["tkt_plu_id"][$this->RowNumber], $this->RowNumber);
            $this->tkt_plu_bar_code_desc->SetText($this->FormParameters["tkt_plu_bar_code_desc"][$this->RowNumber], $this->RowNumber);
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

//InsertRow Method @137-07238473
    function InsertRow()
    {
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_plu_bar_code->SetValue($this->tkt_plu_bar_code->GetValue(true));
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->tkt_plu_bar_code_desc->SetValue($this->tkt_plu_bar_code_desc->GetValue(true));
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

//UpdateRow Method @137-972E51E2
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_plu_bar_code->SetValue($this->tkt_plu_bar_code->GetValue(true));
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->tkt_plu_bar_code_desc->SetValue($this->tkt_plu_bar_code_desc->GetValue(true));
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

//DeleteRow Method @137-A4A656F6
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

//FormScript Method @137-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @137-4A76C257
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
            for($i = 2; $i < sizeof($pieces); $i = $i + 2)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["tkt_plu_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["tkt_plu_bar_code"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["tkt_plu_id"][$RowNumber] = "";
                $this->CachedColumns["tkt_plu_bar_code"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @137-FFE1CC75
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["tkt_plu_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["tkt_plu_bar_code"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @137-0098E181
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


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
        $this->ControlsVisible["tkt_plu_bar_code"] = $this->tkt_plu_bar_code->Visible;
        $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
        $this->ControlsVisible["tkt_plu_bar_code_desc"] = $this->tkt_plu_bar_code_desc->Visible;
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
                    $this->CachedColumns["tkt_plu_id"][$this->RowNumber] = $this->DataSource->CachedColumns["tkt_plu_id"];
                    $this->CachedColumns["tkt_plu_bar_code"][$this->RowNumber] = $this->DataSource->CachedColumns["tkt_plu_bar_code"];
                    $this->CheckBox_Delete->SetValue("");
                    $this->tkt_plu_bar_code->SetValue($this->DataSource->tkt_plu_bar_code->GetValue());
                    $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                    $this->tkt_plu_bar_code_desc->SetValue($this->DataSource->tkt_plu_bar_code_desc->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->tkt_plu_bar_code->SetText($this->FormParameters["tkt_plu_bar_code"][$this->RowNumber], $this->RowNumber);
                    $this->tkt_plu_id->SetText($this->FormParameters["tkt_plu_id"][$this->RowNumber], $this->RowNumber);
                    $this->tkt_plu_bar_code_desc->SetText($this->FormParameters["tkt_plu_bar_code_desc"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["tkt_plu_id"][$this->RowNumber] = "";
                    $this->CachedColumns["tkt_plu_bar_code"][$this->RowNumber] = "";
                    $this->tkt_plu_bar_code->SetText("");
                    $this->tkt_plu_id->SetText("");
                    $this->tkt_plu_bar_code_desc->SetText("");
                } else {
                    $this->tkt_plu_bar_code->SetText($this->FormParameters["tkt_plu_bar_code"][$this->RowNumber], $this->RowNumber);
                    $this->tkt_plu_id->SetText($this->FormParameters["tkt_plu_id"][$this->RowNumber], $this->RowNumber);
                    $this->tkt_plu_bar_code_desc->SetText($this->FormParameters["tkt_plu_bar_code_desc"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_plu_bar_code->Show($this->RowNumber);
                $this->tkt_plu_id->Show($this->RowNumber);
                $this->tkt_plu_bar_code_desc->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["tkt_plu_id"] == $this->CachedColumns["tkt_plu_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["tkt_plu_bar_code"] == $this->CachedColumns["tkt_plu_bar_code"][$this->RowNumber])) {
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

} //End ssf_tkt_bar_codes Class @137-FCB6E20C

class clsssf_tkt_bar_codesDataSource extends clsDBConnection1 {  //ssf_tkt_bar_codesDataSource Class @137-6BABFC41

//DataSource Variables @137-689CA9E1
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
    public $tkt_plu_bar_code;
    public $tkt_plu_id;
    public $tkt_plu_bar_code_desc;
    public $CheckBox_Delete;
//End DataSource Variables

//DataSourceClass_Initialize Event @137-C9F5DA3A
    function clsssf_tkt_bar_codesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_tkt_bar_codes/Error";
        $this->Initialize();
        $this->tkt_plu_bar_code = new clsField("tkt_plu_bar_code", ccsText, "");
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_bar_code_desc = new clsField("tkt_plu_bar_code_desc", ccsText, "");
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));

        $this->InsertFields["tkt_plu_bar_code"] = array("Name" => "tkt_plu_bar_code", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_plu_bar_code_desc"] = array("Name" => "tkt_plu_bar_code_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_bar_code"] = array("Name" => "tkt_plu_bar_code", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_bar_code_desc"] = array("Name" => "tkt_plu_bar_code_desc", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @137-B92C1F37
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_plu_bar_code";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @137-A0E9AE44
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_plu_id", ccsText, "", "", $this->Parameters["urltkt_plu_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @137-33F8436D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_bar_codes";
        $this->SQL = "SELECT *, tkt_plu_id, tkt_plu_bar_code \n\n" .
        "FROM ssf_tkt_bar_codes {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @137-12508A97
    function SetValues()
    {
        $this->CachedColumns["tkt_plu_id"] = $this->f("tkt_plu_id");
        $this->CachedColumns["tkt_plu_bar_code"] = $this->f("tkt_plu_bar_code");
        $this->tkt_plu_bar_code->SetDBValue($this->f("tkt_plu_bar_code"));
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_bar_code_desc->SetDBValue($this->f("tkt_plu_bar_code_desc"));
    }
//End SetValues Method

//Insert Method @137-B12CDB84
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_plu_bar_code"]["Value"] = $this->tkt_plu_bar_code->GetDBValue(true);
        $this->InsertFields["tkt_plu_id"]["Value"] = $this->tkt_plu_id->GetDBValue(true);
        $this->InsertFields["tkt_plu_bar_code_desc"]["Value"] = $this->tkt_plu_bar_code_desc->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_bar_codes", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @137-60D49241
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "tkt_plu_id=" . $this->ToSQL($this->CachedColumns["tkt_plu_id"], ccsText) . " AND tkt_plu_bar_code=" . $this->ToSQL($this->CachedColumns["tkt_plu_bar_code"], ccsText);
        $this->UpdateFields["tkt_plu_bar_code"]["Value"] = $this->tkt_plu_bar_code->GetDBValue(true);
        $this->UpdateFields["tkt_plu_id"]["Value"] = $this->tkt_plu_id->GetDBValue(true);
        $this->UpdateFields["tkt_plu_bar_code_desc"]["Value"] = $this->tkt_plu_bar_code_desc->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_bar_codes", $this->UpdateFields, $this);
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

//Delete Method @137-1B9D01B3
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "tkt_plu_id=" . $this->ToSQL($this->CachedColumns["tkt_plu_id"], ccsText) . " AND tkt_plu_bar_code=" . $this->ToSQL($this->CachedColumns["tkt_plu_bar_code"], ccsText);
        $this->SQL = "DELETE FROM ssf_tkt_bar_codes";
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

} //End ssf_tkt_bar_codesDataSource Class @137-FCB6E20C

//Initialize Page @1-DF8F1045
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
$TemplateFileName = "SSFTicketProducts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F45FE223
include("./SSFTicketProducts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-17A7EABF
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$ssf_tkt_categories = new clsGridssf_tkt_categories("", $MainPage);
$ssf_tkt_categories1 = new clsGridssf_tkt_categories1("", $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_pluSearch = new clsRecordssf_tkt_pluSearch("", $MainPage);
$ssf_tkt_plu = new clsGridssf_tkt_plu("", $MainPage);
$product_record = new clsRecordproduct_record("", $MainPage);
$ssf_tkt_bar_codes = new clsEditableGridssf_tkt_bar_codes("", $MainPage);
$MainPage->ssf_tkt_categories = & $ssf_tkt_categories;
$MainPage->ssf_tkt_categories1 = & $ssf_tkt_categories1;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_pluSearch = & $ssf_tkt_pluSearch;
$MainPage->ssf_tkt_plu = & $ssf_tkt_plu;
$MainPage->product_record = & $product_record;
$MainPage->ssf_tkt_bar_codes = & $ssf_tkt_bar_codes;
$ssf_tkt_categories->Initialize();
$ssf_tkt_categories1->Initialize();
$ssf_tkt_plu->Initialize();
$product_record->Initialize();
$ssf_tkt_bar_codes->Initialize();

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

//Execute Components @1-035048C6
$SSFSpiritHeader->Operations();
$ssf_tkt_pluSearch->Operation();
$product_record->Operation();
$ssf_tkt_bar_codes->Operation();
//End Execute Components

//Go to destination page @1-8417C5B4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_tkt_categories);
    unset($ssf_tkt_categories1);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_pluSearch);
    unset($ssf_tkt_plu);
    unset($product_record);
    unset($ssf_tkt_bar_codes);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-CF17BB83
$ssf_tkt_categories->Show();
$ssf_tkt_categories1->Show();
$SSFSpiritHeader->Show();
$ssf_tkt_pluSearch->Show();
$ssf_tkt_plu->Show();
$product_record->Show();
$ssf_tkt_bar_codes->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-29B72E1C
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_categories);
unset($ssf_tkt_categories1);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_pluSearch);
unset($ssf_tkt_plu);
unset($product_record);
unset($ssf_tkt_bar_codes);
unset($Tpl);
//End Unload Page


?>
