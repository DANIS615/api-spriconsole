<?php
//Include Common Files @1-FC7C5341
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketTrxRReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_trx_headerSearch { //ssf_tkt_trx_headerSearch Class @4-E9DE5305

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

//Class_Initialize Event @4-32175285
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
            $this->s_tkt_trans_id = new clsControl(ccsTextBox, "s_tkt_trans_id", "s_tkt_trans_id", ccsInteger, "", CCGetRequestParam("s_tkt_trans_id", $Method, NULL), $this);
            $this->s_tkt_trans_id_to = new clsControl(ccsTextBox, "s_tkt_trans_id_to", "s_tkt_trans_id_to", ccsInteger, "", CCGetRequestParam("s_tkt_trans_id_to", $Method, NULL), $this);
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

//Validate Method @4-44C49EF2
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_trans_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_trans_id_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_customer_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_receipt_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_trans_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_trans_id_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_customer_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_receipt_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @4-64018E0B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_from_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_tkt_trans_id->Errors->Count());
        $errors = ($errors || $this->s_tkt_trans_id_to->Errors->Count());
        $errors = ($errors || $this->s_tkt_customer_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @4-433ED2B2
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
        $Redirect = "SSFTicketTrxRReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketTrxRReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @4-13941F83
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

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
            $Error = ComposeStrings($Error, $this->s_tkt_trans_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_trans_id_to->Errors->ToString());
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
        $this->s_tkt_trans_id->Show();
        $this->s_tkt_trans_id_to->Show();
        $this->s_tkt_customer_id->Show();
        $this->Link1->Show();
        $this->s_tkt_receipt_type->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_trx_headerSearch Class @4-FCB6E20C

//Report1 ReportGroup class @24-DB308823
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_date, $_tkt_dateAttributes;
    public $tkt_receipt_type, $_tkt_receipt_typeAttributes;
    public $tkt_receipt_group, $_tkt_receipt_groupAttributes;
    public $tkt_receipt_number, $_tkt_receipt_numberAttributes;
    public $complete_receipt, $_complete_receiptAttributes;
    public $lnkcomplete_receipt, $_lnkcomplete_receiptPage, $_lnkcomplete_receiptParameters, $_lnkcomplete_receiptAttributes;
    public $tkt_type, $_tkt_typeAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_tax_amount, $_tkt_tax_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $tkt_customer_id, $_tkt_customer_idAttributes;
    public $tkt_customer_name, $_tkt_customer_nameAttributes;
    public $tkt_customer_tax_id, $_tkt_customer_tax_idAttributes;
    public $tkt_refunded, $_tkt_refundedAttributes;
    public $tkt_orig_trans_id, $_tkt_orig_trans_idAttributes;
    public $asoc_receipt_type, $_asoc_receipt_typeAttributes;
    public $slash1, $_slash1Attributes;
    public $asoc_receipt_group, $_asoc_receipt_groupAttributes;
    public $slash2, $_slash2Attributes;
    public $asoc_receipt_number, $_asoc_receipt_numberAttributes;
    public $TotalSum_tkt_net_amount, $_TotalSum_tkt_net_amountAttributes;
    public $TotalSum_tkt_tax_amount, $_TotalSum_tkt_tax_amountAttributes;
    public $TotalSum_tkt_total_amount, $_TotalSum_tkt_total_amountAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_date = $this->Parent->tkt_date->Value;
        $this->tkt_receipt_type = $this->Parent->tkt_receipt_type->Value;
        $this->tkt_receipt_group = $this->Parent->tkt_receipt_group->Value;
        $this->tkt_receipt_number = $this->Parent->tkt_receipt_number->Value;
        $this->complete_receipt = $this->Parent->complete_receipt->Value;
        $this->lnkcomplete_receipt = $this->Parent->lnkcomplete_receipt->Value;
        $this->tkt_type = $this->Parent->tkt_type->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_tax_amount = $this->Parent->tkt_tax_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
        $this->tkt_customer_id = $this->Parent->tkt_customer_id->Value;
        $this->tkt_customer_name = $this->Parent->tkt_customer_name->Value;
        $this->tkt_customer_tax_id = $this->Parent->tkt_customer_tax_id->Value;
        $this->tkt_refunded = $this->Parent->tkt_refunded->Value;
        $this->tkt_orig_trans_id = $this->Parent->tkt_orig_trans_id->Value;
        $this->asoc_receipt_type = $this->Parent->asoc_receipt_type->Value;
        $this->slash1 = $this->Parent->slash1->Value;
        $this->asoc_receipt_group = $this->Parent->asoc_receipt_group->Value;
        $this->slash2 = $this->Parent->slash2->Value;
        $this->asoc_receipt_number = $this->Parent->asoc_receipt_number->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_tax_amount = $this->Parent->TotalSum_tkt_tax_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_lnkcomplete_receiptPage = $this->Parent->lnkcomplete_receipt->Page;
        $this->_lnkcomplete_receiptParameters = $this->Parent->lnkcomplete_receipt->Parameters;
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_dateAttributes = $this->Parent->Sorter_tkt_date->Attributes->GetAsArray();
        $this->_Sorter_tkt_receipt_typeAttributes = $this->Parent->Sorter_tkt_receipt_type->Attributes->GetAsArray();
        $this->_Sorter_tkt_typeAttributes = $this->Parent->Sorter_tkt_type->Attributes->GetAsArray();
        $this->_Sorter_tkt_net_amountAttributes = $this->Parent->Sorter_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_amountAttributes = $this->Parent->Sorter_tkt_tax_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_customer_idAttributes = $this->Parent->Sorter_tkt_customer_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_customer_tax_idAttributes = $this->Parent->Sorter_tkt_customer_tax_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_refundedAttributes = $this->Parent->Sorter_tkt_refunded->Attributes->GetAsArray();
        $this->_Sorter_tkt_orig_trans_idAttributes = $this->Parent->Sorter_tkt_orig_trans_id->Attributes->GetAsArray();
        $this->_tkt_dateAttributes = $this->Parent->tkt_date->Attributes->GetAsArray();
        $this->_tkt_receipt_typeAttributes = $this->Parent->tkt_receipt_type->Attributes->GetAsArray();
        $this->_tkt_receipt_groupAttributes = $this->Parent->tkt_receipt_group->Attributes->GetAsArray();
        $this->_tkt_receipt_numberAttributes = $this->Parent->tkt_receipt_number->Attributes->GetAsArray();
        $this->_complete_receiptAttributes = $this->Parent->complete_receipt->Attributes->GetAsArray();
        $this->_lnkcomplete_receiptAttributes = $this->Parent->lnkcomplete_receipt->Attributes->GetAsArray();
        $this->_tkt_typeAttributes = $this->Parent->tkt_type->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_tax_amountAttributes = $this->Parent->tkt_tax_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_customer_idAttributes = $this->Parent->tkt_customer_id->Attributes->GetAsArray();
        $this->_tkt_customer_nameAttributes = $this->Parent->tkt_customer_name->Attributes->GetAsArray();
        $this->_tkt_customer_tax_idAttributes = $this->Parent->tkt_customer_tax_id->Attributes->GetAsArray();
        $this->_tkt_refundedAttributes = $this->Parent->tkt_refunded->Attributes->GetAsArray();
        $this->_tkt_orig_trans_idAttributes = $this->Parent->tkt_orig_trans_id->Attributes->GetAsArray();
        $this->_asoc_receipt_typeAttributes = $this->Parent->asoc_receipt_type->Attributes->GetAsArray();
        $this->_slash1Attributes = $this->Parent->slash1->Attributes->GetAsArray();
        $this->_asoc_receipt_groupAttributes = $this->Parent->asoc_receipt_group->Attributes->GetAsArray();
        $this->_slash2Attributes = $this->Parent->slash2->Attributes->GetAsArray();
        $this->_asoc_receipt_numberAttributes = $this->Parent->asoc_receipt_number->Attributes->GetAsArray();
        $this->_TotalSum_tkt_net_amountAttributes = $this->Parent->TotalSum_tkt_net_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_tax_amountAttributes = $this->Parent->TotalSum_tkt_tax_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_tkt_net_amount = $this->TotalSum_tkt_net_amount;
        $Header->_TotalSum_tkt_net_amountAttributes = $this->_TotalSum_tkt_net_amountAttributes;
        $Header->TotalSum_tkt_tax_amount = $this->TotalSum_tkt_tax_amount;
        $Header->_TotalSum_tkt_tax_amountAttributes = $this->_TotalSum_tkt_tax_amountAttributes;
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_date = $Header->tkt_date;
        $Header->_tkt_dateAttributes = $this->_tkt_dateAttributes;
        $this->Parent->tkt_date->Value = $Header->tkt_date;
        $this->Parent->tkt_date->Attributes->RestoreFromArray($Header->_tkt_dateAttributes);
        $this->tkt_receipt_type = $Header->tkt_receipt_type;
        $Header->_tkt_receipt_typeAttributes = $this->_tkt_receipt_typeAttributes;
        $this->Parent->tkt_receipt_type->Value = $Header->tkt_receipt_type;
        $this->Parent->tkt_receipt_type->Attributes->RestoreFromArray($Header->_tkt_receipt_typeAttributes);
        $this->tkt_receipt_group = $Header->tkt_receipt_group;
        $Header->_tkt_receipt_groupAttributes = $this->_tkt_receipt_groupAttributes;
        $this->Parent->tkt_receipt_group->Value = $Header->tkt_receipt_group;
        $this->Parent->tkt_receipt_group->Attributes->RestoreFromArray($Header->_tkt_receipt_groupAttributes);
        $this->tkt_receipt_number = $Header->tkt_receipt_number;
        $Header->_tkt_receipt_numberAttributes = $this->_tkt_receipt_numberAttributes;
        $this->Parent->tkt_receipt_number->Value = $Header->tkt_receipt_number;
        $this->Parent->tkt_receipt_number->Attributes->RestoreFromArray($Header->_tkt_receipt_numberAttributes);
        $this->complete_receipt = $Header->complete_receipt;
        $Header->_complete_receiptAttributes = $this->_complete_receiptAttributes;
        $this->Parent->complete_receipt->Value = $Header->complete_receipt;
        $this->Parent->complete_receipt->Attributes->RestoreFromArray($Header->_complete_receiptAttributes);
        $this->lnkcomplete_receipt = $Header->lnkcomplete_receipt;
        $this->_lnkcomplete_receiptPage = $Header->_lnkcomplete_receiptPage;
        $this->_lnkcomplete_receiptParameters = $Header->_lnkcomplete_receiptParameters;
        $Header->_lnkcomplete_receiptAttributes = $this->_lnkcomplete_receiptAttributes;
        $this->Parent->lnkcomplete_receipt->Value = $Header->lnkcomplete_receipt;
        $this->Parent->lnkcomplete_receipt->Attributes->RestoreFromArray($Header->_lnkcomplete_receiptAttributes);
        $this->tkt_type = $Header->tkt_type;
        $Header->_tkt_typeAttributes = $this->_tkt_typeAttributes;
        $this->Parent->tkt_type->Value = $Header->tkt_type;
        $this->Parent->tkt_type->Attributes->RestoreFromArray($Header->_tkt_typeAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_tax_amount = $Header->tkt_tax_amount;
        $Header->_tkt_tax_amountAttributes = $this->_tkt_tax_amountAttributes;
        $this->Parent->tkt_tax_amount->Value = $Header->tkt_tax_amount;
        $this->Parent->tkt_tax_amount->Attributes->RestoreFromArray($Header->_tkt_tax_amountAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
        $this->tkt_customer_id = $Header->tkt_customer_id;
        $Header->_tkt_customer_idAttributes = $this->_tkt_customer_idAttributes;
        $this->Parent->tkt_customer_id->Value = $Header->tkt_customer_id;
        $this->Parent->tkt_customer_id->Attributes->RestoreFromArray($Header->_tkt_customer_idAttributes);
        $this->tkt_customer_name = $Header->tkt_customer_name;
        $Header->_tkt_customer_nameAttributes = $this->_tkt_customer_nameAttributes;
        $this->Parent->tkt_customer_name->Value = $Header->tkt_customer_name;
        $this->Parent->tkt_customer_name->Attributes->RestoreFromArray($Header->_tkt_customer_nameAttributes);
        $this->tkt_customer_tax_id = $Header->tkt_customer_tax_id;
        $Header->_tkt_customer_tax_idAttributes = $this->_tkt_customer_tax_idAttributes;
        $this->Parent->tkt_customer_tax_id->Value = $Header->tkt_customer_tax_id;
        $this->Parent->tkt_customer_tax_id->Attributes->RestoreFromArray($Header->_tkt_customer_tax_idAttributes);
        $this->tkt_refunded = $Header->tkt_refunded;
        $Header->_tkt_refundedAttributes = $this->_tkt_refundedAttributes;
        $this->Parent->tkt_refunded->Value = $Header->tkt_refunded;
        $this->Parent->tkt_refunded->Attributes->RestoreFromArray($Header->_tkt_refundedAttributes);
        $this->tkt_orig_trans_id = $Header->tkt_orig_trans_id;
        $Header->_tkt_orig_trans_idAttributes = $this->_tkt_orig_trans_idAttributes;
        $this->Parent->tkt_orig_trans_id->Value = $Header->tkt_orig_trans_id;
        $this->Parent->tkt_orig_trans_id->Attributes->RestoreFromArray($Header->_tkt_orig_trans_idAttributes);
        $this->asoc_receipt_type = $Header->asoc_receipt_type;
        $Header->_asoc_receipt_typeAttributes = $this->_asoc_receipt_typeAttributes;
        $this->Parent->asoc_receipt_type->Value = $Header->asoc_receipt_type;
        $this->Parent->asoc_receipt_type->Attributes->RestoreFromArray($Header->_asoc_receipt_typeAttributes);
        $this->slash1 = $Header->slash1;
        $Header->_slash1Attributes = $this->_slash1Attributes;
        $this->Parent->slash1->Value = $Header->slash1;
        $this->Parent->slash1->Attributes->RestoreFromArray($Header->_slash1Attributes);
        $this->asoc_receipt_group = $Header->asoc_receipt_group;
        $Header->_asoc_receipt_groupAttributes = $this->_asoc_receipt_groupAttributes;
        $this->Parent->asoc_receipt_group->Value = $Header->asoc_receipt_group;
        $this->Parent->asoc_receipt_group->Attributes->RestoreFromArray($Header->_asoc_receipt_groupAttributes);
        $this->slash2 = $Header->slash2;
        $Header->_slash2Attributes = $this->_slash2Attributes;
        $this->Parent->slash2->Value = $Header->slash2;
        $this->Parent->slash2->Attributes->RestoreFromArray($Header->_slash2Attributes);
        $this->asoc_receipt_number = $Header->asoc_receipt_number;
        $Header->_asoc_receipt_numberAttributes = $this->_asoc_receipt_numberAttributes;
        $this->Parent->asoc_receipt_number->Value = $Header->asoc_receipt_number;
        $this->Parent->asoc_receipt_number->Attributes->RestoreFromArray($Header->_asoc_receipt_numberAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetValue();
        $this->TotalSum_tkt_tax_amount = $this->Parent->TotalSum_tkt_tax_amount->GetValue();
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @24-33D11AAB
class clsGroupsCollectionReport1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_date->Value = $this->Parent->tkt_date->initialValue;
        $this->Parent->tkt_receipt_type->Value = $this->Parent->tkt_receipt_type->initialValue;
        $this->Parent->tkt_receipt_group->Value = $this->Parent->tkt_receipt_group->initialValue;
        $this->Parent->tkt_receipt_number->Value = $this->Parent->tkt_receipt_number->initialValue;
        $this->Parent->complete_receipt->Value = $this->Parent->complete_receipt->initialValue;
        $this->Parent->lnkcomplete_receipt->Value = $this->Parent->lnkcomplete_receipt->initialValue;
        $this->Parent->tkt_type->Value = $this->Parent->tkt_type->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_tax_amount->Value = $this->Parent->tkt_tax_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->tkt_customer_id->Value = $this->Parent->tkt_customer_id->initialValue;
        $this->Parent->tkt_customer_name->Value = $this->Parent->tkt_customer_name->initialValue;
        $this->Parent->tkt_customer_tax_id->Value = $this->Parent->tkt_customer_tax_id->initialValue;
        $this->Parent->tkt_refunded->Value = $this->Parent->tkt_refunded->initialValue;
        $this->Parent->tkt_orig_trans_id->Value = $this->Parent->tkt_orig_trans_id->initialValue;
        $this->Parent->asoc_receipt_type->Value = $this->Parent->asoc_receipt_type->initialValue;
        $this->Parent->slash1->Value = $this->Parent->slash1->initialValue;
        $this->Parent->asoc_receipt_group->Value = $this->Parent->asoc_receipt_group->initialValue;
        $this->Parent->slash2->Value = $this->Parent->slash2->initialValue;
        $this->Parent->asoc_receipt_number->Value = $this->Parent->asoc_receipt_number->initialValue;
        $this->Parent->TotalSum_tkt_net_amount->Value = $this->Parent->TotalSum_tkt_net_amount->initialValue;
        $this->Parent->TotalSum_tkt_tax_amount->Value = $this->Parent->TotalSum_tkt_tax_amount->initialValue;
        $this->Parent->TotalSum_tkt_total_amount->Value = $this->Parent->TotalSum_tkt_total_amount->initialValue;
    }

    function OpenPage() {
        $this->TotalPages++;
        $Group = & $this->InitGroup();
        $this->Parent->Page_Header->CCSEventResult = CCGetEvent($this->Parent->Page_Header->CCSEvents, "OnInitialize", $this->Parent->Page_Header);
        if ($this->Parent->Page_Header->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Page_Header->Height;
        $Group->SetTotalControls("GetNextValue");
        $this->Parent->Page_Header->CCSEventResult = CCGetEvent($this->Parent->Page_Header->CCSEvents, "OnCalculate", $this->Parent->Page_Header);
        $Group->SetControls();
        $Group->Mode = 1;
        $Group->GroupType = "Page";
        $Group->PageTotalIndex = count($this->Groups);
        $this->mPageCurrentHeaderIndex = count($this->Groups);
        $this->Groups[] =  & $Group;
        $this->Pages[] =  count($this->Groups) == 2 ? 0 : count($this->Groups) - 1;
    }

    function OpenGroup($groupName) {
        $Group = "";
        $OpenFlag = false;
        if ($groupName == "Report") {
            $Group = & $this->InitGroup(true);
            $this->Parent->Report_Header->CCSEventResult = CCGetEvent($this->Parent->Report_Header->CCSEvents, "OnInitialize", $this->Parent->Report_Header);
            if ($this->Parent->Report_Header->Visible) 
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Report_Header->Height;
                $Group->SetTotalControls("GetNextValue");
            $this->Parent->Report_Header->CCSEventResult = CCGetEvent($this->Parent->Report_Header->CCSEvents, "OnCalculate", $this->Parent->Report_Header);
            $Group->SetControls();
            $Group->Mode = 1;
            $Group->GroupType = "Report";
            $this->Groups[] = & $Group;
            $this->OpenPage();
        }
    }

    function ClosePage() {
        $Group = & $this->InitGroup();
        $this->Parent->Page_Footer->CCSEventResult = CCGetEvent($this->Parent->Page_Footer->CCSEvents, "OnInitialize", $this->Parent->Page_Footer);
        $Group->SetTotalControls("GetPrevValue");
        $Group->SyncWithHeader($this->Groups[$this->mPageCurrentHeaderIndex]);
        $this->Parent->Page_Footer->CCSEventResult = CCGetEvent($this->Parent->Page_Footer->CCSEvents, "OnCalculate", $this->Parent->Page_Footer);
        $Group->SetControls();
        $this->RestoreValues();
        $this->CurrentPageSize = 0;
        $Group->Mode = 2;
        $Group->GroupType = "Page";
        $this->Groups[] = & $Group;
    }

    function CloseGroup($groupName)
    {
        $Group = "";
        if ($groupName == "Report") {
            $Group = & $this->InitGroup(true);
            $this->Parent->Report_Footer->CCSEventResult = CCGetEvent($this->Parent->Report_Footer->CCSEvents, "OnInitialize", $this->Parent->Report_Footer);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->Report_Footer->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->Report_Footer->Height;
            if (($this->PageSize > 0) and $this->Parent->Report_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            $Group->SetTotalControls("GetPrevValue");
            $Group->SyncWithHeader($this->Groups[0]);
            if ($this->Parent->Report_Footer->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Report_Footer->Height;
            $this->Parent->Report_Footer->CCSEventResult = CCGetEvent($this->Parent->Report_Footer->CCSEvents, "OnCalculate", $this->Parent->Report_Footer);
            $Group->SetControls();
            $this->RestoreValues();
            $Group->Mode = 2;
            $Group->GroupType = "Report";
            $this->Groups[] = & $Group;
            $this->ClosePage();
            return;
        }
    }

    function AddItem()
    {
        $Group = & $this->InitGroup(true);
        $this->Parent->Detail->CCSEventResult = CCGetEvent($this->Parent->Detail->CCSEvents, "OnInitialize", $this->Parent->Detail);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->Detail->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->Detail->Height;
        if (($this->PageSize > 0) and $this->Parent->Detail->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $this->TotalRows++;
        if ($this->LastDetailIndex)
            $PrevGroup = & $this->Groups[$this->LastDetailIndex];
        else
            $PrevGroup = "";
        $Group->SetTotalControls("", $PrevGroup);
        if ($this->Parent->Detail->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Detail->Height;
        $this->Parent->Detail->CCSEventResult = CCGetEvent($this->Parent->Detail->CCSEvents, "OnCalculate", $this->Parent->Detail);
        $Group->SetControls($PrevGroup);
        $this->LastDetailIndex = count($this->Groups);
        $this->Groups[] = & $Group;
    }
}
//End Report1 GroupsCollection class

class clsReportReport1 { //Report1 Class @24-BC2FB08C

//Report1 Variables @24-33B3F370

    public $ComponentType = "Report";
    public $PageSize;
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $CCSEvents = array();
    public $CCSEventResult;
    public $RelativePath = "";
    public $ViewMode = "Web";
    public $TemplateBlock;
    public $PageNumber;
    public $RowNumber;
    public $TotalRows;
    public $TotalPages;
    public $ControlsVisible = array();
    public $IsEmpty;
    public $Attributes;
    public $DetailBlock, $Detail;
    public $Report_FooterBlock, $Report_Footer;
    public $Report_HeaderBlock, $Report_Header;
    public $Page_FooterBlock, $Page_Footer;
    public $Page_HeaderBlock, $Page_Header;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $Sorter_tkt_date;
    public $Sorter_tkt_receipt_type;
    public $Sorter_tkt_type;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_tax_amount;
    public $Sorter_tkt_total_amount;
    public $Sorter_tkt_customer_id;
    public $Sorter_tkt_customer_tax_id;
    public $Sorter_tkt_refunded;
    public $Sorter_tkt_orig_trans_id;
//End Report1 Variables

//Class_Initialize Event @24-FB135354
    function clsReportReport1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report1";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Report_Footer = new clsSection($this);
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 50;
             else if ($PageSize == "0")
                $this->PageSize = 0;
             else 
                $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
             else if ($PageSize == "0")
                $this->PageSize = 100;
             else 
                $this->PageSize = min(100, $PageSize);
        }
        $MinPageSize += $MaxSectionSize;
        if ($this->PageSize && $MinPageSize && $this->PageSize < $MinPageSize)
            $this->PageSize = $MinPageSize;
        $this->PageNumber = $this->ViewMode == "Print" ? 1 : intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0 ) {
            $this->PageNumber = 1;
        }
        $this->SorterName = CCGetParam("Report1Order", "");
        $this->SorterDirection = CCGetParam("Report1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_date = new clsSorter($this->ComponentName, "Sorter_tkt_date", $FileName, $this);
        $this->Sorter_tkt_receipt_type = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_type", $FileName, $this);
        $this->Sorter_tkt_type = new clsSorter($this->ComponentName, "Sorter_tkt_type", $FileName, $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->Sorter_tkt_tax_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tax_amount", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->Sorter_tkt_customer_id = new clsSorter($this->ComponentName, "Sorter_tkt_customer_id", $FileName, $this);
        $this->Sorter_tkt_customer_tax_id = new clsSorter($this->ComponentName, "Sorter_tkt_customer_tax_id", $FileName, $this);
        $this->Sorter_tkt_refunded = new clsSorter($this->ComponentName, "Sorter_tkt_refunded", $FileName, $this);
        $this->Sorter_tkt_orig_trans_id = new clsSorter($this->ComponentName, "Sorter_tkt_orig_trans_id", $FileName, $this);
        $this->tkt_date = new clsControl(ccsReportLabel, "tkt_date", "tkt_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_date->HTML = true;
        $this->tkt_date->EmptyText = "&nbsp;";
        $this->tkt_receipt_type = new clsControl(ccsHidden, "tkt_receipt_type", "tkt_receipt_type", ccsText, "", CCGetRequestParam("tkt_receipt_type", ccsGet, NULL), $this);
        $this->tkt_receipt_type->HTML = true;
        $this->tkt_receipt_group = new clsControl(ccsHidden, "tkt_receipt_group", "tkt_receipt_group", ccsText, "", CCGetRequestParam("tkt_receipt_group", ccsGet, NULL), $this);
        $this->tkt_receipt_group->HTML = true;
        $this->tkt_receipt_number = new clsControl(ccsHidden, "tkt_receipt_number", "tkt_receipt_number", ccsInteger, "", CCGetRequestParam("tkt_receipt_number", ccsGet, NULL), $this);
        $this->tkt_receipt_number->HTML = true;
        $this->complete_receipt = new clsControl(ccsReportLabel, "complete_receipt", "complete_receipt", ccsText, "", "", $this);
        $this->lnkcomplete_receipt = new clsControl(ccsLink, "lnkcomplete_receipt", "lnkcomplete_receipt", ccsText, "", CCGetRequestParam("lnkcomplete_receipt", ccsGet, NULL), $this);
        $this->lnkcomplete_receipt->Page = "SSFTicketTrxPopDetail.php";
        $this->tkt_type = new clsControl(ccsReportLabel, "tkt_type", "tkt_type", ccsText, "", "", $this);
        $this->tkt_type->HTML = true;
        $this->tkt_type->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_tax_amount = new clsControl(ccsReportLabel, "tkt_tax_amount", "tkt_tax_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tax_amount->HTML = true;
        $this->tkt_tax_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->tkt_customer_id = new clsControl(ccsReportLabel, "tkt_customer_id", "tkt_customer_id", ccsText, "", "", $this);
        $this->tkt_customer_id->HTML = true;
        $this->tkt_customer_id->EmptyText = "&nbsp;";
        $this->tkt_customer_name = new clsControl(ccsReportLabel, "tkt_customer_name", "tkt_customer_name", ccsText, "", "", $this);
        $this->tkt_customer_name->HTML = true;
        $this->tkt_customer_name->EmptyText = "&nbsp;";
        $this->tkt_customer_tax_id = new clsControl(ccsReportLabel, "tkt_customer_tax_id", "tkt_customer_tax_id", ccsText, "", "", $this);
        $this->tkt_customer_tax_id->HTML = true;
        $this->tkt_customer_tax_id->EmptyText = "&nbsp;";
        $this->tkt_refunded = new clsControl(ccsCheckBox, "tkt_refunded", "tkt_refunded", ccsText, "", CCGetRequestParam("tkt_refunded", ccsGet, NULL), $this);
        $this->tkt_refunded->HTML = true;
        $this->tkt_refunded->CheckedValue = $this->tkt_refunded->GetParsedValue("Y");
        $this->tkt_refunded->UncheckedValue = $this->tkt_refunded->GetParsedValue("N");
        $this->tkt_orig_trans_id = new clsControl(ccsHidden, "tkt_orig_trans_id", "tkt_orig_trans_id", ccsInteger, "", CCGetRequestParam("tkt_orig_trans_id", ccsGet, NULL), $this);
        $this->tkt_orig_trans_id->HTML = true;
        $this->asoc_receipt_type = new clsControl(ccsReportLabel, "asoc_receipt_type", "asoc_receipt_type", ccsText, "", "", $this);
        $this->slash1 = new clsControl(ccsReportLabel, "slash1", "slash1", ccsText, "", "", $this);
        $this->slash1->IsEmptySource = true;
        $this->asoc_receipt_group = new clsControl(ccsReportLabel, "asoc_receipt_group", "asoc_receipt_group", ccsText, "", "", $this);
        $this->slash2 = new clsControl(ccsReportLabel, "slash2", "slash2", ccsText, "", "", $this);
        $this->slash2->IsEmptySource = true;
        $this->asoc_receipt_number = new clsControl(ccsReportLabel, "asoc_receipt_number", "asoc_receipt_number", ccsText, "", "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_net_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_net_amount", "TotalSum_tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_net_amount->HTML = true;
        $this->TotalSum_tkt_net_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_net_amount->EmptyText = "&nbsp;";
        $this->TotalSum_tkt_tax_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_tax_amount", "TotalSum_tkt_tax_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_tax_amount->HTML = true;
        $this->TotalSum_tkt_tax_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_tax_amount->EmptyText = "&nbsp;";
        $this->TotalSum_tkt_total_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_total_amount", "TotalSum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_total_amount->HTML = true;
        $this->TotalSum_tkt_total_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_total_amount->EmptyText = "&nbsp;";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->PageBreak = new clsPanel("PageBreak", $this);
    }
//End Class_Initialize Event

//Initialize Method @24-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @24-F826FEE5
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_date->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_group->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_number->Errors->Count());
        $errors = ($errors || $this->complete_receipt->Errors->Count());
        $errors = ($errors || $this->lnkcomplete_receipt->Errors->Count());
        $errors = ($errors || $this->tkt_type->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_tax_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->tkt_customer_id->Errors->Count());
        $errors = ($errors || $this->tkt_customer_name->Errors->Count());
        $errors = ($errors || $this->tkt_customer_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_refunded->Errors->Count());
        $errors = ($errors || $this->tkt_orig_trans_id->Errors->Count());
        $errors = ($errors || $this->asoc_receipt_type->Errors->Count());
        $errors = ($errors || $this->slash1->Errors->Count());
        $errors = ($errors || $this->asoc_receipt_group->Errors->Count());
        $errors = ($errors || $this->slash2->Errors->Count());
        $errors = ($errors || $this->asoc_receipt_number->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_tax_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @24-03A83E0F
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->complete_receipt->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lnkcomplete_receipt->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_refunded->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_orig_trans_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->asoc_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slash1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->asoc_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slash2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->asoc_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @24-48853015
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_tkt_trans_id"] = CCGetFromGet("s_tkt_trans_id", NULL);
        $this->DataSource->Parameters["urls_tkt_trans_id_to"] = CCGetFromGet("s_tkt_trans_id_to", NULL);
        $this->DataSource->Parameters["urls_tkt_customer_id"] = CCGetFromGet("s_tkt_customer_id", NULL);
        $this->DataSource->Parameters["urls_tkt_receipt_type"] = CCGetFromGet("s_tkt_receipt_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
            $this->tkt_receipt_type->SetValue($this->DataSource->tkt_receipt_type->GetValue());
            $this->tkt_receipt_group->SetValue($this->DataSource->tkt_receipt_group->GetValue());
            $this->tkt_receipt_number->SetValue($this->DataSource->tkt_receipt_number->GetValue());
            $this->complete_receipt->SetValue($this->DataSource->complete_receipt->GetValue());
            $this->lnkcomplete_receipt->SetValue($this->DataSource->lnkcomplete_receipt->GetValue());
            $this->tkt_type->SetValue($this->DataSource->tkt_type->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_tax_amount->SetValue($this->DataSource->tkt_tax_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->tkt_customer_id->SetValue($this->DataSource->tkt_customer_id->GetValue());
            $this->tkt_customer_name->SetValue($this->DataSource->tkt_customer_name->GetValue());
            $this->tkt_customer_tax_id->SetValue($this->DataSource->tkt_customer_tax_id->GetValue());
            $this->tkt_refunded->SetValue($this->DataSource->tkt_refunded->GetValue());
            $this->tkt_orig_trans_id->SetValue($this->DataSource->tkt_orig_trans_id->GetValue());
            $this->asoc_receipt_type->SetValue($this->DataSource->asoc_receipt_type->GetValue());
            $this->asoc_receipt_group->SetValue($this->DataSource->asoc_receipt_group->GetValue());
            $this->asoc_receipt_number->SetValue($this->DataSource->asoc_receipt_number->GetValue());
            $this->TotalSum_tkt_net_amount->SetValue($this->DataSource->TotalSum_tkt_net_amount->GetValue());
            $this->TotalSum_tkt_tax_amount->SetValue($this->DataSource->TotalSum_tkt_tax_amount->GetValue());
            $this->TotalSum_tkt_total_amount->SetValue($this->DataSource->TotalSum_tkt_total_amount->GetValue());
            $this->lnkcomplete_receipt->Parameters = "";
            $this->lnkcomplete_receipt->Parameters = CCAddParam($this->lnkcomplete_receipt->Parameters, "tkt_trans_id", $this->DataSource->f("tkt_trans_id"));
            $this->Report_TotalRecords->SetValue(1);
            $this->slash1->SetValue("");
            $this->slash2->SetValue("");
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            $Groups->AddItem();
            $is_next_record = $this->DataSource->next_record();
        }
        if (!count($Groups->Groups)) 
            $Groups->OpenGroup("Report");
        else
            $this->NoRecords->Visible = false;
        $Groups->CloseGroup("Report");
        $this->TotalPages = $Groups->TotalPages;
        $this->TotalRows = $Groups->TotalRows;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $this->Attributes->Show();
        $ReportBlock = "Report " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;

        if($this->CheckErrors()) {
            $Tpl->replaceblock("", $this->GetErrors());
            $Tpl->block_path = $ParentPath;
            return;
        } else {
            $items = & $Groups->Groups;
            $i = $Groups->Pages[min($this->PageNumber, $Groups->TotalPages) - 1];
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["tkt_receipt_type"] = $this->tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_receipt_group"] = $this->tkt_receipt_group->Visible;
            $this->ControlsVisible["tkt_receipt_number"] = $this->tkt_receipt_number->Visible;
            $this->ControlsVisible["complete_receipt"] = $this->complete_receipt->Visible;
            $this->ControlsVisible["lnkcomplete_receipt"] = $this->lnkcomplete_receipt->Visible;
            $this->ControlsVisible["tkt_type"] = $this->tkt_type->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_tax_amount"] = $this->tkt_tax_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["tkt_customer_id"] = $this->tkt_customer_id->Visible;
            $this->ControlsVisible["tkt_customer_name"] = $this->tkt_customer_name->Visible;
            $this->ControlsVisible["tkt_customer_tax_id"] = $this->tkt_customer_tax_id->Visible;
            $this->ControlsVisible["tkt_refunded"] = $this->tkt_refunded->Visible;
            $this->ControlsVisible["tkt_orig_trans_id"] = $this->tkt_orig_trans_id->Visible;
            $this->ControlsVisible["asoc_receipt_type"] = $this->asoc_receipt_type->Visible;
            $this->ControlsVisible["slash1"] = $this->slash1->Visible;
            $this->ControlsVisible["asoc_receipt_group"] = $this->asoc_receipt_group->Visible;
            $this->ControlsVisible["slash2"] = $this->slash2->Visible;
            $this->ControlsVisible["asoc_receipt_number"] = $this->asoc_receipt_number->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_date->SetValue($items[$i]->tkt_date);
                        $this->tkt_date->Attributes->RestoreFromArray($items[$i]->_tkt_dateAttributes);
                        $this->tkt_receipt_type->SetValue($items[$i]->tkt_receipt_type);
                        $this->tkt_receipt_type->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_typeAttributes);
                        $this->tkt_receipt_group->SetValue($items[$i]->tkt_receipt_group);
                        $this->tkt_receipt_group->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_groupAttributes);
                        $this->tkt_receipt_number->SetValue($items[$i]->tkt_receipt_number);
                        $this->tkt_receipt_number->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_numberAttributes);
                        $this->complete_receipt->SetValue($items[$i]->complete_receipt);
                        $this->complete_receipt->Attributes->RestoreFromArray($items[$i]->_complete_receiptAttributes);
                        $this->lnkcomplete_receipt->SetValue($items[$i]->lnkcomplete_receipt);
                        $this->lnkcomplete_receipt->Page = $items[$i]->_lnkcomplete_receiptPage;
                        $this->lnkcomplete_receipt->Parameters = $items[$i]->_lnkcomplete_receiptParameters;
                        $this->lnkcomplete_receipt->Attributes->RestoreFromArray($items[$i]->_lnkcomplete_receiptAttributes);
                        $this->tkt_type->SetValue($items[$i]->tkt_type);
                        $this->tkt_type->Attributes->RestoreFromArray($items[$i]->_tkt_typeAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_tax_amount->SetValue($items[$i]->tkt_tax_amount);
                        $this->tkt_tax_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tax_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->tkt_customer_id->SetValue($items[$i]->tkt_customer_id);
                        $this->tkt_customer_id->Attributes->RestoreFromArray($items[$i]->_tkt_customer_idAttributes);
                        $this->tkt_customer_name->SetValue($items[$i]->tkt_customer_name);
                        $this->tkt_customer_name->Attributes->RestoreFromArray($items[$i]->_tkt_customer_nameAttributes);
                        $this->tkt_customer_tax_id->SetValue($items[$i]->tkt_customer_tax_id);
                        $this->tkt_customer_tax_id->Attributes->RestoreFromArray($items[$i]->_tkt_customer_tax_idAttributes);
                        $this->tkt_refunded->SetValue($items[$i]->tkt_refunded);
                        $this->tkt_refunded->Attributes->RestoreFromArray($items[$i]->_tkt_refundedAttributes);
                        $this->tkt_orig_trans_id->SetValue($items[$i]->tkt_orig_trans_id);
                        $this->tkt_orig_trans_id->Attributes->RestoreFromArray($items[$i]->_tkt_orig_trans_idAttributes);
                        $this->asoc_receipt_type->SetValue($items[$i]->asoc_receipt_type);
                        $this->asoc_receipt_type->Attributes->RestoreFromArray($items[$i]->_asoc_receipt_typeAttributes);
                        $this->slash1->SetValue($items[$i]->slash1);
                        $this->slash1->Attributes->RestoreFromArray($items[$i]->_slash1Attributes);
                        $this->asoc_receipt_group->SetValue($items[$i]->asoc_receipt_group);
                        $this->asoc_receipt_group->Attributes->RestoreFromArray($items[$i]->_asoc_receipt_groupAttributes);
                        $this->slash2->SetValue($items[$i]->slash2);
                        $this->slash2->Attributes->RestoreFromArray($items[$i]->_slash2Attributes);
                        $this->asoc_receipt_number->SetValue($items[$i]->asoc_receipt_number);
                        $this->asoc_receipt_number->Attributes->RestoreFromArray($items[$i]->_asoc_receipt_numberAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_date->Show();
                        $this->tkt_receipt_type->Show();
                        $this->tkt_receipt_group->Show();
                        $this->tkt_receipt_number->Show();
                        $this->complete_receipt->Show();
                        $this->lnkcomplete_receipt->Show();
                        $this->tkt_type->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_tax_amount->Show();
                        $this->tkt_total_amount->Show();
                        $this->tkt_customer_id->Show();
                        $this->tkt_customer_name->Show();
                        $this->tkt_customer_tax_id->Show();
                        $this->tkt_refunded->Show();
                        $this->tkt_orig_trans_id->Show();
                        $this->asoc_receipt_type->Show();
                        $this->slash1->Show();
                        $this->asoc_receipt_group->Show();
                        $this->slash2->Show();
                        $this->asoc_receipt_number->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_TotalRecords->SetValue($items[$i]->Report_TotalRecords);
                            $this->Report_TotalRecords->Attributes->RestoreFromArray($items[$i]->_Report_TotalRecordsAttributes);
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
                                $this->Report_TotalRecords->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->TotalSum_tkt_net_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_net_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_net_amountAttributes);
                            $this->TotalSum_tkt_tax_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_tax_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_tax_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_tax_amountAttributes);
                            $this->TotalSum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_total_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_total_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_net_amount->Show();
                                $this->TotalSum_tkt_tax_amount->Show();
                                $this->TotalSum_tkt_total_amount->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "Page":
                        if ($items[$i]->Mode == 1) {
                            $this->Page_Header->CCSEventResult = CCGetEvent($this->Page_Header->CCSEvents, "BeforeShow", $this->Page_Header);
                            if ($this->Page_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Header";
                                $this->Attributes->Show();
                                $this->Sorter_tkt_date->Show();
                                $this->Sorter_tkt_receipt_type->Show();
                                $this->Sorter_tkt_type->Show();
                                $this->Sorter_tkt_net_amount->Show();
                                $this->Sorter_tkt_tax_amount->Show();
                                $this->Sorter_tkt_total_amount->Show();
                                $this->Sorter_tkt_customer_id->Show();
                                $this->Sorter_tkt_customer_tax_id->Show();
                                $this->Sorter_tkt_refunded->Show();
                                $this->Sorter_tkt_orig_trans_id->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Navigator->Show();
                                $this->PageBreak->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                }
                $i++;
            } while ($i < count($items) && ($this->ViewMode == "Print" ||  !($i > 1 && $items[$i]->GroupType == 'Page' && $items[$i]->Mode == 1)));
            $Tpl->block_path = $ParentPath;
            $Tpl->parse($ReportBlock);
            $this->DataSource->close();
        }

    }
//End Show Method

} //End Report1 Class @24-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @24-20EE0F53

//DataSource Variables @24-978C7D93
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_date;
    public $tkt_receipt_type;
    public $tkt_receipt_group;
    public $tkt_receipt_number;
    public $complete_receipt;
    public $lnkcomplete_receipt;
    public $tkt_type;
    public $tkt_net_amount;
    public $tkt_tax_amount;
    public $tkt_total_amount;
    public $tkt_customer_id;
    public $tkt_customer_name;
    public $tkt_customer_tax_id;
    public $tkt_refunded;
    public $tkt_orig_trans_id;
    public $asoc_receipt_type;
    public $asoc_receipt_group;
    public $asoc_receipt_number;
    public $TotalSum_tkt_net_amount;
    public $TotalSum_tkt_tax_amount;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @24-4CFD2A17
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->tkt_date = new clsField("tkt_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_receipt_type = new clsField("tkt_receipt_type", ccsText, "");
        $this->tkt_receipt_group = new clsField("tkt_receipt_group", ccsText, "");
        $this->tkt_receipt_number = new clsField("tkt_receipt_number", ccsInteger, "");
        $this->complete_receipt = new clsField("complete_receipt", ccsText, "");
        $this->lnkcomplete_receipt = new clsField("lnkcomplete_receipt", ccsText, "");
        $this->tkt_type = new clsField("tkt_type", ccsText, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_tax_amount = new clsField("tkt_tax_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->tkt_customer_id = new clsField("tkt_customer_id", ccsText, "");
        $this->tkt_customer_name = new clsField("tkt_customer_name", ccsText, "");
        $this->tkt_customer_tax_id = new clsField("tkt_customer_tax_id", ccsText, "");
        $this->tkt_refunded = new clsField("tkt_refunded", ccsText, "");
        $this->tkt_orig_trans_id = new clsField("tkt_orig_trans_id", ccsInteger, "");
        $this->asoc_receipt_type = new clsField("asoc_receipt_type", ccsText, "");
        $this->asoc_receipt_group = new clsField("asoc_receipt_group", ccsText, "");
        $this->asoc_receipt_number = new clsField("asoc_receipt_number", ccsText, "");
        $this->TotalSum_tkt_net_amount = new clsField("TotalSum_tkt_net_amount", ccsFloat, "");
        $this->TotalSum_tkt_tax_amount = new clsField("TotalSum_tkt_tax_amount", ccsFloat, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @24-AD243493
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "a.tkt_trans_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_date" => array("tkt_date", ""), 
            "Sorter_tkt_receipt_type" => array("tkt_receipt_type,tkt_receipt_group,tkt_receipt_number", ""), 
            "Sorter_tkt_type" => array("tkt_type", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_tax_amount" => array("tkt_tax_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", ""), 
            "Sorter_tkt_customer_id" => array("tkt_customer_id", ""), 
            "Sorter_tkt_customer_tax_id" => array("tkt_customer_tax_id", ""), 
            "Sorter_tkt_refunded" => array("tkt_refunded", ""), 
            "Sorter_tkt_orig_trans_id" => array("tkt_orig_trans_id", "")));
    }
//End SetOrder Method

//Prepare Method @24-955228F6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_trans_id", ccsInteger, "", "", $this->Parameters["urls_tkt_trans_id"], 0, false);
        $this->wp->AddParameter("4", "urls_tkt_trans_id_to", ccsInteger, "", "", $this->Parameters["urls_tkt_trans_id_to"], 0, false);
        $this->wp->AddParameter("5", "urls_tkt_customer_id", ccsText, "", "", $this->Parameters["urls_tkt_customer_id"], "", false);
        $this->wp->AddParameter("6", "urls_tkt_receipt_type", ccsText, "", "", $this->Parameters["urls_tkt_receipt_type"], "", false);
    }
//End Prepare Method

//Open Method @24-30119B84
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT a.tkt_date, a.tkt_trans_id, a.tkt_receipt_type,a.tkt_receipt_group,a.tkt_receipt_number,\n" .
        "	(a.tkt_receipt_type SQLConcat '-' SQLConcat a.tkt_receipt_group SQLConcat '-' SQLConcat a.tkt_receipt_number) as complete_receipt,\n" .
        "	a.tkt_type, ( a.tkt_net_amount * ReplacetoNumberCatalog) AS tkt_net_amount, \n" .
        "  ( a.tkt_tax_amount * ReplacetoNumberCatalog) AS tkt_tax_amount,\n" .
        "  ( a.tkt_total_amount * ReplacetoNumberCatalog) AS tkt_total_amount,\n" .
        "  a.tkt_customer_id,a.tkt_customer_name,a.tkt_customer_tax_id, a.tkt_refunded, a.tkt_orig_trans_id,\n" .
        "  b.tkt_receipt_type as asoc_receipt_type , b.tkt_receipt_group as asoc_receipt_group,\n" .
        "  b.tkt_receipt_number as asoc_receipt_number\n" .
        "FROM (ssf_tkt_trx_header a LEFT JOIN ssf_tkt_catalog ON\n" .
        "a.tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type' )\n" .
        "LEFT JOIN ssf_tkt_trx_header b ON a.tkt_orig_trans_id = b.tkt_trans_id\n" .
        "and a.tkt_orig_trans_id > 0\n" .
        "WHERE ( a.tkt_status = 'C' ) \n" .
        "AND ( a.tkt_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'  = '' )\n" .
        "AND ( a.tkt_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  = '' )\n" .
        "AND ( a.tkt_trans_id >= " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " = 0 )\n" .
        "AND ( a.tkt_trans_id <= " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 0 )\n" .
        "AND ( a.tkt_customer_id = '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' )\n" .
        "AND (a.tkt_receipt_type = '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @24-1AF70403
    function SetValues()
    {
        $this->tkt_date->SetDBValue(trim($this->f("tkt_date")));
        $this->tkt_receipt_type->SetDBValue($this->f("tkt_receipt_type"));
        $this->tkt_receipt_group->SetDBValue($this->f("tkt_receipt_group"));
        $this->tkt_receipt_number->SetDBValue(trim($this->f("tkt_receipt_number")));
        $this->complete_receipt->SetDBValue($this->f("complete_receipt"));
        $this->lnkcomplete_receipt->SetDBValue($this->f("complete_receipt"));
        $this->tkt_type->SetDBValue($this->f("tkt_type"));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->tkt_customer_id->SetDBValue($this->f("tkt_customer_id"));
        $this->tkt_customer_name->SetDBValue($this->f("tkt_customer_name"));
        $this->tkt_customer_tax_id->SetDBValue($this->f("tkt_customer_tax_id"));
        $this->tkt_refunded->SetDBValue($this->f("tkt_refunded"));
        $this->tkt_orig_trans_id->SetDBValue(trim($this->f("tkt_orig_trans_id")));
        $this->asoc_receipt_type->SetDBValue($this->f("asoc_receipt_type"));
        $this->asoc_receipt_group->SetDBValue($this->f("asoc_receipt_group"));
        $this->asoc_receipt_number->SetDBValue($this->f("asoc_receipt_number"));
        $this->TotalSum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->TotalSum_tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End Report1DataSource Class @24-FCB6E20C

//Initialize Page @1-5F55E23F
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
$TemplateFileName = "SSFTicketTrxRReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-EAFE036A
include("./SSFTicketTrxRReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-9169B558
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_trx_headerSearch = new clsRecordssf_tkt_trx_headerSearch("", $MainPage);
$lnkExcel = new clsControl(ccsImageLink, "lnkExcel", "lnkExcel", ccsText, "", CCGetRequestParam("lnkExcel", ccsGet, NULL), $MainPage);
$lnkExcel->Page = "SSFTicketTrxRReport.php";
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_trx_headerSearch = & $ssf_tkt_trx_headerSearch;
$MainPage->lnkExcel = & $lnkExcel;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$lnkExcel->Parameters = CCGetQueryString("All", array("ccsForm"));
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "ViewMode", "Print");
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "export", "1");
$Report1->Initialize();

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

//Go to destination page @1-6029B35F
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_trx_headerSearch);
    unset($Report1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-FDC103B5
$SSFSpiritHeader->Show();
$ssf_tkt_trx_headerSearch->Show();
$Button1->Show();
$Report1->Show();
$lnkExcel->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-3785ED0B
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_trx_headerSearch);
unset($Report1);
unset($Tpl);
//End Unload Page


?>
