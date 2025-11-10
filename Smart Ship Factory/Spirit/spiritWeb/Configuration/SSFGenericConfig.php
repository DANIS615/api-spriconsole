<?php
//Include Common Files @1-4DECC3FF
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFGenericConfig.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @81-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_generic_config_paramSearch { //ssf_generic_config_paramSearch Class @4-11224AFA

//Variables @4-9E315808

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

//Class_Initialize Event @4-270FFC35
    function clsRecordssf_generic_config_paramSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_generic_config_paramSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_generic_config_paramSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_module = new clsControl(ccsListBox, "s_module", "s_module", ccsText, "", CCGetRequestParam("s_module", $Method, NULL), $this);
            $this->s_module->DSType = dsTable;
            list($this->s_module->BoundColumn, $this->s_module->TextColumn, $this->s_module->DBFormat) = array("module", "module", "");
            $this->s_module->DataSource = new clsDBConnection1();
            $this->s_module->ds = & $this->s_module->DataSource;
            $this->s_module->DataSource->SQL = "SELECT distinct \"module\" AS \"module\" \n" .
"FROM ssf_generic_config_param {SQL_Where} {SQL_OrderBy}";
            $this->s_module->DataSource->Order = "module";
            $this->s_module->DataSource->Order = "module";
            $this->s_label = new clsControl(ccsTextBox, "s_label", "s_label", ccsText, "", CCGetRequestParam("s_label", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @4-3AA27057
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_module->Validate() && $Validation);
        $Validation = ($this->s_label->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_module->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_label->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @4-55FC5F38
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_module->Errors->Count());
        $errors = ($errors || $this->s_label->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @4-E07EC837
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
        $Redirect = "SSFGenericConfig.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFGenericConfig.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @4-BF3FB68D
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_module->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_module->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_label->Errors->ToString());
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

        $this->s_module->Show();
        $this->s_label->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_generic_config_paramSearch Class @4-FCB6E20C

class clsGridssf_generic_config_param { //ssf_generic_config_param class @2-3AD55E3D

//Variables @2-6E51DF5A

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

//Class_Initialize Event @2-1BDBE83A
    function clsGridssf_generic_config_param($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_generic_config_param";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_generic_config_param";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_generic_config_paramDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 30;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->module = new clsControl(ccsLabel, "module", "module", ccsText, "", CCGetRequestParam("module", ccsGet, NULL), $this);
        $this->subgroup = new clsControl(ccsLabel, "subgroup", "subgroup", ccsText, "", CCGetRequestParam("subgroup", ccsGet, NULL), $this);
        $this->label = new clsControl(ccsLink, "label", "label", ccsText, "", CCGetRequestParam("label", ccsGet, NULL), $this);
        $this->label->Page = "SSFGenericConfig.php";
        $this->lblValue = new clsControl(ccsLabel, "lblValue", "lblValue", ccsText, "", CCGetRequestParam("lblValue", ccsGet, NULL), $this);
        $this->tip = new clsControl(ccsLabel, "tip", "tip", ccsMemo, "", CCGetRequestParam("tip", ccsGet, NULL), $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @2-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @2-CB67C8D0
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_module"] = CCGetFromGet("s_module", NULL);
        $this->DataSource->Parameters["urls_label"] = CCGetFromGet("s_label", NULL);

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
            $this->ControlsVisible["module"] = $this->module->Visible;
            $this->ControlsVisible["subgroup"] = $this->subgroup->Visible;
            $this->ControlsVisible["label"] = $this->label->Visible;
            $this->ControlsVisible["lblValue"] = $this->lblValue->Visible;
            $this->ControlsVisible["tip"] = $this->tip->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->module->SetValue($this->DataSource->module->GetValue());
                $this->subgroup->SetValue($this->DataSource->subgroup->GetValue());
                $this->label->SetValue($this->DataSource->label->GetValue());
                $this->label->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->label->Parameters = CCAddParam($this->label->Parameters, "p_parameter", $this->DataSource->f("name"));
                $this->label->Parameters = CCAddParam($this->label->Parameters, "p_library", $this->DataSource->f("module"));
                $this->label->Parameters = CCAddParam($this->label->Parameters, "p_data_type", $this->DataSource->f("data_type"));
                $this->label->Parameters = CCAddParam($this->label->Parameters, "p_subgroup", $this->DataSource->f("subgroup"));
                $this->tip->SetValue($this->DataSource->tip->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->module->Show();
                $this->subgroup->Show();
                $this->label->Show();
                $this->lblValue->Show();
                $this->tip->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-CDFE2674
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->module->Errors->ToString());
        $errors = ComposeStrings($errors, $this->subgroup->Errors->ToString());
        $errors = ComposeStrings($errors, $this->label->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblValue->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tip->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_generic_config_param Class @2-FCB6E20C

class clsssf_generic_config_paramDataSource extends clsDBConnection1 {  //ssf_generic_config_paramDataSource Class @2-841DB05F

//DataSource Variables @2-B0F0A5A9
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $module;
    public $subgroup;
    public $label;
    public $tip;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-41951D62
    function clsssf_generic_config_paramDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_generic_config_param";
        $this->Initialize();
        $this->module = new clsField("module", ccsText, "");
        $this->subgroup = new clsField("subgroup", ccsText, "");
        $this->label = new clsField("label", ccsText, "");
        $this->tip = new clsField("tip", ccsMemo, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-0567704D
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "type, subgroup, param_order";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @2-EB73FE50
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_module", ccsText, "", "", $this->Parameters["urls_module"], "", false);
        $this->wp->AddParameter("2", "urls_label", ccsText, "", "", $this->Parameters["urls_label"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "\"module\"", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "label", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @2-F4CB0AA8
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_generic_config_param";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_generic_config_param {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-2EEFAE19
    function SetValues()
    {
        $this->module->SetDBValue($this->f("module"));
        $this->subgroup->SetDBValue($this->f("subgroup"));
        $this->label->SetDBValue($this->f("label"));
        $this->tip->SetDBValue($this->f("tip"));
    }
//End SetValues Method

} //End ssf_generic_config_paramDataSource Class @2-FCB6E20C

class clsGridconfig_values { //config_values class @56-31278EC0

//Variables @56-6E51DF5A

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

//Class_Initialize Event @56-9006497F
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
            $this->PageSize = 16;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->param_value = new clsControl(ccsLink, "param_value", "param_value", ccsText, "", CCGetRequestParam("param_value", ccsGet, NULL), $this);
        $this->param_value->Page = "";
        $this->lblActualValue = new clsControl(ccsLabel, "lblActualValue", "lblActualValue", ccsText, "", CCGetRequestParam("lblActualValue", ccsGet, NULL), $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @56-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @56-D19C3D0D
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
            $this->ControlsVisible["param_value"] = $this->param_value->Visible;
            $this->ControlsVisible["lblActualValue"] = $this->lblActualValue->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->param_value->SetValue($this->DataSource->param_value->GetValue());
                $this->param_value->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->param_value->Parameters = CCAddParam($this->param_value->Parameters, "p_device", $this->DataSource->f("param_value"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->param_value->Show();
                $this->lblActualValue->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @56-0C0808B3
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->param_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblActualValue->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End config_values Class @56-FCB6E20C

class clsconfig_valuesDataSource extends clsDBConnection1 {  //config_valuesDataSource Class @56-E1EB8A51

//DataSource Variables @56-FB031919
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

//DataSourceClass_Initialize Event @56-D1D40EFC
    function clsconfig_valuesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid config_values";
        $this->Initialize();
        $this->param_value = new clsField("param_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @56-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @56-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @56-3CE4DD58
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (select * from config_values \n" .
        ") cnt";
        $this->SQL = "select * from config_values \n" .
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

//SetValues Method @56-CCCB1666
    function SetValues()
    {
        $this->param_value->SetDBValue($this->f("param_value"));
    }
//End SetValues Method

} //End config_valuesDataSource Class @56-FCB6E20C

class clsRecordssf_generic_config_values { //ssf_generic_config_values Class @37-0183C8C8

//Variables @37-9E315808

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

//Class_Initialize Event @37-7939D44D
    function clsRecordssf_generic_config_values($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_generic_config_values/Error";
        $this->DataSource = new clsssf_generic_config_valuesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_generic_config_values";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->library = new clsControl(ccsLabel, "library", $CCSLocales->GetText("library"), ccsText, "", CCGetRequestParam("library", $Method, NULL), $this);
            $this->lbl_paramLabel = new clsControl(ccsLabel, "lbl_paramLabel", "lbl_paramLabel", ccsText, "", CCGetRequestParam("lbl_paramLabel", $Method, NULL), $this);
            $this->param_value = new clsControl(ccsTextBox, "param_value", $CCSLocales->GetText("param_value"), ccsText, "", CCGetRequestParam("param_value", $Method, NULL), $this);
            $this->ListBox1 = new clsControl(ccsListBox, "ListBox1", "ListBox1", ccsText, "", CCGetRequestParam("ListBox1", $Method, NULL), $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @37-209A72A2
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlp_library"] = CCGetFromGet("p_library", NULL);
        $this->DataSource->Parameters["urlp_parameter"] = CCGetFromGet("p_parameter", NULL);
    }
//End Initialize Method

//Validate Method @37-830D6F9D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->param_value->Validate() && $Validation);
        $Validation = ($this->ListBox1->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ListBox1->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @37-09DA18A6
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->library->Errors->Count());
        $errors = ($errors || $this->lbl_paramLabel->Errors->Count());
        $errors = ($errors || $this->param_value->Errors->Count());
        $errors = ($errors || $this->ListBox1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @37-D03F01B5
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
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Cancel";
            if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFGenericConfig.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFGenericConfig.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "p_parameter", "p_library"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
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

//UpdateRow Method @37-70766A60
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->library->SetValue($this->library->GetValue(true));
        $this->DataSource->param_value->SetValue($this->param_value->GetValue(true));
        $this->DataSource->ListBox1->SetValue($this->ListBox1->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @37-9716FAFA
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->ListBox1->Prepare();

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
                $this->library->SetValue($this->DataSource->library->GetValue());
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
            $Error = ComposeStrings($Error, $this->library->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_paramLabel->Errors->ToString());
            $Error = ComposeStrings($Error, $this->param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ListBox1->Errors->ToString());
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

        $this->library->Show();
        $this->lbl_paramLabel->Show();
        $this->param_value->Show();
        $this->ListBox1->Show();
        $this->Button_Update->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_generic_config_values Class @37-FCB6E20C

class clsssf_generic_config_valuesDataSource extends clsDBConnection1 {  //ssf_generic_config_valuesDataSource Class @37-1672C5B7

//DataSource Variables @37-D2AD3989
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
    public $library;
    public $lbl_paramLabel;
    public $param_value;
    public $ListBox1;
//End DataSource Variables

//DataSourceClass_Initialize Event @37-AA1F9317
    function clsssf_generic_config_valuesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_generic_config_values/Error";
        $this->Initialize();
        $this->library = new clsField("library", ccsText, "");
        $this->lbl_paramLabel = new clsField("lbl_paramLabel", ccsText, "");
        $this->param_value = new clsField("param_value", ccsText, "");
        $this->ListBox1 = new clsField("ListBox1", ccsText, "");

        $this->UpdateFields["param_value"] = array("Name" => "param_value", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @37-BAE0359E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_library", ccsText, "", "", $this->Parameters["urlp_library"], "", false);
        $this->wp->AddParameter("2", "urlp_parameter", ccsText, "", "", $this->Parameters["urlp_parameter"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "library", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "\"parameter\"", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @37-04CF451C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_generic_config_values {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @37-688837DB
    function SetValues()
    {
        $this->library->SetDBValue($this->f("library"));
        $this->param_value->SetDBValue($this->f("param_value"));
    }
//End SetValues Method

//Update Method @37-EC0338CC
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["param_value"]["Value"] = $this->param_value->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_generic_config_values", $this->UpdateFields, $this);
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

} //End ssf_generic_config_valuesDataSource Class @37-FCB6E20C

class clsRecordssfConfiValuesForDevice { //ssfConfiValuesForDevice Class @66-1161D35F

//Variables @66-9E315808

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

//Class_Initialize Event @66-6CD9999A
    function clsRecordssfConfiValuesForDevice($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssfConfiValuesForDevice/Error";
        $this->DataSource = new clsssfConfiValuesForDeviceDataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssfConfiValuesForDevice";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->library = new clsControl(ccsLabel, "library", $CCSLocales->GetText("library"), ccsText, "", CCGetRequestParam("library", $Method, NULL), $this);
            $this->device_id = new clsControl(ccsLabel, "device_id", $CCSLocales->GetText("device_id"), ccsText, "", CCGetRequestParam("device_id", $Method, NULL), $this);
            $this->lbl_deviceLabel = new clsControl(ccsLabel, "lbl_deviceLabel", "lbl_deviceLabel", ccsText, "", CCGetRequestParam("lbl_deviceLabel", $Method, NULL), $this);
            $this->param_value = new clsControl(ccsTextBox, "param_value", $CCSLocales->GetText("param_value"), ccsText, "", CCGetRequestParam("param_value", $Method, NULL), $this);
            $this->lstdeviceRecord = new clsControl(ccsListBox, "lstdeviceRecord", "lstdeviceRecord", ccsText, "", CCGetRequestParam("lstdeviceRecord", $Method, NULL), $this);
            $this->Button_UpdateAll = new clsButton("Button_UpdateAll", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @66-12AA8EF2
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlp_library"] = CCGetFromGet("p_library", NULL);
        $this->DataSource->Parameters["urlp_device"] = CCGetFromGet("p_device", NULL);
        $this->DataSource->Parameters["urlp_parameter"] = CCGetFromGet("p_parameter", NULL);
    }
//End Initialize Method

//Validate Method @66-21196964
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->param_value->Validate() && $Validation);
        $Validation = ($this->lstdeviceRecord->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstdeviceRecord->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @66-6B838BA6
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->library->Errors->Count());
        $errors = ($errors || $this->device_id->Errors->Count());
        $errors = ($errors || $this->lbl_deviceLabel->Errors->Count());
        $errors = ($errors || $this->param_value->Errors->Count());
        $errors = ($errors || $this->lstdeviceRecord->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @66-D0A0AA0C
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
            $this->PressedButton = $this->EditMode ? "Button_UpdateAll" : "Button_Cancel";
            if($this->Button_UpdateAll->Pressed) {
                $this->PressedButton = "Button_UpdateAll";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFGenericConfig.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFGenericConfig.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "p_device"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_UpdateAll") {
                if(!CCGetEvent($this->Button_UpdateAll->CCSEvents, "OnClick", $this->Button_UpdateAll) || !$this->UpdateRow()) {
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

//UpdateRow Method @66-8EFF5DA3
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->library->SetValue($this->library->GetValue(true));
        $this->DataSource->device_id->SetValue($this->device_id->GetValue(true));
        $this->DataSource->lbl_deviceLabel->SetValue($this->lbl_deviceLabel->GetValue(true));
        $this->DataSource->param_value->SetValue($this->param_value->GetValue(true));
        $this->DataSource->lstdeviceRecord->SetValue($this->lstdeviceRecord->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @66-6698BB04
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->lstdeviceRecord->Prepare();

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
                $this->library->SetValue($this->DataSource->library->GetValue());
                $this->device_id->SetValue($this->DataSource->device_id->GetValue());
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
            $Error = ComposeStrings($Error, $this->library->Errors->ToString());
            $Error = ComposeStrings($Error, $this->device_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lbl_deviceLabel->Errors->ToString());
            $Error = ComposeStrings($Error, $this->param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstdeviceRecord->Errors->ToString());
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
        $this->Button_UpdateAll->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->library->Show();
        $this->device_id->Show();
        $this->lbl_deviceLabel->Show();
        $this->param_value->Show();
        $this->lstdeviceRecord->Show();
        $this->Button_UpdateAll->Show();
        $this->Button_Update->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssfConfiValuesForDevice Class @66-FCB6E20C

class clsssfConfiValuesForDeviceDataSource extends clsDBConnection1 {  //ssfConfiValuesForDeviceDataSource Class @66-D3EFE330

//DataSource Variables @66-B11A4BF7
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
    public $library;
    public $device_id;
    public $lbl_deviceLabel;
    public $param_value;
    public $lstdeviceRecord;
//End DataSource Variables

//DataSourceClass_Initialize Event @66-485B12F5
    function clsssfConfiValuesForDeviceDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssfConfiValuesForDevice/Error";
        $this->Initialize();
        $this->library = new clsField("library", ccsText, "");
        $this->device_id = new clsField("device_id", ccsText, "");
        $this->lbl_deviceLabel = new clsField("lbl_deviceLabel", ccsText, "");
        $this->param_value = new clsField("param_value", ccsText, "");
        $this->lstdeviceRecord = new clsField("lstdeviceRecord", ccsText, "");

        $this->UpdateFields["param_value"] = array("Name" => "param_value", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @66-16CAA2F3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_library", ccsText, "", "", $this->Parameters["urlp_library"], "", false);
        $this->wp->AddParameter("2", "urlp_device", ccsText, "", "", $this->Parameters["urlp_device"], "", false);
        $this->wp->AddParameter("3", "urlp_parameter", ccsText, "", "", $this->Parameters["urlp_parameter"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "library", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "device_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "\"parameter\"", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @66-04CF451C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_generic_config_values {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @66-D1400517
    function SetValues()
    {
        $this->library->SetDBValue($this->f("library"));
        $this->device_id->SetDBValue($this->f("device_id"));
        $this->param_value->SetDBValue($this->f("param_value"));
    }
//End SetValues Method

//Update Method @66-EC0338CC
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["param_value"]["Value"] = $this->param_value->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_generic_config_values", $this->UpdateFields, $this);
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

} //End ssfConfiValuesForDeviceDataSource Class @66-FCB6E20C

//Initialize Page @1-BF2EBF26
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
$TemplateFileName = "SSFGenericConfig.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-76367546
include("./SSFGenericConfig_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-3C4CF10A
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_generic_config_paramSearch = new clsRecordssf_generic_config_paramSearch("", $MainPage);
$ssf_generic_config_param = new clsGridssf_generic_config_param("", $MainPage);
$config_values = new clsGridconfig_values("", $MainPage);
$ssf_generic_config_values = new clsRecordssf_generic_config_values("", $MainPage);
$ssfConfiValuesForDevice = new clsRecordssfConfiValuesForDevice("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_generic_config_paramSearch = & $ssf_generic_config_paramSearch;
$MainPage->ssf_generic_config_param = & $ssf_generic_config_param;
$MainPage->config_values = & $config_values;
$MainPage->ssf_generic_config_values = & $ssf_generic_config_values;
$MainPage->ssfConfiValuesForDevice = & $ssfConfiValuesForDevice;
$ssf_generic_config_param->Initialize();
$config_values->Initialize();
$ssf_generic_config_values->Initialize();
$ssfConfiValuesForDevice->Initialize();

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

//Execute Components @1-A1807495
$SSFSpiritHeader->Operations();
$ssf_generic_config_paramSearch->Operation();
$ssf_generic_config_values->Operation();
$ssfConfiValuesForDevice->Operation();
//End Execute Components

//Go to destination page @1-B7C399C9
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_generic_config_paramSearch);
    unset($ssf_generic_config_param);
    unset($config_values);
    unset($ssf_generic_config_values);
    unset($ssfConfiValuesForDevice);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-5F548F67
$SSFSpiritHeader->Show();
$ssf_generic_config_paramSearch->Show();
$ssf_generic_config_param->Show();
$config_values->Show();
$ssf_generic_config_values->Show();
$ssfConfiValuesForDevice->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-E1DD1406
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_generic_config_paramSearch);
unset($ssf_generic_config_param);
unset($config_values);
unset($ssf_generic_config_values);
unset($ssfConfiValuesForDevice);
unset($Tpl);
//End Unload Page


?>
