<?php
//Include Common Files @1-B0422829
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFDeleteTables.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsEditableGridmasterexport { //masterexport Class @4-75659BE5

//Variables @4-0AADA924

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

//Class_Initialize Event @4-834303D0
    function clsEditableGridmasterexport($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid masterexport/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "masterexport";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["master_id"][0] = "master_id";
        $this->CachedColumns["del_id"][0] = "del_id";
        $this->DataSource = new clsmasterexportDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 0;
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

        $this->chkmarkall = new clsControl(ccsCheckBox, "chkmarkall", "chkmarkall", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->chkmarkall->CheckedValue = true;
        $this->chkmarkall->UncheckedValue = false;
        $this->lblmaster_id = new clsControl(ccsLabel, "lblmaster_id", "lblmaster_id", ccsText, "", NULL, $this);
        $this->type = new clsControl(ccsHidden, "type", "type", ccsText, "", NULL, $this);
        $this->del_description = new clsControl(ccsLabel, "del_description", $CCSLocales->GetText("master_description"), ccsMemo, "", NULL, $this);
        $this->del_id = new clsControl(ccsHidden, "del_id", $CCSLocales->GetText("master_id"), ccsText, "", NULL, $this);
        $this->del_days = new clsControl(ccsLabel, "del_days", "del_days", ccsInteger, "", NULL, $this);
        $this->lbldate = new clsControl(ccsTextBox, "lbldate", "lbldate", ccsText, "", NULL, $this);
        $this->DatePicker_lbldate1 = new clsDatePicker("DatePicker_lbldate1", "masterexport", "lbldate", $this);
        $this->CheckBox_Update = new clsControl(ccsCheckBox, "CheckBox_Update", "CheckBox_Update", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Update->CheckedValue = true;
        $this->CheckBox_Update->UncheckedValue = false;
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
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

//GetFormParameters Method @4-0A86D41C
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["type"][$RowNumber] = CCGetFromPost("type_" . $RowNumber, NULL);
            $this->FormParameters["del_id"][$RowNumber] = CCGetFromPost("del_id_" . $RowNumber, NULL);
            $this->FormParameters["lbldate"][$RowNumber] = CCGetFromPost("lbldate_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Update"][$RowNumber] = CCGetFromPost("CheckBox_Update_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @4-1BB78567
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["master_id"] = $this->CachedColumns["master_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["del_id"] = $this->CachedColumns["del_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
            $this->del_id->SetText($this->FormParameters["del_id"][$this->RowNumber], $this->RowNumber);
            $this->lbldate->SetText($this->FormParameters["lbldate"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
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

//ValidateRow Method @4-86675BC4
    function ValidateRow()
    {
        global $CCSLocales;
        $this->type->Validate();
        $this->del_id->Validate();
        $this->lbldate->Validate();
        $this->CheckBox_Update->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->del_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lbldate->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Update->Errors->ToString());
        $this->type->Errors->Clear();
        $this->del_id->Errors->Clear();
        $this->lbldate->Errors->Clear();
        $this->CheckBox_Update->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @4-D2081FA9
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["type"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["del_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["lbldate"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["CheckBox_Update"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @4-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @4-909F269B
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
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Submit") {
            if(!CCGetEvent($this->Button_Submit->CCSEvents, "OnClick", $this->Button_Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @4-2C5921E3
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["master_id"] = $this->CachedColumns["master_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["del_id"] = $this->CachedColumns["del_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
            $this->del_id->SetText($this->FormParameters["del_id"][$this->RowNumber], $this->RowNumber);
            $this->lbldate->SetText($this->FormParameters["lbldate"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
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

//DeleteRow Method @4-A4A656F6
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

//FormScript Method @4-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @4-F701ACB7
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
                $this->CachedColumns["master_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["del_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["master_id"][$RowNumber] = "";
                $this->CachedColumns["del_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @4-929C94B6
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["master_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["del_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @4-5248C569
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
        $this->Attributes->SetValue("newrow", "");
        $this->Attributes->SetValue("newrow1", "");

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
        $this->ControlsVisible["lblmaster_id"] = $this->lblmaster_id->Visible;
        $this->ControlsVisible["type"] = $this->type->Visible;
        $this->ControlsVisible["del_description"] = $this->del_description->Visible;
        $this->ControlsVisible["del_id"] = $this->del_id->Visible;
        $this->ControlsVisible["del_days"] = $this->del_days->Visible;
        $this->ControlsVisible["lbldate"] = $this->lbldate->Visible;
        $this->ControlsVisible["DatePicker_lbldate1"] = $this->DatePicker_lbldate1->Visible;
        $this->ControlsVisible["CheckBox_Update"] = $this->CheckBox_Update->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["master_id"][$this->RowNumber] = $this->DataSource->CachedColumns["master_id"];
                    $this->CachedColumns["del_id"][$this->RowNumber] = $this->DataSource->CachedColumns["del_id"];
                    $this->lbldate->SetText("");
                    $this->CheckBox_Update->SetValue("");
                    $this->lblmaster_id->SetValue($this->DataSource->lblmaster_id->GetValue());
                    $this->type->SetValue($this->DataSource->type->GetValue());
                    $this->del_description->SetValue($this->DataSource->del_description->GetValue());
                    $this->del_id->SetValue($this->DataSource->del_id->GetValue());
                    $this->del_days->SetValue($this->DataSource->del_days->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->lblmaster_id->SetText("");
                    $this->del_description->SetText("");
                    $this->del_days->SetText("");
                    $this->lblmaster_id->SetValue($this->DataSource->lblmaster_id->GetValue());
                    $this->del_description->SetValue($this->DataSource->del_description->GetValue());
                    $this->del_days->SetValue($this->DataSource->del_days->GetValue());
                    $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
                    $this->del_id->SetText($this->FormParameters["del_id"][$this->RowNumber], $this->RowNumber);
                    $this->lbldate->SetText($this->FormParameters["lbldate"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["master_id"][$this->RowNumber] = "";
                    $this->CachedColumns["del_id"][$this->RowNumber] = "";
                    $this->lblmaster_id->SetText("");
                    $this->type->SetText("");
                    $this->del_description->SetText("");
                    $this->del_id->SetText("");
                    $this->del_days->SetText("");
                } else {
                    $this->lblmaster_id->SetText("");
                    $this->del_description->SetText("");
                    $this->del_days->SetText("");
                    $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
                    $this->del_id->SetText($this->FormParameters["del_id"][$this->RowNumber], $this->RowNumber);
                    $this->lbldate->SetText($this->FormParameters["lbldate"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->lblmaster_id->Show($this->RowNumber);
                $this->type->Show($this->RowNumber);
                $this->del_description->Show($this->RowNumber);
                $this->del_id->Show($this->RowNumber);
                $this->del_days->Show($this->RowNumber);
                $this->lbldate->Show($this->RowNumber);
                $this->DatePicker_lbldate1->Show($this->RowNumber);
                $this->CheckBox_Update->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["master_id"] == $this->CachedColumns["master_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["del_id"] == $this->CachedColumns["del_id"][$this->RowNumber])) {
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
        $this->chkmarkall->Show();
        $this->Button_Submit->Show();

        if($this->CheckErrors()) {
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->ComponentName;
        if($this->FormSubmitted || CCGetFromGet("ccsForm")) {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        } else {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("All", ""), "ccsForm", $CCSForm);
        }
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

} //End masterexport Class @4-FCB6E20C

class clsmasterexportDataSource extends clsDBConnection1 {  //masterexportDataSource Class @4-AFB647AC

//DataSource Variables @4-26A762FD
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;

    // Datasource fields
    public $lblmaster_id;
    public $type;
    public $del_description;
    public $del_id;
    public $del_days;
    public $lbldate;
    public $CheckBox_Update;
//End DataSource Variables

//DataSourceClass_Initialize Event @4-FB8CE8CE
    function clsmasterexportDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid masterexport/Error";
        $this->Initialize();
        $this->lblmaster_id = new clsField("lblmaster_id", ccsText, "");
        $this->type = new clsField("type", ccsText, "");
        $this->del_description = new clsField("del_description", ccsMemo, "");
        $this->del_id = new clsField("del_id", ccsText, "");
        $this->del_days = new clsField("del_days", ccsInteger, "");
        $this->lbldate = new clsField("lbldate", ccsText, "");
        $this->CheckBox_Update = new clsField("CheckBox_Update", ccsBoolean, array("t", "f", ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @4-9CCF8E3C
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "del_order";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @4-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @4-C47DE812
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_delete_schedule";
        $this->SQL = "SELECT * \n\n" .
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

//SetValues Method @4-8CA7E6C9
    function SetValues()
    {
        $this->CachedColumns["master_id"] = $this->f("master_id");
        $this->CachedColumns["del_id"] = $this->f("del_id");
        $this->lblmaster_id->SetDBValue($this->f("del_id"));
        $this->type->SetDBValue($this->f("del_module"));
        $this->del_description->SetDBValue($this->f("del_description"));
        $this->del_id->SetDBValue($this->f("del_id"));
        $this->del_days->SetDBValue(trim($this->f("del_days")));
    }
//End SetValues Method

//Delete Method @4-D88CA96A
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "Select 1";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End masterexportDataSource Class @4-FCB6E20C



//Initialize Page @1-01EE3F74
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
$TemplateFileName = "SSFDeleteTables.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-038A92EA
include("./SSFDeleteTables_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-90AC557F
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$masterexport = new clsEditableGridmasterexport("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->masterexport = & $masterexport;
$masterexport->Initialize();

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

//Execute Components @1-D56994C6
$SSFSpiritHeader->Operations();
$masterexport->Operation();
//End Execute Components

//Go to destination page @1-847CA9C3
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($masterexport);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-1D4D64DA
$SSFSpiritHeader->Show();
$masterexport->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-7EF500CC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($masterexport);
unset($Tpl);
//End Unload Page


?>
