<?php
//Include Common Files @1-3B06E013
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFForecourtStatus.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordconfig_valuesSearch { //config_valuesSearch Class @9-A28D21A5

//Variables @9-9E315808

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

//Class_Initialize Event @9-323F5450
    function clsRecordconfig_valuesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record config_valuesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "config_valuesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_param_value = new clsControl(ccsListBox, "s_param_value", "s_param_value", ccsText, "", CCGetRequestParam("s_param_value", $Method, NULL), $this);
            $this->s_param_value->DSType = dsSQL;
            list($this->s_param_value->BoundColumn, $this->s_param_value->TextColumn, $this->s_param_value->DBFormat) = array("param_value", "param_value", "");
            $this->s_param_value->DataSource = new clsDBConnection1();
            $this->s_param_value->ds = & $this->s_param_value->DataSource;
            $this->s_param_value->DataSource->SQL = "SELECT param_value \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'pump' )\n" .
            "AND (  groupname = 'general' )\n" .
            "AND ( parameter = 'ID' )  {SQL_OrderBy}";
            $this->s_param_value->DataSource->Order = "param_value";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @9-A3DD48CB
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_param_value->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_param_value->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @9-06CE25D3
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_param_value->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @9-94968E2F
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
        $Redirect = "SSFForecourtStatus.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFForecourtStatus.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @9-CBD836F6
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_param_value->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_param_value->Errors->ToString());
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

        $this->s_param_value->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End config_valuesSearch Class @9-FCB6E20C

