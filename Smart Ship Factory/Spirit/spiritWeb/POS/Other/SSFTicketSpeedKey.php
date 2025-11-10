<?php
//Include Common Files @1-477EDC38
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Other/");
define("FileName", "SSFTicketSpeedKey.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridssf_tkt_catalog { //ssf_tkt_catalog class @60-36741316

//Variables @60-6E51DF5A

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

//Class_Initialize Event @60-CEFB64DD
    function clsGridssf_tkt_catalog($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_catalog";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_catalogDataSource($this);
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

        $this->tkt_catalog_code = new clsControl(ccsLabel, "tkt_catalog_code", "tkt_catalog_code", ccsText, "", CCGetRequestParam("tkt_catalog_code", ccsGet, NULL), $this);
        $this->tkt_catalog_value = new clsControl(ccsLabel, "tkt_catalog_value", "tkt_catalog_value", ccsText, "", CCGetRequestParam("tkt_catalog_value", ccsGet, NULL), $this);
        $this->tkt_catalog_misc1 = new clsControl(ccsLabel, "tkt_catalog_misc1", "tkt_catalog_misc1", ccsText, "", CCGetRequestParam("tkt_catalog_misc1", ccsGet, NULL), $this);
    }
//End Class_Initialize Event

//Initialize Method @60-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @60-44DF4EA2
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
            $this->ControlsVisible["tkt_catalog_code"] = $this->tkt_catalog_code->Visible;
            $this->ControlsVisible["tkt_catalog_value"] = $this->tkt_catalog_value->Visible;
            $this->ControlsVisible["tkt_catalog_misc1"] = $this->tkt_catalog_misc1->Visible;
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
                $this->tkt_catalog_code->SetValue($this->DataSource->tkt_catalog_code->GetValue());
                $this->tkt_catalog_value->SetValue($this->DataSource->tkt_catalog_value->GetValue());
                $this->tkt_catalog_misc1->SetValue($this->DataSource->tkt_catalog_misc1->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_catalog_code->Show();
                $this->tkt_catalog_value->Show();
                $this->tkt_catalog_misc1->Show();
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

//GetErrors Method @60-6F5BBD98
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_catalog_code->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_catalog_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_catalog_misc1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_catalog Class @60-FCB6E20C

class clsssf_tkt_catalogDataSource extends clsDBConnection1 {  //ssf_tkt_catalogDataSource Class @60-9B3D5D4B

//DataSource Variables @60-29B4B432
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_catalog_code;
    public $tkt_catalog_value;
    public $tkt_catalog_misc1;
//End DataSource Variables

//DataSourceClass_Initialize Event @60-3E64219A
    function clsssf_tkt_catalogDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Initialize();
        $this->tkt_catalog_code = new clsField("tkt_catalog_code", ccsText, "");
        $this->tkt_catalog_value = new clsField("tkt_catalog_value", ccsText, "");
        $this->tkt_catalog_misc1 = new clsField("tkt_catalog_misc1", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @60-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @60-427F6EDC
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @60-935FEE47
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_catalog";
        $this->SQL = "SELECT tkt_catalog_code, tkt_catalog_value, tkt_catalog_misc1 \n\n" .
        "FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @60-9F63FE11
    function SetValues()
    {
        $this->tkt_catalog_code->SetDBValue($this->f("tkt_catalog_code"));
        $this->tkt_catalog_value->SetDBValue($this->f("tkt_catalog_value"));
        $this->tkt_catalog_misc1->SetDBValue($this->f("tkt_catalog_misc1"));
    }
//End SetValues Method

} //End ssf_tkt_catalogDataSource Class @60-FCB6E20C

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_speed_keys1 { //ssf_tkt_speed_keys1 Class @71-5F9104AD

//Variables @71-9E315808

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

//Class_Initialize Event @71-956895D6
    function clsRecordssf_tkt_speed_keys1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_speed_keys1/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_speed_keys1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_speed_id = new clsControl(ccsListBox, "s_tkt_speed_id", "s_tkt_speed_id", ccsText, "", CCGetRequestParam("s_tkt_speed_id", $Method, NULL), $this);
            $this->s_tkt_speed_id->DSType = dsTable;
            list($this->s_tkt_speed_id->BoundColumn, $this->s_tkt_speed_id->TextColumn, $this->s_tkt_speed_id->DBFormat) = array("", "", "");
            $this->s_tkt_speed_id->DataSource = new clsDBConnection1();
            $this->s_tkt_speed_id->ds = & $this->s_tkt_speed_id->DataSource;
            $this->s_tkt_speed_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->s_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->s_tkt_speed_id->DataSource->wp = new clsSQLParameters();
            $this->s_tkt_speed_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
            $this->s_tkt_speed_id->DataSource->Where = 
                 $this->s_tkt_speed_id->DataSource->wp->Criterion[1];
            $this->s_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
        }
    }
//End Class_Initialize Event

//Validate Method @71-F5CBF375
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_speed_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_speed_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @71-11F7C6B6
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @71-52010610
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = "SSFTicketSpeedKey.php";
    }
//End Operation Method

//Show Method @71-DAC95FF2
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_speed_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_speed_id->Errors->ToString());
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

        $this->s_tkt_speed_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_speed_keys1 Class @71-FCB6E20C

