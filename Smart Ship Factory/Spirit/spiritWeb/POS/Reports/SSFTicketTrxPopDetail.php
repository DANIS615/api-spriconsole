<?php
//Include Common Files @1-1191E8B2
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketTrxPopDetail.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//ssf_tkt_trx_header ReportGroup class @3-C6D05588
class clsReportGroupssf_tkt_trx_header {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $ImageLink1, $_ImageLink1Page, $_ImageLink1Parameters, $_ImageLink1Attributes;
    public $tkt_trans_id, $_tkt_trans_idAttributes;
    public $tkt_pos_id, $_tkt_pos_idAttributes;
    public $tkt_customer_id, $_tkt_customer_idAttributes;
    public $tkt_type, $_tkt_typeAttributes;
    public $tkt_receipt_type, $_tkt_receipt_typeAttributes;
    public $tkt_receipt_group, $_tkt_receipt_groupAttributes;
    public $tkt_receipt_number, $_tkt_receipt_numberAttributes;
    public $tkt_shift_id, $_tkt_shift_idAttributes;
    public $tkt_customer_name, $_tkt_customer_nameAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_date, $_tkt_dateAttributes;
    public $tkt_customer_address, $_tkt_customer_addressAttributes;
    public $tkt_tax_amount, $_tkt_tax_amountAttributes;
    public $tkt_time, $_tkt_timeAttributes;
    public $tkt_customer_tax_id, $_tkt_customer_tax_idAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $tkt_change_tender, $_tkt_change_tenderAttributes;
    public $tkt_change_amount, $_tkt_change_amountAttributes;
    public $tkt_customer_tax_type, $_tkt_customer_tax_typeAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_trx_header(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->ImageLink1 = $this->Parent->ImageLink1->Value;
        $this->tkt_trans_id = $this->Parent->tkt_trans_id->Value;
        $this->tkt_pos_id = $this->Parent->tkt_pos_id->Value;
        $this->tkt_customer_id = $this->Parent->tkt_customer_id->Value;
        $this->tkt_type = $this->Parent->tkt_type->Value;
        $this->tkt_receipt_type = $this->Parent->tkt_receipt_type->Value;
        $this->tkt_receipt_group = $this->Parent->tkt_receipt_group->Value;
        $this->tkt_receipt_number = $this->Parent->tkt_receipt_number->Value;
        $this->tkt_shift_id = $this->Parent->tkt_shift_id->Value;
        $this->tkt_customer_name = $this->Parent->tkt_customer_name->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_date = $this->Parent->tkt_date->Value;
        $this->tkt_customer_address = $this->Parent->tkt_customer_address->Value;
        $this->tkt_tax_amount = $this->Parent->tkt_tax_amount->Value;
        $this->tkt_time = $this->Parent->tkt_time->Value;
        $this->tkt_customer_tax_id = $this->Parent->tkt_customer_tax_id->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
        $this->tkt_change_tender = $this->Parent->tkt_change_tender->Value;
        $this->tkt_change_amount = $this->Parent->tkt_change_amount->Value;
        $this->tkt_customer_tax_type = $this->Parent->tkt_customer_tax_type->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_ImageLink1Page = $this->Parent->ImageLink1->Page;
        $this->_ImageLink1Parameters = $this->Parent->ImageLink1->Parameters;
        $this->_ImageLink1Attributes = $this->Parent->ImageLink1->Attributes->GetAsArray();
        $this->_tkt_trans_idAttributes = $this->Parent->tkt_trans_id->Attributes->GetAsArray();
        $this->_tkt_pos_idAttributes = $this->Parent->tkt_pos_id->Attributes->GetAsArray();
        $this->_tkt_customer_idAttributes = $this->Parent->tkt_customer_id->Attributes->GetAsArray();
        $this->_tkt_typeAttributes = $this->Parent->tkt_type->Attributes->GetAsArray();
        $this->_tkt_receipt_typeAttributes = $this->Parent->tkt_receipt_type->Attributes->GetAsArray();
        $this->_tkt_receipt_groupAttributes = $this->Parent->tkt_receipt_group->Attributes->GetAsArray();
        $this->_tkt_receipt_numberAttributes = $this->Parent->tkt_receipt_number->Attributes->GetAsArray();
        $this->_tkt_shift_idAttributes = $this->Parent->tkt_shift_id->Attributes->GetAsArray();
        $this->_tkt_customer_nameAttributes = $this->Parent->tkt_customer_name->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_dateAttributes = $this->Parent->tkt_date->Attributes->GetAsArray();
        $this->_tkt_customer_addressAttributes = $this->Parent->tkt_customer_address->Attributes->GetAsArray();
        $this->_tkt_tax_amountAttributes = $this->Parent->tkt_tax_amount->Attributes->GetAsArray();
        $this->_tkt_timeAttributes = $this->Parent->tkt_time->Attributes->GetAsArray();
        $this->_tkt_customer_tax_idAttributes = $this->Parent->tkt_customer_tax_id->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_change_tenderAttributes = $this->Parent->tkt_change_tender->Attributes->GetAsArray();
        $this->_tkt_change_amountAttributes = $this->Parent->tkt_change_amount->Attributes->GetAsArray();
        $this->_tkt_customer_tax_typeAttributes = $this->Parent->tkt_customer_tax_type->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->ImageLink1 = $Header->ImageLink1;
        $this->_ImageLink1Page = $Header->_ImageLink1Page;
        $this->_ImageLink1Parameters = $Header->_ImageLink1Parameters;
        $Header->_ImageLink1Attributes = $this->_ImageLink1Attributes;
        $this->Parent->ImageLink1->Value = $Header->ImageLink1;
        $this->Parent->ImageLink1->Attributes->RestoreFromArray($Header->_ImageLink1Attributes);
        $this->tkt_trans_id = $Header->tkt_trans_id;
        $Header->_tkt_trans_idAttributes = $this->_tkt_trans_idAttributes;
        $this->Parent->tkt_trans_id->Value = $Header->tkt_trans_id;
        $this->Parent->tkt_trans_id->Attributes->RestoreFromArray($Header->_tkt_trans_idAttributes);
        $this->tkt_pos_id = $Header->tkt_pos_id;
        $Header->_tkt_pos_idAttributes = $this->_tkt_pos_idAttributes;
        $this->Parent->tkt_pos_id->Value = $Header->tkt_pos_id;
        $this->Parent->tkt_pos_id->Attributes->RestoreFromArray($Header->_tkt_pos_idAttributes);
        $this->tkt_customer_id = $Header->tkt_customer_id;
        $Header->_tkt_customer_idAttributes = $this->_tkt_customer_idAttributes;
        $this->Parent->tkt_customer_id->Value = $Header->tkt_customer_id;
        $this->Parent->tkt_customer_id->Attributes->RestoreFromArray($Header->_tkt_customer_idAttributes);
        $this->tkt_type = $Header->tkt_type;
        $Header->_tkt_typeAttributes = $this->_tkt_typeAttributes;
        $this->Parent->tkt_type->Value = $Header->tkt_type;
        $this->Parent->tkt_type->Attributes->RestoreFromArray($Header->_tkt_typeAttributes);
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
        $this->tkt_shift_id = $Header->tkt_shift_id;
        $Header->_tkt_shift_idAttributes = $this->_tkt_shift_idAttributes;
        $this->Parent->tkt_shift_id->Value = $Header->tkt_shift_id;
        $this->Parent->tkt_shift_id->Attributes->RestoreFromArray($Header->_tkt_shift_idAttributes);
        $this->tkt_customer_name = $Header->tkt_customer_name;
        $Header->_tkt_customer_nameAttributes = $this->_tkt_customer_nameAttributes;
        $this->Parent->tkt_customer_name->Value = $Header->tkt_customer_name;
        $this->Parent->tkt_customer_name->Attributes->RestoreFromArray($Header->_tkt_customer_nameAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_date = $Header->tkt_date;
        $Header->_tkt_dateAttributes = $this->_tkt_dateAttributes;
        $this->Parent->tkt_date->Value = $Header->tkt_date;
        $this->Parent->tkt_date->Attributes->RestoreFromArray($Header->_tkt_dateAttributes);
        $this->tkt_customer_address = $Header->tkt_customer_address;
        $Header->_tkt_customer_addressAttributes = $this->_tkt_customer_addressAttributes;
        $this->Parent->tkt_customer_address->Value = $Header->tkt_customer_address;
        $this->Parent->tkt_customer_address->Attributes->RestoreFromArray($Header->_tkt_customer_addressAttributes);
        $this->tkt_tax_amount = $Header->tkt_tax_amount;
        $Header->_tkt_tax_amountAttributes = $this->_tkt_tax_amountAttributes;
        $this->Parent->tkt_tax_amount->Value = $Header->tkt_tax_amount;
        $this->Parent->tkt_tax_amount->Attributes->RestoreFromArray($Header->_tkt_tax_amountAttributes);
        $this->tkt_time = $Header->tkt_time;
        $Header->_tkt_timeAttributes = $this->_tkt_timeAttributes;
        $this->Parent->tkt_time->Value = $Header->tkt_time;
        $this->Parent->tkt_time->Attributes->RestoreFromArray($Header->_tkt_timeAttributes);
        $this->tkt_customer_tax_id = $Header->tkt_customer_tax_id;
        $Header->_tkt_customer_tax_idAttributes = $this->_tkt_customer_tax_idAttributes;
        $this->Parent->tkt_customer_tax_id->Value = $Header->tkt_customer_tax_id;
        $this->Parent->tkt_customer_tax_id->Attributes->RestoreFromArray($Header->_tkt_customer_tax_idAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
        $this->tkt_change_tender = $Header->tkt_change_tender;
        $Header->_tkt_change_tenderAttributes = $this->_tkt_change_tenderAttributes;
        $this->Parent->tkt_change_tender->Value = $Header->tkt_change_tender;
        $this->Parent->tkt_change_tender->Attributes->RestoreFromArray($Header->_tkt_change_tenderAttributes);
        $this->tkt_change_amount = $Header->tkt_change_amount;
        $Header->_tkt_change_amountAttributes = $this->_tkt_change_amountAttributes;
        $this->Parent->tkt_change_amount->Value = $Header->tkt_change_amount;
        $this->Parent->tkt_change_amount->Attributes->RestoreFromArray($Header->_tkt_change_amountAttributes);
        $this->tkt_customer_tax_type = $Header->tkt_customer_tax_type;
        $Header->_tkt_customer_tax_typeAttributes = $this->_tkt_customer_tax_typeAttributes;
        $this->Parent->tkt_customer_tax_type->Value = $Header->tkt_customer_tax_type;
        $this->Parent->tkt_customer_tax_type->Attributes->RestoreFromArray($Header->_tkt_customer_tax_typeAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_trx_header ReportGroup class

//ssf_tkt_trx_header GroupsCollection class @3-BD96BA86
class clsGroupsCollectionssf_tkt_trx_header {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_trx_header(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_trx_header($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->ImageLink1->Value = $this->Parent->ImageLink1->initialValue;
        $this->Parent->tkt_trans_id->Value = $this->Parent->tkt_trans_id->initialValue;
        $this->Parent->tkt_pos_id->Value = $this->Parent->tkt_pos_id->initialValue;
        $this->Parent->tkt_customer_id->Value = $this->Parent->tkt_customer_id->initialValue;
        $this->Parent->tkt_type->Value = $this->Parent->tkt_type->initialValue;
        $this->Parent->tkt_receipt_type->Value = $this->Parent->tkt_receipt_type->initialValue;
        $this->Parent->tkt_receipt_group->Value = $this->Parent->tkt_receipt_group->initialValue;
        $this->Parent->tkt_receipt_number->Value = $this->Parent->tkt_receipt_number->initialValue;
        $this->Parent->tkt_shift_id->Value = $this->Parent->tkt_shift_id->initialValue;
        $this->Parent->tkt_customer_name->Value = $this->Parent->tkt_customer_name->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_date->Value = $this->Parent->tkt_date->initialValue;
        $this->Parent->tkt_customer_address->Value = $this->Parent->tkt_customer_address->initialValue;
        $this->Parent->tkt_tax_amount->Value = $this->Parent->tkt_tax_amount->initialValue;
        $this->Parent->tkt_time->Value = $this->Parent->tkt_time->initialValue;
        $this->Parent->tkt_customer_tax_id->Value = $this->Parent->tkt_customer_tax_id->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->tkt_change_tender->Value = $this->Parent->tkt_change_tender->initialValue;
        $this->Parent->tkt_change_amount->Value = $this->Parent->tkt_change_amount->initialValue;
        $this->Parent->tkt_customer_tax_type->Value = $this->Parent->tkt_customer_tax_type->initialValue;
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
//End ssf_tkt_trx_header GroupsCollection class

class clsReportssf_tkt_trx_header { //ssf_tkt_trx_header Class @3-62981CBD

//ssf_tkt_trx_header Variables @3-C68819AF

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
//End ssf_tkt_trx_header Variables

//Class_Initialize Event @3-8FD6C54C
    function clsReportssf_tkt_trx_header($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_header";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 21;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Report_Footer = new clsSection($this);
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_trx_headerDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
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

        $this->ImageLink1 = new clsControl(ccsImageLink, "ImageLink1", "ImageLink1", ccsText, "", CCGetRequestParam("ImageLink1", ccsGet, NULL), $this);
        $this->ImageLink1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
        $this->ImageLink1->Page = "";
        $this->tkt_trans_id = new clsControl(ccsReportLabel, "tkt_trans_id", "tkt_trans_id", ccsInteger, "", "", $this);
        $this->tkt_trans_id->HTML = true;
        $this->tkt_trans_id->EmptyText = "&nbsp;";
        $this->tkt_pos_id = new clsControl(ccsReportLabel, "tkt_pos_id", "tkt_pos_id", ccsInteger, "", "", $this);
        $this->tkt_pos_id->HTML = true;
        $this->tkt_pos_id->EmptyText = "&nbsp;";
        $this->tkt_customer_id = new clsControl(ccsReportLabel, "tkt_customer_id", "tkt_customer_id", ccsText, "", "", $this);
        $this->tkt_customer_id->HTML = true;
        $this->tkt_customer_id->EmptyText = "&nbsp;";
        $this->tkt_type = new clsControl(ccsReportLabel, "tkt_type", "tkt_type", ccsText, "", "", $this);
        $this->tkt_type->HTML = true;
        $this->tkt_type->EmptyText = "&nbsp;";
        $this->tkt_receipt_type = new clsControl(ccsReportLabel, "tkt_receipt_type", "tkt_receipt_type", ccsText, "", "", $this);
        $this->tkt_receipt_type->HTML = true;
        $this->tkt_receipt_type->EmptyText = "&nbsp;";
        $this->tkt_receipt_group = new clsControl(ccsReportLabel, "tkt_receipt_group", "tkt_receipt_group", ccsText, "", "", $this);
        $this->tkt_receipt_group->HTML = true;
        $this->tkt_receipt_group->EmptyText = "&nbsp;";
        $this->tkt_receipt_number = new clsControl(ccsReportLabel, "tkt_receipt_number", "tkt_receipt_number", ccsInteger, "", "", $this);
        $this->tkt_receipt_number->HTML = true;
        $this->tkt_receipt_number->EmptyText = "&nbsp;";
        $this->tkt_shift_id = new clsControl(ccsReportLabel, "tkt_shift_id", "tkt_shift_id", ccsInteger, "", "", $this);
        $this->tkt_shift_id->HTML = true;
        $this->tkt_shift_id->EmptyText = "&nbsp;";
        $this->tkt_customer_name = new clsControl(ccsReportLabel, "tkt_customer_name", "tkt_customer_name", ccsText, "", "", $this);
        $this->tkt_customer_name->HTML = true;
        $this->tkt_customer_name->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_date = new clsControl(ccsReportLabel, "tkt_date", "tkt_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_date->HTML = true;
        $this->tkt_date->EmptyText = "&nbsp;";
        $this->tkt_customer_address = new clsControl(ccsReportLabel, "tkt_customer_address", "tkt_customer_address", ccsText, "", "", $this);
        $this->tkt_customer_address->HTML = true;
        $this->tkt_customer_address->EmptyText = "&nbsp;";
        $this->tkt_tax_amount = new clsControl(ccsReportLabel, "tkt_tax_amount", "tkt_tax_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tax_amount->HTML = true;
        $this->tkt_tax_amount->EmptyText = "&nbsp;";
        $this->tkt_time = new clsControl(ccsReportLabel, "tkt_time", "tkt_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->tkt_time->HTML = true;
        $this->tkt_time->EmptyText = "&nbsp;";
        $this->tkt_customer_tax_id = new clsControl(ccsReportLabel, "tkt_customer_tax_id", "tkt_customer_tax_id", ccsText, "", "", $this);
        $this->tkt_customer_tax_id->HTML = true;
        $this->tkt_customer_tax_id->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->tkt_change_tender = new clsControl(ccsReportLabel, "tkt_change_tender", "tkt_change_tender", ccsText, "", "", $this);
        $this->tkt_change_tender->HTML = true;
        $this->tkt_change_tender->EmptyText = "&nbsp;";
        $this->tkt_change_amount = new clsControl(ccsReportLabel, "tkt_change_amount", "tkt_change_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_change_amount->HTML = true;
        $this->tkt_change_amount->EmptyText = "&nbsp;";
        $this->tkt_customer_tax_type = new clsControl(ccsReportLabel, "tkt_customer_tax_type", "tkt_customer_tax_type", ccsText, "", "", $this);
        $this->tkt_customer_tax_type->HTML = true;
        $this->tkt_customer_tax_type->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
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

//CheckErrors Method @3-A2F814BA
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->ImageLink1->Errors->Count());
        $errors = ($errors || $this->tkt_trans_id->Errors->Count());
        $errors = ($errors || $this->tkt_pos_id->Errors->Count());
        $errors = ($errors || $this->tkt_customer_id->Errors->Count());
        $errors = ($errors || $this->tkt_type->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_group->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_number->Errors->Count());
        $errors = ($errors || $this->tkt_shift_id->Errors->Count());
        $errors = ($errors || $this->tkt_customer_name->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_date->Errors->Count());
        $errors = ($errors || $this->tkt_customer_address->Errors->Count());
        $errors = ($errors || $this->tkt_tax_amount->Errors->Count());
        $errors = ($errors || $this->tkt_time->Errors->Count());
        $errors = ($errors || $this->tkt_customer_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->tkt_change_tender->Errors->Count());
        $errors = ($errors || $this->tkt_change_amount->Errors->Count());
        $errors = ($errors || $this->tkt_customer_tax_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-065D9616
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->ImageLink1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_trans_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_pos_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_shift_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_address->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_change_tender->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_change_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_customer_tax_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-5A20FCE5
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urltkt_trans_id"] = CCGetFromGet("tkt_trans_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_trx_header($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_trans_id->SetValue($this->DataSource->tkt_trans_id->GetValue());
            $this->tkt_pos_id->SetValue($this->DataSource->tkt_pos_id->GetValue());
            $this->tkt_customer_id->SetValue($this->DataSource->tkt_customer_id->GetValue());
            $this->tkt_type->SetValue($this->DataSource->tkt_type->GetValue());
            $this->tkt_receipt_type->SetValue($this->DataSource->tkt_receipt_type->GetValue());
            $this->tkt_receipt_group->SetValue($this->DataSource->tkt_receipt_group->GetValue());
            $this->tkt_receipt_number->SetValue($this->DataSource->tkt_receipt_number->GetValue());
            $this->tkt_shift_id->SetValue($this->DataSource->tkt_shift_id->GetValue());
            $this->tkt_customer_name->SetValue($this->DataSource->tkt_customer_name->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
            $this->tkt_customer_address->SetValue($this->DataSource->tkt_customer_address->GetValue());
            $this->tkt_tax_amount->SetValue($this->DataSource->tkt_tax_amount->GetValue());
            $this->tkt_time->SetValue($this->DataSource->tkt_time->GetValue());
            $this->tkt_customer_tax_id->SetValue($this->DataSource->tkt_customer_tax_id->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->tkt_change_tender->SetValue($this->DataSource->tkt_change_tender->GetValue());
            $this->tkt_change_amount->SetValue($this->DataSource->tkt_change_amount->GetValue());
            $this->tkt_customer_tax_type->SetValue($this->DataSource->tkt_customer_tax_type->GetValue());
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
            $this->ControlsVisible["tkt_trans_id"] = $this->tkt_trans_id->Visible;
            $this->ControlsVisible["tkt_pos_id"] = $this->tkt_pos_id->Visible;
            $this->ControlsVisible["tkt_customer_id"] = $this->tkt_customer_id->Visible;
            $this->ControlsVisible["tkt_type"] = $this->tkt_type->Visible;
            $this->ControlsVisible["tkt_receipt_type"] = $this->tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_receipt_group"] = $this->tkt_receipt_group->Visible;
            $this->ControlsVisible["tkt_receipt_number"] = $this->tkt_receipt_number->Visible;
            $this->ControlsVisible["tkt_shift_id"] = $this->tkt_shift_id->Visible;
            $this->ControlsVisible["tkt_customer_name"] = $this->tkt_customer_name->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["tkt_customer_address"] = $this->tkt_customer_address->Visible;
            $this->ControlsVisible["tkt_tax_amount"] = $this->tkt_tax_amount->Visible;
            $this->ControlsVisible["tkt_time"] = $this->tkt_time->Visible;
            $this->ControlsVisible["tkt_customer_tax_id"] = $this->tkt_customer_tax_id->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["tkt_change_tender"] = $this->tkt_change_tender->Visible;
            $this->ControlsVisible["tkt_change_amount"] = $this->tkt_change_amount->Visible;
            $this->ControlsVisible["tkt_customer_tax_type"] = $this->tkt_customer_tax_type->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_trans_id->SetValue($items[$i]->tkt_trans_id);
                        $this->tkt_trans_id->Attributes->RestoreFromArray($items[$i]->_tkt_trans_idAttributes);
                        $this->tkt_pos_id->SetValue($items[$i]->tkt_pos_id);
                        $this->tkt_pos_id->Attributes->RestoreFromArray($items[$i]->_tkt_pos_idAttributes);
                        $this->tkt_customer_id->SetValue($items[$i]->tkt_customer_id);
                        $this->tkt_customer_id->Attributes->RestoreFromArray($items[$i]->_tkt_customer_idAttributes);
                        $this->tkt_type->SetValue($items[$i]->tkt_type);
                        $this->tkt_type->Attributes->RestoreFromArray($items[$i]->_tkt_typeAttributes);
                        $this->tkt_receipt_type->SetValue($items[$i]->tkt_receipt_type);
                        $this->tkt_receipt_type->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_typeAttributes);
                        $this->tkt_receipt_group->SetValue($items[$i]->tkt_receipt_group);
                        $this->tkt_receipt_group->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_groupAttributes);
                        $this->tkt_receipt_number->SetValue($items[$i]->tkt_receipt_number);
                        $this->tkt_receipt_number->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_numberAttributes);
                        $this->tkt_shift_id->SetValue($items[$i]->tkt_shift_id);
                        $this->tkt_shift_id->Attributes->RestoreFromArray($items[$i]->_tkt_shift_idAttributes);
                        $this->tkt_customer_name->SetValue($items[$i]->tkt_customer_name);
                        $this->tkt_customer_name->Attributes->RestoreFromArray($items[$i]->_tkt_customer_nameAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_date->SetValue($items[$i]->tkt_date);
                        $this->tkt_date->Attributes->RestoreFromArray($items[$i]->_tkt_dateAttributes);
                        $this->tkt_customer_address->SetValue($items[$i]->tkt_customer_address);
                        $this->tkt_customer_address->Attributes->RestoreFromArray($items[$i]->_tkt_customer_addressAttributes);
                        $this->tkt_tax_amount->SetValue($items[$i]->tkt_tax_amount);
                        $this->tkt_tax_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tax_amountAttributes);
                        $this->tkt_time->SetValue($items[$i]->tkt_time);
                        $this->tkt_time->Attributes->RestoreFromArray($items[$i]->_tkt_timeAttributes);
                        $this->tkt_customer_tax_id->SetValue($items[$i]->tkt_customer_tax_id);
                        $this->tkt_customer_tax_id->Attributes->RestoreFromArray($items[$i]->_tkt_customer_tax_idAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->tkt_change_tender->SetValue($items[$i]->tkt_change_tender);
                        $this->tkt_change_tender->Attributes->RestoreFromArray($items[$i]->_tkt_change_tenderAttributes);
                        $this->tkt_change_amount->SetValue($items[$i]->tkt_change_amount);
                        $this->tkt_change_amount->Attributes->RestoreFromArray($items[$i]->_tkt_change_amountAttributes);
                        $this->tkt_customer_tax_type->SetValue($items[$i]->tkt_customer_tax_type);
                        $this->tkt_customer_tax_type->Attributes->RestoreFromArray($items[$i]->_tkt_customer_tax_typeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_trans_id->Show();
                        $this->tkt_pos_id->Show();
                        $this->tkt_customer_id->Show();
                        $this->tkt_type->Show();
                        $this->tkt_receipt_type->Show();
                        $this->tkt_receipt_group->Show();
                        $this->tkt_receipt_number->Show();
                        $this->tkt_shift_id->Show();
                        $this->tkt_customer_name->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_date->Show();
                        $this->tkt_customer_address->Show();
                        $this->tkt_tax_amount->Show();
                        $this->tkt_time->Show();
                        $this->tkt_customer_tax_id->Show();
                        $this->tkt_total_amount->Show();
                        $this->tkt_change_tender->Show();
                        $this->tkt_change_amount->Show();
                        $this->tkt_customer_tax_type->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
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
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
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

} //End ssf_tkt_trx_header Class @3-FCB6E20C

class clsssf_tkt_trx_headerDataSource extends clsDBConnection1 {  //ssf_tkt_trx_headerDataSource Class @3-F9A23E5F

//DataSource Variables @3-FA989E68
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_trans_id;
    public $tkt_pos_id;
    public $tkt_customer_id;
    public $tkt_type;
    public $tkt_receipt_type;
    public $tkt_receipt_group;
    public $tkt_receipt_number;
    public $tkt_shift_id;
    public $tkt_customer_name;
    public $tkt_net_amount;
    public $tkt_date;
    public $tkt_customer_address;
    public $tkt_tax_amount;
    public $tkt_time;
    public $tkt_customer_tax_id;
    public $tkt_total_amount;
    public $tkt_change_tender;
    public $tkt_change_amount;
    public $tkt_customer_tax_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-62EB5697
    function clsssf_tkt_trx_headerDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_trx_header";
        $this->Initialize();
        $this->tkt_trans_id = new clsField("tkt_trans_id", ccsInteger, "");
        $this->tkt_pos_id = new clsField("tkt_pos_id", ccsInteger, "");
        $this->tkt_customer_id = new clsField("tkt_customer_id", ccsText, "");
        $this->tkt_type = new clsField("tkt_type", ccsText, "");
        $this->tkt_receipt_type = new clsField("tkt_receipt_type", ccsText, "");
        $this->tkt_receipt_group = new clsField("tkt_receipt_group", ccsText, "");
        $this->tkt_receipt_number = new clsField("tkt_receipt_number", ccsInteger, "");
        $this->tkt_shift_id = new clsField("tkt_shift_id", ccsInteger, "");
        $this->tkt_customer_name = new clsField("tkt_customer_name", ccsText, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_date = new clsField("tkt_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_customer_address = new clsField("tkt_customer_address", ccsText, "");
        $this->tkt_tax_amount = new clsField("tkt_tax_amount", ccsFloat, "");
        $this->tkt_time = new clsField("tkt_time", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_customer_tax_id = new clsField("tkt_customer_tax_id", ccsText, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->tkt_change_tender = new clsField("tkt_change_tender", ccsText, "");
        $this->tkt_change_amount = new clsField("tkt_change_amount", ccsFloat, "");
        $this->tkt_customer_tax_type = new clsField("tkt_customer_tax_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @3-5D833501
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_trans_id", ccsInteger, "", "", $this->Parameters["urltkt_trans_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_trans_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-D66AEE7A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_trx_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-BE3163DC
    function SetValues()
    {
        $this->tkt_trans_id->SetDBValue(trim($this->f("tkt_trans_id")));
        $this->tkt_pos_id->SetDBValue(trim($this->f("tkt_pos_id")));
        $this->tkt_customer_id->SetDBValue($this->f("tkt_customer_id"));
        $this->tkt_type->SetDBValue($this->f("tkt_type"));
        $this->tkt_receipt_type->SetDBValue($this->f("tkt_receipt_type"));
        $this->tkt_receipt_group->SetDBValue($this->f("tkt_receipt_group"));
        $this->tkt_receipt_number->SetDBValue(trim($this->f("tkt_receipt_number")));
        $this->tkt_shift_id->SetDBValue(trim($this->f("tkt_shift_id")));
        $this->tkt_customer_name->SetDBValue($this->f("tkt_customer_name"));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_date->SetDBValue(trim($this->f("tkt_date")));
        $this->tkt_customer_address->SetDBValue($this->f("tkt_customer_address"));
        $this->tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->tkt_time->SetDBValue(trim($this->f("tkt_time")));
        $this->tkt_customer_tax_id->SetDBValue($this->f("tkt_customer_tax_id"));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->tkt_change_tender->SetDBValue($this->f("tkt_change_tender"));
        $this->tkt_change_amount->SetDBValue(trim($this->f("tkt_change_amount")));
        $this->tkt_customer_tax_type->SetDBValue($this->f("tkt_customer_tax_type"));
    }
//End SetValues Method

} //End ssf_tkt_trx_headerDataSource Class @3-FCB6E20C

//ssf_tkt_trx_detail_ssf_tk ReportGroup class @34-53B09C53
class clsReportGroupssf_tkt_trx_detail_ssf_tk {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_short_desc, $_tkt_plu_short_descAttributes;
    public $tkt_ppu, $_tkt_ppuAttributes;
    public $tkt_qty, $_tkt_qtyAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $tkt_spirit_sale_id, $_tkt_spirit_sale_idPage, $_tkt_spirit_sale_idParameters, $_tkt_spirit_sale_idAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_trx_detail_ssf_tk(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_plu_id = $this->Parent->tkt_plu_id->Value;
        $this->tkt_plu_short_desc = $this->Parent->tkt_plu_short_desc->Value;
        $this->tkt_ppu = $this->Parent->tkt_ppu->Value;
        $this->tkt_qty = $this->Parent->tkt_qty->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
        $this->tkt_spirit_sale_id = $this->Parent->tkt_spirit_sale_id->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_tkt_spirit_sale_idPage = $this->Parent->tkt_spirit_sale_id->Page;
        $this->_tkt_spirit_sale_idParameters = $this->Parent->tkt_spirit_sale_id->Parameters;
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_short_descAttributes = $this->Parent->tkt_plu_short_desc->Attributes->GetAsArray();
        $this->_tkt_ppuAttributes = $this->Parent->tkt_ppu->Attributes->GetAsArray();
        $this->_tkt_qtyAttributes = $this->Parent->tkt_qty->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_spirit_sale_idAttributes = $this->Parent->tkt_spirit_sale_id->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_short_desc = $Header->tkt_plu_short_desc;
        $Header->_tkt_plu_short_descAttributes = $this->_tkt_plu_short_descAttributes;
        $this->Parent->tkt_plu_short_desc->Value = $Header->tkt_plu_short_desc;
        $this->Parent->tkt_plu_short_desc->Attributes->RestoreFromArray($Header->_tkt_plu_short_descAttributes);
        $this->tkt_ppu = $Header->tkt_ppu;
        $Header->_tkt_ppuAttributes = $this->_tkt_ppuAttributes;
        $this->Parent->tkt_ppu->Value = $Header->tkt_ppu;
        $this->Parent->tkt_ppu->Attributes->RestoreFromArray($Header->_tkt_ppuAttributes);
        $this->tkt_qty = $Header->tkt_qty;
        $Header->_tkt_qtyAttributes = $this->_tkt_qtyAttributes;
        $this->Parent->tkt_qty->Value = $Header->tkt_qty;
        $this->Parent->tkt_qty->Attributes->RestoreFromArray($Header->_tkt_qtyAttributes);
        $this->tkt_net_amount = $Header->tkt_net_amount;
        $Header->_tkt_net_amountAttributes = $this->_tkt_net_amountAttributes;
        $this->Parent->tkt_net_amount->Value = $Header->tkt_net_amount;
        $this->Parent->tkt_net_amount->Attributes->RestoreFromArray($Header->_tkt_net_amountAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
        $this->tkt_spirit_sale_id = $Header->tkt_spirit_sale_id;
        $this->_tkt_spirit_sale_idPage = $Header->_tkt_spirit_sale_idPage;
        $this->_tkt_spirit_sale_idParameters = $Header->_tkt_spirit_sale_idParameters;
        $Header->_tkt_spirit_sale_idAttributes = $this->_tkt_spirit_sale_idAttributes;
        $this->Parent->tkt_spirit_sale_id->Value = $Header->tkt_spirit_sale_id;
        $this->Parent->tkt_spirit_sale_id->Attributes->RestoreFromArray($Header->_tkt_spirit_sale_idAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_trx_detail_ssf_tk ReportGroup class

//ssf_tkt_trx_detail_ssf_tk GroupsCollection class @34-A112ADEF
class clsGroupsCollectionssf_tkt_trx_detail_ssf_tk {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_trx_detail_ssf_tk(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_trx_detail_ssf_tk($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_plu_id->Value = $this->Parent->tkt_plu_id->initialValue;
        $this->Parent->tkt_plu_short_desc->Value = $this->Parent->tkt_plu_short_desc->initialValue;
        $this->Parent->tkt_ppu->Value = $this->Parent->tkt_ppu->initialValue;
        $this->Parent->tkt_qty->Value = $this->Parent->tkt_qty->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->tkt_spirit_sale_id->Value = $this->Parent->tkt_spirit_sale_id->initialValue;
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
//End ssf_tkt_trx_detail_ssf_tk GroupsCollection class

class clsReportssf_tkt_trx_detail_ssf_tk { //ssf_tkt_trx_detail_ssf_tk Class @34-D3942071

//ssf_tkt_trx_detail_ssf_tk Variables @34-C68819AF

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
//End ssf_tkt_trx_detail_ssf_tk Variables

//Class_Initialize Event @34-00750B26
    function clsReportssf_tkt_trx_detail_ssf_tk($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_detail_ssf_tk";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_trx_detail_ssf_tkDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
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

        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsText, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_short_desc = new clsControl(ccsReportLabel, "tkt_plu_short_desc", "tkt_plu_short_desc", ccsText, "", "", $this);
        $this->tkt_plu_short_desc->HTML = true;
        $this->tkt_plu_short_desc->EmptyText = "&nbsp;";
        $this->tkt_ppu = new clsControl(ccsReportLabel, "tkt_ppu", "tkt_ppu", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_ppu->HTML = true;
        $this->tkt_ppu->EmptyText = "&nbsp;";
        $this->tkt_qty = new clsControl(ccsReportLabel, "tkt_qty", "tkt_qty", ccsFloat, "", "", $this);
        $this->tkt_qty->HTML = true;
        $this->tkt_qty->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->tkt_spirit_sale_id = new clsControl(ccsLink, "tkt_spirit_sale_id", "tkt_spirit_sale_id", ccsText, "", CCGetRequestParam("tkt_spirit_sale_id", ccsGet, NULL), $this);
        $this->tkt_spirit_sale_id->Page = "../../Reports/SSFTransactionsReport.php";
        $this->NoRecords = new clsPanel("NoRecords", $this);
    }
//End Class_Initialize Event

//Initialize Method @34-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @34-6E5385E8
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_short_desc->Errors->Count());
        $errors = ($errors || $this->tkt_ppu->Errors->Count());
        $errors = ($errors || $this->tkt_qty->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->tkt_spirit_sale_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @34-1D08F46A
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_short_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_spirit_sale_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @34-7DBED10F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urltkt_trans_id"] = CCGetFromGet("tkt_trans_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_trx_detail_ssf_tk($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
            $this->tkt_plu_short_desc->SetValue($this->DataSource->tkt_plu_short_desc->GetValue());
            $this->tkt_ppu->SetValue($this->DataSource->tkt_ppu->GetValue());
            $this->tkt_qty->SetValue($this->DataSource->tkt_qty->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->tkt_spirit_sale_id->SetValue($this->DataSource->tkt_spirit_sale_id->GetValue());
            $this->tkt_spirit_sale_id->Parameters = "";
            $this->tkt_spirit_sale_id->Parameters = CCAddParam($this->tkt_spirit_sale_id->Parameters, "p_sale_start", $this->DataSource->f("tkt_spirit_sale_id"));
            $this->tkt_spirit_sale_id->Parameters = CCAddParam($this->tkt_spirit_sale_id->Parameters, "p_sale_end", $this->DataSource->f("tkt_spirit_sale_id"));
            $this->tkt_spirit_sale_id->Parameters = CCAddParam($this->tkt_spirit_sale_id->Parameters, "noheader", 1);
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
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_short_desc"] = $this->tkt_plu_short_desc->Visible;
            $this->ControlsVisible["tkt_ppu"] = $this->tkt_ppu->Visible;
            $this->ControlsVisible["tkt_qty"] = $this->tkt_qty->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["tkt_spirit_sale_id"] = $this->tkt_spirit_sale_id->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_plu_id->SetValue($items[$i]->tkt_plu_id);
                        $this->tkt_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_plu_idAttributes);
                        $this->tkt_plu_short_desc->SetValue($items[$i]->tkt_plu_short_desc);
                        $this->tkt_plu_short_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_short_descAttributes);
                        $this->tkt_ppu->SetValue($items[$i]->tkt_ppu);
                        $this->tkt_ppu->Attributes->RestoreFromArray($items[$i]->_tkt_ppuAttributes);
                        $this->tkt_qty->SetValue($items[$i]->tkt_qty);
                        $this->tkt_qty->Attributes->RestoreFromArray($items[$i]->_tkt_qtyAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->tkt_spirit_sale_id->SetValue($items[$i]->tkt_spirit_sale_id);
                        $this->tkt_spirit_sale_id->Page = $items[$i]->_tkt_spirit_sale_idPage;
                        $this->tkt_spirit_sale_id->Parameters = $items[$i]->_tkt_spirit_sale_idParameters;
                        $this->tkt_spirit_sale_id->Attributes->RestoreFromArray($items[$i]->_tkt_spirit_sale_idAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_short_desc->Show();
                        $this->tkt_ppu->Show();
                        $this->tkt_qty->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_total_amount->Show();
                        $this->tkt_spirit_sale_id->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
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
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
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

} //End ssf_tkt_trx_detail_ssf_tk Class @34-FCB6E20C

class clsssf_tkt_trx_detail_ssf_tkDataSource extends clsDBConnection1 {  //ssf_tkt_trx_detail_ssf_tkDataSource Class @34-C59DD703

//DataSource Variables @34-4ED7F43B
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_short_desc;
    public $tkt_ppu;
    public $tkt_qty;
    public $tkt_net_amount;
    public $tkt_total_amount;
    public $tkt_spirit_sale_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @34-493FCC5D
    function clsssf_tkt_trx_detail_ssf_tkDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_trx_detail_ssf_tk";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_plu_short_desc = new clsField("tkt_plu_short_desc", ccsText, "");
        $this->tkt_ppu = new clsField("tkt_ppu", ccsFloat, "");
        $this->tkt_qty = new clsField("tkt_qty", ccsFloat, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->tkt_spirit_sale_id = new clsField("tkt_spirit_sale_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @34-A6F46D33
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_line_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @34-C55094CA
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_trans_id", ccsInteger, "", "", $this->Parameters["urltkt_trans_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_trx_detail.tkt_trans_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @34-8829CF2D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tkt_trx_detail.*, tkt_plu_short_desc \n\n" .
        "FROM ssf_tkt_trx_detail INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_trx_detail.tkt_plu_id = ssf_tkt_plu.tkt_plu_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @34-2A600862
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_short_desc->SetDBValue($this->f("tkt_plu_short_desc"));
        $this->tkt_ppu->SetDBValue(trim($this->f("tkt_ppu")));
        $this->tkt_qty->SetDBValue(trim($this->f("tkt_qty")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->tkt_spirit_sale_id->SetDBValue($this->f("tkt_spirit_sale_id"));
    }
//End SetValues Method

} //End ssf_tkt_trx_detail_ssf_tkDataSource Class @34-FCB6E20C

//ssf_tkt_trx_tax ReportGroup class @55-E96CF7B5
class clsReportGroupssf_tkt_trx_tax {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_tax_id, $_tkt_tax_idAttributes;
    public $tkt_tax_amount_incl, $_tkt_tax_amount_inclAttributes;
    public $tkt_tax_amount_extra, $_tkt_tax_amount_extraAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_trx_tax(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_tax_id = $this->Parent->tkt_tax_id->Value;
        $this->tkt_tax_amount_incl = $this->Parent->tkt_tax_amount_incl->Value;
        $this->tkt_tax_amount_extra = $this->Parent->tkt_tax_amount_extra->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_tkt_tax_idAttributes = $this->Parent->tkt_tax_id->Attributes->GetAsArray();
        $this->_tkt_tax_amount_inclAttributes = $this->Parent->tkt_tax_amount_incl->Attributes->GetAsArray();
        $this->_tkt_tax_amount_extraAttributes = $this->Parent->tkt_tax_amount_extra->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->tkt_tax_id = $Header->tkt_tax_id;
        $Header->_tkt_tax_idAttributes = $this->_tkt_tax_idAttributes;
        $this->Parent->tkt_tax_id->Value = $Header->tkt_tax_id;
        $this->Parent->tkt_tax_id->Attributes->RestoreFromArray($Header->_tkt_tax_idAttributes);
        $this->tkt_tax_amount_incl = $Header->tkt_tax_amount_incl;
        $Header->_tkt_tax_amount_inclAttributes = $this->_tkt_tax_amount_inclAttributes;
        $this->Parent->tkt_tax_amount_incl->Value = $Header->tkt_tax_amount_incl;
        $this->Parent->tkt_tax_amount_incl->Attributes->RestoreFromArray($Header->_tkt_tax_amount_inclAttributes);
        $this->tkt_tax_amount_extra = $Header->tkt_tax_amount_extra;
        $Header->_tkt_tax_amount_extraAttributes = $this->_tkt_tax_amount_extraAttributes;
        $this->Parent->tkt_tax_amount_extra->Value = $Header->tkt_tax_amount_extra;
        $this->Parent->tkt_tax_amount_extra->Attributes->RestoreFromArray($Header->_tkt_tax_amount_extraAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_trx_tax ReportGroup class

//ssf_tkt_trx_tax GroupsCollection class @55-AE0AFA6E
class clsGroupsCollectionssf_tkt_trx_tax {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_trx_tax(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_trx_tax($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_tax_id->Value = $this->Parent->tkt_tax_id->initialValue;
        $this->Parent->tkt_tax_amount_incl->Value = $this->Parent->tkt_tax_amount_incl->initialValue;
        $this->Parent->tkt_tax_amount_extra->Value = $this->Parent->tkt_tax_amount_extra->initialValue;
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
//End ssf_tkt_trx_tax GroupsCollection class

class clsReportssf_tkt_trx_tax { //ssf_tkt_trx_tax Class @55-D2D3A7E0

//ssf_tkt_trx_tax Variables @55-C68819AF

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
//End ssf_tkt_trx_tax Variables

//Class_Initialize Event @55-7144869D
    function clsReportssf_tkt_trx_tax($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_tax";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_trx_taxDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
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

        $this->tkt_tax_id = new clsControl(ccsReportLabel, "tkt_tax_id", "tkt_tax_id", ccsText, "", "", $this);
        $this->tkt_tax_id->HTML = true;
        $this->tkt_tax_id->EmptyText = "&nbsp;";
        $this->tkt_tax_amount_incl = new clsControl(ccsReportLabel, "tkt_tax_amount_incl", "tkt_tax_amount_incl", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tax_amount_incl->HTML = true;
        $this->tkt_tax_amount_incl->EmptyText = "&nbsp;";
        $this->tkt_tax_amount_extra = new clsControl(ccsReportLabel, "tkt_tax_amount_extra", "tkt_tax_amount_extra", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tax_amount_extra->HTML = true;
        $this->tkt_tax_amount_extra->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
    }
//End Class_Initialize Event

//Initialize Method @55-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @55-BE6671E2
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_tax_amount_incl->Errors->Count());
        $errors = ($errors || $this->tkt_tax_amount_extra->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @55-2118116E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount_incl->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount_extra->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @55-07672071
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urltkt_trans_id"] = CCGetFromGet("tkt_trans_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_trx_tax($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_tax_id->SetValue($this->DataSource->tkt_tax_id->GetValue());
            $this->tkt_tax_amount_incl->SetValue($this->DataSource->tkt_tax_amount_incl->GetValue());
            $this->tkt_tax_amount_extra->SetValue($this->DataSource->tkt_tax_amount_extra->GetValue());
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
            $this->ControlsVisible["tkt_tax_id"] = $this->tkt_tax_id->Visible;
            $this->ControlsVisible["tkt_tax_amount_incl"] = $this->tkt_tax_amount_incl->Visible;
            $this->ControlsVisible["tkt_tax_amount_extra"] = $this->tkt_tax_amount_extra->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_tax_id->SetValue($items[$i]->tkt_tax_id);
                        $this->tkt_tax_id->Attributes->RestoreFromArray($items[$i]->_tkt_tax_idAttributes);
                        $this->tkt_tax_amount_incl->SetValue($items[$i]->tkt_tax_amount_incl);
                        $this->tkt_tax_amount_incl->Attributes->RestoreFromArray($items[$i]->_tkt_tax_amount_inclAttributes);
                        $this->tkt_tax_amount_extra->SetValue($items[$i]->tkt_tax_amount_extra);
                        $this->tkt_tax_amount_extra->Attributes->RestoreFromArray($items[$i]->_tkt_tax_amount_extraAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_tax_id->Show();
                        $this->tkt_tax_amount_incl->Show();
                        $this->tkt_tax_amount_extra->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
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
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
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

} //End ssf_tkt_trx_tax Class @55-FCB6E20C

class clsssf_tkt_trx_taxDataSource extends clsDBConnection1 {  //ssf_tkt_trx_taxDataSource Class @55-BAF786A5

//DataSource Variables @55-B8E90E8B
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_tax_id;
    public $tkt_tax_amount_incl;
    public $tkt_tax_amount_extra;
//End DataSource Variables

//DataSourceClass_Initialize Event @55-00B1B002
    function clsssf_tkt_trx_taxDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_trx_tax";
        $this->Initialize();
        $this->tkt_tax_id = new clsField("tkt_tax_id", ccsText, "");
        $this->tkt_tax_amount_incl = new clsField("tkt_tax_amount_incl", ccsFloat, "");
        $this->tkt_tax_amount_extra = new clsField("tkt_tax_amount_extra", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @55-7E8EF47B
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_tax_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @55-5D833501
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_trans_id", ccsInteger, "", "", $this->Parameters["urltkt_trans_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_trans_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @55-065F31C3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_trx_tax {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @55-7FD95965
    function SetValues()
    {
        $this->tkt_tax_id->SetDBValue($this->f("tkt_tax_id"));
        $this->tkt_tax_amount_incl->SetDBValue(trim($this->f("tkt_tax_amount_incl")));
        $this->tkt_tax_amount_extra->SetDBValue(trim($this->f("tkt_tax_amount_extra")));
    }
//End SetValues Method

} //End ssf_tkt_trx_taxDataSource Class @55-FCB6E20C

//ssf_tkt_trx_tender ReportGroup class @68-F986DEC6
class clsReportGroupssf_tkt_trx_tender {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_tender_id, $_tkt_tender_idAttributes;
    public $tkt_tender_amount, $_tkt_tender_amountAttributes;
    public $tkt_tender_info, $_tkt_tender_infoAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_trx_tender(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_tender_id = $this->Parent->tkt_tender_id->Value;
        $this->tkt_tender_amount = $this->Parent->tkt_tender_amount->Value;
        $this->tkt_tender_info = $this->Parent->tkt_tender_info->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_tkt_tender_idAttributes = $this->Parent->tkt_tender_id->Attributes->GetAsArray();
        $this->_tkt_tender_amountAttributes = $this->Parent->tkt_tender_amount->Attributes->GetAsArray();
        $this->_tkt_tender_infoAttributes = $this->Parent->tkt_tender_info->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->tkt_tender_id = $Header->tkt_tender_id;
        $Header->_tkt_tender_idAttributes = $this->_tkt_tender_idAttributes;
        $this->Parent->tkt_tender_id->Value = $Header->tkt_tender_id;
        $this->Parent->tkt_tender_id->Attributes->RestoreFromArray($Header->_tkt_tender_idAttributes);
        $this->tkt_tender_amount = $Header->tkt_tender_amount;
        $Header->_tkt_tender_amountAttributes = $this->_tkt_tender_amountAttributes;
        $this->Parent->tkt_tender_amount->Value = $Header->tkt_tender_amount;
        $this->Parent->tkt_tender_amount->Attributes->RestoreFromArray($Header->_tkt_tender_amountAttributes);
        $this->tkt_tender_info = $Header->tkt_tender_info;
        $Header->_tkt_tender_infoAttributes = $this->_tkt_tender_infoAttributes;
        $this->Parent->tkt_tender_info->Value = $Header->tkt_tender_info;
        $this->Parent->tkt_tender_info->Attributes->RestoreFromArray($Header->_tkt_tender_infoAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_trx_tender ReportGroup class

//ssf_tkt_trx_tender GroupsCollection class @68-4168D59C
class clsGroupsCollectionssf_tkt_trx_tender {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_trx_tender(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_trx_tender($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_tender_id->Value = $this->Parent->tkt_tender_id->initialValue;
        $this->Parent->tkt_tender_amount->Value = $this->Parent->tkt_tender_amount->initialValue;
        $this->Parent->tkt_tender_info->Value = $this->Parent->tkt_tender_info->initialValue;
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
//End ssf_tkt_trx_tender GroupsCollection class

class clsReportssf_tkt_trx_tender { //ssf_tkt_trx_tender Class @68-40B67DD6

//ssf_tkt_trx_tender Variables @68-C68819AF

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
//End ssf_tkt_trx_tender Variables

//Class_Initialize Event @68-CDE90A0E
    function clsReportssf_tkt_trx_tender($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_tender";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_trx_tenderDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
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

        $this->tkt_tender_id = new clsControl(ccsReportLabel, "tkt_tender_id", "tkt_tender_id", ccsText, "", "", $this);
        $this->tkt_tender_id->HTML = true;
        $this->tkt_tender_id->EmptyText = "&nbsp;";
        $this->tkt_tender_amount = new clsControl(ccsReportLabel, "tkt_tender_amount", "tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tender_amount->HTML = true;
        $this->tkt_tender_amount->EmptyText = "&nbsp;";
        $this->tkt_tender_info = new clsControl(ccsReportLabel, "tkt_tender_info", "tkt_tender_info", ccsText, "", "", $this);
        $this->tkt_tender_info->HTML = true;
        $this->tkt_tender_info->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
    }
//End Class_Initialize Event

//Initialize Method @68-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @68-DB931E70
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->tkt_tender_info->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @68-AA2BC49C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tender_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_info->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @68-25219252
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urltkt_trans_id"] = CCGetFromGet("tkt_trans_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_trx_tender($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
            $this->tkt_tender_amount->SetValue($this->DataSource->tkt_tender_amount->GetValue());
            $this->tkt_tender_info->SetValue($this->DataSource->tkt_tender_info->GetValue());
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
            $this->ControlsVisible["tkt_tender_id"] = $this->tkt_tender_id->Visible;
            $this->ControlsVisible["tkt_tender_amount"] = $this->tkt_tender_amount->Visible;
            $this->ControlsVisible["tkt_tender_info"] = $this->tkt_tender_info->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_tender_id->SetValue($items[$i]->tkt_tender_id);
                        $this->tkt_tender_id->Attributes->RestoreFromArray($items[$i]->_tkt_tender_idAttributes);
                        $this->tkt_tender_amount->SetValue($items[$i]->tkt_tender_amount);
                        $this->tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tender_amountAttributes);
                        $this->tkt_tender_info->SetValue($items[$i]->tkt_tender_info);
                        $this->tkt_tender_info->Attributes->RestoreFromArray($items[$i]->_tkt_tender_infoAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_tender_id->Show();
                        $this->tkt_tender_amount->Show();
                        $this->tkt_tender_info->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
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
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
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

} //End ssf_tkt_trx_tender Class @68-FCB6E20C

class clsssf_tkt_trx_tenderDataSource extends clsDBConnection1 {  //ssf_tkt_trx_tenderDataSource Class @68-068EF83B

//DataSource Variables @68-E7076B3D
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_tender_id;
    public $tkt_tender_amount;
    public $tkt_tender_info;
//End DataSource Variables

//DataSourceClass_Initialize Event @68-646E3322
    function clsssf_tkt_trx_tenderDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_trx_tender";
        $this->Initialize();
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_amount = new clsField("tkt_tender_amount", ccsFloat, "");
        $this->tkt_tender_info = new clsField("tkt_tender_info", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @68-E9269141
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_tender_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @68-5D833501
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_trans_id", ccsInteger, "", "", $this->Parameters["urltkt_trans_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_trans_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @68-9A5C88B0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_trx_tender {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @68-D27227B9
    function SetValues()
    {
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->tkt_tender_info->SetDBValue($this->f("tkt_tender_info"));
    }
//End SetValues Method

} //End ssf_tkt_trx_tenderDataSource Class @68-FCB6E20C

//Initialize Page @1-5D2D835F
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
$TemplateFileName = "SSFTicketTrxPopDetail.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-9751F39A
include("./SSFTicketTrxPopDetail_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-95C9861C
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_trx_header = new clsReportssf_tkt_trx_header("", $MainPage);
$lblerror = new clsControl(ccsLabel, "lblerror", "lblerror", ccsText, "", CCGetRequestParam("lblerror", ccsGet, NULL), $MainPage);
$Button_reprint = new clsButton("Button_reprint", ccsGet, $MainPage);
$ssf_tkt_trx_detail_ssf_tk = new clsReportssf_tkt_trx_detail_ssf_tk("", $MainPage);
$tkt_ticket = new clsControl(ccsTextArea, "tkt_ticket", "tkt_ticket", ccsText, "", CCGetRequestParam("tkt_ticket", ccsGet, NULL), $MainPage);
$ssf_tkt_trx_tax = new clsReportssf_tkt_trx_tax("", $MainPage);
$ssf_tkt_trx_tender = new clsReportssf_tkt_trx_tender("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_trx_header = & $ssf_tkt_trx_header;
$MainPage->lblerror = & $lblerror;
$MainPage->Button_reprint = & $Button_reprint;
$MainPage->ssf_tkt_trx_detail_ssf_tk = & $ssf_tkt_trx_detail_ssf_tk;
$MainPage->tkt_ticket = & $tkt_ticket;
$MainPage->ssf_tkt_trx_tax = & $ssf_tkt_trx_tax;
$MainPage->ssf_tkt_trx_tender = & $ssf_tkt_trx_tender;
$ssf_tkt_trx_header->Initialize();
$ssf_tkt_trx_detail_ssf_tk->Initialize();
$ssf_tkt_trx_tax->Initialize();
$ssf_tkt_trx_tender->Initialize();

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

//Execute Components @1-0687DBC0
$SSFSpiritHeader->Operations();
//End Execute Components

//Go to destination page @1-25F8CC77
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_trx_header);
    unset($ssf_tkt_trx_detail_ssf_tk);
    unset($ssf_tkt_trx_tax);
    unset($ssf_tkt_trx_tender);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B0C3F970
$SSFSpiritHeader->Show();
$ssf_tkt_trx_header->Show();
$Button_reprint->Show();
$ssf_tkt_trx_detail_ssf_tk->Show();
$ssf_tkt_trx_tax->Show();
$ssf_tkt_trx_tender->Show();
$lblerror->Show();
$tkt_ticket->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-8D39D01C
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_trx_header);
unset($ssf_tkt_trx_detail_ssf_tk);
unset($ssf_tkt_trx_tax);
unset($ssf_tkt_trx_tender);
unset($Tpl);
//End Unload Page


?>
