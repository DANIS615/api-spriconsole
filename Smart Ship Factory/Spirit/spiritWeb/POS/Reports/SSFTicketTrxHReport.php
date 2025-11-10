<?php
//Include Common Files @1-E742D0B1
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketTrxHReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_trx_headerSearch { //ssf_tkt_trx_headerSearch Class @6-E9DE5305

//Variables @6-9E315808

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

//Class_Initialize Event @6-164B7B7F
    function clsRecordssf_tkt_trx_headerSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_trx_headerSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_trx_headerSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_from_date1 = new clsDatePicker("DatePicker_s_from_date1", "ssf_tkt_trx_headerSearch", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_tkt_trx_headerSearch", "s_date_to", $this);
            $this->s_time_from = new clsControl(ccsTextBox, "s_time_from", "s_time_from", ccsText, "", CCGetRequestParam("s_time_from", $Method, NULL), $this);
            $this->s_time_to = new clsControl(ccsTextBox, "s_time_to", "s_time_to", ccsText, "", CCGetRequestParam("s_time_to", $Method, NULL), $this);
            $this->s_tkt_trans_id = new clsControl(ccsTextBox, "s_tkt_trans_id", "s_tkt_trans_id", ccsInteger, "", CCGetRequestParam("s_tkt_trans_id", $Method, NULL), $this);
            $this->s_tkt_trans_id_to = new clsControl(ccsTextBox, "s_tkt_trans_id_to", "s_tkt_trans_id_to", ccsInteger, "", CCGetRequestParam("s_tkt_trans_id_to", $Method, NULL), $this);
            $this->s_tkt_pos_id = new clsControl(ccsListBox, "s_tkt_pos_id", "s_tkt_pos_id", ccsInteger, "", CCGetRequestParam("s_tkt_pos_id", $Method, NULL), $this);
            $this->s_tkt_pos_id->DSType = dsTable;
            list($this->s_tkt_pos_id->BoundColumn, $this->s_tkt_pos_id->TextColumn, $this->s_tkt_pos_id->DBFormat) = array("tkt_config_param_value", "tkt_config_param_value", "");
            $this->s_tkt_pos_id->DataSource = new clsDBConnection1();
            $this->s_tkt_pos_id->ds = & $this->s_tkt_pos_id->DataSource;
            $this->s_tkt_pos_id->DataSource->SQL = "SELECT tkt_config_param_value \n" .
"FROM ssf_tkt_configuration {SQL_Where} {SQL_OrderBy}";
            $this->s_tkt_pos_id->DataSource->Order = "tkt_config_param_value";
            $this->s_tkt_pos_id->DataSource->wp = new clsSQLParameters();
            $this->s_tkt_pos_id->DataSource->wp->Criterion[1] = "tkt_config_param_id = 'POS_NUMBER'";
            $this->s_tkt_pos_id->DataSource->Where = 
                 $this->s_tkt_pos_id->DataSource->wp->Criterion[1];
            $this->s_tkt_pos_id->DataSource->Order = "tkt_config_param_value";
            $this->s_tkt_customer_id = new clsControl(ccsTextBox, "s_tkt_customer_id", "s_tkt_customer_id", ccsText, "", CCGetRequestParam("s_tkt_customer_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopCustomerList.php";
            $this->s_tkt_receipt_type = new clsControl(ccsListBox, "s_tkt_receipt_type", "s_tkt_receipt_type", ccsText, "", CCGetRequestParam("s_tkt_receipt_type", $Method, NULL), $this);
            $this->s_tkt_receipt_type->DSType = dsTable;
            list($this->s_tkt_receipt_type->BoundColumn, $this->s_tkt_receipt_type->TextColumn, $this->s_tkt_receipt_type->DBFormat) = array("tkt_receipt_id", "tkt_receipt_id", "");
            $this->s_tkt_receipt_type->DataSource = new clsDBConnection1();
            $this->s_tkt_receipt_type->ds = & $this->s_tkt_receipt_type->DataSource;
            $this->s_tkt_receipt_type->DataSource->SQL = "SELECT tkt_receipt_id \n" .
"FROM ssf_tkt_receipt_format {SQL_Where} {SQL_OrderBy}";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-F6544543
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_time_from->Validate() && $Validation);
        $Validation = ($this->s_time_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_trans_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_trans_id_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_pos_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_customer_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_receipt_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_trans_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_trans_id_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_pos_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_customer_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_receipt_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-B54C32C9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_from_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_time_from->Errors->Count());
        $errors = ($errors || $this->s_time_to->Errors->Count());
        $errors = ($errors || $this->s_tkt_trans_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_trans_id_to->Errors->Count());
        $errors = ($errors || $this->s_tkt_pos_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_customer_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-59BBA859
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
        $Redirect = "SSFTicketTrxHReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketTrxHReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-C640B308
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_pos_id->Prepare();
        $this->s_tkt_receipt_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_from_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_trans_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_trans_id_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_pos_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_customer_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_receipt_type->Errors->ToString());
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
        $this->DatePicker_s_from_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_time_from->Show();
        $this->s_time_to->Show();
        $this->s_tkt_trans_id->Show();
        $this->s_tkt_trans_id_to->Show();
        $this->s_tkt_pos_id->Show();
        $this->s_tkt_customer_id->Show();
        $this->Link1->Show();
        $this->s_tkt_receipt_type->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_trx_headerSearch Class @6-FCB6E20C

class clsGridssf_tkt_trx_header { //ssf_tkt_trx_header class @76-AA66A4BE

//Variables @76-3ABB9A4C

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
    public $Sorter_tkt_trans_id;
    public $Sorter_tkt_pos_id;
    public $Sorter_tkt_shift_id;
    public $Sorter_tkt_date;
    public $Sorter_tkt_time;
    public $Sorter_tkt_type;
    public $Sorter_tkt_receipt_type;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_tax_amount;
    public $Sorter_tkt_total_amount;
    public $Sorter_tkt_customer_id;
    public $Sorter_tkt_customer_name;
    public $Sorter_tkt_customer_address;
//End Variables

//Class_Initialize Event @76-21CA9571
    function clsGridssf_tkt_trx_header($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_header";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_trx_header";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_trx_headerDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 40;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_trx_headerOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_trx_headerDir", "");

        $this->Data_tkt_trans_detail = new clsPanel("Data_tkt_trans_detail", $this);
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTicketTrxPopDetail.php";
        $this->Data_tkt_trans_id = new clsPanel("Data_tkt_trans_id", $this);
        $this->tkt_trans_id = new clsControl(ccsLabel, "tkt_trans_id", "tkt_trans_id", ccsInteger, "", CCGetRequestParam("tkt_trans_id", ccsGet, NULL), $this);
        $this->Data_tkt_pos_id = new clsPanel("Data_tkt_pos_id", $this);
        $this->tkt_pos_id = new clsControl(ccsLabel, "tkt_pos_id", "tkt_pos_id", ccsInteger, "", CCGetRequestParam("tkt_pos_id", ccsGet, NULL), $this);
        $this->Data_tkt_shift_id = new clsPanel("Data_tkt_shift_id", $this);
        $this->tkt_shift_id = new clsControl(ccsLabel, "tkt_shift_id", "tkt_shift_id", ccsInteger, "", CCGetRequestParam("tkt_shift_id", ccsGet, NULL), $this);
        $this->Data_tkt_date = new clsPanel("Data_tkt_date", $this);
        $this->tkt_date = new clsControl(ccsLabel, "tkt_date", "tkt_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_date", ccsGet, NULL), $this);
        $this->Data_tkt_time = new clsPanel("Data_tkt_time", $this);
        $this->tkt_time = new clsControl(ccsLabel, "tkt_time", "tkt_time", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_time", ccsGet, NULL), $this);
        $this->Data_tkt_type = new clsPanel("Data_tkt_type", $this);
        $this->tkt_type = new clsControl(ccsLabel, "tkt_type", "tkt_type", ccsText, "", CCGetRequestParam("tkt_type", ccsGet, NULL), $this);
        $this->Data_tkt_receipt_type = new clsPanel("Data_tkt_receipt_type", $this);
        $this->tkt_receipt_type = new clsControl(ccsLabel, "tkt_receipt_type", "tkt_receipt_type", ccsText, "", CCGetRequestParam("tkt_receipt_type", ccsGet, NULL), $this);
        $this->tkt_receipt_group = new clsControl(ccsLabel, "tkt_receipt_group", "tkt_receipt_group", ccsText, "", CCGetRequestParam("tkt_receipt_group", ccsGet, NULL), $this);
        $this->tkt_receipt_number = new clsControl(ccsLabel, "tkt_receipt_number", "tkt_receipt_number", ccsInteger, "", CCGetRequestParam("tkt_receipt_number", ccsGet, NULL), $this);
        $this->Data_tkt_net_amount = new clsPanel("Data_tkt_net_amount", $this);
        $this->tkt_net_amount = new clsControl(ccsLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("tkt_net_amount", ccsGet, NULL), $this);
        $this->Data_tkt_tax_amount = new clsPanel("Data_tkt_tax_amount", $this);
        $this->tkt_tax_amount = new clsControl(ccsLabel, "tkt_tax_amount", "tkt_tax_amount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("tkt_tax_amount", ccsGet, NULL), $this);
        $this->Data_tkt_total_amount = new clsPanel("Data_tkt_total_amount", $this);
        $this->tkt_total_amount = new clsControl(ccsLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("tkt_total_amount", ccsGet, NULL), $this);
        $this->Data_tkt_customer_id = new clsPanel("Data_tkt_customer_id", $this);
        $this->tkt_customer_id = new clsControl(ccsLabel, "tkt_customer_id", "tkt_customer_id", ccsText, "", CCGetRequestParam("tkt_customer_id", ccsGet, NULL), $this);
        $this->Data_tkt_customer_name = new clsPanel("Data_tkt_customer_name", $this);
        $this->tkt_customer_name = new clsControl(ccsLabel, "tkt_customer_name", "tkt_customer_name", ccsText, "", CCGetRequestParam("tkt_customer_name", ccsGet, NULL), $this);
        $this->Data_tkt_customer_address = new clsPanel("Data_tkt_customer_address", $this);
        $this->tkt_customer_address = new clsControl(ccsLabel, "tkt_customer_address", "tkt_customer_address", ccsText, "", CCGetRequestParam("tkt_customer_address", ccsGet, NULL), $this);
        $this->ssf_tkt_trx_header_TotalRecords = new clsControl(ccsLabel, "ssf_tkt_trx_header_TotalRecords", "ssf_tkt_trx_header_TotalRecords", ccsText, "", CCGetRequestParam("ssf_tkt_trx_header_TotalRecords", ccsGet, NULL), $this);
        $this->Header_tkt_trans_detail = new clsPanel("Header_tkt_trans_detail", $this);
        $this->Header_tkt_trans_id = new clsPanel("Header_tkt_trans_id", $this);
        $this->Sorter_tkt_trans_id = new clsSorter($this->ComponentName, "Sorter_tkt_trans_id", $FileName, $this);
        $this->col1 = new clsControl(ccsCheckBox, "col1", "col1", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col1", ccsGet, NULL), $this);
        $this->col1->CheckedValue = true;
        $this->col1->UncheckedValue = false;
        $this->Header_tkt_pos_id = new clsPanel("Header_tkt_pos_id", $this);
        $this->Sorter_tkt_pos_id = new clsSorter($this->ComponentName, "Sorter_tkt_pos_id", $FileName, $this);
        $this->col2 = new clsControl(ccsCheckBox, "col2", "col2", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col2", ccsGet, NULL), $this);
        $this->col2->CheckedValue = true;
        $this->col2->UncheckedValue = false;
        $this->Header_tkt_shift_id = new clsPanel("Header_tkt_shift_id", $this);
        $this->Sorter_tkt_shift_id = new clsSorter($this->ComponentName, "Sorter_tkt_shift_id", $FileName, $this);
        $this->col3 = new clsControl(ccsCheckBox, "col3", "col3", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col3", ccsGet, NULL), $this);
        $this->col3->CheckedValue = true;
        $this->col3->UncheckedValue = false;
        $this->Header_tkt_date = new clsPanel("Header_tkt_date", $this);
        $this->Sorter_tkt_date = new clsSorter($this->ComponentName, "Sorter_tkt_date", $FileName, $this);
        $this->col4 = new clsControl(ccsCheckBox, "col4", "col4", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col4", ccsGet, NULL), $this);
        $this->col4->CheckedValue = true;
        $this->col4->UncheckedValue = false;
        $this->Header_tkt_time = new clsPanel("Header_tkt_time", $this);
        $this->Sorter_tkt_time = new clsSorter($this->ComponentName, "Sorter_tkt_time", $FileName, $this);
        $this->col5 = new clsControl(ccsCheckBox, "col5", "col5", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col5", ccsGet, NULL), $this);
        $this->col5->CheckedValue = true;
        $this->col5->UncheckedValue = false;
        $this->Header_tkt_type = new clsPanel("Header_tkt_type", $this);
        $this->Sorter_tkt_type = new clsSorter($this->ComponentName, "Sorter_tkt_type", $FileName, $this);
        $this->col6 = new clsControl(ccsCheckBox, "col6", "col6", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col6", ccsGet, NULL), $this);
        $this->col6->CheckedValue = true;
        $this->col6->UncheckedValue = false;
        $this->Header_tkt_receipt_type = new clsPanel("Header_tkt_receipt_type", $this);
        $this->Sorter_tkt_receipt_type = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_type", $FileName, $this);
        $this->col7 = new clsControl(ccsCheckBox, "col7", "col7", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col7", ccsGet, NULL), $this);
        $this->col7->CheckedValue = true;
        $this->col7->UncheckedValue = false;
        $this->Header_tkt_net_amount = new clsPanel("Header_tkt_net_amount", $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->col8 = new clsControl(ccsCheckBox, "col8", "col8", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col8", ccsGet, NULL), $this);
        $this->col8->CheckedValue = true;
        $this->col8->UncheckedValue = false;
        $this->Header_tkt_tax_amount = new clsPanel("Header_tkt_tax_amount", $this);
        $this->Sorter_tkt_tax_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tax_amount", $FileName, $this);
        $this->col9 = new clsControl(ccsCheckBox, "col9", "col9", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col9", ccsGet, NULL), $this);
        $this->col9->CheckedValue = true;
        $this->col9->UncheckedValue = false;
        $this->Header_tkt_total_amount = new clsPanel("Header_tkt_total_amount", $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->col10 = new clsControl(ccsCheckBox, "col10", "col10", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col10", ccsGet, NULL), $this);
        $this->col10->CheckedValue = true;
        $this->col10->UncheckedValue = false;
        $this->Header_tkt_customer_id = new clsPanel("Header_tkt_customer_id", $this);
        $this->Sorter_tkt_customer_id = new clsSorter($this->ComponentName, "Sorter_tkt_customer_id", $FileName, $this);
        $this->col11 = new clsControl(ccsCheckBox, "col11", "col11", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col11", ccsGet, NULL), $this);
        $this->col11->CheckedValue = true;
        $this->col11->UncheckedValue = false;
        $this->Header_tkt_customer_name = new clsPanel("Header_tkt_customer_name", $this);
        $this->Sorter_tkt_customer_name = new clsSorter($this->ComponentName, "Sorter_tkt_customer_name", $FileName, $this);
        $this->col12 = new clsControl(ccsCheckBox, "col12", "col12", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col12", ccsGet, NULL), $this);
        $this->col12->CheckedValue = true;
        $this->col12->UncheckedValue = false;
        $this->Header_tkt_customer_address = new clsPanel("Header_tkt_customer_address", $this);
        $this->Sorter_tkt_customer_address = new clsSorter($this->ComponentName, "Sorter_tkt_customer_address", $FileName, $this);
        $this->col13 = new clsControl(ccsCheckBox, "col13", "col13", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col13", ccsGet, NULL), $this);
        $this->col13->CheckedValue = true;
        $this->col13->UncheckedValue = false;
        $this->lblTotalLabel = new clsControl(ccsLabel, "lblTotalLabel", "lblTotalLabel", ccsText, "", CCGetRequestParam("lblTotalLabel", ccsGet, NULL), $this);
        $this->lblSubTotalNetAmount = new clsControl(ccsLabel, "lblSubTotalNetAmount", "lblSubTotalNetAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblSubTotalNetAmount", ccsGet, NULL), $this);
        $this->lblTotalNetAmount = new clsControl(ccsLabel, "lblTotalNetAmount", "lblTotalNetAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblTotalNetAmount", ccsGet, NULL), $this);
        $this->lblSubTotalTaxAmount = new clsControl(ccsLabel, "lblSubTotalTaxAmount", "lblSubTotalTaxAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblSubTotalTaxAmount", ccsGet, NULL), $this);
        $this->lblTotalTaxAmount = new clsControl(ccsLabel, "lblTotalTaxAmount", "lblTotalTaxAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblTotalTaxAmount", ccsGet, NULL), $this);
        $this->lblSubTotalAmount = new clsControl(ccsLabel, "lblSubTotalAmount", "lblSubTotalAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblSubTotalAmount", ccsGet, NULL), $this);
        $this->lblTotalAmount = new clsControl(ccsLabel, "lblTotalAmount", "lblTotalAmount", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), CCGetRequestParam("lblTotalAmount", ccsGet, NULL), $this);
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array("mm", "/", "dd", "/", "yyyy", " ", "h", ":", "nn", " ", "AM/PM"), "", $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Header_tkt_trans_id->AddComponent("Sorter_tkt_trans_id", $this->Sorter_tkt_trans_id);
        $this->Header_tkt_trans_id->AddComponent("col1", $this->col1);
        $this->Header_tkt_pos_id->AddComponent("Sorter_tkt_pos_id", $this->Sorter_tkt_pos_id);
        $this->Header_tkt_pos_id->AddComponent("col2", $this->col2);
        $this->Header_tkt_shift_id->AddComponent("Sorter_tkt_shift_id", $this->Sorter_tkt_shift_id);
        $this->Header_tkt_shift_id->AddComponent("col3", $this->col3);
        $this->Header_tkt_date->AddComponent("Sorter_tkt_date", $this->Sorter_tkt_date);
        $this->Header_tkt_date->AddComponent("col4", $this->col4);
        $this->Header_tkt_time->AddComponent("Sorter_tkt_time", $this->Sorter_tkt_time);
        $this->Header_tkt_time->AddComponent("col5", $this->col5);
        $this->Header_tkt_type->AddComponent("Sorter_tkt_type", $this->Sorter_tkt_type);
        $this->Header_tkt_type->AddComponent("col6", $this->col6);
        $this->Header_tkt_receipt_type->AddComponent("Sorter_tkt_receipt_type", $this->Sorter_tkt_receipt_type);
        $this->Header_tkt_receipt_type->AddComponent("col7", $this->col7);
        $this->Header_tkt_net_amount->AddComponent("Sorter_tkt_net_amount", $this->Sorter_tkt_net_amount);
        $this->Header_tkt_net_amount->AddComponent("col8", $this->col8);
        $this->Header_tkt_tax_amount->AddComponent("Sorter_tkt_tax_amount", $this->Sorter_tkt_tax_amount);
        $this->Header_tkt_tax_amount->AddComponent("col9", $this->col9);
        $this->Header_tkt_total_amount->AddComponent("Sorter_tkt_total_amount", $this->Sorter_tkt_total_amount);
        $this->Header_tkt_total_amount->AddComponent("col10", $this->col10);
        $this->Header_tkt_customer_id->AddComponent("Sorter_tkt_customer_id", $this->Sorter_tkt_customer_id);
        $this->Header_tkt_customer_id->AddComponent("col11", $this->col11);
        $this->Header_tkt_customer_name->AddComponent("Sorter_tkt_customer_name", $this->Sorter_tkt_customer_name);
        $this->Header_tkt_customer_name->AddComponent("col12", $this->col12);
        $this->Header_tkt_customer_address->AddComponent("Sorter_tkt_customer_address", $this->Sorter_tkt_customer_address);
        $this->Header_tkt_customer_address->AddComponent("col13", $this->col13);
        $this->Data_tkt_trans_detail->AddComponent("Link1", $this->Link1);
        $this->Data_tkt_trans_id->AddComponent("tkt_trans_id", $this->tkt_trans_id);
        $this->Data_tkt_pos_id->AddComponent("tkt_pos_id", $this->tkt_pos_id);
        $this->Data_tkt_shift_id->AddComponent("tkt_shift_id", $this->tkt_shift_id);
        $this->Data_tkt_date->AddComponent("tkt_date", $this->tkt_date);
        $this->Data_tkt_time->AddComponent("tkt_time", $this->tkt_time);
        $this->Data_tkt_type->AddComponent("tkt_type", $this->tkt_type);
        $this->Data_tkt_receipt_type->AddComponent("tkt_receipt_type", $this->tkt_receipt_type);
        $this->Data_tkt_receipt_type->AddComponent("tkt_receipt_group", $this->tkt_receipt_group);
        $this->Data_tkt_receipt_type->AddComponent("tkt_receipt_number", $this->tkt_receipt_number);
        $this->Data_tkt_net_amount->AddComponent("tkt_net_amount", $this->tkt_net_amount);
        $this->Data_tkt_tax_amount->AddComponent("tkt_tax_amount", $this->tkt_tax_amount);
        $this->Data_tkt_total_amount->AddComponent("tkt_total_amount", $this->tkt_total_amount);
        $this->Data_tkt_customer_id->AddComponent("tkt_customer_id", $this->tkt_customer_id);
        $this->Data_tkt_customer_name->AddComponent("tkt_customer_name", $this->tkt_customer_name);
        $this->Data_tkt_customer_address->AddComponent("tkt_customer_address", $this->tkt_customer_address);
    }
//End Class_Initialize Event

//Initialize Method @76-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @76-BDC08D3D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_tkt_trans_id"] = CCGetFromGet("s_tkt_trans_id", NULL);
        $this->DataSource->Parameters["urls_tkt_pos_id"] = CCGetFromGet("s_tkt_pos_id", NULL);
        $this->DataSource->Parameters["urls_tkt_customer_id"] = CCGetFromGet("s_tkt_customer_id", NULL);
        $this->DataSource->Parameters["urls_tkt_receipt_type"] = CCGetFromGet("s_tkt_receipt_type", NULL);
        $this->DataSource->Parameters["urls_tkt_trans_id_to"] = CCGetFromGet("s_tkt_trans_id_to", NULL);

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
            $this->ControlsVisible["Data_tkt_trans_detail"] = $this->Data_tkt_trans_detail->Visible;
            $this->ControlsVisible["Link1"] = $this->Link1->Visible;
            $this->ControlsVisible["Data_tkt_trans_id"] = $this->Data_tkt_trans_id->Visible;
            $this->ControlsVisible["tkt_trans_id"] = $this->tkt_trans_id->Visible;
            $this->ControlsVisible["Data_tkt_pos_id"] = $this->Data_tkt_pos_id->Visible;
            $this->ControlsVisible["tkt_pos_id"] = $this->tkt_pos_id->Visible;
            $this->ControlsVisible["Data_tkt_shift_id"] = $this->Data_tkt_shift_id->Visible;
            $this->ControlsVisible["tkt_shift_id"] = $this->tkt_shift_id->Visible;
            $this->ControlsVisible["Data_tkt_date"] = $this->Data_tkt_date->Visible;
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["Data_tkt_time"] = $this->Data_tkt_time->Visible;
            $this->ControlsVisible["tkt_time"] = $this->tkt_time->Visible;
            $this->ControlsVisible["Data_tkt_type"] = $this->Data_tkt_type->Visible;
            $this->ControlsVisible["tkt_type"] = $this->tkt_type->Visible;
            $this->ControlsVisible["Data_tkt_receipt_type"] = $this->Data_tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_receipt_type"] = $this->tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_receipt_group"] = $this->tkt_receipt_group->Visible;
            $this->ControlsVisible["tkt_receipt_number"] = $this->tkt_receipt_number->Visible;
            $this->ControlsVisible["Data_tkt_net_amount"] = $this->Data_tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["Data_tkt_tax_amount"] = $this->Data_tkt_tax_amount->Visible;
            $this->ControlsVisible["tkt_tax_amount"] = $this->tkt_tax_amount->Visible;
            $this->ControlsVisible["Data_tkt_total_amount"] = $this->Data_tkt_total_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["Data_tkt_customer_id"] = $this->Data_tkt_customer_id->Visible;
            $this->ControlsVisible["tkt_customer_id"] = $this->tkt_customer_id->Visible;
            $this->ControlsVisible["Data_tkt_customer_name"] = $this->Data_tkt_customer_name->Visible;
            $this->ControlsVisible["tkt_customer_name"] = $this->tkt_customer_name->Visible;
            $this->ControlsVisible["Data_tkt_customer_address"] = $this->Data_tkt_customer_address->Visible;
            $this->ControlsVisible["tkt_customer_address"] = $this->tkt_customer_address->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->Link1->Parameters = "";
                $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "tkt_trans_id", $this->DataSource->f("tkt_trans_id"));
                $this->tkt_trans_id->SetValue($this->DataSource->tkt_trans_id->GetValue());
                $this->tkt_pos_id->SetValue($this->DataSource->tkt_pos_id->GetValue());
                $this->tkt_shift_id->SetValue($this->DataSource->tkt_shift_id->GetValue());
                $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
                $this->tkt_time->SetValue($this->DataSource->tkt_time->GetValue());
                $this->tkt_type->SetValue($this->DataSource->tkt_type->GetValue());
                $this->tkt_receipt_type->SetValue($this->DataSource->tkt_receipt_type->GetValue());
                $this->tkt_receipt_group->SetValue($this->DataSource->tkt_receipt_group->GetValue());
                $this->tkt_receipt_number->SetValue($this->DataSource->tkt_receipt_number->GetValue());
                $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
                $this->tkt_tax_amount->SetValue($this->DataSource->tkt_tax_amount->GetValue());
                $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
                $this->tkt_customer_id->SetValue($this->DataSource->tkt_customer_id->GetValue());
                $this->tkt_customer_name->SetValue($this->DataSource->tkt_customer_name->GetValue());
                $this->tkt_customer_address->SetValue($this->DataSource->tkt_customer_address->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->Data_tkt_trans_detail->Show();
                $this->Data_tkt_trans_id->Show();
                $this->Data_tkt_pos_id->Show();
                $this->Data_tkt_shift_id->Show();
                $this->Data_tkt_date->Show();
                $this->Data_tkt_time->Show();
                $this->Data_tkt_type->Show();
                $this->Data_tkt_receipt_type->Show();
                $this->Data_tkt_net_amount->Show();
                $this->Data_tkt_tax_amount->Show();
                $this->Data_tkt_total_amount->Show();
                $this->Data_tkt_customer_id->Show();
                $this->Data_tkt_customer_name->Show();
                $this->Data_tkt_customer_address->Show();
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
        $this->ssf_tkt_trx_header_TotalRecords->Show();
        $this->Header_tkt_trans_detail->Show();
        $this->Header_tkt_trans_id->Show();
        $this->Sorter_tkt_trans_id->Show();
        $this->col1->Show();
        $this->Header_tkt_pos_id->Show();
        $this->Sorter_tkt_pos_id->Show();
        $this->col2->Show();
        $this->Header_tkt_shift_id->Show();
        $this->Sorter_tkt_shift_id->Show();
        $this->col3->Show();
        $this->Header_tkt_date->Show();
        $this->Sorter_tkt_date->Show();
        $this->col4->Show();
        $this->Header_tkt_time->Show();
        $this->Sorter_tkt_time->Show();
        $this->col5->Show();
        $this->Header_tkt_type->Show();
        $this->Sorter_tkt_type->Show();
        $this->col6->Show();
        $this->Header_tkt_receipt_type->Show();
        $this->Sorter_tkt_receipt_type->Show();
        $this->col7->Show();
        $this->Header_tkt_net_amount->Show();
        $this->Sorter_tkt_net_amount->Show();
        $this->col8->Show();
        $this->Header_tkt_tax_amount->Show();
        $this->Sorter_tkt_tax_amount->Show();
        $this->col9->Show();
        $this->Header_tkt_total_amount->Show();
        $this->Sorter_tkt_total_amount->Show();
        $this->col10->Show();
        $this->Header_tkt_customer_id->Show();
        $this->Sorter_tkt_customer_id->Show();
        $this->col11->Show();
        $this->Header_tkt_customer_name->Show();
        $this->Sorter_tkt_customer_name->Show();
        $this->col12->Show();
        $this->Header_tkt_customer_address->Show();
        $this->Sorter_tkt_customer_address->Show();
        $this->col13->Show();
        $this->lblTotalLabel->Show();
        $this->lblSubTotalNetAmount->Show();
        $this->lblTotalNetAmount->Show();
        $this->lblSubTotalTaxAmount->Show();
        $this->lblTotalTaxAmount->Show();
        $this->lblSubTotalAmount->Show();
        $this->lblTotalAmount->Show();
        $this->Report_CurrentDateTime->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @76-918A052E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_trans_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_pos_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_shift_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_address->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_trx_header Class @76-FCB6E20C

class clsssf_tkt_trx_headerDataSource extends clsDBConnection1 {  //ssf_tkt_trx_headerDataSource Class @76-F9A23E5F

//DataSource Variables @76-BF0BDA69
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_trans_id;
    public $tkt_pos_id;
    public $tkt_shift_id;
    public $tkt_date;
    public $tkt_time;
    public $tkt_type;
    public $tkt_receipt_type;
    public $tkt_receipt_group;
    public $tkt_receipt_number;
    public $tkt_net_amount;
    public $tkt_tax_amount;
    public $tkt_total_amount;
    public $tkt_customer_id;
    public $tkt_customer_name;
    public $tkt_customer_address;
//End DataSource Variables

//DataSourceClass_Initialize Event @76-A20D25EF
    function clsssf_tkt_trx_headerDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_trx_header";
        $this->Initialize();
        $this->tkt_trans_id = new clsField("tkt_trans_id", ccsInteger, "");
        $this->tkt_pos_id = new clsField("tkt_pos_id", ccsInteger, "");
        $this->tkt_shift_id = new clsField("tkt_shift_id", ccsInteger, "");
        $this->tkt_date = new clsField("tkt_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_time = new clsField("tkt_time", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_type = new clsField("tkt_type", ccsText, "");
        $this->tkt_receipt_type = new clsField("tkt_receipt_type", ccsText, "");
        $this->tkt_receipt_group = new clsField("tkt_receipt_group", ccsText, "");
        $this->tkt_receipt_number = new clsField("tkt_receipt_number", ccsInteger, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_tax_amount = new clsField("tkt_tax_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->tkt_customer_id = new clsField("tkt_customer_id", ccsText, "");
        $this->tkt_customer_name = new clsField("tkt_customer_name", ccsText, "");
        $this->tkt_customer_address = new clsField("tkt_customer_address", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @76-B5D370D7
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_trans_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_trans_id" => array("tkt_trans_id", ""), 
            "Sorter_tkt_pos_id" => array("tkt_pos_id", ""), 
            "Sorter_tkt_shift_id" => array("tkt_shift_id", ""), 
            "Sorter_tkt_date" => array("tkt_date", ""), 
            "Sorter_tkt_time" => array("tkt_time", ""), 
            "Sorter_tkt_type" => array("tkt_type", ""), 
            "Sorter_tkt_receipt_type" => array("tkt_receipt_type", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_tax_amount" => array("tkt_tax_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", ""), 
            "Sorter_tkt_customer_id" => array("tkt_customer_id", ""), 
            "Sorter_tkt_customer_name" => array("tkt_customer_name", ""), 
            "Sorter_tkt_customer_address" => array("tkt_customer_address", "")));
    }
//End SetOrder Method

//Prepare Method @76-36BB4E7A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("4", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
        $this->wp->AddParameter("5", "urls_tkt_trans_id", ccsInteger, "", "", $this->Parameters["urls_tkt_trans_id"], 0, false);
        $this->wp->AddParameter("6", "urls_tkt_pos_id", ccsInteger, "", "", $this->Parameters["urls_tkt_pos_id"], 0, false);
        $this->wp->AddParameter("7", "urls_tkt_customer_id", ccsText, "", "", $this->Parameters["urls_tkt_customer_id"], "", false);
        $this->wp->AddParameter("8", "urls_tkt_receipt_type", ccsText, "", "", $this->Parameters["urls_tkt_receipt_type"], "", false);
        $this->wp->AddParameter("9", "urls_tkt_trans_id_to", ccsInteger, "", "", $this->Parameters["urls_tkt_trans_id_to"], 0, false);
    }
//End Prepare Method

//Open Method @76-2B4228C0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT tkt_trans_id, tkt_pos_id,tkt_shift_id,tkt_date,tkt_time,tkt_type,tkt_customer_id,\n" .
        "  tkt_receipt_type,tkt_receipt_group,tkt_receipt_number,\n" .
        "  ( tkt_net_amount * ReplacetoNumberCatalog) AS tkt_net_amount,\n" .
        "  ( tkt_tax_amount * ReplacetoNumberCatalog) AS tkt_tax_amount,\n" .
        "  ( tkt_total_amount * ReplacetoNumberCatalog) AS tkt_total_amount,\n" .
        "  tkt_status,tkt_change_tender,tkt_change_amount,tkt_customer_tax_id,tkt_customer_name,\n" .
        "  tkt_customer_address,tkt_customer_tax_type,tkt_printed_times\n" .
        "FROM ssf_tkt_trx_header LEFT JOIN ssf_tkt_catalog ON\n" .
        "tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "WHERE ( tkt_status = 'C' ) \n" .
        "AND ( ssf_tkt_trx_header.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  = '' )\n" .
        "AND ( ssf_tkt_trx_header.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  = '' )\n" .
        "AND ( ( ssf_tkt_trx_header.tkt_date SQLConcat ssf_tkt_trx_header.tkt_time >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = ''  )\n" .
        "AND ( ( ssf_tkt_trx_header.tkt_date SQLConcat ssf_tkt_trx_header.tkt_time <= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = ''  )\n" .
        "AND ( tkt_trans_id >= " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_trans_id <= " . $this->SQLValue($this->wp->GetDBValue("9"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("9"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_pos_id = " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_customer_id = '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = '' )\n" .
        "AND (tkt_receipt_type = '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = '' )\n" .
        "AND SHIFT_CRITERIA) cnt";
        $this->SQL = "SELECT tkt_trans_id, tkt_pos_id,tkt_shift_id,tkt_date,tkt_time,tkt_type,tkt_customer_id,\n" .
        "  tkt_receipt_type,tkt_receipt_group,tkt_receipt_number,\n" .
        "  ( tkt_net_amount * ReplacetoNumberCatalog) AS tkt_net_amount,\n" .
        "  ( tkt_tax_amount * ReplacetoNumberCatalog) AS tkt_tax_amount,\n" .
        "  ( tkt_total_amount * ReplacetoNumberCatalog) AS tkt_total_amount,\n" .
        "  tkt_status,tkt_change_tender,tkt_change_amount,tkt_customer_tax_id,tkt_customer_name,\n" .
        "  tkt_customer_address,tkt_customer_tax_type,tkt_printed_times\n" .
        "FROM ssf_tkt_trx_header LEFT JOIN ssf_tkt_catalog ON\n" .
        "tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "WHERE ( tkt_status = 'C' ) \n" .
        "AND ( ssf_tkt_trx_header.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  = '' )\n" .
        "AND ( ssf_tkt_trx_header.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  = '' )\n" .
        "AND ( ( ssf_tkt_trx_header.tkt_date SQLConcat ssf_tkt_trx_header.tkt_time >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = ''  )\n" .
        "AND ( ( ssf_tkt_trx_header.tkt_date SQLConcat ssf_tkt_trx_header.tkt_time <= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = ''  )\n" .
        "AND ( tkt_trans_id >= " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_trans_id <= " . $this->SQLValue($this->wp->GetDBValue("9"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("9"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_pos_id = " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " = 0 )\n" .
        "AND ( tkt_customer_id = '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = '' )\n" .
        "AND (tkt_receipt_type = '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = '' )\n" .
        "AND SHIFT_CRITERIA {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @76-26D36DF0
    function SetValues()
    {
        $this->tkt_trans_id->SetDBValue(trim($this->f("tkt_trans_id")));
        $this->tkt_pos_id->SetDBValue(trim($this->f("tkt_pos_id")));
        $this->tkt_shift_id->SetDBValue(trim($this->f("tkt_shift_id")));
        $this->tkt_date->SetDBValue(trim($this->f("tkt_date")));
        $this->tkt_time->SetDBValue(trim($this->f("tkt_time")));
        $this->tkt_type->SetDBValue($this->f("tkt_type"));
        $this->tkt_receipt_type->SetDBValue($this->f("tkt_receipt_type"));
        $this->tkt_receipt_group->SetDBValue($this->f("tkt_receipt_group"));
        $this->tkt_receipt_number->SetDBValue(trim($this->f("tkt_receipt_number")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->tkt_customer_id->SetDBValue($this->f("tkt_customer_id"));
        $this->tkt_customer_name->SetDBValue($this->f("tkt_customer_name"));
        $this->tkt_customer_address->SetDBValue($this->f("tkt_customer_address"));
    }
//End SetValues Method

} //End ssf_tkt_trx_headerDataSource Class @76-FCB6E20C

//Initialize Page @1-07A9A3D3
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
$TemplateFileName = "SSFTicketTrxHReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-602C198D
include("./SSFTicketTrxHReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CE6B04D8
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_trx_headerSearch = new clsRecordssf_tkt_trx_headerSearch("", $MainPage);
$lnkExcel = new clsControl(ccsImageLink, "lnkExcel", "lnkExcel", ccsText, "", CCGetRequestParam("lnkExcel", ccsGet, NULL), $MainPage);
$lnkExcel->Page = "SSFTicketTrxHReport.php";
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tkt_trx_header = new clsGridssf_tkt_trx_header("", $MainPage);
$lblPrintTable = new clsControl(ccsLabel, "lblPrintTable", "lblPrintTable", ccsText, "", CCGetRequestParam("lblPrintTable", ccsGet, NULL), $MainPage);
$lblPrintTable->HTML = true;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_trx_headerSearch = & $ssf_tkt_trx_headerSearch;
$MainPage->lnkExcel = & $lnkExcel;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tkt_trx_header = & $ssf_tkt_trx_header;
$MainPage->lblPrintTable = & $lblPrintTable;
$lnkExcel->Parameters = CCGetQueryString("All", array("ccsForm"));
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "ViewMode", "Print");
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "export", "1");
$ssf_tkt_trx_header->Initialize();

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

//Execute Components @1-301C6AB1
$SSFSpiritHeader->Operations();
$ssf_tkt_trx_headerSearch->Operation();
//End Execute Components

//Go to destination page @1-F4690F28
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_trx_headerSearch);
    unset($ssf_tkt_trx_header);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-142554EA
$SSFSpiritHeader->Show();
$ssf_tkt_trx_headerSearch->Show();
$Button1->Show();
$ssf_tkt_trx_header->Show();
$lnkExcel->Show();
$ViewMode->Show();
$lblPrintTable->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-30AB9C0C
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_trx_headerSearch);
unset($ssf_tkt_trx_header);
unset($Tpl);
//End Unload Page


?>
