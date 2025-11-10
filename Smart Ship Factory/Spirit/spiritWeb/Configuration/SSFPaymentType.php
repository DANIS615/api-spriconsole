<?php
//Include Common Files @1-6EA6D445
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFPaymentType.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_addin_payments_types { //ssf_addin_payments_types class @3-985AF913

//Variables @3-7E852133

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
    public $Sorter_pay_type_id;
    public $Sorter_pay_type_desc;
    public $Sorter_pay_type_group;
    public $Sorter_pay_type_console_enabled;
    public $Sorter_pay_type_system_pay_type;
//End Variables

//Class_Initialize Event @3-595CAE28
    function clsGridssf_addin_payments_types($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_payments_types";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_payments_types";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_payments_typesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_payments_typesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_payments_typesDir", "");

        $this->pay_type_id = new clsControl(ccsLink, "pay_type_id", "pay_type_id", ccsText, "", CCGetRequestParam("pay_type_id", ccsGet, NULL), $this);
        $this->pay_type_id->Page = "SSFPaymentType.php";
        $this->pay_type_desc = new clsControl(ccsLabel, "pay_type_desc", "pay_type_desc", ccsText, "", CCGetRequestParam("pay_type_desc", ccsGet, NULL), $this);
        $this->pay_type_group = new clsControl(ccsLabel, "pay_type_group", "pay_type_group", ccsText, "", CCGetRequestParam("pay_type_group", ccsGet, NULL), $this);
        $this->pay_type_console_enabled = new clsControl(ccsLabel, "pay_type_console_enabled", "pay_type_console_enabled", ccsBoolean, array("Yes", "No", ""), CCGetRequestParam("pay_type_console_enabled", ccsGet, NULL), $this);
        $this->pay_type_system_pay_type = new clsControl(ccsLabel, "pay_type_system_pay_type", "pay_type_system_pay_type", ccsBoolean, array("Yes", "No", ""), CCGetRequestParam("pay_type_system_pay_type", ccsGet, NULL), $this);
        $this->Sorter_pay_type_id = new clsSorter($this->ComponentName, "Sorter_pay_type_id", $FileName, $this);
        $this->Sorter_pay_type_desc = new clsSorter($this->ComponentName, "Sorter_pay_type_desc", $FileName, $this);
        $this->Sorter_pay_type_group = new clsSorter($this->ComponentName, "Sorter_pay_type_group", $FileName, $this);
        $this->Sorter_pay_type_console_enabled = new clsSorter($this->ComponentName, "Sorter_pay_type_console_enabled", $FileName, $this);
        $this->Sorter_pay_type_system_pay_type = new clsSorter($this->ComponentName, "Sorter_pay_type_system_pay_type", $FileName, $this);
        $this->ssf_addin_payments_types_Insert = new clsControl(ccsLink, "ssf_addin_payments_types_Insert", "ssf_addin_payments_types_Insert", ccsText, "", CCGetRequestParam("ssf_addin_payments_types_Insert", ccsGet, NULL), $this);
        $this->ssf_addin_payments_types_Insert->Page = "SSFPaymentType.php";
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

//Show Method @3-854E2F35
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
            $this->ControlsVisible["pay_type_id"] = $this->pay_type_id->Visible;
            $this->ControlsVisible["pay_type_desc"] = $this->pay_type_desc->Visible;
            $this->ControlsVisible["pay_type_group"] = $this->pay_type_group->Visible;
            $this->ControlsVisible["pay_type_console_enabled"] = $this->pay_type_console_enabled->Visible;
            $this->ControlsVisible["pay_type_system_pay_type"] = $this->pay_type_system_pay_type->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pay_type_id->SetValue($this->DataSource->pay_type_id->GetValue());
                $this->pay_type_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->pay_type_id->Parameters = CCAddParam($this->pay_type_id->Parameters, "pay_type_id", $this->DataSource->f("pay_type_id"));
                $this->pay_type_id->Parameters = CCAddParam($this->pay_type_id->Parameters, "pay_type_system_pay_type", $this->DataSource->f("pay_type_system_pay_type"));
                $this->pay_type_desc->SetValue($this->DataSource->pay_type_desc->GetValue());
                $this->pay_type_group->SetValue($this->DataSource->pay_type_group->GetValue());
                $this->pay_type_console_enabled->SetValue($this->DataSource->pay_type_console_enabled->GetValue());
                $this->pay_type_system_pay_type->SetValue($this->DataSource->pay_type_system_pay_type->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pay_type_id->Show();
                $this->pay_type_desc->Show();
                $this->pay_type_group->Show();
                $this->pay_type_console_enabled->Show();
                $this->pay_type_system_pay_type->Show();
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
        $this->ssf_addin_payments_types_Insert->Parameters = CCGetQueryString("QueryString", array("pay_type_id", "ccsForm"));
        $this->ssf_addin_payments_types_Insert->Parameters = CCAddParam($this->ssf_addin_payments_types_Insert->Parameters, "ssf_addin_payments_types_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_pay_type_id->Show();
        $this->Sorter_pay_type_desc->Show();
        $this->Sorter_pay_type_group->Show();
        $this->Sorter_pay_type_console_enabled->Show();
        $this->Sorter_pay_type_system_pay_type->Show();
        $this->ssf_addin_payments_types_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-3AE676FB
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pay_type_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_type_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_type_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_type_console_enabled->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_type_system_pay_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_payments_types Class @3-FCB6E20C

class clsssf_addin_payments_typesDataSource extends clsDBConnection1 {  //ssf_addin_payments_typesDataSource Class @3-B7FE153B

//DataSource Variables @3-D70CD87F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pay_type_id;
    public $pay_type_desc;
    public $pay_type_group;
    public $pay_type_console_enabled;
    public $pay_type_system_pay_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-1EAAC99C
    function clsssf_addin_payments_typesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_payments_types";
        $this->Initialize();
        $this->pay_type_id = new clsField("pay_type_id", ccsText, "");
        $this->pay_type_desc = new clsField("pay_type_desc", ccsText, "");
        $this->pay_type_group = new clsField("pay_type_group", ccsText, "");
        $this->pay_type_console_enabled = new clsField("pay_type_console_enabled", ccsBoolean, array("t", "f", ""));
        $this->pay_type_system_pay_type = new clsField("pay_type_system_pay_type", ccsBoolean, array("t", "f", ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-49CD17DD
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pay_type_id" => array("pay_type_id", ""), 
            "Sorter_pay_type_desc" => array("pay_type_desc", ""), 
            "Sorter_pay_type_group" => array("pay_type_group", ""), 
            "Sorter_pay_type_console_enabled" => array("pay_type_console_enabled", ""), 
            "Sorter_pay_type_system_pay_type" => array("pay_type_system_pay_type", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-753A238A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_payments_types";
        $this->SQL = "SELECT pay_type_id, pay_type_desc, pay_type_group, pay_type_console_enabled, pay_type_system_pay_type \n\n" .
        "FROM ssf_addin_payments_types {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-1EB47BE4
    function SetValues()
    {
        $this->pay_type_id->SetDBValue($this->f("pay_type_id"));
        $this->pay_type_desc->SetDBValue($this->f("pay_type_desc"));
        $this->pay_type_group->SetDBValue($this->f("pay_type_group"));
        $this->pay_type_console_enabled->SetDBValue(trim($this->f("pay_type_console_enabled")));
        $this->pay_type_system_pay_type->SetDBValue(trim($this->f("pay_type_system_pay_type")));
    }
//End SetValues Method

} //End ssf_addin_payments_typesDataSource Class @3-FCB6E20C

class clsRecordssf_addin_payments_types1 { //ssf_addin_payments_types1 Class @22-72D0EA8E

//Variables @22-9E315808

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

//Class_Initialize Event @22-38409A58
    function clsRecordssf_addin_payments_types1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_payments_types1/Error";
        $this->DataSource = new clsssf_addin_payments_types1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_payments_types1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->pay_type_id = new clsControl(ccsTextBox, "pay_type_id", $CCSLocales->GetText("pay_type_id"), ccsText, "", CCGetRequestParam("pay_type_id", $Method, NULL), $this);
            $this->pay_type_id->Required = true;
            $this->pay_type_desc = new clsControl(ccsTextBox, "pay_type_desc", $CCSLocales->GetText("pay_type_desc"), ccsText, "", CCGetRequestParam("pay_type_desc", $Method, NULL), $this);
            $this->pay_type_group = new clsControl(ccsListBox, "pay_type_group", $CCSLocales->GetText("pay_type_group"), ccsText, "", CCGetRequestParam("pay_type_group", $Method, NULL), $this);
            $this->pay_type_group->DSType = dsListOfValues;
            $this->pay_type_group->Values = array(array("CASH", "CASH"), array("CREDIT_CARD", "Credit Card"), array("FLEET", "Fleet"), array("POS", "POS"), array("IRRECOVERABLE", "Irrecoverable"));
            $this->pay_type_group->Required = true;
            $this->pay_type_console_enabled = new clsControl(ccsCheckBox, "pay_type_console_enabled", $CCSLocales->GetText("pay_type_console_enabled"), ccsInteger, "", CCGetRequestParam("pay_type_console_enabled", $Method, NULL), $this);
            $this->pay_type_console_enabled->CheckedValue = $this->pay_type_console_enabled->GetParsedValue(1);
            $this->pay_type_console_enabled->UncheckedValue = $this->pay_type_console_enabled->GetParsedValue(0);
            $this->pay_type_system_pay_type = new clsControl(ccsHidden, "pay_type_system_pay_type", "pay_type_system_pay_type", ccsText, "", CCGetRequestParam("pay_type_system_pay_type", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->pay_type_system_pay_type->Value) && !strlen($this->pay_type_system_pay_type->Value) && $this->pay_type_system_pay_type->Value !== false)
                    $this->pay_type_system_pay_type->SetText(0);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @22-B1763265
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlpay_type_id"] = CCGetFromGet("pay_type_id", NULL);
    }
//End Initialize Method

//Validate Method @22-02C5B535
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        if($this->EditMode && strlen($this->DataSource->Where))
            $Where = " AND NOT (" . $this->DataSource->Where . ")";
        $this->DataSource->pay_type_id->SetValue($this->pay_type_id->GetValue());
        if(CCDLookUp("COUNT(*)", "ssf_addin_payments_types", "pay_type_id=" . $this->DataSource->ToSQL($this->DataSource->pay_type_id->GetDBValue(), $this->DataSource->pay_type_id->DataType) . $Where, $this->DataSource) > 0)
            $this->pay_type_id->Errors->addError($CCSLocales->GetText("CCS_UniqueValue", $CCSLocales->GetText("pay_type_id")));
        $Validation = ($this->pay_type_id->Validate() && $Validation);
        $Validation = ($this->pay_type_desc->Validate() && $Validation);
        $Validation = ($this->pay_type_group->Validate() && $Validation);
        $Validation = ($this->pay_type_console_enabled->Validate() && $Validation);
        $Validation = ($this->pay_type_system_pay_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->pay_type_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pay_type_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pay_type_group->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pay_type_console_enabled->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pay_type_system_pay_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @22-A4AC2D6B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pay_type_id->Errors->Count());
        $errors = ($errors || $this->pay_type_desc->Errors->Count());
        $errors = ($errors || $this->pay_type_group->Errors->Count());
        $errors = ($errors || $this->pay_type_console_enabled->Errors->Count());
        $errors = ($errors || $this->pay_type_system_pay_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @22-F53AAD0D
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
        $Redirect = "SSFPaymentType.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFPaymentType.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_addin_payments_types_Insert", "pay_type_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFPaymentType.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "pay_type_id", "ssf_addin_payments_types_Insert"));
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

//InsertRow Method @22-E7467B42
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->pay_type_id->SetValue($this->pay_type_id->GetValue(true));
        $this->DataSource->pay_type_desc->SetValue($this->pay_type_desc->GetValue(true));
        $this->DataSource->pay_type_group->SetValue($this->pay_type_group->GetValue(true));
        $this->DataSource->pay_type_console_enabled->SetValue($this->pay_type_console_enabled->GetValue(true));
        $this->DataSource->pay_type_system_pay_type->SetValue($this->pay_type_system_pay_type->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @22-66269714
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->pay_type_id->SetValue($this->pay_type_id->GetValue(true));
        $this->DataSource->pay_type_desc->SetValue($this->pay_type_desc->GetValue(true));
        $this->DataSource->pay_type_group->SetValue($this->pay_type_group->GetValue(true));
        $this->DataSource->pay_type_console_enabled->SetValue($this->pay_type_console_enabled->GetValue(true));
        $this->DataSource->pay_type_system_pay_type->SetValue($this->pay_type_system_pay_type->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @22-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @22-293A35F5
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->pay_type_group->Prepare();

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
                    $this->pay_type_id->SetValue($this->DataSource->pay_type_id->GetValue());
                    $this->pay_type_desc->SetValue($this->DataSource->pay_type_desc->GetValue());
                    $this->pay_type_group->SetValue($this->DataSource->pay_type_group->GetValue());
                    $this->pay_type_console_enabled->SetValue($this->DataSource->pay_type_console_enabled->GetValue());
                    $this->pay_type_system_pay_type->SetValue($this->DataSource->pay_type_system_pay_type->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->pay_type_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pay_type_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pay_type_group->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pay_type_console_enabled->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pay_type_system_pay_type->Errors->ToString());
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

        $this->pay_type_id->Show();
        $this->pay_type_desc->Show();
        $this->pay_type_group->Show();
        $this->pay_type_console_enabled->Show();
        $this->pay_type_system_pay_type->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_payments_types1 Class @22-FCB6E20C

class clsssf_addin_payments_types1DataSource extends clsDBConnection1 {  //ssf_addin_payments_types1DataSource Class @22-4CFE6EE6

//DataSource Variables @22-5DFF5801
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
    public $pay_type_id;
    public $pay_type_desc;
    public $pay_type_group;
    public $pay_type_console_enabled;
    public $pay_type_system_pay_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @22-DA3C7032
    function clsssf_addin_payments_types1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_addin_payments_types1/Error";
        $this->Initialize();
        $this->pay_type_id = new clsField("pay_type_id", ccsText, "");
        $this->pay_type_desc = new clsField("pay_type_desc", ccsText, "");
        $this->pay_type_group = new clsField("pay_type_group", ccsText, "");
        $this->pay_type_console_enabled = new clsField("pay_type_console_enabled", ccsInteger, "");
        $this->pay_type_system_pay_type = new clsField("pay_type_system_pay_type", ccsText, "");

        $this->InsertFields["pay_type_id"] = array("Name" => "pay_type_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pay_type_desc"] = array("Name" => "pay_type_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pay_type_group"] = array("Name" => "pay_type_group", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pay_type_console_enabled"] = array("Name" => "pay_type_console_enabled", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["pay_type_system_pay_type"] = array("Name" => "pay_type_system_pay_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pay_type_id"] = array("Name" => "pay_type_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pay_type_desc"] = array("Name" => "pay_type_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pay_type_group"] = array("Name" => "pay_type_group", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pay_type_console_enabled"] = array("Name" => "pay_type_console_enabled", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["pay_type_system_pay_type"] = array("Name" => "pay_type_system_pay_type", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @22-14037E8C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpay_type_id", ccsText, "", "", $this->Parameters["urlpay_type_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "pay_type_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @22-73ADE675
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_payments_types {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @22-6A4BE87D
    function SetValues()
    {
        $this->pay_type_id->SetDBValue($this->f("pay_type_id"));
        $this->pay_type_desc->SetDBValue($this->f("pay_type_desc"));
        $this->pay_type_group->SetDBValue($this->f("pay_type_group"));
        $this->pay_type_console_enabled->SetDBValue(trim($this->f("pay_type_console_enabled")));
        $this->pay_type_system_pay_type->SetDBValue($this->f("pay_type_system_pay_type"));
    }
//End SetValues Method

//Insert Method @22-2CD9C10E
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["pay_type_id"]["Value"] = $this->pay_type_id->GetDBValue(true);
        $this->InsertFields["pay_type_desc"]["Value"] = $this->pay_type_desc->GetDBValue(true);
        $this->InsertFields["pay_type_group"]["Value"] = $this->pay_type_group->GetDBValue(true);
        $this->InsertFields["pay_type_console_enabled"]["Value"] = $this->pay_type_console_enabled->GetDBValue(true);
        $this->InsertFields["pay_type_system_pay_type"]["Value"] = $this->pay_type_system_pay_type->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_addin_payments_types", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @22-6257A649
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["pay_type_id"]["Value"] = $this->pay_type_id->GetDBValue(true);
        $this->UpdateFields["pay_type_desc"]["Value"] = $this->pay_type_desc->GetDBValue(true);
        $this->UpdateFields["pay_type_group"]["Value"] = $this->pay_type_group->GetDBValue(true);
        $this->UpdateFields["pay_type_console_enabled"]["Value"] = $this->pay_type_console_enabled->GetDBValue(true);
        $this->UpdateFields["pay_type_system_pay_type"]["Value"] = $this->pay_type_system_pay_type->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_payments_types", $this->UpdateFields, $this);
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

//Delete Method @22-291CD9A7
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_addin_payments_types";
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

} //End ssf_addin_payments_types1DataSource Class @22-FCB6E20C

//Initialize Page @1-05591C9C
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
$TemplateFileName = "SSFPaymentType.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-FD81C21B
include("./SSFPaymentType_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-BA8DE7B0
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_payments_types = new clsGridssf_addin_payments_types("", $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "SSFPaymentType.php";
$ssf_addin_payments_types1 = new clsRecordssf_addin_payments_types1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_payments_types = & $ssf_addin_payments_types;
$MainPage->Link1 = & $Link1;
$MainPage->ssf_addin_payments_types1 = & $ssf_addin_payments_types1;
$ssf_addin_payments_types->Initialize();
$ssf_addin_payments_types1->Initialize();

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

//Execute Components @1-5ECFA340
$SSFSpiritHeader->Operations();
$ssf_addin_payments_types1->Operation();
//End Execute Components

//Go to destination page @1-1FE66140
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_payments_types);
    unset($ssf_addin_payments_types1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-65F9942E
$SSFSpiritHeader->Show();
$ssf_addin_payments_types->Show();
$ssf_addin_payments_types1->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BDBAB134
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_payments_types);
unset($ssf_addin_payments_types1);
unset($Tpl);
//End Unload Page


?>
