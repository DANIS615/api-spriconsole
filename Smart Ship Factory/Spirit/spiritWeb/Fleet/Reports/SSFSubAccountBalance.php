<?php
//Include Common Files @1-E34D3C8F
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Reports/");
define("FileName", "SSFSubAccountBalance.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_customers_account { //ssf_flt_customers_account Class @31-CC81D2AB

//Variables @31-9E315808

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

//Class_Initialize Event @31-35A2D7BD
    function clsRecordssf_flt_customers_account($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_customers_account/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_customers_account";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_fcs_subaccnt_cust_id = new clsControl(ccsTextBox, "s_fcs_subaccnt_cust_id", "s_fcs_subaccnt_cust_id", ccsText, "", CCGetRequestParam("s_fcs_subaccnt_cust_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopCustomerList.php";
            $this->s_tkt_cust_name = new clsControl(ccsTextBox, "s_tkt_cust_name", "s_tkt_cust_name", ccsText, "", CCGetRequestParam("s_tkt_cust_name", $Method, NULL), $this);
            $this->s_fcs_subaccnt_id = new clsControl(ccsTextBox, "s_fcs_subaccnt_id", "s_fcs_subaccnt_id", ccsText, "", CCGetRequestParam("s_fcs_subaccnt_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopSubAccountList.php";
            $this->s_fcs_subaccnt_description = new clsControl(ccsTextBox, "s_fcs_subaccnt_description", "s_fcs_subaccnt_description", ccsText, "", CCGetRequestParam("s_fcs_subaccnt_description", $Method, NULL), $this);
            $this->s_fcs_subaccnt_car_id = new clsControl(ccsTextBox, "s_fcs_subaccnt_car_id", "s_fcs_subaccnt_car_id", ccsText, "", CCGetRequestParam("s_fcs_subaccnt_car_id", $Method, NULL), $this);
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_fcs_subaccnt_cust_id", "s_fcs_subaccnt_id", "s_fcs_subaccnt_description", "s_fcs_subaccnt_car_id", "s_tkt_cust_name", "ccsForm"));
            $this->ClearParameters->Page = "SSFSubAccountBalance.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @31-D3485DF9
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_fcs_subaccnt_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_cust_name->Validate() && $Validation);
        $Validation = ($this->s_fcs_subaccnt_id->Validate() && $Validation);
        $Validation = ($this->s_fcs_subaccnt_description->Validate() && $Validation);
        $Validation = ($this->s_fcs_subaccnt_car_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_fcs_subaccnt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_cust_name->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_fcs_subaccnt_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_fcs_subaccnt_description->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_fcs_subaccnt_car_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @31-A3913828
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_fcs_subaccnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->s_fcs_subaccnt_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->s_fcs_subaccnt_description->Errors->Count());
        $errors = ($errors || $this->s_fcs_subaccnt_car_id->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @31-61EA6BFB
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
        $Redirect = "SSFSubAccountBalance.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFSubAccountBalance.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @31-43BC7736
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
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_fcs_subaccnt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_cust_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_fcs_subaccnt_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_fcs_subaccnt_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_fcs_subaccnt_car_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ClearParameters->Errors->ToString());
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

        $this->s_fcs_subaccnt_cust_id->Show();
        $this->Link1->Show();
        $this->s_tkt_cust_name->Show();
        $this->s_fcs_subaccnt_id->Show();
        $this->Link2->Show();
        $this->s_fcs_subaccnt_description->Show();
        $this->s_fcs_subaccnt_car_id->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_customers_account Class @31-FCB6E20C

//ssf_flt_customers_subacco ReportGroup class @4-8E77F4B4
class clsReportGroupssf_flt_customers_subacco {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $fcs_subaccnt_cust_id, $_fcs_subaccnt_cust_idAttributes;
    public $tkt_cust_name, $_tkt_cust_nameAttributes;
    public $fca_fleet_model_id, $_fca_fleet_model_idAttributes;
    public $fcs_subaccnt_id, $_fcs_subaccnt_idAttributes;
    public $fcs_subaccnt_description, $_fcs_subaccnt_descriptionAttributes;
    public $fcs_subaccnt_car_id, $_fcs_subaccnt_car_idAttributes;
    public $day_qty_trx_bal, $_day_qty_trx_balAttributes;
    public $day_amount_bal, $_day_amount_balAttributes;
    public $month_amount_bal, $_month_amount_balAttributes;
    public $day_volume_bal, $_day_volume_balAttributes;
    public $month_volume_bal, $_month_volume_balAttributes;
    public $fcs_fleet_model_id, $_fcs_fleet_model_idAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $fcs_subaccnt_cust_idTotalIndex;

    function clsReportGroupssf_flt_customers_subacco(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->fcs_subaccnt_cust_id = $this->Parent->fcs_subaccnt_cust_id->Value;
        $this->tkt_cust_name = $this->Parent->tkt_cust_name->Value;
        $this->fca_fleet_model_id = $this->Parent->fca_fleet_model_id->Value;
        $this->fcs_subaccnt_id = $this->Parent->fcs_subaccnt_id->Value;
        $this->fcs_subaccnt_description = $this->Parent->fcs_subaccnt_description->Value;
        $this->fcs_subaccnt_car_id = $this->Parent->fcs_subaccnt_car_id->Value;
        $this->day_qty_trx_bal = $this->Parent->day_qty_trx_bal->Value;
        $this->day_amount_bal = $this->Parent->day_amount_bal->Value;
        $this->month_amount_bal = $this->Parent->month_amount_bal->Value;
        $this->day_volume_bal = $this->Parent->day_volume_bal->Value;
        $this->month_volume_bal = $this->Parent->month_volume_bal->Value;
        $this->fcs_fleet_model_id = $this->Parent->fcs_fleet_model_id->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_fcs_subaccnt_cust_idAttributes = $this->Parent->fcs_subaccnt_cust_id->Attributes->GetAsArray();
        $this->_tkt_cust_nameAttributes = $this->Parent->tkt_cust_name->Attributes->GetAsArray();
        $this->_fca_fleet_model_idAttributes = $this->Parent->fca_fleet_model_id->Attributes->GetAsArray();
        $this->_Sorter_fcs_subaccnt_idAttributes = $this->Parent->Sorter_fcs_subaccnt_id->Attributes->GetAsArray();
        $this->_Sorter_fcs_subaccnt_descriptionAttributes = $this->Parent->Sorter_fcs_subaccnt_description->Attributes->GetAsArray();
        $this->_Sorter_fcs_subaccnt_car_idAttributes = $this->Parent->Sorter_fcs_subaccnt_car_id->Attributes->GetAsArray();
        $this->_Sorter_day_qty_trx_balAttributes = $this->Parent->Sorter_day_qty_trx_bal->Attributes->GetAsArray();
        $this->_Sorter_day_amount_balAttributes = $this->Parent->Sorter_day_amount_bal->Attributes->GetAsArray();
        $this->_Sorter_month_amount_balAttributes = $this->Parent->Sorter_month_amount_bal->Attributes->GetAsArray();
        $this->_Sorter_day_volume_balAttributes = $this->Parent->Sorter_day_volume_bal->Attributes->GetAsArray();
        $this->_Sorter_month_volume_balAttributes = $this->Parent->Sorter_month_volume_bal->Attributes->GetAsArray();
        $this->_fcs_subaccnt_idAttributes = $this->Parent->fcs_subaccnt_id->Attributes->GetAsArray();
        $this->_fcs_subaccnt_descriptionAttributes = $this->Parent->fcs_subaccnt_description->Attributes->GetAsArray();
        $this->_fcs_subaccnt_car_idAttributes = $this->Parent->fcs_subaccnt_car_id->Attributes->GetAsArray();
        $this->_day_qty_trx_balAttributes = $this->Parent->day_qty_trx_bal->Attributes->GetAsArray();
        $this->_day_amount_balAttributes = $this->Parent->day_amount_bal->Attributes->GetAsArray();
        $this->_month_amount_balAttributes = $this->Parent->month_amount_bal->Attributes->GetAsArray();
        $this->_day_volume_balAttributes = $this->Parent->day_volume_bal->Attributes->GetAsArray();
        $this->_month_volume_balAttributes = $this->Parent->month_volume_bal->Attributes->GetAsArray();
        $this->_fcs_fleet_model_idAttributes = $this->Parent->fcs_fleet_model_id->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->fcs_subaccnt_cust_id = $Header->fcs_subaccnt_cust_id;
        $Header->_fcs_subaccnt_cust_idAttributes = $this->_fcs_subaccnt_cust_idAttributes;
        $this->Parent->fcs_subaccnt_cust_id->Value = $Header->fcs_subaccnt_cust_id;
        $this->Parent->fcs_subaccnt_cust_id->Attributes->RestoreFromArray($Header->_fcs_subaccnt_cust_idAttributes);
        $this->tkt_cust_name = $Header->tkt_cust_name;
        $Header->_tkt_cust_nameAttributes = $this->_tkt_cust_nameAttributes;
        $this->Parent->tkt_cust_name->Value = $Header->tkt_cust_name;
        $this->Parent->tkt_cust_name->Attributes->RestoreFromArray($Header->_tkt_cust_nameAttributes);
        $this->fca_fleet_model_id = $Header->fca_fleet_model_id;
        $Header->_fca_fleet_model_idAttributes = $this->_fca_fleet_model_idAttributes;
        $this->Parent->fca_fleet_model_id->Value = $Header->fca_fleet_model_id;
        $this->Parent->fca_fleet_model_id->Attributes->RestoreFromArray($Header->_fca_fleet_model_idAttributes);
        $this->fcs_subaccnt_id = $Header->fcs_subaccnt_id;
        $Header->_fcs_subaccnt_idAttributes = $this->_fcs_subaccnt_idAttributes;
        $this->Parent->fcs_subaccnt_id->Value = $Header->fcs_subaccnt_id;
        $this->Parent->fcs_subaccnt_id->Attributes->RestoreFromArray($Header->_fcs_subaccnt_idAttributes);
        $this->fcs_subaccnt_description = $Header->fcs_subaccnt_description;
        $Header->_fcs_subaccnt_descriptionAttributes = $this->_fcs_subaccnt_descriptionAttributes;
        $this->Parent->fcs_subaccnt_description->Value = $Header->fcs_subaccnt_description;
        $this->Parent->fcs_subaccnt_description->Attributes->RestoreFromArray($Header->_fcs_subaccnt_descriptionAttributes);
        $this->fcs_subaccnt_car_id = $Header->fcs_subaccnt_car_id;
        $Header->_fcs_subaccnt_car_idAttributes = $this->_fcs_subaccnt_car_idAttributes;
        $this->Parent->fcs_subaccnt_car_id->Value = $Header->fcs_subaccnt_car_id;
        $this->Parent->fcs_subaccnt_car_id->Attributes->RestoreFromArray($Header->_fcs_subaccnt_car_idAttributes);
        $this->day_qty_trx_bal = $Header->day_qty_trx_bal;
        $Header->_day_qty_trx_balAttributes = $this->_day_qty_trx_balAttributes;
        $this->Parent->day_qty_trx_bal->Value = $Header->day_qty_trx_bal;
        $this->Parent->day_qty_trx_bal->Attributes->RestoreFromArray($Header->_day_qty_trx_balAttributes);
        $this->day_amount_bal = $Header->day_amount_bal;
        $Header->_day_amount_balAttributes = $this->_day_amount_balAttributes;
        $this->Parent->day_amount_bal->Value = $Header->day_amount_bal;
        $this->Parent->day_amount_bal->Attributes->RestoreFromArray($Header->_day_amount_balAttributes);
        $this->month_amount_bal = $Header->month_amount_bal;
        $Header->_month_amount_balAttributes = $this->_month_amount_balAttributes;
        $this->Parent->month_amount_bal->Value = $Header->month_amount_bal;
        $this->Parent->month_amount_bal->Attributes->RestoreFromArray($Header->_month_amount_balAttributes);
        $this->day_volume_bal = $Header->day_volume_bal;
        $Header->_day_volume_balAttributes = $this->_day_volume_balAttributes;
        $this->Parent->day_volume_bal->Value = $Header->day_volume_bal;
        $this->Parent->day_volume_bal->Attributes->RestoreFromArray($Header->_day_volume_balAttributes);
        $this->month_volume_bal = $Header->month_volume_bal;
        $Header->_month_volume_balAttributes = $this->_month_volume_balAttributes;
        $this->Parent->month_volume_bal->Value = $Header->month_volume_bal;
        $this->Parent->month_volume_bal->Attributes->RestoreFromArray($Header->_month_volume_balAttributes);
        $this->fcs_fleet_model_id = $Header->fcs_fleet_model_id;
        $Header->_fcs_fleet_model_idAttributes = $this->_fcs_fleet_model_idAttributes;
        $this->Parent->fcs_fleet_model_id->Value = $Header->fcs_fleet_model_id;
        $this->Parent->fcs_fleet_model_id->Attributes->RestoreFromArray($Header->_fcs_fleet_model_idAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_flt_customers_subacco ReportGroup class

//ssf_flt_customers_subacco GroupsCollection class @4-38AE9C07
class clsGroupsCollectionssf_flt_customers_subacco {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mfcs_subaccnt_cust_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_flt_customers_subacco(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mfcs_subaccnt_cust_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_flt_customers_subacco($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->fcs_subaccnt_cust_idTotalIndex = $this->mfcs_subaccnt_cust_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->fcs_subaccnt_cust_id->Value = $this->Parent->fcs_subaccnt_cust_id->initialValue;
        $this->Parent->tkt_cust_name->Value = $this->Parent->tkt_cust_name->initialValue;
        $this->Parent->fca_fleet_model_id->Value = $this->Parent->fca_fleet_model_id->initialValue;
        $this->Parent->fcs_subaccnt_id->Value = $this->Parent->fcs_subaccnt_id->initialValue;
        $this->Parent->fcs_subaccnt_description->Value = $this->Parent->fcs_subaccnt_description->initialValue;
        $this->Parent->fcs_subaccnt_car_id->Value = $this->Parent->fcs_subaccnt_car_id->initialValue;
        $this->Parent->day_qty_trx_bal->Value = $this->Parent->day_qty_trx_bal->initialValue;
        $this->Parent->day_amount_bal->Value = $this->Parent->day_amount_bal->initialValue;
        $this->Parent->month_amount_bal->Value = $this->Parent->month_amount_bal->initialValue;
        $this->Parent->day_volume_bal->Value = $this->Parent->day_volume_bal->initialValue;
        $this->Parent->month_volume_bal->Value = $this->Parent->month_volume_bal->initialValue;
        $this->Parent->fcs_fleet_model_id->Value = $this->Parent->fcs_fleet_model_id->initialValue;
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
        if ($groupName == "fcs_subaccnt_cust_id") {
            $Groupfcs_subaccnt_cust_id = & $this->InitGroup(true);
            $this->Parent->fcs_subaccnt_cust_id_Header->CCSEventResult = CCGetEvent($this->Parent->fcs_subaccnt_cust_id_Header->CCSEvents, "OnInitialize", $this->Parent->fcs_subaccnt_cust_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->fcs_subaccnt_cust_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->fcs_subaccnt_cust_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->fcs_subaccnt_cust_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->fcs_subaccnt_cust_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->fcs_subaccnt_cust_id_Header->Height;
                $Groupfcs_subaccnt_cust_id->SetTotalControls("GetNextValue");
            $this->Parent->fcs_subaccnt_cust_id_Header->CCSEventResult = CCGetEvent($this->Parent->fcs_subaccnt_cust_id_Header->CCSEvents, "OnCalculate", $this->Parent->fcs_subaccnt_cust_id_Header);
            $Groupfcs_subaccnt_cust_id->SetControls();
            $Groupfcs_subaccnt_cust_id->Mode = 1;
            $Groupfcs_subaccnt_cust_id->GroupType = "fcs_subaccnt_cust_id";
            $this->mfcs_subaccnt_cust_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupfcs_subaccnt_cust_id;
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
        $Groupfcs_subaccnt_cust_id = & $this->InitGroup(true);
        $this->Parent->fcs_subaccnt_cust_id_Footer->CCSEventResult = CCGetEvent($this->Parent->fcs_subaccnt_cust_id_Footer->CCSEvents, "OnInitialize", $this->Parent->fcs_subaccnt_cust_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->fcs_subaccnt_cust_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->fcs_subaccnt_cust_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->fcs_subaccnt_cust_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupfcs_subaccnt_cust_id->SetTotalControls("GetPrevValue");
        $Groupfcs_subaccnt_cust_id->SyncWithHeader($this->Groups[$this->mfcs_subaccnt_cust_idCurrentHeaderIndex]);
        if ($this->Parent->fcs_subaccnt_cust_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->fcs_subaccnt_cust_id_Footer->Height;
        $this->Parent->fcs_subaccnt_cust_id_Footer->CCSEventResult = CCGetEvent($this->Parent->fcs_subaccnt_cust_id_Footer->CCSEvents, "OnCalculate", $this->Parent->fcs_subaccnt_cust_id_Footer);
        $Groupfcs_subaccnt_cust_id->SetControls();
        $this->RestoreValues();
        $Groupfcs_subaccnt_cust_id->Mode = 2;
        $Groupfcs_subaccnt_cust_id->GroupType ="fcs_subaccnt_cust_id";
        $this->Groups[] = & $Groupfcs_subaccnt_cust_id;
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
//End ssf_flt_customers_subacco GroupsCollection class

class clsReportssf_flt_customers_subacco { //ssf_flt_customers_subacco Class @4-3CD8C208

//ssf_flt_customers_subacco Variables @4-CFBDA848

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
    public $fcs_subaccnt_cust_id_HeaderBlock, $fcs_subaccnt_cust_id_Header;
    public $fcs_subaccnt_cust_id_FooterBlock, $fcs_subaccnt_cust_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $fcs_subaccnt_cust_id_HeaderControls, $fcs_subaccnt_cust_id_FooterControls;
    public $Sorter_fcs_subaccnt_id;
    public $Sorter_fcs_subaccnt_description;
    public $Sorter_fcs_subaccnt_car_id;
    public $Sorter_day_qty_trx_bal;
    public $Sorter_day_amount_bal;
    public $Sorter_month_amount_bal;
    public $Sorter_day_volume_bal;
    public $Sorter_month_volume_bal;
//End ssf_flt_customers_subacco Variables

//Class_Initialize Event @4-F78036C7
    function clsReportssf_flt_customers_subacco($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_customers_subacco";
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
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->fcs_subaccnt_cust_id_Footer = new clsSection($this);
        $this->fcs_subaccnt_cust_id_Header = new clsSection($this);
        $this->fcs_subaccnt_cust_id_Header->Height = 2;
        $MaxSectionSize = max($MaxSectionSize, $this->fcs_subaccnt_cust_id_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_flt_customers_subaccoDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_customers_subaccoOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_customers_subaccoDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->fcs_subaccnt_cust_id = new clsControl(ccsReportLabel, "fcs_subaccnt_cust_id", "fcs_subaccnt_cust_id", ccsText, "", "", $this);
        $this->tkt_cust_name = new clsControl(ccsReportLabel, "tkt_cust_name", "tkt_cust_name", ccsText, "", "", $this);
        $this->fca_fleet_model_id = new clsControl(ccsReportLabel, "fca_fleet_model_id", "fca_fleet_model_id", ccsText, "", "", $this);
        $this->Sorter_fcs_subaccnt_id = new clsSorter($this->ComponentName, "Sorter_fcs_subaccnt_id", $FileName, $this);
        $this->Sorter_fcs_subaccnt_description = new clsSorter($this->ComponentName, "Sorter_fcs_subaccnt_description", $FileName, $this);
        $this->Sorter_fcs_subaccnt_car_id = new clsSorter($this->ComponentName, "Sorter_fcs_subaccnt_car_id", $FileName, $this);
        $this->Sorter_day_qty_trx_bal = new clsSorter($this->ComponentName, "Sorter_day_qty_trx_bal", $FileName, $this);
        $this->Sorter_day_amount_bal = new clsSorter($this->ComponentName, "Sorter_day_amount_bal", $FileName, $this);
        $this->Sorter_month_amount_bal = new clsSorter($this->ComponentName, "Sorter_month_amount_bal", $FileName, $this);
        $this->Sorter_day_volume_bal = new clsSorter($this->ComponentName, "Sorter_day_volume_bal", $FileName, $this);
        $this->Sorter_month_volume_bal = new clsSorter($this->ComponentName, "Sorter_month_volume_bal", $FileName, $this);
        $this->fcs_subaccnt_id = new clsControl(ccsReportLabel, "fcs_subaccnt_id", "fcs_subaccnt_id", ccsText, "", "", $this);
        $this->fcs_subaccnt_description = new clsControl(ccsReportLabel, "fcs_subaccnt_description", "fcs_subaccnt_description", ccsText, "", "", $this);
        $this->fcs_subaccnt_description->HTML = true;
        $this->fcs_subaccnt_description->EmptyText = "&nbsp;";
        $this->fcs_subaccnt_car_id = new clsControl(ccsReportLabel, "fcs_subaccnt_car_id", "fcs_subaccnt_car_id", ccsText, "", "", $this);
        $this->fcs_subaccnt_car_id->HTML = true;
        $this->fcs_subaccnt_car_id->EmptyText = "&nbsp;";
        $this->day_qty_trx_bal = new clsControl(ccsReportLabel, "day_qty_trx_bal", "day_qty_trx_bal", ccsFloat, array(False, 0, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->day_qty_trx_bal->HTML = true;
        $this->day_qty_trx_bal->EmptyText = "&nbsp;";
        $this->day_amount_bal = new clsControl(ccsReportLabel, "day_amount_bal", "day_amount_bal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->day_amount_bal->HTML = true;
        $this->day_amount_bal->EmptyText = "&nbsp;";
        $this->month_amount_bal = new clsControl(ccsReportLabel, "month_amount_bal", "month_amount_bal", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->month_amount_bal->HTML = true;
        $this->month_amount_bal->EmptyText = "&nbsp;";
        $this->day_volume_bal = new clsControl(ccsReportLabel, "day_volume_bal", "day_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->day_volume_bal->HTML = true;
        $this->day_volume_bal->EmptyText = "&nbsp;";
        $this->month_volume_bal = new clsControl(ccsReportLabel, "month_volume_bal", "month_volume_bal", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->month_volume_bal->HTML = true;
        $this->month_volume_bal->EmptyText = "&nbsp;";
        $this->fcs_fleet_model_id = new clsControl(ccsReportLabel, "fcs_fleet_model_id", "fcs_fleet_model_id", ccsText, "", "", $this);
        $this->fcs_fleet_model_id->HTML = true;
        $this->fcs_fleet_model_id->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_CurrentPage = new clsControl(ccsReportLabel, "Report_CurrentPage", "Report_CurrentPage", ccsInteger, "", "", $this);
        $this->Report_TotalPages = new clsControl(ccsReportLabel, "Report_TotalPages", "Report_TotalPages", ccsInteger, "", "", $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->PageBreak = new clsPanel("PageBreak", $this);
    }
//End Class_Initialize Event

//Initialize Method @4-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @4-A81177CD
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_cust_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->fca_fleet_model_id->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_id->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_description->Errors->Count());
        $errors = ($errors || $this->fcs_subaccnt_car_id->Errors->Count());
        $errors = ($errors || $this->day_qty_trx_bal->Errors->Count());
        $errors = ($errors || $this->day_amount_bal->Errors->Count());
        $errors = ($errors || $this->month_amount_bal->Errors->Count());
        $errors = ($errors || $this->day_volume_bal->Errors->Count());
        $errors = ($errors || $this->month_volume_bal->Errors->Count());
        $errors = ($errors || $this->fcs_fleet_model_id->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @4-F0E671E9
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fcs_subaccnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fca_fleet_model_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fcs_subaccnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fcs_subaccnt_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fcs_subaccnt_car_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_qty_trx_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_amount_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->month_amount_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_volume_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->month_volume_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fcs_fleet_model_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @4-90FB5233
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_fcs_subaccnt_cust_id"] = CCGetFromGet("s_fcs_subaccnt_cust_id", NULL);
        $this->DataSource->Parameters["urls_fcs_subaccnt_id"] = CCGetFromGet("s_fcs_subaccnt_id", NULL);
        $this->DataSource->Parameters["urls_fcs_subaccnt_description"] = CCGetFromGet("s_fcs_subaccnt_description", NULL);
        $this->DataSource->Parameters["urls_fcs_subaccnt_car_id"] = CCGetFromGet("s_fcs_subaccnt_car_id", NULL);
        $this->DataSource->Parameters["urls_tkt_cust_name"] = CCGetFromGet("s_tkt_cust_name", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $fcs_subaccnt_cust_idKey = "";
        $Groups = new clsGroupsCollectionssf_flt_customers_subacco($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->fcs_subaccnt_cust_id->SetValue($this->DataSource->fcs_subaccnt_cust_id->GetValue());
            $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
            $this->fca_fleet_model_id->SetValue($this->DataSource->fca_fleet_model_id->GetValue());
            $this->fcs_subaccnt_id->SetValue($this->DataSource->fcs_subaccnt_id->GetValue());
            $this->fcs_subaccnt_description->SetValue($this->DataSource->fcs_subaccnt_description->GetValue());
            $this->fcs_subaccnt_car_id->SetValue($this->DataSource->fcs_subaccnt_car_id->GetValue());
            $this->day_qty_trx_bal->SetValue($this->DataSource->day_qty_trx_bal->GetValue());
            $this->day_amount_bal->SetValue($this->DataSource->day_amount_bal->GetValue());
            $this->month_amount_bal->SetValue($this->DataSource->month_amount_bal->GetValue());
            $this->day_volume_bal->SetValue($this->DataSource->day_volume_bal->GetValue());
            $this->month_volume_bal->SetValue($this->DataSource->month_volume_bal->GetValue());
            $this->fcs_fleet_model_id->SetValue($this->DataSource->fcs_fleet_model_id->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $fcs_subaccnt_cust_idKey != $this->DataSource->f("fcs_subaccnt_cust_id")) {
                $Groups->OpenGroup("fcs_subaccnt_cust_id");
            }
            $Groups->AddItem();
            $fcs_subaccnt_cust_idKey = $this->DataSource->f("fcs_subaccnt_cust_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $fcs_subaccnt_cust_idKey != $this->DataSource->f("fcs_subaccnt_cust_id")) {
                $Groups->CloseGroup("fcs_subaccnt_cust_id");
            }
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
            $this->ControlsVisible["fcs_subaccnt_cust_id"] = $this->fcs_subaccnt_cust_id->Visible;
            $this->ControlsVisible["tkt_cust_name"] = $this->tkt_cust_name->Visible;
            $this->ControlsVisible["fca_fleet_model_id"] = $this->fca_fleet_model_id->Visible;
            $this->ControlsVisible["Sorter_fcs_subaccnt_id"] = $this->Sorter_fcs_subaccnt_id->Visible;
            $this->ControlsVisible["Sorter_fcs_subaccnt_description"] = $this->Sorter_fcs_subaccnt_description->Visible;
            $this->ControlsVisible["Sorter_fcs_subaccnt_car_id"] = $this->Sorter_fcs_subaccnt_car_id->Visible;
            $this->ControlsVisible["Sorter_day_qty_trx_bal"] = $this->Sorter_day_qty_trx_bal->Visible;
            $this->ControlsVisible["Sorter_day_amount_bal"] = $this->Sorter_day_amount_bal->Visible;
            $this->ControlsVisible["Sorter_month_amount_bal"] = $this->Sorter_month_amount_bal->Visible;
            $this->ControlsVisible["Sorter_day_volume_bal"] = $this->Sorter_day_volume_bal->Visible;
            $this->ControlsVisible["Sorter_month_volume_bal"] = $this->Sorter_month_volume_bal->Visible;
            $this->ControlsVisible["fcs_subaccnt_id"] = $this->fcs_subaccnt_id->Visible;
            $this->ControlsVisible["fcs_subaccnt_description"] = $this->fcs_subaccnt_description->Visible;
            $this->ControlsVisible["fcs_subaccnt_car_id"] = $this->fcs_subaccnt_car_id->Visible;
            $this->ControlsVisible["day_qty_trx_bal"] = $this->day_qty_trx_bal->Visible;
            $this->ControlsVisible["day_amount_bal"] = $this->day_amount_bal->Visible;
            $this->ControlsVisible["month_amount_bal"] = $this->month_amount_bal->Visible;
            $this->ControlsVisible["day_volume_bal"] = $this->day_volume_bal->Visible;
            $this->ControlsVisible["month_volume_bal"] = $this->month_volume_bal->Visible;
            $this->ControlsVisible["fcs_fleet_model_id"] = $this->fcs_fleet_model_id->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->fcs_subaccnt_id->SetValue($items[$i]->fcs_subaccnt_id);
                        $this->fcs_subaccnt_id->Attributes->RestoreFromArray($items[$i]->_fcs_subaccnt_idAttributes);
                        $this->fcs_subaccnt_description->SetValue($items[$i]->fcs_subaccnt_description);
                        $this->fcs_subaccnt_description->Attributes->RestoreFromArray($items[$i]->_fcs_subaccnt_descriptionAttributes);
                        $this->fcs_subaccnt_car_id->SetValue($items[$i]->fcs_subaccnt_car_id);
                        $this->fcs_subaccnt_car_id->Attributes->RestoreFromArray($items[$i]->_fcs_subaccnt_car_idAttributes);
                        $this->day_qty_trx_bal->SetValue($items[$i]->day_qty_trx_bal);
                        $this->day_qty_trx_bal->Attributes->RestoreFromArray($items[$i]->_day_qty_trx_balAttributes);
                        $this->day_amount_bal->SetValue($items[$i]->day_amount_bal);
                        $this->day_amount_bal->Attributes->RestoreFromArray($items[$i]->_day_amount_balAttributes);
                        $this->month_amount_bal->SetValue($items[$i]->month_amount_bal);
                        $this->month_amount_bal->Attributes->RestoreFromArray($items[$i]->_month_amount_balAttributes);
                        $this->day_volume_bal->SetValue($items[$i]->day_volume_bal);
                        $this->day_volume_bal->Attributes->RestoreFromArray($items[$i]->_day_volume_balAttributes);
                        $this->month_volume_bal->SetValue($items[$i]->month_volume_bal);
                        $this->month_volume_bal->Attributes->RestoreFromArray($items[$i]->_month_volume_balAttributes);
                        $this->fcs_fleet_model_id->SetValue($items[$i]->fcs_fleet_model_id);
                        $this->fcs_fleet_model_id->Attributes->RestoreFromArray($items[$i]->_fcs_fleet_model_idAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->fcs_subaccnt_id->Show();
                        $this->fcs_subaccnt_description->Show();
                        $this->fcs_subaccnt_car_id->Show();
                        $this->day_qty_trx_bal->Show();
                        $this->day_amount_bal->Show();
                        $this->month_amount_bal->Show();
                        $this->day_volume_bal->Show();
                        $this->month_volume_bal->Show();
                        $this->fcs_fleet_model_id->Show();
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
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
                            $this->Report_CurrentDateTime->SetValue(CCFormatDate(CCGetDateArray(), $this->Report_CurrentDateTime->Format));
                            $this->Report_CurrentDateTime->Attributes->RestoreFromArray($items[$i]->_Report_CurrentDateTimeAttributes);
                            $this->Report_CurrentPage->SetValue($items[$i]->PageNumber);
                            $this->Report_CurrentPage->Attributes->RestoreFromArray($items[$i]->_Report_CurrentPageAttributes);
                            $this->Report_TotalPages->SetValue($Groups->TotalPages);
                            $this->Report_TotalPages->Attributes->RestoreFromArray($items[$i]->_Report_TotalPagesAttributes);
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Report_CurrentDateTime->Show();
                                $this->Report_CurrentPage->Show();
                                $this->Report_TotalPages->Show();
                                $this->Navigator->Show();
                                $this->PageBreak->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "fcs_subaccnt_cust_id":
                        if ($items[$i]->Mode == 1) {
                            $this->fcs_subaccnt_cust_id->SetValue($items[$i]->fcs_subaccnt_cust_id);
                            $this->fcs_subaccnt_cust_id->Attributes->RestoreFromArray($items[$i]->_fcs_subaccnt_cust_idAttributes);
                            $this->tkt_cust_name->SetValue($items[$i]->tkt_cust_name);
                            $this->tkt_cust_name->Attributes->RestoreFromArray($items[$i]->_tkt_cust_nameAttributes);
                            $this->fca_fleet_model_id->SetValue($items[$i]->fca_fleet_model_id);
                            $this->fca_fleet_model_id->Attributes->RestoreFromArray($items[$i]->_fca_fleet_model_idAttributes);
                            $this->fcs_subaccnt_cust_id_Header->CCSEventResult = CCGetEvent($this->fcs_subaccnt_cust_id_Header->CCSEvents, "BeforeShow", $this->fcs_subaccnt_cust_id_Header);
                            if ($this->fcs_subaccnt_cust_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section fcs_subaccnt_cust_id_Header";
                                $this->Attributes->Show();
                                $this->fcs_subaccnt_cust_id->Show();
                                $this->tkt_cust_name->Show();
                                $this->fca_fleet_model_id->Show();
                                $this->Sorter_fcs_subaccnt_id->Show();
                                $this->Sorter_fcs_subaccnt_description->Show();
                                $this->Sorter_fcs_subaccnt_car_id->Show();
                                $this->Sorter_day_qty_trx_bal->Show();
                                $this->Sorter_day_amount_bal->Show();
                                $this->Sorter_month_amount_bal->Show();
                                $this->Sorter_day_volume_bal->Show();
                                $this->Sorter_month_volume_bal->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section fcs_subaccnt_cust_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->fcs_subaccnt_cust_id_Footer->CCSEventResult = CCGetEvent($this->fcs_subaccnt_cust_id_Footer->CCSEvents, "BeforeShow", $this->fcs_subaccnt_cust_id_Footer);
                            if ($this->fcs_subaccnt_cust_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section fcs_subaccnt_cust_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section fcs_subaccnt_cust_id_Footer", true, "Section Detail");
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

} //End ssf_flt_customers_subacco Class @4-FCB6E20C

class clsssf_flt_customers_subaccoDataSource extends clsDBConnection1 {  //ssf_flt_customers_subaccoDataSource Class @4-64C7D237

//DataSource Variables @4-77E341DF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $fcs_subaccnt_cust_id;
    public $tkt_cust_name;
    public $fca_fleet_model_id;
    public $fcs_subaccnt_id;
    public $fcs_subaccnt_description;
    public $fcs_subaccnt_car_id;
    public $day_qty_trx_bal;
    public $day_amount_bal;
    public $month_amount_bal;
    public $day_volume_bal;
    public $month_volume_bal;
    public $fcs_fleet_model_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @4-3ECCE9EC
    function clsssf_flt_customers_subaccoDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_flt_customers_subacco";
        $this->Initialize();
        $this->fcs_subaccnt_cust_id = new clsField("fcs_subaccnt_cust_id", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->fca_fleet_model_id = new clsField("fca_fleet_model_id", ccsText, "");
        $this->fcs_subaccnt_id = new clsField("fcs_subaccnt_id", ccsText, "");
        $this->fcs_subaccnt_description = new clsField("fcs_subaccnt_description", ccsText, "");
        $this->fcs_subaccnt_car_id = new clsField("fcs_subaccnt_car_id", ccsText, "");
        $this->day_qty_trx_bal = new clsField("day_qty_trx_bal", ccsFloat, "");
        $this->day_amount_bal = new clsField("day_amount_bal", ccsFloat, "");
        $this->month_amount_bal = new clsField("month_amount_bal", ccsFloat, "");
        $this->day_volume_bal = new clsField("day_volume_bal", ccsFloat, "");
        $this->month_volume_bal = new clsField("month_volume_bal", ccsFloat, "");
        $this->fcs_fleet_model_id = new clsField("fcs_fleet_model_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @4-FE1438EB
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_flt_customers_subaccounts.fcs_subaccnt_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_fcs_subaccnt_id" => array("fcs_subaccnt_id", ""), 
            "Sorter_fcs_subaccnt_description" => array("fcs_subaccnt_description", ""), 
            "Sorter_fcs_subaccnt_car_id" => array("fcs_subaccnt_car_id", ""), 
            "Sorter_day_qty_trx_bal" => array("day_qty_trx_bal", ""), 
            "Sorter_day_amount_bal" => array("day_amount_bal", ""), 
            "Sorter_month_amount_bal" => array("month_amount_bal", ""), 
            "Sorter_day_volume_bal" => array("day_volume_bal", ""), 
            "Sorter_month_volume_bal" => array("month_volume_bal", "")));
    }
//End SetOrder Method

//Prepare Method @4-65D791C7
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_fcs_subaccnt_cust_id", ccsText, "", "", $this->Parameters["urls_fcs_subaccnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_fcs_subaccnt_id", ccsText, "", "", $this->Parameters["urls_fcs_subaccnt_id"], "", false);
        $this->wp->AddParameter("3", "urls_fcs_subaccnt_description", ccsText, "", "", $this->Parameters["urls_fcs_subaccnt_description"], "", false);
        $this->wp->AddParameter("4", "urls_fcs_subaccnt_car_id", ccsText, "", "", $this->Parameters["urls_fcs_subaccnt_car_id"], "", false);
        $this->wp->AddParameter("5", "urls_tkt_cust_name", ccsText, "", "", $this->Parameters["urls_tkt_cust_name"], "", false);
    }
//End Prepare Method

//Open Method @4-FF93D96E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT fcs_subaccnt_cust_id, tkt_cust_name, fcs_subaccnt_id, fcs_subaccnt_description, fcs_subaccnt_car_id, fca_fleet_model_id,fcs_fleet_model_id,\n" .
        "case when ( (ssf_flt_limit_profile.lp_day_qty_trx - fcs_day_qty_trx_bal) < (Limit_Account.lp_day_qty_trx - fca_day_qty_trx_bal)) THEN ssf_flt_limit_profile.lp_day_qty_trx - fcs_day_qty_trx_bal ELSE Limit_Account.lp_day_qty_trx - fca_day_qty_trx_bal END\n" .
        "AS day_qty_trx_bal,\n" .
        "case when ((ssf_flt_limit_profile.lp_day_limit_amount - fcs_day_amount_bal) < (Limit_Account.lp_day_limit_amount - fca_day_amount_bal)) THEN ssf_flt_limit_profile.lp_day_limit_amount - fcs_day_amount_bal ELSE Limit_Account.lp_day_limit_amount - fca_day_amount_bal END\n" .
        "AS day_amount_bal, \n" .
        "case when ((ssf_flt_limit_profile.lp_month_limit_amount - fcs_month_amount_bal) < (Limit_Account.lp_month_limit_amount - fca_month_amount_bal)) THEN ssf_flt_limit_profile.lp_month_limit_amount - fcs_month_amount_bal ELSE Limit_Account.lp_month_limit_amount - fca_month_amount_bal END\n" .
        "AS month_amount_bal, \n" .
        "case when ((ssf_flt_limit_profile.lp_day_limit_volume - fcs_day_volume_bal) < (Limit_Account.lp_day_limit_volume - fca_day_volume_bal)) THEN ssf_flt_limit_profile.lp_day_limit_volume - fcs_day_volume_bal ELSE Limit_Account.lp_day_limit_volume - fca_day_volume_bal END\n" .
        "AS day_volume_bal, \n" .
        "case when ((ssf_flt_limit_profile.lp_month_limit_volume - fcs_month_volume_bal) < (Limit_Account.lp_month_limit_volume - fca_month_volume_bal)) THEN ssf_flt_limit_profile.lp_month_limit_volume - fcs_month_volume_bal ELSE Limit_Account.lp_month_limit_volume - fca_month_volume_bal END\n" .
        "AS month_volume_bal\n" .
        "FROM ((ssf_flt_customers_subaccounts INNER JOIN ssf_tkt_customers ON\n" .
        "ssf_flt_customers_subaccounts.fcs_subaccnt_cust_id = ssf_tkt_customers.tkt_cust_id) INNER JOIN (ssf_flt_customers_accounts LEFT JOIN (ssf_flt_profile_model Model_Account LEFT JOIN ssf_flt_limit_profile Limit_Account ON\n" .
        "Model_Account.pm_limit_prof_id = Limit_Account.lp_profile_id) ON\n" .
        "ssf_flt_customers_accounts.fca_fleet_model_id = Model_Account.pm_model_id) ON\n" .
        "ssf_flt_customers_subaccounts.fcs_subaccnt_cust_id = ssf_flt_customers_accounts.fca_accnt_cust_id) LEFT JOIN (ssf_flt_profile_model LEFT JOIN ssf_flt_limit_profile ON\n" .
        "ssf_flt_profile_model.pm_limit_prof_id = ssf_flt_limit_profile.lp_profile_id) ON\n" .
        "ssf_flt_customers_subaccounts.fcs_fleet_model_id = ssf_flt_profile_model.pm_model_id\n" .
        "WHERE ( ssf_flt_customers_subaccounts.fcs_subaccnt_cust_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = '' )\n" .
        "AND ( ssf_flt_customers_subaccounts.fcs_subaccnt_id = '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( ssf_flt_customers_subaccounts.fcs_subaccnt_description LIKE '%" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "%' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "AND ( ssf_flt_customers_subaccounts.fcs_subaccnt_car_id LIKE '%" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "%' or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' )\n" .
        "AND ( ssf_tkt_customers.tkt_cust_name LIKE '%" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "%'  or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "ssf_flt_customers_subaccounts.fcs_subaccnt_cust_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @4-EF5A1E8C
    function SetValues()
    {
        $this->fcs_subaccnt_cust_id->SetDBValue($this->f("fcs_subaccnt_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
        $this->fca_fleet_model_id->SetDBValue($this->f("fca_fleet_model_id"));
        $this->fcs_subaccnt_id->SetDBValue($this->f("fcs_subaccnt_id"));
        $this->fcs_subaccnt_description->SetDBValue($this->f("fcs_subaccnt_description"));
        $this->fcs_subaccnt_car_id->SetDBValue($this->f("fcs_subaccnt_car_id"));
        $this->day_qty_trx_bal->SetDBValue(trim($this->f("day_qty_trx_bal")));
        $this->day_amount_bal->SetDBValue(trim($this->f("day_amount_bal")));
        $this->month_amount_bal->SetDBValue(trim($this->f("month_amount_bal")));
        $this->day_volume_bal->SetDBValue(trim($this->f("day_volume_bal")));
        $this->month_volume_bal->SetDBValue(trim($this->f("month_volume_bal")));
        $this->fcs_fleet_model_id->SetDBValue($this->f("fcs_fleet_model_id"));
    }
//End SetValues Method

} //End ssf_flt_customers_subaccoDataSource Class @4-FCB6E20C

//Initialize Page @1-F7140716
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
$TemplateFileName = "SSFSubAccountBalance.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-AA00DDFA
include("./SSFSubAccountBalance_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-9BD9BCBD
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_flt_customers_account = new clsRecordssf_flt_customers_account("", $MainPage);
$btnPrint = new clsButton("btnPrint", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_flt_customers_subacco = new clsReportssf_flt_customers_subacco("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_customers_account = & $ssf_flt_customers_account;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_flt_customers_subacco = & $ssf_flt_customers_subacco;
$ssf_flt_customers_subacco->Initialize();

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

//Execute Components @1-CBB4A232
$SSFSpiritHeader->Operations();
$ssf_flt_customers_account->Operation();
//End Execute Components

//Go to destination page @1-E418780E
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_customers_account);
    unset($ssf_flt_customers_subacco);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-E2C7AC9F
$SSFSpiritHeader->Show();
$ssf_flt_customers_account->Show();
$btnPrint->Show();
$ssf_flt_customers_subacco->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-A04EDBFC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_customers_account);
unset($ssf_flt_customers_subacco);
unset($Tpl);
//End Unload Page


?>
