<?php
//Include Common Files @1-854C42BE
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Other/");
define("FileName", "SSFTicketSpeedKeyGroups.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridSpeedKey { //SpeedKey class @30-46509F34

//Variables @30-F8A3E62B

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
    public $Sorter_speedkey;
//End Variables

//Class_Initialize Event @30-A5DDCCF5
    function clsGridSpeedKey($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "SpeedKey";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid SpeedKey";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsSpeedKeyDataSource($this);
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
        $this->SorterName = CCGetParam("SpeedKeyOrder", "");
        $this->SorterDirection = CCGetParam("SpeedKeyDir", "");

        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTicketSpeedKey.php";
        $this->speedkey = new clsControl(ccsLink, "speedkey", "speedkey", ccsText, "", CCGetRequestParam("speedkey", ccsGet, NULL), $this);
        $this->speedkey->Page = "SSFTicketSpeedKeyGroups.php";
        $this->Sorter_speedkey = new clsSorter($this->ComponentName, "Sorter_speedkey", $FileName, $this);
        $this->SpeedKey_Insert = new clsControl(ccsLink, "SpeedKey_Insert", "SpeedKey_Insert", ccsText, "", CCGetRequestParam("SpeedKey_Insert", ccsGet, NULL), $this);
        $this->SpeedKey_Insert->Page = "SSFTicketSpeedKeyGroups.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @30-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @30-0279789D
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
            $this->ControlsVisible["Link1"] = $this->Link1->Visible;
            $this->ControlsVisible["speedkey"] = $this->speedkey->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "tkt_speed_id", $this->DataSource->f("speedkey"));
                $this->speedkey->SetValue($this->DataSource->speedkey->GetValue());
                $this->speedkey->Parameters = "";
                $this->speedkey->Parameters = CCAddParam($this->speedkey->Parameters, "speedkey", $this->DataSource->f("speedkey"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->Link1->Show();
                $this->speedkey->Show();
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
        $this->SpeedKey_Insert->Parameters = CCGetQueryString("QueryString", array("speedkey", "ccsForm"));
        $this->SpeedKey_Insert->Parameters = CCAddParam($this->SpeedKey_Insert->Parameters, "SpeedKey_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_speedkey->Show();
        $this->SpeedKey_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @30-7401C080
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->speedkey->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End SpeedKey Class @30-FCB6E20C

class clsSpeedKeyDataSource extends clsDBConnection1 {  //SpeedKeyDataSource Class @30-A111BCEC

//DataSource Variables @30-314EEDB0
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $speedkey;
//End DataSource Variables

//DataSourceClass_Initialize Event @30-30B1B839
    function clsSpeedKeyDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid SpeedKey";
        $this->Initialize();
        $this->speedkey = new clsField("speedkey", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @30-2C9454AE
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_speedkey" => array("speedkey", "")));
    }
//End SetOrder Method

//Prepare Method @30-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @30-ACF8B73B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (Select tkt_catalog_code as speedkey\n" .
        "from ssf_tkt_catalog\n" .
        "where tkt_catalog_id = 'speedkey_group_id'\n" .
        ") cnt";
        $this->SQL = "Select tkt_catalog_code as speedkey\n" .
        "from ssf_tkt_catalog\n" .
        "where tkt_catalog_id = 'speedkey_group_id'\n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @30-5652CD2A
    function SetValues()
    {
        $this->speedkey->SetDBValue($this->f("speedkey"));
    }
//End SetValues Method

} //End SpeedKeyDataSource Class @30-FCB6E20C

class clsRecordssf_tkt_catalog { //ssf_tkt_catalog Class @38-911FFC6B

//Variables @38-9E315808

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

//Class_Initialize Event @38-584EA406
    function clsRecordssf_tkt_catalog($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_catalog/Error";
        $this->DataSource = new clsssf_tkt_catalogDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_catalog";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_catalog_code = new clsControl(ccsTextBox, "tkt_catalog_code", $CCSLocales->GetText("ssf_speedkey_group_id"), ccsText, "", CCGetRequestParam("tkt_catalog_code", $Method, NULL), $this);
            $this->tkt_catalog_code->Required = true;
            $this->tkt_catalog_id = new clsControl(ccsHidden, "tkt_catalog_id", $CCSLocales->GetText("tkt_catalog_id"), ccsText, "", CCGetRequestParam("tkt_catalog_id", $Method, NULL), $this);
            $this->tkt_catalog_id->Required = true;
            $this->tkt_catalog_value = new clsControl(ccsTextBox, "tkt_catalog_value", $CCSLocales->GetText("ssf_speedkey_group_desc"), ccsText, "", CCGetRequestParam("tkt_catalog_value", $Method, NULL), $this);
            $this->tkt_catalog_misc1 = new clsControl(ccsListBox, "tkt_catalog_misc1", $CCSLocales->GetText("ssf_sppedkey_group_type"), ccsText, "", CCGetRequestParam("tkt_catalog_misc1", $Method, NULL), $this);
            $this->tkt_catalog_misc1->DSType = dsTable;
            list($this->tkt_catalog_misc1->BoundColumn, $this->tkt_catalog_misc1->TextColumn, $this->tkt_catalog_misc1->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->tkt_catalog_misc1->DataSource = new clsDBConnection1();
            $this->tkt_catalog_misc1->ds = & $this->tkt_catalog_misc1->DataSource;
            $this->tkt_catalog_misc1->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_catalog_misc1->DataSource->wp = new clsSQLParameters();
            $this->tkt_catalog_misc1->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_type'";
            $this->tkt_catalog_misc1->DataSource->Where = 
                 $this->tkt_catalog_misc1->DataSource->wp->Criterion[1];
            $this->tkt_catalog_misc1->Required = true;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @38-4F0D6DBA
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlspeedkey"] = CCGetFromGet("speedkey", NULL);
    }
//End Initialize Method

//Validate Method @38-768DDBF0
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_catalog_code->Validate() && $Validation);
        $Validation = ($this->tkt_catalog_id->Validate() && $Validation);
        $Validation = ($this->tkt_catalog_value->Validate() && $Validation);
        $Validation = ($this->tkt_catalog_misc1->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_catalog_code->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_catalog_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_catalog_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_catalog_misc1->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @38-8F7EBB76
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_catalog_code->Errors->Count());
        $errors = ($errors || $this->tkt_catalog_id->Errors->Count());
        $errors = ($errors || $this->tkt_catalog_value->Errors->Count());
        $errors = ($errors || $this->tkt_catalog_misc1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @38-CEED61E4
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
        $Redirect = "SSFTicketSpeedKeyGroups.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketSpeedKeyGroups.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "speedkey", "SpeedKey_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketSpeedKeyGroups.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "speedkey", "SpeedKey_Insert"));
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

//InsertRow Method @38-9B23D2A1
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_catalog_code->SetValue($this->tkt_catalog_code->GetValue(true));
        $this->DataSource->tkt_catalog_id->SetValue($this->tkt_catalog_id->GetValue(true));
        $this->DataSource->tkt_catalog_value->SetValue($this->tkt_catalog_value->GetValue(true));
        $this->DataSource->tkt_catalog_misc1->SetValue($this->tkt_catalog_misc1->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @38-F4CE1EC5
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_catalog_code->SetValue($this->tkt_catalog_code->GetValue(true));
        $this->DataSource->tkt_catalog_id->SetValue($this->tkt_catalog_id->GetValue(true));
        $this->DataSource->tkt_catalog_value->SetValue($this->tkt_catalog_value->GetValue(true));
        $this->DataSource->tkt_catalog_misc1->SetValue($this->tkt_catalog_misc1->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @38-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @38-1B19CE46
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_catalog_misc1->Prepare();

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
                    $this->tkt_catalog_code->SetValue($this->DataSource->tkt_catalog_code->GetValue());
                    $this->tkt_catalog_id->SetValue($this->DataSource->tkt_catalog_id->GetValue());
                    $this->tkt_catalog_value->SetValue($this->DataSource->tkt_catalog_value->GetValue());
                    $this->tkt_catalog_misc1->SetValue($this->DataSource->tkt_catalog_misc1->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_catalog_code->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_catalog_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_catalog_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_catalog_misc1->Errors->ToString());
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

        $this->tkt_catalog_code->Show();
        $this->tkt_catalog_id->Show();
        $this->tkt_catalog_value->Show();
        $this->tkt_catalog_misc1->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_catalog Class @38-FCB6E20C

class clsssf_tkt_catalogDataSource extends clsDBConnection1 {  //ssf_tkt_catalogDataSource Class @38-9B3D5D4B

//DataSource Variables @38-84C1226C
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
    public $tkt_catalog_code;
    public $tkt_catalog_id;
    public $tkt_catalog_value;
    public $tkt_catalog_misc1;
//End DataSource Variables

//DataSourceClass_Initialize Event @38-F04EADDA
    function clsssf_tkt_catalogDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_catalog/Error";
        $this->Initialize();
        $this->tkt_catalog_code = new clsField("tkt_catalog_code", ccsText, "");
        $this->tkt_catalog_id = new clsField("tkt_catalog_id", ccsText, "");
        $this->tkt_catalog_value = new clsField("tkt_catalog_value", ccsText, "");
        $this->tkt_catalog_misc1 = new clsField("tkt_catalog_misc1", ccsText, "");

        $this->InsertFields["tkt_catalog_code"] = array("Name" => "tkt_catalog_code", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_catalog_id"] = array("Name" => "tkt_catalog_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_catalog_value"] = array("Name" => "tkt_catalog_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_catalog_misc1"] = array("Name" => "tkt_catalog_misc1", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_code"] = array("Name" => "tkt_catalog_code", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_id"] = array("Name" => "tkt_catalog_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_value"] = array("Name" => "tkt_catalog_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_misc1"] = array("Name" => "tkt_catalog_misc1", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @38-E252EA2C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urlspeedkey", ccsText, "", "", $this->Parameters["urlspeedkey"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_catalog_code", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @38-F04524A4
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @38-F4A54930
    function SetValues()
    {
        $this->tkt_catalog_code->SetDBValue($this->f("tkt_catalog_code"));
        $this->tkt_catalog_id->SetDBValue($this->f("tkt_catalog_id"));
        $this->tkt_catalog_value->SetDBValue($this->f("tkt_catalog_value"));
        $this->tkt_catalog_misc1->SetDBValue($this->f("tkt_catalog_misc1"));
    }
//End SetValues Method

//Insert Method @38-3F60AE82
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_catalog_code"]["Value"] = $this->tkt_catalog_code->GetDBValue(true);
        $this->InsertFields["tkt_catalog_id"]["Value"] = $this->tkt_catalog_id->GetDBValue(true);
        $this->InsertFields["tkt_catalog_value"]["Value"] = $this->tkt_catalog_value->GetDBValue(true);
        $this->InsertFields["tkt_catalog_misc1"]["Value"] = $this->tkt_catalog_misc1->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_catalog", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @38-242CA95F
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_catalog_code"]["Value"] = $this->tkt_catalog_code->GetDBValue(true);
        $this->UpdateFields["tkt_catalog_id"]["Value"] = $this->tkt_catalog_id->GetDBValue(true);
        $this->UpdateFields["tkt_catalog_value"]["Value"] = $this->tkt_catalog_value->GetDBValue(true);
        $this->UpdateFields["tkt_catalog_misc1"]["Value"] = $this->tkt_catalog_misc1->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_catalog", $this->UpdateFields, $this);
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

//Delete Method @38-D3A29FAD
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_catalog";
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

} //End ssf_tkt_catalogDataSource Class @38-FCB6E20C



//Initialize Page @1-8E7587FB
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
$TemplateFileName = "SSFTicketSpeedKeyGroups.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Include events file @1-15246A11
include("./SSFTicketSpeedKeyGroups_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C0C8E5D8
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$SpeedKey = new clsGridSpeedKey("", $MainPage);
$ssf_tkt_catalog = new clsRecordssf_tkt_catalog("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->SpeedKey = & $SpeedKey;
$MainPage->ssf_tkt_catalog = & $ssf_tkt_catalog;
$SpeedKey->Initialize();
$ssf_tkt_catalog->Initialize();

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

//Execute Components @1-371716BD
$SSFSpiritHeader->Operations();
$ssf_tkt_catalog->Operation();
//End Execute Components

//Go to destination page @1-0CEDBCF2
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($SpeedKey);
    unset($ssf_tkt_catalog);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-988A5FD3
$SSFSpiritHeader->Show();
$SpeedKey->Show();
$ssf_tkt_catalog->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-839E71CE
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($SpeedKey);
unset($ssf_tkt_catalog);
unset($Tpl);
//End Unload Page


?>
