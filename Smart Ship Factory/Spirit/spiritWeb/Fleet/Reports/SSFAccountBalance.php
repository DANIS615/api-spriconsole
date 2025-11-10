<?php
//Include Common Files @1-6A99299F
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Reports/");
define("FileName", "SSFAccountBalance.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_customers_account { //ssf_flt_customers_account Class @24-CC81D2AB

//Variables @24-9E315808

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

//Class_Initialize Event @24-A5CF46E0
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
            $this->s_fca_accnt_cust_id = new clsControl(ccsTextBox, "s_fca_accnt_cust_id", "s_fca_accnt_cust_id", ccsText, "", CCGetRequestParam("s_fca_accnt_cust_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopCustomerList.php";
            $this->s_tkt_cust_name = new clsControl(ccsTextBox, "s_tkt_cust_name", "s_tkt_cust_name", ccsText, "", CCGetRequestParam("s_tkt_cust_name", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "SSFAccountBalance.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @24-A2C7A27D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_fca_accnt_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tkt_cust_name->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_fca_accnt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_cust_name->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @24-E81DF918
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_fca_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @24-D3CBCB86
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
        $Redirect = "SSFAccountBalance.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFAccountBalance.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @24-5803E540
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
            $Error = ComposeStrings($Error, $this->s_fca_accnt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_cust_name->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
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

        $this->s_fca_accnt_cust_id->Show();
        $this->Link1->Show();
        $this->s_tkt_cust_name->Show();
        $this->Link2->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_customers_account Class @24-FCB6E20C

//ssf_flt_customers_account1 ReportGroup class @3-67E98F53
class clsReportGroupssf_flt_customers_account1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $fca_accnt_cust_id, $_fca_accnt_cust_idAttributes;
    public $tkt_cust_name, $_tkt_cust_nameAttributes;
    public $fca_accnt_id, $_fca_accnt_idAttributes;
    public $day_qty_trx_bal, $_day_qty_trx_balAttributes;
    public $day_amount_bal, $_day_amount_balAttributes;
    public $month_amount_bal, $_month_amount_balAttributes;
    public $day_volume_bal, $_day_volume_balAttributes;
    public $month_volume_bal, $_month_volume_balAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_flt_customers_account1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->fca_accnt_cust_id = $this->Parent->fca_accnt_cust_id->Value;
        $this->tkt_cust_name = $this->Parent->tkt_cust_name->Value;
        $this->fca_accnt_id = $this->Parent->fca_accnt_id->Value;
        $this->day_qty_trx_bal = $this->Parent->day_qty_trx_bal->Value;
        $this->day_amount_bal = $this->Parent->day_amount_bal->Value;
        $this->month_amount_bal = $this->Parent->month_amount_bal->Value;
        $this->day_volume_bal = $this->Parent->day_volume_bal->Value;
        $this->month_volume_bal = $this->Parent->month_volume_bal->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_fca_accnt_cust_idAttributes = $this->Parent->Sorter_fca_accnt_cust_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_cust_nameAttributes = $this->Parent->Sorter_tkt_cust_name->Attributes->GetAsArray();
        $this->_Sorter_fca_accnt_idAttributes = $this->Parent->Sorter_fca_accnt_id->Attributes->GetAsArray();
        $this->_Sorter_day_qty_trx_balAttributes = $this->Parent->Sorter_day_qty_trx_bal->Attributes->GetAsArray();
        $this->_Sorter_day_amount_balAttributes = $this->Parent->Sorter_day_amount_bal->Attributes->GetAsArray();
        $this->_Sorter_month_amount_balAttributes = $this->Parent->Sorter_month_amount_bal->Attributes->GetAsArray();
        $this->_Sorter_day_volume_balAttributes = $this->Parent->Sorter_day_volume_bal->Attributes->GetAsArray();
        $this->_Sorter_month_volume_balAttributes = $this->Parent->Sorter_month_volume_bal->Attributes->GetAsArray();
        $this->_fca_accnt_cust_idAttributes = $this->Parent->fca_accnt_cust_id->Attributes->GetAsArray();
        $this->_tkt_cust_nameAttributes = $this->Parent->tkt_cust_name->Attributes->GetAsArray();
        $this->_fca_accnt_idAttributes = $this->Parent->fca_accnt_id->Attributes->GetAsArray();
        $this->_day_qty_trx_balAttributes = $this->Parent->day_qty_trx_bal->Attributes->GetAsArray();
        $this->_day_amount_balAttributes = $this->Parent->day_amount_bal->Attributes->GetAsArray();
        $this->_month_amount_balAttributes = $this->Parent->month_amount_bal->Attributes->GetAsArray();
        $this->_day_volume_balAttributes = $this->Parent->day_volume_bal->Attributes->GetAsArray();
        $this->_month_volume_balAttributes = $this->Parent->month_volume_bal->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->fca_accnt_cust_id = $Header->fca_accnt_cust_id;
        $Header->_fca_accnt_cust_idAttributes = $this->_fca_accnt_cust_idAttributes;
        $this->Parent->fca_accnt_cust_id->Value = $Header->fca_accnt_cust_id;
        $this->Parent->fca_accnt_cust_id->Attributes->RestoreFromArray($Header->_fca_accnt_cust_idAttributes);
        $this->tkt_cust_name = $Header->tkt_cust_name;
        $Header->_tkt_cust_nameAttributes = $this->_tkt_cust_nameAttributes;
        $this->Parent->tkt_cust_name->Value = $Header->tkt_cust_name;
        $this->Parent->tkt_cust_name->Attributes->RestoreFromArray($Header->_tkt_cust_nameAttributes);
        $this->fca_accnt_id = $Header->fca_accnt_id;
        $Header->_fca_accnt_idAttributes = $this->_fca_accnt_idAttributes;
        $this->Parent->fca_accnt_id->Value = $Header->fca_accnt_id;
        $this->Parent->fca_accnt_id->Attributes->RestoreFromArray($Header->_fca_accnt_idAttributes);
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
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_flt_customers_account1 ReportGroup class

//ssf_flt_customers_account1 GroupsCollection class @3-CF0EBC73
class clsGroupsCollectionssf_flt_customers_account1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_flt_customers_account1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_flt_customers_account1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->fca_accnt_cust_id->Value = $this->Parent->fca_accnt_cust_id->initialValue;
        $this->Parent->tkt_cust_name->Value = $this->Parent->tkt_cust_name->initialValue;
        $this->Parent->fca_accnt_id->Value = $this->Parent->fca_accnt_id->initialValue;
        $this->Parent->day_qty_trx_bal->Value = $this->Parent->day_qty_trx_bal->initialValue;
        $this->Parent->day_amount_bal->Value = $this->Parent->day_amount_bal->initialValue;
        $this->Parent->month_amount_bal->Value = $this->Parent->month_amount_bal->initialValue;
        $this->Parent->day_volume_bal->Value = $this->Parent->day_volume_bal->initialValue;
        $this->Parent->month_volume_bal->Value = $this->Parent->month_volume_bal->initialValue;
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
//End ssf_flt_customers_account1 GroupsCollection class

class clsReportssf_flt_customers_account1 { //ssf_flt_customers_account1 Class @3-B8827EB7

//ssf_flt_customers_account1 Variables @3-C33E7764

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
    public $Sorter_fca_accnt_cust_id;
    public $Sorter_tkt_cust_name;
    public $Sorter_fca_accnt_id;
    public $Sorter_day_qty_trx_bal;
    public $Sorter_day_amount_bal;
    public $Sorter_month_amount_bal;
    public $Sorter_day_volume_bal;
    public $Sorter_month_volume_bal;
//End ssf_flt_customers_account1 Variables

//Class_Initialize Event @3-CAA72637
    function clsReportssf_flt_customers_account1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_customers_account1";
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
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_flt_customers_account1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_customers_account1Order", "");
        $this->SorterDirection = CCGetParam("ssf_flt_customers_account1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_fca_accnt_cust_id = new clsSorter($this->ComponentName, "Sorter_fca_accnt_cust_id", $FileName, $this);
        $this->Sorter_tkt_cust_name = new clsSorter($this->ComponentName, "Sorter_tkt_cust_name", $FileName, $this);
        $this->Sorter_fca_accnt_id = new clsSorter($this->ComponentName, "Sorter_fca_accnt_id", $FileName, $this);
        $this->Sorter_day_qty_trx_bal = new clsSorter($this->ComponentName, "Sorter_day_qty_trx_bal", $FileName, $this);
        $this->Sorter_day_amount_bal = new clsSorter($this->ComponentName, "Sorter_day_amount_bal", $FileName, $this);
        $this->Sorter_month_amount_bal = new clsSorter($this->ComponentName, "Sorter_month_amount_bal", $FileName, $this);
        $this->Sorter_day_volume_bal = new clsSorter($this->ComponentName, "Sorter_day_volume_bal", $FileName, $this);
        $this->Sorter_month_volume_bal = new clsSorter($this->ComponentName, "Sorter_month_volume_bal", $FileName, $this);
        $this->fca_accnt_cust_id = new clsControl(ccsReportLabel, "fca_accnt_cust_id", "fca_accnt_cust_id", ccsText, "", "", $this);
        $this->tkt_cust_name = new clsControl(ccsReportLabel, "tkt_cust_name", "tkt_cust_name", ccsText, "", "", $this);
        $this->fca_accnt_id = new clsControl(ccsReportLabel, "fca_accnt_id", "fca_accnt_id", ccsText, "", "", $this);
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
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_CurrentPage = new clsControl(ccsReportLabel, "Report_CurrentPage", "Report_CurrentPage", ccsInteger, "", "", $this);
        $this->Report_TotalPages = new clsControl(ccsReportLabel, "Report_TotalPages", "Report_TotalPages", ccsInteger, "", "", $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->PageBreak = new clsPanel("PageBreak", $this);
    }
//End Class_Initialize Event

//Initialize Method @3-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @3-F3A530CE
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->fca_accnt_cust_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->fca_accnt_id->Errors->Count());
        $errors = ($errors || $this->day_qty_trx_bal->Errors->Count());
        $errors = ($errors || $this->day_amount_bal->Errors->Count());
        $errors = ($errors || $this->month_amount_bal->Errors->Count());
        $errors = ($errors || $this->day_volume_bal->Errors->Count());
        $errors = ($errors || $this->month_volume_bal->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-9E60D548
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fca_accnt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fca_accnt_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_qty_trx_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_amount_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->month_amount_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->day_volume_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->month_volume_bal->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-D36A4B3E
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_fca_accnt_cust_id"] = CCGetFromGet("s_fca_accnt_cust_id", NULL);
        $this->DataSource->Parameters["urls_tkt_cust_name"] = CCGetFromGet("s_tkt_cust_name", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_flt_customers_account1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->fca_accnt_cust_id->SetValue($this->DataSource->fca_accnt_cust_id->GetValue());
            $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
            $this->fca_accnt_id->SetValue($this->DataSource->fca_accnt_id->GetValue());
            $this->day_qty_trx_bal->SetValue($this->DataSource->day_qty_trx_bal->GetValue());
            $this->day_amount_bal->SetValue($this->DataSource->day_amount_bal->GetValue());
            $this->month_amount_bal->SetValue($this->DataSource->month_amount_bal->GetValue());
            $this->day_volume_bal->SetValue($this->DataSource->day_volume_bal->GetValue());
            $this->month_volume_bal->SetValue($this->DataSource->month_volume_bal->GetValue());
            $this->Report_TotalRecords->SetValue(1);
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

        $this->Attributes->SetValue("month_amount_negbal", "");
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
            $this->ControlsVisible["fca_accnt_cust_id"] = $this->fca_accnt_cust_id->Visible;
            $this->ControlsVisible["tkt_cust_name"] = $this->tkt_cust_name->Visible;
            $this->ControlsVisible["fca_accnt_id"] = $this->fca_accnt_id->Visible;
            $this->ControlsVisible["day_qty_trx_bal"] = $this->day_qty_trx_bal->Visible;
            $this->ControlsVisible["day_amount_bal"] = $this->day_amount_bal->Visible;
            $this->ControlsVisible["month_amount_bal"] = $this->month_amount_bal->Visible;
            $this->ControlsVisible["day_volume_bal"] = $this->day_volume_bal->Visible;
            $this->ControlsVisible["month_volume_bal"] = $this->month_volume_bal->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->fca_accnt_cust_id->SetValue($items[$i]->fca_accnt_cust_id);
                        $this->fca_accnt_cust_id->Attributes->RestoreFromArray($items[$i]->_fca_accnt_cust_idAttributes);
                        $this->tkt_cust_name->SetValue($items[$i]->tkt_cust_name);
                        $this->tkt_cust_name->Attributes->RestoreFromArray($items[$i]->_tkt_cust_nameAttributes);
                        $this->fca_accnt_id->SetValue($items[$i]->fca_accnt_id);
                        $this->fca_accnt_id->Attributes->RestoreFromArray($items[$i]->_fca_accnt_idAttributes);
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
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->fca_accnt_cust_id->Show();
                        $this->tkt_cust_name->Show();
                        $this->fca_accnt_id->Show();
                        $this->day_qty_trx_bal->Show();
                        $this->day_amount_bal->Show();
                        $this->month_amount_bal->Show();
                        $this->day_volume_bal->Show();
                        $this->month_volume_bal->Show();
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
                                $this->Sorter_fca_accnt_cust_id->Show();
                                $this->Sorter_tkt_cust_name->Show();
                                $this->Sorter_fca_accnt_id->Show();
                                $this->Sorter_day_qty_trx_bal->Show();
                                $this->Sorter_day_amount_bal->Show();
                                $this->Sorter_month_amount_bal->Show();
                                $this->Sorter_day_volume_bal->Show();
                                $this->Sorter_month_volume_bal->Show();
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
                }
                $i++;
            } while ($i < count($items) && ($this->ViewMode == "Print" ||  !($i > 1 && $items[$i]->GroupType == 'Page' && $items[$i]->Mode == 1)));
            $Tpl->block_path = $ParentPath;
            $Tpl->parse($ReportBlock);
            $this->DataSource->close();
        }

    }
//End Show Method

} //End ssf_flt_customers_account1 Class @3-FCB6E20C

class clsssf_flt_customers_account1DataSource extends clsDBConnection1 {  //ssf_flt_customers_account1DataSource Class @3-AB02616E

//DataSource Variables @3-2DBD3651
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $fca_accnt_cust_id;
    public $tkt_cust_name;
    public $fca_accnt_id;
    public $day_qty_trx_bal;
    public $day_amount_bal;
    public $month_amount_bal;
    public $day_volume_bal;
    public $month_volume_bal;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-C195E5C4
    function clsssf_flt_customers_account1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_flt_customers_account1";
        $this->Initialize();
        $this->fca_accnt_cust_id = new clsField("fca_accnt_cust_id", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->fca_accnt_id = new clsField("fca_accnt_id", ccsText, "");
        $this->day_qty_trx_bal = new clsField("day_qty_trx_bal", ccsFloat, "");
        $this->day_amount_bal = new clsField("day_amount_bal", ccsFloat, "");
        $this->month_amount_bal = new clsField("month_amount_bal", ccsFloat, "");
        $this->day_volume_bal = new clsField("day_volume_bal", ccsFloat, "");
        $this->month_volume_bal = new clsField("month_volume_bal", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-A4F502A9
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "fca_accnt_cust_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_fca_accnt_cust_id" => array("fca_accnt_cust_id", ""), 
            "Sorter_tkt_cust_name" => array("tkt_cust_name", ""), 
            "Sorter_fca_accnt_id" => array("fca_accnt_id", ""), 
            "Sorter_day_qty_trx_bal" => array("day_qty_trx_bal", ""), 
            "Sorter_day_amount_bal" => array("day_amount_bal", ""), 
            "Sorter_month_amount_bal" => array("month_amount_bal", ""), 
            "Sorter_day_volume_bal" => array("day_volume_bal", ""), 
            "Sorter_month_volume_bal" => array("month_volume_bal", "")));
    }
//End SetOrder Method

//Prepare Method @3-788DFA04
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_fca_accnt_cust_id", ccsText, "", "", $this->Parameters["urls_fca_accnt_cust_id"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_cust_name", ccsText, "", "", $this->Parameters["urls_tkt_cust_name"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "fca_accnt_cust_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opContains, "tkt_cust_name", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-D483F2EC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT lp_day_qty_trx - fca_day_qty_trx_bal AS day_qty_trx_bal, lp_day_limit_amount - fca_day_amount_bal AS day_amount_bal, lp_month_limit_amount - fca_month_amount_bal AS month_amount_bal,\n\n" .
        "lp_day_limit_volume - fca_day_volume_bal AS day_volume_bal, lp_month_limit_volume - fca_month_volume_bal AS month_volume_bal,\n\n" .
        "fca_accnt_cust_id, tkt_cust_name, fca_accnt_id \n\n" .
        "FROM (ssf_flt_customers_accounts LEFT JOIN (ssf_flt_profile_model LEFT JOIN ssf_flt_limit_profile ON\n\n" .
        "ssf_flt_profile_model.pm_limit_prof_id = ssf_flt_limit_profile.lp_profile_id) ON\n\n" .
        "ssf_flt_customers_accounts.fca_fleet_model_id = ssf_flt_profile_model.pm_model_id) INNER JOIN ssf_tkt_customers ON\n\n" .
        "ssf_flt_customers_accounts.fca_accnt_cust_id = ssf_tkt_customers.tkt_cust_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-CE311E84
    function SetValues()
    {
        $this->fca_accnt_cust_id->SetDBValue($this->f("fca_accnt_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
        $this->fca_accnt_id->SetDBValue($this->f("fca_accnt_id"));
        $this->day_qty_trx_bal->SetDBValue(trim($this->f("day_qty_trx_bal")));
        $this->day_amount_bal->SetDBValue(trim($this->f("day_amount_bal")));
        $this->month_amount_bal->SetDBValue(trim($this->f("month_amount_bal")));
        $this->day_volume_bal->SetDBValue(trim($this->f("day_volume_bal")));
        $this->month_volume_bal->SetDBValue(trim($this->f("month_volume_bal")));
    }
//End SetValues Method

} //End ssf_flt_customers_account1DataSource Class @3-FCB6E20C

//Initialize Page @1-1B518D1C
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
$TemplateFileName = "SSFAccountBalance.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-CDCB3C98
include("./SSFAccountBalance_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-EFF93BB2
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
$ssf_flt_customers_account1 = new clsReportssf_flt_customers_account1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_customers_account = & $ssf_flt_customers_account;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_flt_customers_account1 = & $ssf_flt_customers_account1;
$ssf_flt_customers_account1->Initialize();

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

//Go to destination page @1-C31B92FA
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_customers_account);
    unset($ssf_flt_customers_account1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C916F6B5
$SSFSpiritHeader->Show();
$ssf_flt_customers_account->Show();
$btnPrint->Show();
$ssf_flt_customers_account1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BEC49744
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_customers_account);
unset($ssf_flt_customers_account1);
unset($Tpl);
//End Unload Page


?>
