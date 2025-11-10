<?php
//Include Common Files @1-EB04C5F2
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFPumpGroupDetail.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_pump_group_header { //ssf_pump_group_header class @4-D5C60FC0

//Variables @4-2C01004F

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
    public $Sorter_pump_group_id;
    public $Sorter_pump_group_name;
//End Variables

//Class_Initialize Event @4-91FAFEB2
    function clsGridssf_pump_group_header($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_pump_group_header";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_pump_group_header";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_pump_group_headerDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_pump_group_headerOrder", "");
        $this->SorterDirection = CCGetParam("ssf_pump_group_headerDir", "");

        $this->pump_group_id = new clsControl(ccsLink, "pump_group_id", "pump_group_id", ccsText, "", CCGetRequestParam("pump_group_id", ccsGet, NULL), $this);
        $this->pump_group_id->Page = "SSFPumpGroupDetail.php";
        $this->pump_group_name = new clsControl(ccsLabel, "pump_group_name", "pump_group_name", ccsText, "", CCGetRequestParam("pump_group_name", ccsGet, NULL), $this);
        $this->Sorter_pump_group_id = new clsSorter($this->ComponentName, "Sorter_pump_group_id", $FileName, $this);
        $this->Sorter_pump_group_name = new clsSorter($this->ComponentName, "Sorter_pump_group_name", $FileName, $this);
    }
//End Class_Initialize Event

//Initialize Method @4-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @4-0BB45312
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
            $this->ControlsVisible["pump_group_id"] = $this->pump_group_id->Visible;
            $this->ControlsVisible["pump_group_name"] = $this->pump_group_name->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pump_group_id->SetValue($this->DataSource->pump_group_id->GetValue());
                $this->pump_group_id->Parameters = CCGetQueryString("QueryString", array("ssf_pump_Insert", "ccsForm"));
                $this->pump_group_id->Parameters = CCAddParam($this->pump_group_id->Parameters, "pump_group_id", $this->DataSource->f("pump_group_id"));
                $this->pump_group_name->SetValue($this->DataSource->pump_group_name->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pump_group_id->Show();
                $this->pump_group_name->Show();
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
        $this->Sorter_pump_group_id->Show();
        $this->Sorter_pump_group_name->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @4-89066199
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pump_group_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_group_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_pump_group_header Class @4-FCB6E20C

class clsssf_pump_group_headerDataSource extends clsDBConnection1 {  //ssf_pump_group_headerDataSource Class @4-248B179F

//DataSource Variables @4-17FE6314
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pump_group_id;
    public $pump_group_name;
//End DataSource Variables

//DataSourceClass_Initialize Event @4-75D4F08F
    function clsssf_pump_group_headerDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_pump_group_header";
        $this->Initialize();
        $this->pump_group_id = new clsField("pump_group_id", ccsText, "");
        $this->pump_group_name = new clsField("pump_group_name", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @4-664FFB03
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "pump_group_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pump_group_id" => array("pump_group_id", ""), 
            "Sorter_pump_group_name" => array("pump_group_name", "")));
    }
//End SetOrder Method

//Prepare Method @4-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @4-04E9CB78
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_pump_group_header";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_pump_group_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @4-F3E7B31A
    function SetValues()
    {
        $this->pump_group_id->SetDBValue($this->f("pump_group_id"));
        $this->pump_group_name->SetDBValue($this->f("pump_group_name"));
    }
//End SetValues Method

} //End ssf_pump_group_headerDataSource Class @4-FCB6E20C