class clsGridconfig_values { //config_values class @3-31278EC0

//Variables @3-370A09CF

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
    public $Sorter_param_value;
//End Variables

//Class_Initialize Event @3-BB86F0FC
    function clsGridconfig_values($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "config_values";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid config_values";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsconfig_valuesDataSource($this);
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
        $this->SorterName = CCGetParam("config_valuesOrder", "");
        $this->SorterDirection = CCGetParam("config_valuesDir", "");

        $this->param_value = new clsControl(ccsLink, "param_value", "param_value", ccsText, "", CCGetRequestParam("param_value", ccsGet, NULL), $this);
        $this->param_value->Page = "SSFForecourtStatus.php";
        $this->status = new clsControl(ccsLabel, "status", "status", ccsText, "", CCGetRequestParam("status", ccsGet, NULL), $this);
        $this->substatus = new clsControl(ccsLabel, "substatus", "substatus", ccsText, "", CCGetRequestParam("substatus", ccsGet, NULL), $this);
        $this->Sorter_param_value = new clsSorter($this->ComponentName, "Sorter_param_value", $FileName, $this);
        $this->config_values_Insert = new clsControl(ccsLink, "config_values_Insert", "config_values_Insert", ccsText, "", CCGetRequestParam("config_values_Insert", ccsGet, NULL), $this);
        $this->config_values_Insert->Parameters = CCGetQueryString("QueryString", array("param_value", "ccsForm"));
        $this->config_values_Insert->Page = "SSFForecourtStatus.php";
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

//Show Method @3-215B0F2D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_param_value"] = CCGetFromGet("s_param_value", NULL);

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
            $this->ControlsVisible["param_value"] = $this->param_value->Visible;
            $this->ControlsVisible["status"] = $this->status->Visible;
            $this->ControlsVisible["substatus"] = $this->substatus->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->param_value->SetValue($this->DataSource->param_value->GetValue());
                $this->param_value->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->param_value->Parameters = CCAddParam($this->param_value->Parameters, "param_value", $this->DataSource->f("param_value"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->param_value->Show();
                $this->status->Show();
                $this->substatus->Show();
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
        $this->Sorter_param_value->Show();
        $this->config_values_Insert->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-A8686DF9
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->param_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->substatus->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End config_values Class @3-FCB6E20C

class clsconfig_valuesDataSource extends clsDBConnection1 {  //config_valuesDataSource Class @3-E1EB8A51

//DataSource Variables @3-FB031919
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $param_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-D1D40EFC
    function clsconfig_valuesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid config_values";
        $this->Initialize();
        $this->param_value = new clsField("param_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-847ADDB0
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "param_value";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_param_value" => array("param_value", "")));
    }
//End SetOrder Method

//Prepare Method @3-72767748
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_param_value", ccsText, "", "", $this->Parameters["urls_param_value"], "", false);
    }
//End Prepare Method

//Open Method @3-07550227
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT param_value AS param_value \n" .
        "FROM config_values\n" .
        "WHERE ( library = 'pump' )\n" .
        "AND ( groupname = 'general' )\n" .
        "AND ( parameter = 'ID' )\n" .
        "AND ( param_value = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  = '' )) cnt";
        $this->SQL = "SELECT param_value AS param_value \n" .
        "FROM config_values\n" .
        "WHERE ( library = 'pump' )\n" .
        "AND ( groupname = 'general' )\n" .
        "AND ( parameter = 'ID' )\n" .
        "AND ( param_value = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  = '' ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-CCCB1666
    function SetValues()
    {
        $this->param_value->SetDBValue($this->f("param_value"));
    }
//End SetValues Method

} //End config_valuesDataSource Class @3-FCB6E20C

class clsRecordconfig_values1 { //config_values1 Class @18-88DF196C

//Variables @18-9E315808

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

//Class_Initialize Event @18-2C24D9A3
    function clsRecordconfig_values1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record config_values1/Error";
        $this->DataSource = new clsconfig_values1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "config_values1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->param_value = new clsControl(ccsTextBox, "param_value", $CCSLocales->GetText("param_value"), ccsText, "", CCGetRequestParam("param_value", $Method, NULL), $this);
            $this->status = new clsControl(ccsLabel, "status", "status", ccsText, "", CCGetRequestParam("status", $Method, NULL), $this);
            $this->h_status = new clsControl(ccsHidden, "h_status", "h_status", ccsText, "", CCGetRequestParam("h_status", $Method, NULL), $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @18-31EA7137
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlparam_value"] = CCGetFromGet("param_value", NULL);
    }
//End Initialize Method

//Validate Method @18-F04EA052
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->param_value->Validate() && $Validation);
        $Validation = ($this->h_status->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_status->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @18-99F51567
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->param_value->Errors->Count());
        $errors = ($errors || $this->status->Errors->Count());
        $errors = ($errors || $this->h_status->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @18-0413DA3A
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "";
            if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            }
        }
        $Redirect = "SSFForecourtStatus.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "Button_Update") {
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

//UpdateRow Method @18-51C3CF5D
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->param_value->SetValue($this->param_value->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @18-DF3BDCC0
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
                    $this->param_value->SetValue($this->DataSource->param_value->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->status->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_status->Errors->ToString());
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
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->param_value->Show();
        $this->status->Show();
        $this->h_status->Show();
        $this->Button_Update->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End config_values1 Class @18-FCB6E20C

class clsconfig_values1DataSource extends clsDBConnection1 {  //config_values1DataSource Class @18-E1CFF33F

//DataSource Variables @18-7C7E16E8
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $wp;
    public $AllParametersSet;

    public $UpdateFields = array();

    // Datasource fields
    public $param_value;
    public $status;
    public $h_status;
//End DataSource Variables

//DataSourceClass_Initialize Event @18-F6E8A83C
    function clsconfig_values1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record config_values1/Error";
        $this->Initialize();
        $this->param_value = new clsField("param_value", ccsText, "");
        $this->status = new clsField("status", ccsText, "");
        $this->h_status = new clsField("h_status", ccsText, "");

        $this->UpdateFields["param_value"] = array("Name" => "param_value", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @18-3CFF85E6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlparam_value", ccsText, "", "", $this->Parameters["urlparam_value"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "param_value", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @18-890674E4
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM config_values {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @18-CCCB1666
    function SetValues()
    {
        $this->param_value->SetDBValue($this->f("param_value"));
    }
//End SetValues Method

//Update Method @18-D5AD9E2A
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["param_value"]["Value"] = $this->param_value->GetDBValue(true);
        $this->SQL = CCBuildUpdate("config_values", $this->UpdateFields, $this);
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

} //End config_values1DataSource Class @18-FCB6E20C

//Initialize Page @1-1EF6DECE
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
$TemplateFileName = "SSFForecourtStatus.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-F079A9B8
include("./SSFForecourtStatus_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-12B98BED
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$config_valuesSearch = new clsRecordconfig_valuesSearch("", $MainPage);
$config_values = new clsGridconfig_values("", $MainPage);
$config_values1 = new clsRecordconfig_values1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->config_valuesSearch = & $config_valuesSearch;
$MainPage->config_values = & $config_values;
$MainPage->config_values1 = & $config_values1;
$config_values->Initialize();
$config_values1->Initialize();

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

//Execute Components @1-A64FD513
$SSFSpiritHeader->Operations();
$config_valuesSearch->Operation();
$config_values1->Operation();
//End Execute Components

//Go to destination page @1-712DB0C9
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($config_valuesSearch);
    unset($config_values);
    unset($config_values1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-E604E9CE
$SSFSpiritHeader->Show();
$config_valuesSearch->Show();
$config_values->Show();
$config_values1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-C1C489F4
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($config_valuesSearch);
unset($config_values);
unset($config_values1);
unset($Tpl);
//End Unload Page


?>