class clsRecordssf_tkt_speed_keys { //ssf_tkt_speed_keys Class @5-0DEF7DEA

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

//Class_Initialize Event @5-73A8A2A3
    function clsRecordssf_tkt_speed_keys($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->DataSource = new clsssf_tkt_speed_keysDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_speed_keys";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->h_tkt_speed_id = new clsControl(ccsHidden, "h_tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("h_tkt_speed_id", $Method, NULL), $this);
            $this->h_tkt_speed_id->Required = true;
            $this->r_tkt_speed_id = new clsControl(ccsListBox, "r_tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("r_tkt_speed_id", $Method, NULL), $this);
            $this->r_tkt_speed_id->DSType = dsTable;
            list($this->r_tkt_speed_id->BoundColumn, $this->r_tkt_speed_id->TextColumn, $this->r_tkt_speed_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->r_tkt_speed_id->DataSource = new clsDBConnection1();
            $this->r_tkt_speed_id->ds = & $this->r_tkt_speed_id->DataSource;
            $this->r_tkt_speed_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->r_tkt_speed_id->DataSource->wp = new clsSQLParameters();
            $this->r_tkt_speed_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
            $this->r_tkt_speed_id->DataSource->Where = 
                 $this->r_tkt_speed_id->DataSource->wp->Criterion[1];
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->tkt_speed_parent_group_id = new clsControl(ccsTextBox, "tkt_speed_parent_group_id", $CCSLocales->GetText("tkt_speed_parent_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_parent_group_id", $Method, NULL), $this);
            $this->tkt_speed_parent_group_id->Required = true;
            $this->tkt_speed_group_id = new clsControl(ccsTextBox, "tkt_speed_group_id", $CCSLocales->GetText("tkt_speed_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_group_id", $Method, NULL), $this);
            $this->tkt_speed_order = new clsControl(ccsTextBox, "tkt_speed_order", $CCSLocales->GetText("tkt_speed_order"), ccsInteger, "", CCGetRequestParam("tkt_speed_order", $Method, NULL), $this);
            $this->tkt_speed_order->Required = true;
            $this->tkt_speed_value = new clsControl(ccsTextBox, "tkt_speed_value", $CCSLocales->GetText("tkt_speed_value"), ccsText, "", CCGetRequestParam("tkt_speed_value", $Method, NULL), $this);
            $this->link_product_list = new clsControl(ccsLink, "link_product_list", "link_product_list", ccsText, "", CCGetRequestParam("link_product_list", $Method, NULL), $this);
            $this->link_product_list->Page = "../SSFPopProductsList.php";
            $this->link_tender_list = new clsControl(ccsLink, "link_tender_list", "link_tender_list", ccsText, "", CCGetRequestParam("link_tender_list", $Method, NULL), $this);
            $this->link_tender_list->Page = "../SSFPopTendersList.php";
            $this->tkt_speed_param = new clsControl(ccsTextBox, "tkt_speed_param", $CCSLocales->GetText("tkt_speed_param"), ccsText, "", CCGetRequestParam("tkt_speed_param", $Method, NULL), $this);
            $this->lblTenderParamTIP = new clsControl(ccsLabel, "lblTenderParamTIP", "lblTenderParamTIP", ccsText, "", CCGetRequestParam("lblTenderParamTIP", $Method, NULL), $this);
            $this->lnkAddItem = new clsControl(ccsLink, "lnkAddItem", "lnkAddItem", ccsText, "", CCGetRequestParam("lnkAddItem", $Method, NULL), $this);
            $this->lnkAddItem->Parameters = CCGetQueryString("QueryString", array("speed_group_id", "speed_order", "ccsForm"));
            $this->lnkAddItem->Parameters = CCAddParam($this->lnkAddItem->Parameters, "parent_group_id", CCGetFromGet("speed_group_id", NULL));
            $this->lnkAddItem->Page = "SSFTicketSpeedKey.php";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!is_array($this->lblTenderParamTIP->Value) && !strlen($this->lblTenderParamTIP->Value) && $this->lblTenderParamTIP->Value !== false)
                $this->lblTenderParamTIP->SetText($CCSLocales->GetText("TenderParamTIP"));
        }
    }
