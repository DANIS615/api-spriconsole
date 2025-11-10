<?php
//Include Common Files @1-6937FC27
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFDeleteSchedule.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_delete_schedule { //ssf_delete_schedule class @3-217A5142

//Variables @3-8BC2B791

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
    public $Sorter_del_id;
    public $Sorter_del_description;
    public $Sorter_del_days;
//End Variables

//Class_Initialize Event @3-CE03787C
    function clsGridssf_delete_schedule($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_delete_schedule";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_delete_schedule";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_delete_scheduleDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_delete_scheduleOrder", "");
        $this->SorterDirection = CCGetParam("ssf_delete_scheduleDir", "");

        $this->del_id = new clsControl(ccsLink, "del_id", "del_id", ccsText, "", CCGetRequestParam("del_id", ccsGet, NULL), $this);
        $this->del_id->Page = "SSFDeleteSchedule.php";
        $this->del_description = new clsControl(ccsLabel, "del_description", "del_description", ccsText, "", CCGetRequestParam("del_description", ccsGet, NULL), $this);
        $this->del_module = new clsControl(ccsHidden, "del_module", "del_module", ccsText, "", CCGetRequestParam("del_module", ccsGet, NULL), $this);
        $this->del_days = new clsControl(ccsLabel, "del_days", "del_days", ccsInteger, "", CCGetRequestParam("del_days", ccsGet, NULL), $this);
        $this->Sorter_del_id = new clsSorter($this->ComponentName, "Sorter_del_id", $FileName, $this);
        $this->Sorter_del_description = new clsSorter($this->ComponentName, "Sorter_del_description", $FileName, $this);
        $this->Sorter_del_days = new clsSorter($this->ComponentName, "Sorter_del_days", $FileName, $this);
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

//Show Method @3-7520E8D1
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
            $this->ControlsVisible["del_id"] = $this->del_id->Visible;
            $this->ControlsVisible["del_description"] = $this->del_description->Visible;
            $this->ControlsVisible["del_module"] = $this->del_module->Visible;
            $this->ControlsVisible["del_days"] = $this->del_days->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->del_id->SetValue($this->DataSource->del_id->GetValue());
                $this->del_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->del_id->Parameters = CCAddParam($this->del_id->Parameters, "del_id", $this->DataSource->f("del_id"));
                $this->del_description->SetValue($this->DataSource->del_description->GetValue());
                $this->del_module->SetValue($this->DataSource->del_module->GetValue());
                $this->del_days->SetValue($this->DataSource->del_days->GetValue());
                $this->Attributes->SetValue("newrow", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->del_id->Show();
                $this->del_description->Show();
                $this->del_module->Show();
                $this->del_days->Show();
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
        $this->Sorter_del_id->Show();
        $this->Sorter_del_description->Show();
        $this->Sorter_del_days->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-4EEB1574
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->del_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->del_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->del_module->Errors->ToString());
        $errors = ComposeStrings($errors, $this->del_days->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_delete_schedule Class @3-FCB6E20C

class clsssf_delete_scheduleDataSource extends clsDBConnection1 {  //ssf_delete_scheduleDataSource Class @3-4B1B7BCD

//DataSource Variables @3-276E51DC
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $del_id;
    public $del_description;
    public $del_module;
    public $del_days;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-8B8BF555
    function clsssf_delete_scheduleDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_delete_schedule";
        $this->Initialize();
        $this->del_id = new clsField("del_id", ccsText, "");
        $this->del_description = new clsField("del_description", ccsText, "");
        $this->del_module = new clsField("del_module", ccsText, "");
        $this->del_days = new clsField("del_days", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-2C631EE2
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "del_order";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_del_id" => array("del_id", ""), 
            "Sorter_del_description" => array("del_description", ""), 
            "Sorter_del_days" => array("del_days", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-EC957F5A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_delete_schedule";
        $this->SQL = "SELECT del_id, del_description, del_days, del_module \n\n" .
        "FROM ssf_delete_schedule {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-0B73C713
    function SetValues()
    {
        $this->del_id->SetDBValue($this->f("del_id"));
        $this->del_description->SetDBValue($this->f("del_description"));
        $this->del_module->SetDBValue($this->f("del_module"));
        $this->del_days->SetDBValue(trim($this->f("del_days")));
    }
//End SetValues Method

} //End ssf_delete_scheduleDataSource Class @3-FCB6E20C

class clsRecordssf_delete_schedule1 { //ssf_delete_schedule1 Class @17-AD2AC1A4

//Variables @17-9E315808

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

//Class_Initialize Event @17-37250026
    function clsRecordssf_delete_schedule1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_delete_schedule1/Error";
        $this->DataSource = new clsssf_delete_schedule1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_delete_schedule1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->del_id = new clsControl(ccsLabel, "del_id", $CCSLocales->GetText("del_id"), ccsText, "", CCGetRequestParam("del_id", $Method, NULL), $this);
            $this->del_description = new clsControl(ccsLabel, "del_description", $CCSLocales->GetText("del_description"), ccsText, "", CCGetRequestParam("del_description", $Method, NULL), $this);
            $this->del_days = new clsControl(ccsTextBox, "del_days", $CCSLocales->GetText("del_days"), ccsInteger, "", CCGetRequestParam("del_days", $Method, NULL), $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @17-07CB7D35
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urldel_id"] = CCGetFromGet("del_id", NULL);
    }
//End Initialize Method

//Validate Method @17-D311549E
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->del_days->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->del_days->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @17-0E1F2D6C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->del_id->Errors->Count());
        $errors = ($errors || $this->del_description->Errors->Count());
        $errors = ($errors || $this->del_days->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @17-3D837835
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
        $Redirect = "SSFDeleteSchedule.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFDeleteSchedule.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "del_id"));
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

//UpdateRow Method @17-419F7FD6
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->del_id->SetValue($this->del_id->GetValue(true));
        $this->DataSource->del_description->SetValue($this->del_description->GetValue(true));
        $this->DataSource->del_days->SetValue($this->del_days->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @17-AF0831B9
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
                $this->del_id->SetValue($this->DataSource->del_id->GetValue());
                $this->del_description->SetValue($this->DataSource->del_description->GetValue());
                if(!$this->FormSubmitted){
                    $this->del_days->SetValue($this->DataSource->del_days->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->del_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->del_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->del_days->Errors->ToString());
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

        $this->del_id->Show();
        $this->del_description->Show();
        $this->del_days->Show();
        $this->Button_Update->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_delete_schedule1 Class @17-FCB6E20C

class clsssf_delete_schedule1DataSource extends clsDBConnection1 {  //ssf_delete_schedule1DataSource Class @17-18DCDCA1

//DataSource Variables @17-A068104B
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
    public $del_id;
    public $del_description;
    public $del_days;
//End DataSource Variables

//DataSourceClass_Initialize Event @17-A31490B4
    function clsssf_delete_schedule1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_delete_schedule1/Error";
        $this->Initialize();
        $this->del_id = new clsField("del_id", ccsText, "");
        $this->del_description = new clsField("del_description", ccsText, "");
        $this->del_days = new clsField("del_days", ccsInteger, "");

        $this->UpdateFields["del_days"] = array("Name" => "del_days", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @17-8F944346
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urldel_id", ccsText, "", "", $this->Parameters["urldel_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "del_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @17-8EDCF8CD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT del_id, del_days, del_description \n\n" .
        "FROM ssf_delete_schedule {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @17-05E0103C
    function SetValues()
    {
        $this->del_id->SetDBValue($this->f("del_id"));
        $this->del_description->SetDBValue($this->f("del_description"));
        $this->del_days->SetDBValue(trim($this->f("del_days")));
    }
//End SetValues Method

//Update Method @17-D70C83A2
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["del_days"]["Value"] = $this->del_days->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_delete_schedule", $this->UpdateFields, $this);
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

} //End ssf_delete_schedule1DataSource Class @17-FCB6E20C

//Initialize Page @1-20444165
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
$TemplateFileName = "SSFDeleteSchedule.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-BB6E652C
include("./SSFDeleteSchedule_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-8B7DAA3F
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_delete_schedule = new clsGridssf_delete_schedule("", $MainPage);
$ssf_delete_schedule1 = new clsRecordssf_delete_schedule1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_delete_schedule = & $ssf_delete_schedule;
$MainPage->ssf_delete_schedule1 = & $ssf_delete_schedule1;
$ssf_delete_schedule->Initialize();
$ssf_delete_schedule1->Initialize();

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

//Execute Components @1-AD6FC359
$SSFSpiritHeader->Operations();
$ssf_delete_schedule1->Operation();
//End Execute Components

//Go to destination page @1-6E4FEF04
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_delete_schedule);
    unset($ssf_delete_schedule1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B45A35FB
$SSFSpiritHeader->Show();
$ssf_delete_schedule->Show();
$ssf_delete_schedule1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-570AA34E
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_delete_schedule);
unset($ssf_delete_schedule1);
unset($Tpl);
//End Unload Page


?>
