<?php
//Include Common Files @1-22F201DD
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFExportMasters.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation



class clsEditableGridmasterexport { //masterexport Class @21-75659BE5

//Variables @21-0AADA924

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

//Class_Initialize Event @21-478AE77A
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
        $this->file_des = new clsControl(ccsHidden, "file_des", "file_des", ccsText, "", NULL, $this);
        $this->type = new clsControl(ccsHidden, "type", "type", ccsText, "", NULL, $this);
        $this->master_description = new clsControl(ccsLabel, "master_description", $CCSLocales->GetText("master_description"), ccsMemo, "", NULL, $this);
        $this->master_id = new clsControl(ccsHidden, "master_id", $CCSLocales->GetText("master_id"), ccsMemo, "", NULL, $this);
        $this->CheckBox_Update = new clsControl(ccsCheckBox, "CheckBox_Update", "CheckBox_Update", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Update->CheckedValue = true;
        $this->CheckBox_Update->UncheckedValue = false;
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @21-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

    }
//End Initialize Method

//GetFormParameters Method @21-3DDF04DE
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["file_des"][$RowNumber] = CCGetFromPost("file_des_" . $RowNumber, NULL);
            $this->FormParameters["type"][$RowNumber] = CCGetFromPost("type_" . $RowNumber, NULL);
            $this->FormParameters["master_id"][$RowNumber] = CCGetFromPost("master_id_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Update"][$RowNumber] = CCGetFromPost("CheckBox_Update_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @21-3552007D
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["master_id"] = $this->CachedColumns["master_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->file_des->SetText($this->FormParameters["file_des"][$this->RowNumber], $this->RowNumber);
            $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
            $this->master_id->SetText($this->FormParameters["master_id"][$this->RowNumber], $this->RowNumber);
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

//ValidateRow Method @21-86C14F45
    function ValidateRow()
    {
        global $CCSLocales;
        $this->file_des->Validate();
        $this->type->Validate();
        $this->master_id->Validate();
        $this->CheckBox_Update->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->file_des->Errors->ToString());
        $errors = ComposeStrings($errors, $this->type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->master_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Update->Errors->ToString());
        $this->file_des->Errors->Clear();
        $this->type->Errors->Clear();
        $this->master_id->Errors->Clear();
        $this->CheckBox_Update->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @21-030749A2
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["file_des"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["type"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["master_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["CheckBox_Update"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @21-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @21-909F269B
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

//UpdateGrid Method @21-18CB432A
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["master_id"] = $this->CachedColumns["master_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->file_des->SetText($this->FormParameters["file_des"][$this->RowNumber], $this->RowNumber);
            $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
            $this->master_id->SetText($this->FormParameters["master_id"][$this->RowNumber], $this->RowNumber);
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

//DeleteRow Method @21-A4A656F6
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

//FormScript Method @21-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @21-59EBC815
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
                $this->CachedColumns["master_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["master_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @21-27B604D2
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["master_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @21-0A9F2E1D
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
        $this->ControlsVisible["file_des"] = $this->file_des->Visible;
        $this->ControlsVisible["type"] = $this->type->Visible;
        $this->ControlsVisible["master_description"] = $this->master_description->Visible;
        $this->ControlsVisible["master_id"] = $this->master_id->Visible;
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
                    $this->CheckBox_Update->SetValue("");
                    $this->lblmaster_id->SetValue($this->DataSource->lblmaster_id->GetValue());
                    $this->file_des->SetValue($this->DataSource->file_des->GetValue());
                    $this->type->SetValue($this->DataSource->type->GetValue());
                    $this->master_description->SetValue($this->DataSource->master_description->GetValue());
                    $this->master_id->SetValue($this->DataSource->master_id->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->lblmaster_id->SetText("");
                    $this->master_description->SetText("");
                    $this->lblmaster_id->SetValue($this->DataSource->lblmaster_id->GetValue());
                    $this->master_description->SetValue($this->DataSource->master_description->GetValue());
                    $this->file_des->SetText($this->FormParameters["file_des"][$this->RowNumber], $this->RowNumber);
                    $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
                    $this->master_id->SetText($this->FormParameters["master_id"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["master_id"][$this->RowNumber] = "";
                    $this->lblmaster_id->SetText("");
                    $this->file_des->SetText("");
                    $this->type->SetText("");
                    $this->master_description->SetText("");
                    $this->master_id->SetText("");
                } else {
                    $this->lblmaster_id->SetText("");
                    $this->master_description->SetText("");
                    $this->file_des->SetText($this->FormParameters["file_des"][$this->RowNumber], $this->RowNumber);
                    $this->type->SetText($this->FormParameters["type"][$this->RowNumber], $this->RowNumber);
                    $this->master_id->SetText($this->FormParameters["master_id"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->lblmaster_id->Show($this->RowNumber);
                $this->file_des->Show($this->RowNumber);
                $this->type->Show($this->RowNumber);
                $this->master_description->Show($this->RowNumber);
                $this->master_id->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["master_id"] == $this->CachedColumns["master_id"][$this->RowNumber])) {
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

} //End masterexport Class @21-FCB6E20C

class clsmasterexportDataSource extends clsDBConnection1 {  //masterexportDataSource Class @21-AFB647AC

//DataSource Variables @21-7BFA79C1
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
    public $file_des;
    public $type;
    public $master_description;
    public $master_id;
    public $CheckBox_Update;
//End DataSource Variables

//DataSourceClass_Initialize Event @21-A6A5F126
    function clsmasterexportDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid masterexport/Error";
        $this->Initialize();
        $this->lblmaster_id = new clsField("lblmaster_id", ccsText, "");
        $this->file_des = new clsField("file_des", ccsText, "");
        $this->type = new clsField("type", ccsText, "");
        $this->master_description = new clsField("master_description", ccsMemo, "");
        $this->master_id = new clsField("master_id", ccsMemo, "");
        $this->CheckBox_Update = new clsField("CheckBox_Update", ccsBoolean, array("t", "f", ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @21-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @21-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @21-65FDAB7D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT 1 as id, 'CONFG' as master_id, 'ssf_generic_conf' as master_description, 'confg' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 2 as id, 'CONFD' as master_id, 'ssf_device_conf' as master_description, 'confd' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 3 as id, 'TENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'tender' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 1001 as id, 'UOM' as master_id, 'ssf_mnu_tkt_uom_config' as master_description, 'uom' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1002 as id, 'POSTENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'postender' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1003 as id, 'SPEED' as master_id, 'speedkey' as master_description, 'speed' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1004 as id, 'CATEG' as master_id, 'ssf_mnu_tkt_categ_config' as master_description, 'categ' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1005 as id, 'PROD' as master_id, 'ssf_mnu_tkt_prod_config' as master_description, 'prod' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1006 as id, 'TAXGRP' as master_id, 'ssf_mnu_tkt_group_taxes_config' as master_description, 'taxgrp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1007 as id, 'TAXES' as master_id, 'ssf_mnu_tkt_tax_config' as master_description, 'taxes' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1008 as id, 'CUST' as master_id, 'ssf_tkt_customers_types' as master_description, 'customer' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1009 as id, 'CUSTYP' as master_id, 'ssf_tkt_customers' as master_description, 'custyp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1010 as id, 'RECF' as master_id, 'ssf_tkt_receipt_format' as master_description, 'recf' as file_des,'ssf_import_ticket_module' as type) cnt";
        $this->SQL = "SELECT 1 as id, 'CONFG' as master_id, 'ssf_generic_conf' as master_description, 'confg' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 2 as id, 'CONFD' as master_id, 'ssf_device_conf' as master_description, 'confd' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 3 as id, 'TENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'tender' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 1001 as id, 'UOM' as master_id, 'ssf_mnu_tkt_uom_config' as master_description, 'uom' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1002 as id, 'POSTENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'postender' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1003 as id, 'SPEED' as master_id, 'speedkey' as master_description, 'speed' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1004 as id, 'CATEG' as master_id, 'ssf_mnu_tkt_categ_config' as master_description, 'categ' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1005 as id, 'PROD' as master_id, 'ssf_mnu_tkt_prod_config' as master_description, 'prod' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1006 as id, 'TAXGRP' as master_id, 'ssf_mnu_tkt_group_taxes_config' as master_description, 'taxgrp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1007 as id, 'TAXES' as master_id, 'ssf_mnu_tkt_tax_config' as master_description, 'taxes' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1008 as id, 'CUST' as master_id, 'ssf_tkt_customers_types' as master_description, 'customer' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1009 as id, 'CUSTYP' as master_id, 'ssf_tkt_customers' as master_description, 'custyp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1010 as id, 'RECF' as master_id, 'ssf_tkt_receipt_format' as master_description, 'recf' as file_des,'ssf_import_ticket_module' as type";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @21-4B6A7423
    function SetValues()
    {
        $this->CachedColumns["master_id"] = $this->f("master_id");
        $this->lblmaster_id->SetDBValue($this->f("master_id"));
        $this->file_des->SetDBValue($this->f("file_des"));
        $this->type->SetDBValue($this->f("type"));
        $this->master_description->SetDBValue($this->f("master_description"));
        $this->master_id->SetDBValue($this->f("master_id"));
    }
//End SetValues Method

//Delete Method @21-D88CA96A
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

} //End masterexportDataSource Class @21-FCB6E20C

//Initialize Page @1-C8FAA1C8
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
$TemplateFileName = "SSFExportMasters.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-ACF0BF98
include("./SSFExportMasters_events.php");
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