class clsGridconfig_values_ssf_pump_gr { //config_values_ssf_pump_gr class @9-F77C931D

//Variables @9-09E21603

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
    public $Sorter_pump_id;
    public $Sorter_implementation;
//End Variables

//Class_Initialize Event @9-42EA0FA5
    function clsGridconfig_values_ssf_pump_gr($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "config_values_ssf_pump_gr";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid config_values_ssf_pump_gr";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsconfig_values_ssf_pump_grDataSource($this);
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
        $this->SorterName = CCGetParam("config_values_ssf_pump_grOrder", "");
        $this->SorterDirection = CCGetParam("config_values_ssf_pump_grDir", "");

        $this->pump_id = new clsControl(ccsLink, "pump_id", "pump_id", ccsInteger, "", CCGetRequestParam("pump_id", ccsGet, NULL), $this);
        $this->pump_id->Page = "SSFPumpGroupDetail.php";
        $this->implementation = new clsControl(ccsLabel, "implementation", "implementation", ccsText, "", CCGetRequestParam("implementation", ccsGet, NULL), $this);
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_implementation = new clsSorter($this->ComponentName, "Sorter_implementation", $FileName, $this);
        $this->ssf_pump_Insert = new clsControl(ccsLink, "ssf_pump_Insert", "ssf_pump_Insert", ccsText, "", CCGetRequestParam("ssf_pump_Insert", ccsGet, NULL), $this);
        $this->ssf_pump_Insert->Page = "SSFPumpGroupDetail.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @9-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @9-387B5EB4
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlpump_group_id"] = CCGetFromGet("pump_group_id", NULL);

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
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["implementation"] = $this->implementation->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
                $this->pump_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->pump_id->Parameters = CCAddParam($this->pump_id->Parameters, "pump_id", $this->DataSource->f("pump_id"));
                $this->implementation->SetValue($this->DataSource->implementation->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pump_id->Show();
                $this->implementation->Show();
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
        $this->ssf_pump_Insert->Parameters = CCGetQueryString("QueryString", array("pump_id", "ccsForm"));
        $this->ssf_pump_Insert->Parameters = CCAddParam($this->ssf_pump_Insert->Parameters, "ssf_pump_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_pump_id->Show();
        $this->Sorter_implementation->Show();
        $this->ssf_pump_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @9-A4EA6D83
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->implementation->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End config_values_ssf_pump_gr Class @9-FCB6E20C

class clsconfig_values_ssf_pump_grDataSource extends clsDBConnection1 {  //config_values_ssf_pump_grDataSource Class @9-88B5C321

//DataSource Variables @9-E4AD0A97
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pump_id;
    public $implementation;
//End DataSource Variables

//DataSourceClass_Initialize Event @9-74751D13
    function clsconfig_values_ssf_pump_grDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid config_values_ssf_pump_gr";
        $this->Initialize();
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->implementation = new clsField("implementation", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @9-58BC8BB5
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "pump_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_implementation" => array("param_value", "")));
    }
//End SetOrder Method

//Prepare Method @9-CD051ADF
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("4", "urlpump_group_id", ccsText, "", "", $this->Parameters["urlpump_group_id"], "", false);
        $this->wp->Criterion[1] = "config_values.library = 'pump'";
        $this->wp->Criterion[2] = "config_values.groupname = 'general'";
        $this->wp->Criterion[3] = "config_values.parameter = 'implementation'";
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "ssf_pump_group_details.pump_group_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsText),false);
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

//Open Method @9-025321E9
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_pump_group_details INNER JOIN config_values ON\n\n" .
        "ssf_pump_group_details.pump_id = config_values.id";
        $this->SQL = "SELECT pump_id, param_value AS implementation, pump_group_id \n\n" .
        "FROM ssf_pump_group_details INNER JOIN config_values ON\n\n" .
        "ssf_pump_group_details.pump_id = config_values.id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @9-ABC83A90
    function SetValues()
    {
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->implementation->SetDBValue($this->f("implementation"));
    }
//End SetValues Method

} //End config_values_ssf_pump_grDataSource Class @9-FCB6E20C

class clsRecordssf_pump_group_details { //ssf_pump_group_details Class @28-82748E07

//Variables @28-9E315808

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

//Class_Initialize Event @28-787955F1
    function clsRecordssf_pump_group_details($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_pump_group_details/Error";
        $this->DataSource = new clsssf_pump_group_detailsDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_pump_group_details";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->pump_id = new clsControl(ccsListBox, "pump_id", $CCSLocales->GetText("pump_id"), ccsInteger, "", CCGetRequestParam("pump_id", $Method, NULL), $this);
            $this->pump_id->DSType = dsSQL;
            list($this->pump_id->BoundColumn, $this->pump_id->TextColumn, $this->pump_id->DBFormat) = array("param_value", "param_value", "");
            $this->pump_id->DataSource = new clsDBConnection1();
            $this->pump_id->ds = & $this->pump_id->DataSource;
            $this->pump_id->DataSource->SQL = "SELECT param_value \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'pump' )\n" .
            "AND (  groupname = 'general' )\n" .
            "AND ( parameter = 'ID' )  {SQL_OrderBy}";
            $this->pump_id->DataSource->Order = "param_value";
            $this->pump_id->Required = true;
            $this->pump_group_id = new clsControl(ccsHidden, "pump_group_id", "pump_group_id", ccsText, "", CCGetRequestParam("pump_group_id", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @28-8A8CF89B
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlpump_group_id"] = CCGetFromGet("pump_group_id", NULL);
        $this->DataSource->Parameters["urlpump_id"] = CCGetFromGet("pump_id", NULL);
    }
//End Initialize Method

//Validate Method @28-55FD2B84
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->pump_id->Validate() && $Validation);
        $Validation = ($this->pump_group_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pump_group_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @28-5B0D5AE1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->pump_group_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @28-B9394270
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
        $Redirect = "SSFPumpGroupDetail.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFPumpGroupDetail.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_pump_Insert", "pump_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFPumpGroupDetail.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_pump_Insert", "pump_id"));
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

//InsertRow Method @28-6DB04FFF
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->pump_id->SetValue($this->pump_id->GetValue(true));
        $this->DataSource->pump_group_id->SetValue($this->pump_group_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @28-C439F234
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->pump_id->SetValue($this->pump_id->GetValue(true));
        $this->DataSource->pump_group_id->SetValue($this->pump_group_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @28-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @28-3D05EEF3
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->pump_id->Prepare();

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
                    $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
                    $this->pump_group_id->SetValue($this->DataSource->pump_group_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pump_group_id->Errors->ToString());
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

        $this->pump_id->Show();
        $this->pump_group_id->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_pump_group_details Class @28-FCB6E20C

class clsssf_pump_group_detailsDataSource extends clsDBConnection1 {  //ssf_pump_group_detailsDataSource Class @28-A641C31F

//DataSource Variables @28-8335FE28
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
    public $pump_id;
    public $pump_group_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @28-31FA967B
    function clsssf_pump_group_detailsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_pump_group_details/Error";
        $this->Initialize();
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->pump_group_id = new clsField("pump_group_id", ccsText, "");

        $this->InsertFields["pump_id"] = array("Name" => "pump_id", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["pump_group_id"] = array("Name" => "pump_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pump_id"] = array("Name" => "pump_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["pump_group_id"] = array("Name" => "pump_group_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @28-CAE05E8B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpump_group_id", ccsText, "", "", $this->Parameters["urlpump_group_id"], "", false);
        $this->wp->AddParameter("2", "urlpump_id", ccsInteger, "", "", $this->Parameters["urlpump_id"], 0, false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "pump_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "pump_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @28-D2CBC56D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_pump_group_details {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @28-C69FB00E
    function SetValues()
    {
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->pump_group_id->SetDBValue($this->f("pump_group_id"));
    }
//End SetValues Method

//Insert Method @28-8D251519
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["pump_id"]["Value"] = $this->pump_id->GetDBValue(true);
        $this->InsertFields["pump_group_id"]["Value"] = $this->pump_group_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_pump_group_details", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @28-58DDA30D
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["pump_id"]["Value"] = $this->pump_id->GetDBValue(true);
        $this->UpdateFields["pump_group_id"]["Value"] = $this->pump_group_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_pump_group_details", $this->UpdateFields, $this);
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

//Delete Method @28-CD50E34C
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_pump_group_details";
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

} //End ssf_pump_group_detailsDataSource Class @28-FCB6E20C

//Initialize Page @1-1587CC0A
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
$TemplateFileName = "SSFPumpGroupDetail.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-F373B884
include("./SSFPumpGroupDetail_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A7E2F9C9
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_pump_group_header = new clsGridssf_pump_group_header("", $MainPage);
$config_values_ssf_pump_gr = new clsGridconfig_values_ssf_pump_gr("", $MainPage);
$ssf_pump_group_details = new clsRecordssf_pump_group_details("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_pump_group_header = & $ssf_pump_group_header;
$MainPage->config_values_ssf_pump_gr = & $config_values_ssf_pump_gr;
$MainPage->ssf_pump_group_details = & $ssf_pump_group_details;
$ssf_pump_group_header->Initialize();
$config_values_ssf_pump_gr->Initialize();
$ssf_pump_group_details->Initialize();

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

//Execute Components @1-9D6B7EB6
$SSFSpiritHeader->Operations();
$ssf_pump_group_details->Operation();
//End Execute Components

//Go to destination page @1-EDD6CDFF
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_pump_group_header);
    unset($config_values_ssf_pump_gr);
    unset($ssf_pump_group_details);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-8B3EC074
$SSFSpiritHeader->Show();
$ssf_pump_group_header->Show();
$config_values_ssf_pump_gr->Show();
$ssf_pump_group_details->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-60255A7E
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_pump_group_header);
unset($config_values_ssf_pump_gr);
unset($ssf_pump_group_details);
unset($Tpl);
//End Unload Page


?>