//End Class_Initialize Event

//Initialize Method @5-2DBA863F
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_speed_id"] = CCGetFromGet("tkt_speed_id", NULL);
        $this->DataSource->Parameters["urlparent_group_id"] = CCGetFromGet("parent_group_id", NULL);
        $this->DataSource->Parameters["urlspeed_group_id"] = CCGetFromGet("speed_group_id", NULL);
        $this->DataSource->Parameters["urlspeed_order"] = CCGetFromGet("speed_order", NULL);
    }
//End Initialize Method

//Validate Method @5-6D077FEB
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->h_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_parent_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_order->Validate() && $Validation);
        $Validation = ($this->tkt_speed_value->Validate() && $Validation);
        $Validation = ($this->tkt_speed_param->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->h_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_parent_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_order->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_param->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-280D0FF7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->h_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_parent_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_order->Errors->Count());
        $errors = ($errors || $this->tkt_speed_value->Errors->Count());
        $errors = ($errors || $this->link_product_list->Errors->Count());
        $errors = ($errors || $this->link_tender_list->Errors->Count());
        $errors = ($errors || $this->tkt_speed_param->Errors->Count());
        $errors = ($errors || $this->lblTenderParamTIP->Errors->Count());
        $errors = ($errors || $this->lnkAddItem->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-A4514815
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
        $Redirect = "SSFTicketSpeedKey.php";
        if($this->PressedButton == "Button_Delete") {
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
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

//InsertRow Method @5-BF41E89A
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @5-4AC4A4EA
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @5-5C8D4533
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @5-578C4EDA
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->r_tkt_speed_id->Prepare();

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
                    $this->h_tkt_speed_id->SetValue($this->DataSource->h_tkt_speed_id->GetValue());
                    $this->r_tkt_speed_id->SetValue($this->DataSource->r_tkt_speed_id->GetValue());
                    $this->tkt_speed_parent_group_id->SetValue($this->DataSource->tkt_speed_parent_group_id->GetValue());
                    $this->tkt_speed_group_id->SetValue($this->DataSource->tkt_speed_group_id->GetValue());
                    $this->tkt_speed_order->SetValue($this->DataSource->tkt_speed_order->GetValue());
                    $this->tkt_speed_value->SetValue($this->DataSource->tkt_speed_value->GetValue());
                    $this->tkt_speed_param->SetValue($this->DataSource->tkt_speed_param->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->h_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_parent_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_order->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_product_list->Errors->ToString());
            $Error = ComposeStrings($Error, $this->link_tender_list->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_param->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblTenderParamTIP->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lnkAddItem->Errors->ToString());
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

        $this->h_tkt_speed_id->Show();
        $this->r_tkt_speed_id->Show();
        $this->tkt_speed_parent_group_id->Show();
        $this->tkt_speed_group_id->Show();
        $this->tkt_speed_order->Show();
        $this->tkt_speed_value->Show();
        $this->link_product_list->Show();
        $this->link_tender_list->Show();
        $this->tkt_speed_param->Show();
        $this->lblTenderParamTIP->Show();
        $this->lnkAddItem->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_speed_keys Class @5-FCB6E20C

class clsssf_tkt_speed_keysDataSource extends clsDBConnection1 {  //ssf_tkt_speed_keysDataSource Class @5-D1B7B60E

//DataSource Variables @5-B47BF64B
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
    public $h_tkt_speed_id;
    public $r_tkt_speed_id;
    public $tkt_speed_parent_group_id;
    public $tkt_speed_group_id;
    public $tkt_speed_order;
    public $tkt_speed_value;
    public $link_product_list;
    public $link_tender_list;
    public $tkt_speed_param;
    public $lblTenderParamTIP;
    public $lnkAddItem;
//End DataSource Variables

//DataSourceClass_Initialize Event @5-82B1ADBE
    function clsssf_tkt_speed_keysDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->Initialize();
        $this->h_tkt_speed_id = new clsField("h_tkt_speed_id", ccsText, "");
        $this->r_tkt_speed_id = new clsField("r_tkt_speed_id", ccsText, "");
        $this->tkt_speed_parent_group_id = new clsField("tkt_speed_parent_group_id", ccsText, "");
        $this->tkt_speed_group_id = new clsField("tkt_speed_group_id", ccsText, "");
        $this->tkt_speed_order = new clsField("tkt_speed_order", ccsInteger, "");
        $this->tkt_speed_value = new clsField("tkt_speed_value", ccsText, "");
        $this->link_product_list = new clsField("link_product_list", ccsText, "");
        $this->link_tender_list = new clsField("link_tender_list", ccsText, "");
        $this->tkt_speed_param = new clsField("tkt_speed_param", ccsText, "");
        $this->lblTenderParamTIP = new clsField("lblTenderParamTIP", ccsText, "");
        $this->lnkAddItem = new clsField("lnkAddItem", ccsText, "");

        $this->InsertFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @5-33B46714
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_speed_id", ccsText, "", "", $this->Parameters["urltkt_speed_id"], "", false);
        $this->wp->AddParameter("2", "urlparent_group_id", ccsText, "", "", $this->Parameters["urlparent_group_id"], "", false);
        $this->wp->AddParameter("3", "urlspeed_group_id", ccsText, "", "", $this->Parameters["urlspeed_group_id"], "", true);
        $this->wp->AddParameter("4", "urlspeed_order", ccsInteger, "", "", $this->Parameters["urlspeed_order"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_speed_parent_group_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_speed_group_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),true);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "tkt_speed_order", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]);
    }
