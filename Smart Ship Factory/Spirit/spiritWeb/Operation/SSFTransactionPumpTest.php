<?php
//Include Common Files @1-CA51E315
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFTransactionPumpTest.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordconfig_values_ssf_addin_p { //config_values_ssf_addin_p Class @28-7557C998

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

//Class_Initialize Event @28-EB01B8D6
    function clsRecordconfig_values_ssf_addin_p($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record config_values_ssf_addin_p/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "config_values_ssf_addin_p";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_start_date1 = new clsDatePicker("DatePicker_s_start_date1", "config_values_ssf_addin_p", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "config_values_ssf_addin_p", "s_date_to", $this);
            $this->s_pump_id = new clsControl(ccsListBox, "s_pump_id", "s_pump_id", ccsInteger, "", CCGetRequestParam("s_pump_id", $Method, NULL), $this);
            $this->s_pump_id->DSType = dsSQL;
            list($this->s_pump_id->BoundColumn, $this->s_pump_id->TextColumn, $this->s_pump_id->DBFormat) = array("id", "id", "");
            $this->s_pump_id->DataSource = new clsDBConnection1();
            $this->s_pump_id->ds = & $this->s_pump_id->DataSource;
            $this->s_pump_id->DataSource->SQL = "Select ID from config_values \n" .
            "where library = 'pump' and groupname = 'general'\n" .
            "and parameter = 'ID' {SQL_OrderBy}";
            $this->s_pump_id->DataSource->Order = "id";
            $this->s_id = new clsControl(ccsListBox, "s_id", "s_id", ccsText, "", CCGetRequestParam("s_id", $Method, NULL), $this);
            $this->s_id->DSType = dsSQL;
            list($this->s_id->BoundColumn, $this->s_id->TextColumn, $this->s_id->DBFormat) = array("id", "id", "");
            $this->s_id->DataSource = new clsDBConnection1();
            $this->s_id->ds = & $this->s_id->DataSource;
            $this->s_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_id->DataSource->Order = "param_value";
            $this->s_payment_type = new clsControl(ccsListBox, "s_payment_type", "s_payment_type", ccsText, "", CCGetRequestParam("s_payment_type", $Method, NULL), $this);
            $this->s_payment_type->DSType = dsTable;
            list($this->s_payment_type->BoundColumn, $this->s_payment_type->TextColumn, $this->s_payment_type->DBFormat) = array("pay_type_id", "pay_type_id", "");
            $this->s_payment_type->DataSource = new clsDBConnection1();
            $this->s_payment_type->ds = & $this->s_payment_type->DataSource;
            $this->s_payment_type->DataSource->SQL = "SELECT pay_type_id \n" .
"FROM ssf_addin_payments_types {SQL_Where} {SQL_OrderBy}";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTransactionPumpTest.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @28-A6B94777
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_pump_id->Validate() && $Validation);
        $Validation = ($this->s_id->Validate() && $Validation);
        $Validation = ($this->s_payment_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_payment_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @28-48812EC8
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_start_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_pump_id->Errors->Count());
        $errors = ($errors || $this->s_id->Errors->Count());
        $errors = ($errors || $this->s_payment_type->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @28-C9A0885A
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
        $Redirect = "SSFTransactionPumpTest.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTransactionPumpTest.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @28-7338215C
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
        $this->s_id->Prepare();
        $this->s_payment_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_start_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_end_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_payment_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
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
        $this->DatePicker_s_start_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_end_date1->Show();
        $this->s_pump_id->Show();
        $this->s_id->Show();
        $this->s_payment_type->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End config_values_ssf_addin_p Class @28-FCB6E20C

//DEL      function Prepare()
//DEL      {
//DEL          global $CCSLocales;
//DEL          global $DefaultDateFormat;
//DEL          $this->wp = new clsSQLParameters($this->ErrorBlock);
//DEL          $this->wp->AddParameter("4", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], "", false);
//DEL          $this->wp->AddParameter("5", "urls_id", ccsText, "", "", $this->Parameters["urls_id"], "", false);
//DEL          $this->wp->AddParameter("6", "urls_pay_payment_type", ccsText, "", "", $this->Parameters["urls_pay_payment_type"], "", false);
//DEL          $this->wp->Criterion[1] = "config_values.library = 'grade'";
//DEL          $this->wp->Criterion[2] = "config_values.groupname = 'general'";
//DEL          $this->wp->Criterion[3] = "config_values.parameter = 'number'";
//DEL          $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "ssf_pump_sales.pump_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
//DEL          $this->wp->Criterion[5] = $this->wp->Operation(opContains, "config_values.id", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsText),false);
//DEL          $this->wp->Criterion[6] = $this->wp->Operation(opContains, "ssf_addin_payments_data.pay_payment_type", $this->wp->GetDBValue("6"), $this->ToSQL($this->wp->GetDBValue("6"), ccsText),false);
//DEL  
//DEL          $this->Where = $this->wp->opAND(
//DEL               false, $this->wp->opAND(
//DEL               false, $this->wp->opAND(
//DEL               false, $this->wp->opAND(
//DEL  			 false, $this->wp->opAND(
//DEL               false, 
//DEL               $this->wp->Criterion[1], 
//DEL               $this->wp->Criterion[2]), 
//DEL               $this->wp->Criterion[3]), 
//DEL               $this->wp->Criterion[4]), 
//DEL               $this->wp->Criterion[5]), 
//DEL               $this->wp->Criterion[6]);
//DEL      }

class clsGridconfig_values_ssf_addin_p1 { //config_values_ssf_addin_p1 class @95-6C0314ED

//Variables @95-377ABC06

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
    public $Sorter_sale_id;
    public $Sorter_end_date;
    public $Sorter_end_time;
    public $Sorter_pump_id;
    public $Sorter_id;
    public $Sorter_volume;
    public $Sorter_money;
    public $Sorter_pay_payment_type;
//End Variables

//Class_Initialize Event @95-181C2F6E
    function clsGridconfig_values_ssf_addin_p1($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "config_values_ssf_addin_p1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid config_values_ssf_addin_p1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsconfig_values_ssf_addin_p1DataSource($this);
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
        $this->SorterName = CCGetParam("config_values_ssf_addin_p1Order", "");
        $this->SorterDirection = CCGetParam("config_values_ssf_addin_p1Dir", "");

        $this->sale_id = new clsControl(ccsLink, "sale_id", "sale_id", ccsInteger, "", CCGetRequestParam("sale_id", ccsGet, NULL), $this);
        $this->sale_id->Page = "SSFTransactionPumpTest.php";
        $this->end_date = new clsControl(ccsLabel, "end_date", "end_date", ccsText, "", CCGetRequestParam("end_date", ccsGet, NULL), $this);
        $this->end_time = new clsControl(ccsLabel, "end_time", "end_time", ccsText, "", CCGetRequestParam("end_time", ccsGet, NULL), $this);
        $this->pump_id = new clsControl(ccsLabel, "pump_id", "pump_id", ccsInteger, "", CCGetRequestParam("pump_id", ccsGet, NULL), $this);
        $this->id = new clsControl(ccsLabel, "id", "id", ccsText, "", CCGetRequestParam("id", ccsGet, NULL), $this);
        $this->volume = new clsControl(ccsLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("volume", ccsGet, NULL), $this);
        $this->money = new clsControl(ccsLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("money", ccsGet, NULL), $this);
        $this->pay_payment_type = new clsControl(ccsLabel, "pay_payment_type", "pay_payment_type", ccsText, "", CCGetRequestParam("pay_payment_type", ccsGet, NULL), $this);
        $this->config_values_ssf_addin_p1_TotalRecords = new clsControl(ccsLabel, "config_values_ssf_addin_p1_TotalRecords", "config_values_ssf_addin_p1_TotalRecords", ccsText, "", CCGetRequestParam("config_values_ssf_addin_p1_TotalRecords", ccsGet, NULL), $this);
        $this->Sorter_sale_id = new clsSorter($this->ComponentName, "Sorter_sale_id", $FileName, $this);
        $this->Sorter_end_date = new clsSorter($this->ComponentName, "Sorter_end_date", $FileName, $this);
        $this->Sorter_end_time = new clsSorter($this->ComponentName, "Sorter_end_time", $FileName, $this);
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_id = new clsSorter($this->ComponentName, "Sorter_id", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter_pay_payment_type = new clsSorter($this->ComponentName, "Sorter_pay_payment_type", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @95-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @95-869D747F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_id"] = CCGetFromGet("s_id", NULL);
        $this->DataSource->Parameters["urls_payment_type"] = CCGetFromGet("s_payment_type", NULL);

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
            $this->ControlsVisible["sale_id"] = $this->sale_id->Visible;
            $this->ControlsVisible["end_date"] = $this->end_date->Visible;
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["id"] = $this->id->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["pay_payment_type"] = $this->pay_payment_type->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->sale_id->SetValue($this->DataSource->sale_id->GetValue());
                $this->sale_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->sale_id->Parameters = CCAddParam($this->sale_id->Parameters, "sale_id", $this->DataSource->f("sale_id"));
                $this->end_date->SetValue($this->DataSource->end_date->GetValue());
                $this->end_time->SetValue($this->DataSource->end_time->GetValue());
                $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
                $this->id->SetValue($this->DataSource->id->GetValue());
                $this->volume->SetValue($this->DataSource->volume->GetValue());
                $this->money->SetValue($this->DataSource->money->GetValue());
                $this->pay_payment_type->SetValue($this->DataSource->pay_payment_type->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->sale_id->Show();
                $this->end_date->Show();
                $this->end_time->Show();
                $this->pump_id->Show();
                $this->id->Show();
                $this->volume->Show();
                $this->money->Show();
                $this->pay_payment_type->Show();
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
        $this->config_values_ssf_addin_p1_TotalRecords->Show();
        $this->Sorter_sale_id->Show();
        $this->Sorter_end_date->Show();
        $this->Sorter_end_time->Show();
        $this->Sorter_pump_id->Show();
        $this->Sorter_id->Show();
        $this->Sorter_volume->Show();
        $this->Sorter_money->Show();
        $this->Sorter_pay_payment_type->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @95-C620FB29
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->sale_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_payment_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End config_values_ssf_addin_p1 Class @95-FCB6E20C

class clsconfig_values_ssf_addin_p1DataSource extends clsDBConnection1 {  //config_values_ssf_addin_p1DataSource Class @95-03C57039

//DataSource Variables @95-7B31C95F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $sale_id;
    public $end_date;
    public $end_time;
    public $pump_id;
    public $id;
    public $volume;
    public $money;
    public $pay_payment_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @95-4D081F08
    function clsconfig_values_ssf_addin_p1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid config_values_ssf_addin_p1";
        $this->Initialize();
        $this->sale_id = new clsField("sale_id", ccsInteger, "");
        $this->end_date = new clsField("end_date", ccsText, "");
        $this->end_time = new clsField("end_time", ccsText, "");
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->id = new clsField("id", ccsText, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->pay_payment_type = new clsField("pay_payment_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @95-46A37421
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "sale_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_sale_id" => array("sale_id", ""), 
            "Sorter_end_date" => array("end_date", ""), 
            "Sorter_end_time" => array("end_time", ""), 
            "Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_id" => array("id", ""), 
            "Sorter_volume" => array("volume", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter_pay_payment_type" => array("pay_payment_type", "")));
    }
//End SetOrder Method

//Prepare Method @95-595A83E0
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("4", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], "", false);
        $this->wp->AddParameter("5", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("6", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("7", "urls_id", ccsText, "", "", $this->Parameters["urls_id"], "", false);
        $this->wp->AddParameter("8", "urls_payment_type", ccsText, "", "", $this->Parameters["urls_payment_type"], "", false);
        $this->wp->Criterion[1] = "config_values.library = 'grade'";
        $this->wp->Criterion[2] = "config_values.groupname = 'general'";
        $this->wp->Criterion[3] = "config_values.parameter = 'number'";
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "ssf_pump_sales.pump_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
        $this->wp->Criterion[5] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsText),false);
        $this->wp->Criterion[6] = $this->wp->Operation(opLessThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("6"), $this->ToSQL($this->wp->GetDBValue("6"), ccsText),false);
        $this->wp->Criterion[7] = $this->wp->Operation(opContains, "config_values.id", $this->wp->GetDBValue("7"), $this->ToSQL($this->wp->GetDBValue("7"), ccsText),false);
        $this->wp->Criterion[8] = $this->wp->Operation(opContains, "ssf_addin_payments_data.pay_payment_type", $this->wp->GetDBValue("8"), $this->ToSQL($this->wp->GetDBValue("8"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]), 
             $this->wp->Criterion[5]), 
             $this->wp->Criterion[6]), 
             $this->wp->Criterion[7]), 
             $this->wp->Criterion[8]);
    }
//End Prepare Method

//Open Method @95-64AC16EA
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_addin_payments_data ON\n\n" .
        "ssf_pump_sales.sale_id = ssf_addin_payments_data.pay_sale_id) INNER JOIN config_values ON\n\n" .
        "ssf_pump_sales.grade_id = config_values.param_value";
        $this->SQL = "SELECT sale_id, end_date, end_time, pump_id, id, volume, money, pay_sale_id, sale_type, pay_payment_type \n\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_addin_payments_data ON\n\n" .
        "ssf_pump_sales.sale_id = ssf_addin_payments_data.pay_sale_id) INNER JOIN config_values ON\n\n" .
        "ssf_pump_sales.grade_id = config_values.param_value {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @95-A8A6FE5E
    function SetValues()
    {
        $this->sale_id->SetDBValue(trim($this->f("sale_id")));
        $this->end_date->SetDBValue($this->f("end_date"));
        $this->end_time->SetDBValue($this->f("end_time"));
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->id->SetDBValue($this->f("id"));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->pay_payment_type->SetDBValue($this->f("pay_payment_type"));
    }
//End SetValues Method

} //End config_values_ssf_addin_p1DataSource Class @95-FCB6E20C

class clsRecordssf_pump_sales { //ssf_pump_sales Class @61-5B615C1E

//Variables @61-9E315808

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

//Class_Initialize Event @61-8D5EC946
    function clsRecordssf_pump_sales($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_pump_sales/Error";
        $this->DataSource = new clsssf_pump_salesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_pump_sales";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->pump_sale_id = new clsControl(ccsTextBox, "pump_sale_id", "pump_sale_id", ccsInteger, "", CCGetRequestParam("pump_sale_id", $Method, NULL), $this);
            $this->pump_pump_id = new clsControl(ccsTextBox, "pump_pump_id", "pump_pump_id", ccsText, "", CCGetRequestParam("pump_pump_id", $Method, NULL), $this);
            $this->btnSendREQ = new clsButton("btnSendREQ", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @61-1CCEAA4B
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlsale_id"] = CCGetFromGet("sale_id", NULL);
    }
//End Initialize Method

//Validate Method @61-B8B06524
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->pump_sale_id->Validate() && $Validation);
        $Validation = ($this->pump_pump_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->pump_sale_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pump_pump_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @61-F4FCF574
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pump_sale_id->Errors->Count());
        $errors = ($errors || $this->pump_pump_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @61-76D8346D
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
            $this->PressedButton = "btnSendREQ";
            if($this->btnSendREQ->Pressed) {
                $this->PressedButton = "btnSendREQ";
            }
        }
        $Redirect = "SSFTransactionPumpTest.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "btnSendREQ") {
                if(!CCGetEvent($this->btnSendREQ->CCSEvents, "OnClick", $this->btnSendREQ)) {
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

//Show Method @61-D717E420
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
                    $this->pump_sale_id->SetValue($this->DataSource->pump_sale_id->GetValue());
                    $this->pump_pump_id->SetValue($this->DataSource->pump_pump_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->pump_sale_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pump_pump_id->Errors->ToString());
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

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->pump_sale_id->Show();
        $this->pump_pump_id->Show();
        $this->btnSendREQ->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_pump_sales Class @61-FCB6E20C

class clsssf_pump_salesDataSource extends clsDBConnection1 {  //ssf_pump_salesDataSource Class @61-A25FA17A

//DataSource Variables @61-0FA296B5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;
    public $AllParametersSet;


    // Datasource fields
    public $pump_sale_id;
    public $pump_pump_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @61-47685171
    function clsssf_pump_salesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_pump_sales/Error";
        $this->Initialize();
        $this->pump_sale_id = new clsField("pump_sale_id", ccsInteger, "");
        $this->pump_pump_id = new clsField("pump_pump_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//Prepare Method @61-71F2D518
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlsale_id", ccsInteger, "", "", $this->Parameters["urlsale_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_addin_payments_data.pay_sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @61-BBF40261
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_addin_payments_data.*, pump_id \n\n" .
        "FROM ssf_addin_payments_data INNER JOIN ssf_pump_sales ON\n\n" .
        "ssf_addin_payments_data.pay_sale_id = ssf_pump_sales.sale_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @61-049DBEB4
    function SetValues()
    {
        $this->pump_sale_id->SetDBValue(trim($this->f("pay_sale_id")));
        $this->pump_pump_id->SetDBValue($this->f("pump_id"));
    }
//End SetValues Method

} //End ssf_pump_salesDataSource Class @61-FCB6E20C

//Initialize Page @1-7089831C
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
$TemplateFileName = "SSFTransactionPumpTest.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-7C41C4F4
include("./SSFTransactionPumpTest_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A1856618
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$config_values_ssf_addin_p = new clsRecordconfig_values_ssf_addin_p("", $MainPage);
$config_values_ssf_addin_p1 = new clsGridconfig_values_ssf_addin_p1("", $MainPage);
$ssf_pump_sales = new clsRecordssf_pump_sales("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->config_values_ssf_addin_p = & $config_values_ssf_addin_p;
$MainPage->config_values_ssf_addin_p1 = & $config_values_ssf_addin_p1;
$MainPage->ssf_pump_sales = & $ssf_pump_sales;
$config_values_ssf_addin_p1->Initialize();
$ssf_pump_sales->Initialize();

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

//Execute Components @1-590C19B0
$SSFSpiritHeader->Operations();
$config_values_ssf_addin_p->Operation();
$ssf_pump_sales->Operation();
//End Execute Components

//Go to destination page @1-2E8A1E2E
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($config_values_ssf_addin_p);
    unset($config_values_ssf_addin_p1);
    unset($ssf_pump_sales);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-82333D62
$SSFSpiritHeader->Show();
$config_values_ssf_addin_p->Show();
$config_values_ssf_addin_p1->Show();
$ssf_pump_sales->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-A53D803D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($config_values_ssf_addin_p);
unset($config_values_ssf_addin_p1);
unset($ssf_pump_sales);
unset($Tpl);
//End Unload Page


?>
