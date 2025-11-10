<?php
//Include Common Files @1-7890AB63
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFTankManualDeliveries.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsEditableGridEditableGrid1 { //EditableGrid1 Class @3-6C37505C

//Variables @3-935D3933

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
    public $Sorter_tank_id;
    public $Sorter_prod_height;
//End Variables

//Class_Initialize Event @3-AA43D870
    function clsEditableGridEditableGrid1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid EditableGrid1/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "EditableGrid1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns[""][0] = "";
        $this->DataSource = new clsEditableGrid1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 0;
        $this->UpdateAllowed = true;
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

        $this->SorterName = CCGetParam("EditableGrid1Order", "");
        $this->SorterDirection = CCGetParam("EditableGrid1Dir", "");

        $this->Sorter_tank_id = new clsSorter($this->ComponentName, "Sorter_tank_id", $FileName, $this);
        $this->Sorter_prod_height = new clsSorter($this->ComponentName, "Sorter_prod_height", $FileName, $this);
        $this->lbl_tank_id = new clsControl(ccsLabel, "lbl_tank_id", $CCSLocales->GetText("tank_id"), ccsText, "", NULL, $this);
        $this->tank_id = new clsControl(ccsHidden, "tank_id", "tank_id", ccsText, "", NULL, $this);
        $this->prod_vol = new clsControl(ccsLabel, "prod_vol", "prod_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), NULL, $this);
        $this->prod_height = new clsControl(ccsTextBox, "prod_height", $CCSLocales->GetText("prod_height"), ccsText, "", NULL, $this);
        $this->Button_end_tank_charge = new clsButton("Button_end_tank_charge", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
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

//GetFormParameters Method @3-1BD9FE24
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["tank_id"][$RowNumber] = CCGetFromPost("tank_id_" . $RowNumber, NULL);
            $this->FormParameters["prod_height"][$RowNumber] = CCGetFromPost("prod_height_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @3-11A2D62C
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns[""] = $this->CachedColumns[""][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
            $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                $Validation = ($this->ValidateRow($this->RowNumber) && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @3-159AA011
    function ValidateRow()
    {
        global $CCSLocales;
        $this->tank_id->Validate();
        $this->prod_height->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_height->Errors->ToString());
        $this->tank_id->Errors->Clear();
        $this->prod_height->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @3-CB9D36CC
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["tank_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["prod_height"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @3-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-A71A2255
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
        $this->PressedButton = "Button_end_tank_charge";
        if($this->Button_end_tank_charge->Pressed) {
            $this->PressedButton = "Button_end_tank_charge";
        } else if($this->Cancel->Pressed) {
            $this->PressedButton = "Cancel";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_end_tank_charge") {
            if(!CCGetEvent($this->Button_end_tank_charge->CCSEvents, "OnClick", $this->Button_end_tank_charge) || !$this->UpdateGrid()) {
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

//UpdateGrid Method @3-360042EB
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns[""] = $this->CachedColumns[""][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
            $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->UpdateAllowed) { $Validation = ($this->UpdateRow() && $Validation); }
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

//UpdateRow Method @3-44A5706F
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
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

//FormScript Method @3-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @3-2C052262
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
            for($i = 2; $i < sizeof($pieces); $i = $i + 1)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns[""][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns[""][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @3-240E8836
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns[""][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @3-D986B0CF
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
        $this->Button_end_tank_charge->Visible = $this->Button_end_tank_charge->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["lbl_tank_id"] = $this->lbl_tank_id->Visible;
        $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
        $this->ControlsVisible["prod_vol"] = $this->prod_vol->Visible;
        $this->ControlsVisible["prod_height"] = $this->prod_height->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns[""][$this->RowNumber] = $this->DataSource->CachedColumns[""];
                    $this->lbl_tank_id->SetValue($this->DataSource->lbl_tank_id->GetValue());
                    $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
                    $this->prod_vol->SetValue($this->DataSource->prod_vol->GetValue());
                    $this->prod_height->SetValue($this->DataSource->prod_height->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->lbl_tank_id->SetText("");
                    $this->prod_vol->SetText("");
                    $this->lbl_tank_id->SetValue($this->DataSource->lbl_tank_id->GetValue());
                    $this->prod_vol->SetValue($this->DataSource->prod_vol->GetValue());
                    $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
                    $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns[""][$this->RowNumber] = "";
                    $this->lbl_tank_id->SetText("");
                    $this->tank_id->SetText("");
                    $this->prod_vol->SetText("");
                    $this->prod_height->SetText("");
                } else {
                    $this->lbl_tank_id->SetText("");
                    $this->prod_vol->SetText("");
                    $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
                    $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->lbl_tank_id->Show($this->RowNumber);
                $this->tank_id->Show($this->RowNumber);
                $this->prod_vol->Show($this->RowNumber);
                $this->prod_height->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns[""] == $this->CachedColumns[""][$this->RowNumber])) {
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
        $this->Sorter_tank_id->Show();
        $this->Sorter_prod_height->Show();
        $this->Button_end_tank_charge->Show();
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

} //End EditableGrid1 Class @3-FCB6E20C

class clsEditableGrid1DataSource extends clsDBConnection1 {  //EditableGrid1DataSource Class @3-2877F903

//DataSource Variables @3-4BECBF3E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;

    // Datasource fields
    public $lbl_tank_id;
    public $tank_id;
    public $prod_vol;
    public $prod_height;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-DEDA2283
    function clsEditableGrid1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid EditableGrid1/Error";
        $this->Initialize();
        $this->lbl_tank_id = new clsField("lbl_tank_id", ccsText, "");
        $this->tank_id = new clsField("tank_id", ccsText, "");
        $this->prod_vol = new clsField("prod_vol", ccsFloat, "");
        $this->prod_height = new clsField("prod_height", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-7D056D23
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tank_id" => array("tank_id", ""), 
            "Sorter_prod_height" => array("prod_height", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-38504828
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT param_value AS tank_id, '' as prod_height, prod_vol, prod_height as actual_prod_height\n" .
        "FROM config_values LEFT JOIN ssf_tank_actual_info ON param_value = tank_id\n" .
        "WHERE ( library = 'tank' )\n" .
        "AND ( groupname = 'general' )\n" .
        "AND ( parameter = 'ID' ) \n" .
        ") cnt";
        $this->SQL = "SELECT param_value AS tank_id, '' as prod_height, prod_vol, prod_height as actual_prod_height\n" .
        "FROM config_values LEFT JOIN ssf_tank_actual_info ON param_value = tank_id\n" .
        "WHERE ( library = 'tank' )\n" .
        "AND ( groupname = 'general' )\n" .
        "AND ( parameter = 'ID' ) \n" .
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

//SetValues Method @3-79E3763B
    function SetValues()
    {
        $this->CachedColumns[""] = $this->f("");
        $this->lbl_tank_id->SetDBValue($this->f("tank_id"));
        $this->tank_id->SetDBValue($this->f("tank_id"));
        $this->prod_vol->SetDBValue(trim($this->f("prod_vol")));
        $this->prod_height->SetDBValue($this->f("prod_height"));
    }
//End SetValues Method

//Update Method @3-8C9B8EB8
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->SQL = "select 1 from ssf_tank_conversion_table";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

} //End EditableGrid1DataSource Class @3-FCB6E20C

//Initialize Page @1-E86AA2BF
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
$TemplateFileName = "SSFTankManualDeliveries.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-0BAF8497
include("./SSFTankManualDeliveries_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-DBB93951
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$EditableGrid1 = new clsEditableGridEditableGrid1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->EditableGrid1 = & $EditableGrid1;
$EditableGrid1->Initialize();

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

//Execute Components @1-6E7CBA95
$SSFSpiritHeader->Operations();
$EditableGrid1->Operation();
//End Execute Components

//Go to destination page @1-6E920E23
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($EditableGrid1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-BF75D708
$SSFSpiritHeader->Show();
$EditableGrid1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-29BAFBA4
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($EditableGrid1);
unset($Tpl);
//End Unload Page


?>