//End Prepare Method

//Open Method @5-CA347CDB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @5-E4A3F40A
    function SetValues()
    {
        $this->h_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->r_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->tkt_speed_parent_group_id->SetDBValue($this->f("tkt_speed_parent_group_id"));
        $this->tkt_speed_group_id->SetDBValue($this->f("tkt_speed_group_id"));
        $this->tkt_speed_order->SetDBValue(trim($this->f("tkt_speed_order")));
        $this->tkt_speed_value->SetDBValue($this->f("tkt_speed_value"));
        $this->tkt_speed_param->SetDBValue($this->f("tkt_speed_param"));
    }
//End SetValues Method

//Insert Method @5-D01B3B33
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrltkt_speed_value", ccsText, "", "", $this->tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrltkt_speed_param", ccsText, "", "", $this->tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->tkt_speed_param->GetValue(true));
        $this->InsertFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_speed_keys", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @5-A9D80BB4
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrltkt_speed_value", ccsText, "", "", $this->tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrltkt_speed_param", ccsText, "", "", $this->tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", true);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("4", "ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->tkt_speed_param->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),true);
        $wp->Criterion[4] = $wp->Operation(opEqual, "tkt_speed_order", $wp->GetDBValue("4"), $this->ToSQL($wp->GetDBValue("4"), ccsInteger),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]), 
             $wp->Criterion[4]);
        $this->UpdateFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_speed_keys", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @5-5E7A1A44
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", true);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("4", "ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),true);
        $wp->Criterion[4] = $wp->Operation(opEqual, "tkt_speed_order", $wp->GetDBValue("4"), $this->ToSQL($wp->GetDBValue("4"), ccsInteger),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]), 
             $wp->Criterion[4]);
        $this->SQL = "DELETE FROM ssf_tkt_speed_keys";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_speed_keysDataSource Class @5-FCB6E20C

//Initialize Page @1-DCA33B82
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
$TemplateFileName = "SSFTicketSpeedKey.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-8F162BFC
include("./SSFTicketSpeedKey_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CE0AEDF0
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$ssf_tkt_catalog = new clsGridssf_tkt_catalog("", $MainPage);
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_speed_keys1 = new clsRecordssf_tkt_speed_keys1("", $MainPage);
$lblSpeedTree = new clsControl(ccsLabel, "lblSpeedTree", "lblSpeedTree", ccsText, "", CCGetRequestParam("lblSpeedTree", ccsGet, NULL), $MainPage);
$lblSpeedTree->HTML = true;
$ssf_tkt_speed_keys = new clsRecordssf_tkt_speed_keys("", $MainPage);
$MainPage->ssf_tkt_catalog = & $ssf_tkt_catalog;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_speed_keys1 = & $ssf_tkt_speed_keys1;
$MainPage->lblSpeedTree = & $lblSpeedTree;
$MainPage->ssf_tkt_speed_keys = & $ssf_tkt_speed_keys;
$ssf_tkt_catalog->Initialize();
$ssf_tkt_speed_keys->Initialize();

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

//Execute Components @1-5641B100
$SSFSpiritHeader->Operations();
$ssf_tkt_speed_keys1->Operation();
$ssf_tkt_speed_keys->Operation();
//End Execute Components

//Go to destination page @1-BB883BA4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_tkt_catalog);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_speed_keys1);
    unset($ssf_tkt_speed_keys);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C817DBB4
$ssf_tkt_catalog->Show();
$SSFSpiritHeader->Show();
$ssf_tkt_speed_keys1->Show();
$ssf_tkt_speed_keys->Show();
$lblSpeedTree->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-DA0A408B
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_tkt_catalog);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_speed_keys1);
unset($ssf_tkt_speed_keys);
unset($Tpl);
//End Unload Page


?>
