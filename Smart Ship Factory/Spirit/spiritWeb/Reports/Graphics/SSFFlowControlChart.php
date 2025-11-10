<?php
//Include Common Files @1-28193D85
define("RelativePath", "../..");
define("PathToCurrentPage", "/Reports/Graphics/");
define("FileName", "SSFFlowControlChart.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_flow_control_da { //ssf_addin_flow_control_da Class @3-171C14DE

//Variables @3-9E315808

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

//Class_Initialize Event @3-EA3AE8D8
    function clsRecordssf_addin_flow_control_da($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_flow_control_da/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_flow_control_da";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->s_date_from->Required = true;
            $this->DatePicker_s_fl_date1 = new clsDatePicker("DatePicker_s_fl_date1", "ssf_addin_flow_control_da", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->s_date_to->Required = true;
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_addin_flow_control_da", "s_date_to", $this);
            $this->s_pump_id = new clsControl(ccsListBox, "s_pump_id", "s_pump_id", ccsInteger, "", CCGetRequestParam("s_pump_id", $Method, NULL), $this);
            $this->s_pump_id->DSType = dsSQL;
            list($this->s_pump_id->BoundColumn, $this->s_pump_id->TextColumn, $this->s_pump_id->DBFormat) = array("id", "id", "");
            $this->s_pump_id->DataSource = new clsDBConnection1();
            $this->s_pump_id->ds = & $this->s_pump_id->DataSource;
            $this->s_pump_id->DataSource->SQL = "Select ID as ID from config_values \n" .
            "where library = 'pump' and groupname = 'general'\n" .
            "and parameter = 'ID'  {SQL_OrderBy}";
            $this->s_pump_id->DataSource->Order = "id";
            $this->s_grade_id = new clsControl(ccsListBox, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("id", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "param_value";
            $this->btnrepoption = new clsControl(ccsRadioButton, "btnrepoption", "btnrepoption", ccsText, "", CCGetRequestParam("btnrepoption", $Method, NULL), $this);
            $this->btnrepoption->DSType = dsListOfValues;
            $this->btnrepoption->Values = array(array("1", $CCSLocales->GetText("ssf_bypump")), array("2", $CCSLocales->GetText("ssf_bygrade")));
            $this->btnrepoption->HTML = true;
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->btnrepoption->Value) && !strlen($this->btnrepoption->Value) && $this->btnrepoption->Value !== false)
                    $this->btnrepoption->SetText(1);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @3-009F11F3
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_pump_id->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $Validation = ($this->btnrepoption->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->btnrepoption->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-6254B929
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_fl_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_pump_id->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->btnrepoption->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-E5021593
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
        $Redirect = "SSFFlowControlChart.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFlowControlChart.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-88A2C227
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_pump_id->Prepare();
        $this->s_grade_id->Prepare();
        $this->btnrepoption->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_fl_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->btnrepoption->Errors->ToString());
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
        $this->DatePicker_s_fl_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_pump_id->Show();
        $this->s_grade_id->Show();
        $this->btnrepoption->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_flow_control_da Class @3-FCB6E20C

class clsGridchartdetail { //chartdetail class @15-4B24B8D5

//Variables @15-6E51DF5A

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

//Class_Initialize Event @15-F6049EA9
    function clsGridchartdetail($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "chartdetail";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid chartdetail";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clschartdetailDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 9;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->imgChartDetail = new clsControl(ccsImageLink, "imgChartDetail", "imgChartDetail", ccsText, "", CCGetRequestParam("imgChartDetail", ccsGet, NULL), $this);
        $this->imgChartDetail->Page = "SSFlowControlBigChart.php";
        $this->id = new clsControl(ccsLabel, "id", "id", ccsFloat, "", CCGetRequestParam("id", ccsGet, NULL), $this);
        $this->RowSeparator = new clsPanel("RowSeparator", $this);
        $this->EmptyRow = new clsControl(ccsLabel, "EmptyRow", "EmptyRow", ccsText, "", CCGetRequestParam("EmptyRow", ccsGet, NULL), $this);
        $this->EmptyRow->HTML = true;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @15-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @15-8450AB72
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);

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
            $this->ControlsVisible["imgChartDetail"] = $this->imgChartDetail->Visible;
            $this->ControlsVisible["id"] = $this->id->Visible;
            $this->ControlsVisible["RowSeparator"] = $this->RowSeparator->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->imgChartDetail->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->imgChartDetail->Parameters = CCAddParam($this->imgChartDetail->Parameters, "s_pump_id", $this->DataSource->f("id"));
                $this->id->SetValue($this->DataSource->id->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->imgChartDetail->Show();
                $this->id->Show();
                $this->RowSeparator->Show();
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
        $this->EmptyRow->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @15-A7E7AFD4
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->imgChartDetail->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End chartdetail Class @15-FCB6E20C

class clschartdetailDataSource extends clsDBConnection1 {  //chartdetailDataSource Class @15-B66300A0

//DataSource Variables @15-3A1D32BA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $id;
//End DataSource Variables

//DataSourceClass_Initialize Event @15-9E8189E2
    function clschartdetailDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid chartdetail";
        $this->Initialize();
        $this->id = new clsField("id", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @15-396D7CB8
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "a.ID";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @15-C40A35D7
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_pump_id", ccsText, "", "", $this->Parameters["urls_pump_id"], "", false);
    }
//End Prepare Method

//Open Method @15-613B951A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (Select a.ID as ID from config_values a, ssf_generic_config_values b\n" .
        "where a.library = 'pump' and a.groupname = 'general'\n" .
        "and a.parameter = 'ID' \n" .
        "and  ( a.id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = ''  )\n" .
        "and b.library = 'Flow Control' and b.groupname = 'device:pump'\n" .
        "and b.device_id = a.ID and b.parameter = 'flow_warn' and\n" .
        "b.param_value <> '0') cnt";
        $this->SQL = "Select a.ID as ID from config_values a, ssf_generic_config_values b\n" .
        "where a.library = 'pump' and a.groupname = 'general'\n" .
        "and a.parameter = 'ID' \n" .
        "and  ( a.id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = ''  )\n" .
        "and b.library = 'Flow Control' and b.groupname = 'device:pump'\n" .
        "and b.device_id = a.ID and b.parameter = 'flow_warn' and\n" .
        "b.param_value <> '0' {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @15-856207AC
    function SetValues()
    {
        $this->id->SetDBValue(trim($this->f("id")));
    }
//End SetValues Method

} //End chartdetailDataSource Class @15-FCB6E20C

class clsGridchartdetail_product { //chartdetail_product class @30-8C055600

//Variables @30-6E51DF5A

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

//Class_Initialize Event @30-B929DC76
    function clsGridchartdetail_product($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "chartdetail_product";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid chartdetail_product";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clschartdetail_productDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 9;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->imgChartDetail_product = new clsControl(ccsImageLink, "imgChartDetail_product", "imgChartDetail_product", ccsText, "", CCGetRequestParam("imgChartDetail_product", ccsGet, NULL), $this);
        $this->imgChartDetail_product->Page = "SSFlowControlBigChart.php";
        $this->id = new clsControl(ccsLabel, "id", "id", ccsText, "", CCGetRequestParam("id", ccsGet, NULL), $this);
        $this->RowSeparator = new clsPanel("RowSeparator", $this);
        $this->EmptyRow = new clsControl(ccsLabel, "EmptyRow", "EmptyRow", ccsText, "", CCGetRequestParam("EmptyRow", ccsGet, NULL), $this);
        $this->EmptyRow->HTML = true;
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

//Show Method @30-382EEE18
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

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
            $this->ControlsVisible["imgChartDetail_product"] = $this->imgChartDetail_product->Visible;
            $this->ControlsVisible["id"] = $this->id->Visible;
            $this->ControlsVisible["RowSeparator"] = $this->RowSeparator->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->imgChartDetail_product->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->imgChartDetail_product->Parameters = CCAddParam($this->imgChartDetail_product->Parameters, "s_grade_id", $this->DataSource->f("id"));
                $this->id->SetValue($this->DataSource->id->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->imgChartDetail_product->Show();
                $this->id->Show();
                $this->RowSeparator->Show();
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
        $this->EmptyRow->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @30-5F4B5D98
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->imgChartDetail_product->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End chartdetail_product Class @30-FCB6E20C

class clschartdetail_productDataSource extends clsDBConnection1 {  //chartdetail_productDataSource Class @30-D309DA47

//DataSource Variables @30-3A1D32BA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $id;
//End DataSource Variables

//DataSourceClass_Initialize Event @30-FFF9232F
    function clschartdetail_productDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid chartdetail_product";
        $this->Initialize();
        $this->id = new clsField("id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @30-F88DC8F0
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "a.param_value";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @30-7A23B6AF
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_grade_id", ccsText, "", "", $this->Parameters["urls_grade_id"], "", false);
    }
//End Prepare Method

//Open Method @30-67763801
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (Select a.param_value as param_value, a.id as ID from config_values a\n" .
        "where a.library = 'grade' and a.groupname = 'general'\n" .
        "and a.parameter = 'number'\n" .
        "and  ( a.id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = ''  )) cnt";
        $this->SQL = "Select a.param_value as param_value, a.id as ID from config_values a\n" .
        "where a.library = 'grade' and a.groupname = 'general'\n" .
        "and a.parameter = 'number'\n" .
        "and  ( a.id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = ''  ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @30-E56CE675
    function SetValues()
    {
        $this->id->SetDBValue($this->f("id"));
    }
//End SetValues Method

} //End chartdetail_productDataSource Class @30-FCB6E20C

//Initialize Page @1-05754A5E
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
$TemplateFileName = "SSFFlowControlChart.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-756CB5A6
include("./SSFFlowControlChart_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B565105A
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$ssf_addin_flow_control_da = new clsRecordssf_addin_flow_control_da("", $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Page = "SSFFlowControlChart.php";
$chartdetail = new clsGridchartdetail("", $MainPage);
$chartdetail_product = new clsGridchartdetail_product("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Label1 = & $Label1;
$MainPage->ssf_addin_flow_control_da = & $ssf_addin_flow_control_da;
$MainPage->Link1 = & $Link1;
$MainPage->chartdetail = & $chartdetail;
$MainPage->chartdetail_product = & $chartdetail_product;
$Link1->Parameters = CCGetQueryString("All", array("ccsForm"));
$Link1->Parameters = CCAddParam($Link1->Parameters, "see_details", 1);
$chartdetail->Initialize();
$chartdetail_product->Initialize();

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

//Execute Components @1-6684D8B8
$SSFSpiritHeader->Operations();
$ssf_addin_flow_control_da->Operation();
//End Execute Components

//Go to destination page @1-E3BBB47A
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_flow_control_da);
    unset($chartdetail);
    unset($chartdetail_product);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-6B344FA9
$SSFSpiritHeader->Show();
$ssf_addin_flow_control_da->Show();
$chartdetail->Show();
$chartdetail_product->Show();
$Label1->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-99C1D7FD
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_flow_control_da);
unset($chartdetail);
unset($chartdetail_product);
unset($Tpl);
//End Unload Page


?>
