<?php
//Include Common Files @1-D1A9A8C2
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketPeriodDetail.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation



//ssf_addin_shifts_data ReportGroup class @3-5FAF0DF6
class clsReportGroupssf_addin_shifts_data {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_period_group, $_tkt_period_groupAttributes;
    public $period_start_date, $_period_start_dateAttributes;
    public $period_type, $_period_typeAttributes;
    public $period_start_time, $_period_start_timeAttributes;
    public $period_status, $_period_statusAttributes;
    public $period_end_date, $_period_end_dateAttributes;
    public $period_id, $_period_idAttributes;
    public $period_end_time, $_period_end_timeAttributes;
    public $lblqtytransactions, $_lblqtytransactionsAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_addin_shifts_data(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_period_group = $this->Parent->tkt_period_group->Value;
        $this->period_start_date = $this->Parent->period_start_date->Value;
        $this->period_type = $this->Parent->period_type->Value;
        $this->period_start_time = $this->Parent->period_start_time->Value;
        $this->period_status = $this->Parent->period_status->Value;
        $this->period_end_date = $this->Parent->period_end_date->Value;
        $this->period_id = $this->Parent->period_id->Value;
        $this->period_end_time = $this->Parent->period_end_time->Value;
        $this->lblqtytransactions = $this->Parent->lblqtytransactions->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_tkt_period_groupAttributes = $this->Parent->tkt_period_group->Attributes->GetAsArray();
        $this->_period_start_dateAttributes = $this->Parent->period_start_date->Attributes->GetAsArray();
        $this->_period_typeAttributes = $this->Parent->period_type->Attributes->GetAsArray();
        $this->_period_start_timeAttributes = $this->Parent->period_start_time->Attributes->GetAsArray();
        $this->_period_statusAttributes = $this->Parent->period_status->Attributes->GetAsArray();
        $this->_period_end_dateAttributes = $this->Parent->period_end_date->Attributes->GetAsArray();
        $this->_period_idAttributes = $this->Parent->period_id->Attributes->GetAsArray();
        $this->_period_end_timeAttributes = $this->Parent->period_end_time->Attributes->GetAsArray();
        $this->_lblqtytransactionsAttributes = $this->Parent->lblqtytransactions->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->tkt_period_group = $Header->tkt_period_group;
        $Header->_tkt_period_groupAttributes = $this->_tkt_period_groupAttributes;
        $this->Parent->tkt_period_group->Value = $Header->tkt_period_group;
        $this->Parent->tkt_period_group->Attributes->RestoreFromArray($Header->_tkt_period_groupAttributes);
        $this->period_start_date = $Header->period_start_date;
        $Header->_period_start_dateAttributes = $this->_period_start_dateAttributes;
        $this->Parent->period_start_date->Value = $Header->period_start_date;
        $this->Parent->period_start_date->Attributes->RestoreFromArray($Header->_period_start_dateAttributes);
        $this->period_type = $Header->period_type;
        $Header->_period_typeAttributes = $this->_period_typeAttributes;
        $this->Parent->period_type->Value = $Header->period_type;
        $this->Parent->period_type->Attributes->RestoreFromArray($Header->_period_typeAttributes);
        $this->period_start_time = $Header->period_start_time;
        $Header->_period_start_timeAttributes = $this->_period_start_timeAttributes;
        $this->Parent->period_start_time->Value = $Header->period_start_time;
        $this->Parent->period_start_time->Attributes->RestoreFromArray($Header->_period_start_timeAttributes);
        $this->period_status = $Header->period_status;
        $Header->_period_statusAttributes = $this->_period_statusAttributes;
        $this->Parent->period_status->Value = $Header->period_status;
        $this->Parent->period_status->Attributes->RestoreFromArray($Header->_period_statusAttributes);
        $this->period_end_date = $Header->period_end_date;
        $Header->_period_end_dateAttributes = $this->_period_end_dateAttributes;
        $this->Parent->period_end_date->Value = $Header->period_end_date;
        $this->Parent->period_end_date->Attributes->RestoreFromArray($Header->_period_end_dateAttributes);
        $this->period_id = $Header->period_id;
        $Header->_period_idAttributes = $this->_period_idAttributes;
        $this->Parent->period_id->Value = $Header->period_id;
        $this->Parent->period_id->Attributes->RestoreFromArray($Header->_period_idAttributes);
        $this->period_end_time = $Header->period_end_time;
        $Header->_period_end_timeAttributes = $this->_period_end_timeAttributes;
        $this->Parent->period_end_time->Value = $Header->period_end_time;
        $this->Parent->period_end_time->Attributes->RestoreFromArray($Header->_period_end_timeAttributes);
        $this->lblqtytransactions = $Header->lblqtytransactions;
        $Header->_lblqtytransactionsAttributes = $this->_lblqtytransactionsAttributes;
        $this->Parent->lblqtytransactions->Value = $Header->lblqtytransactions;
        $this->Parent->lblqtytransactions->Attributes->RestoreFromArray($Header->_lblqtytransactionsAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_addin_shifts_data ReportGroup class

//ssf_addin_shifts_data GroupsCollection class @3-AC564379
class clsGroupsCollectionssf_addin_shifts_data {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_addin_shifts_data(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_addin_shifts_data($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_period_group->Value = $this->Parent->tkt_period_group->initialValue;
        $this->Parent->period_start_date->Value = $this->Parent->period_start_date->initialValue;
        $this->Parent->period_type->Value = $this->Parent->period_type->initialValue;
        $this->Parent->period_start_time->Value = $this->Parent->period_start_time->initialValue;
        $this->Parent->period_status->Value = $this->Parent->period_status->initialValue;
        $this->Parent->period_end_date->Value = $this->Parent->period_end_date->initialValue;
        $this->Parent->period_id->Value = $this->Parent->period_id->initialValue;
        $this->Parent->period_end_time->Value = $this->Parent->period_end_time->initialValue;
        $this->Parent->lblqtytransactions->Value = $this->Parent->lblqtytransactions->initialValue;
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
//End ssf_addin_shifts_data GroupsCollection class

class clsReportssf_addin_shifts_data { //ssf_addin_shifts_data Class @3-C390895A

//ssf_addin_shifts_data Variables @3-C68819AF

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
//End ssf_addin_shifts_data Variables

//Class_Initialize Event @3-AA6EAA9A
    function clsReportssf_addin_shifts_data($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_shifts_data";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 10;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Report_Footer = new clsSection($this);
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_addin_shifts_dataDataSource($this);
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

        $this->tkt_period_group = new clsControl(ccsReportLabel, "tkt_period_group", "tkt_period_group", ccsText, "", "", $this);
        $this->period_start_date = new clsControl(ccsReportLabel, "period_start_date", "period_start_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->period_start_date->HTML = true;
        $this->period_start_date->EmptyText = "&nbsp;";
        $this->period_type = new clsControl(ccsReportLabel, "period_type", "period_type", ccsText, "", "", $this);
        $this->period_type->HTML = true;
        $this->period_type->EmptyText = "&nbsp;";
        $this->period_start_time = new clsControl(ccsReportLabel, "period_start_time", "period_start_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->period_start_time->HTML = true;
        $this->period_start_time->EmptyText = "&nbsp;";
        $this->period_status = new clsControl(ccsReportLabel, "period_status", "period_status", ccsText, "", "", $this);
        $this->period_status->HTML = true;
        $this->period_status->EmptyText = "&nbsp;";
        $this->period_end_date = new clsControl(ccsReportLabel, "period_end_date", "period_end_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->period_end_date->HTML = true;
        $this->period_end_date->EmptyText = "&nbsp;";
        $this->period_id = new clsControl(ccsReportLabel, "period_id", "period_id", ccsInteger, "", "", $this);
        $this->period_id->HTML = true;
        $this->period_id->EmptyText = "&nbsp;";
        $this->period_end_time = new clsControl(ccsReportLabel, "period_end_time", "period_end_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->period_end_time->HTML = true;
        $this->period_end_time->EmptyText = "&nbsp;";
        $this->lblqtytransactions = new clsControl(ccsReportLabel, "lblqtytransactions", "lblqtytransactions", ccsInteger, "", "", $this);
        $this->lblqtytransactions->HTML = true;
        $this->lblqtytransactions->IsEmptySource = true;
        $this->lblqtytransactions->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-5A8DFC4C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_period_group->Errors->Count());
        $errors = ($errors || $this->period_start_date->Errors->Count());
        $errors = ($errors || $this->period_type->Errors->Count());
        $errors = ($errors || $this->period_start_time->Errors->Count());
        $errors = ($errors || $this->period_status->Errors->Count());
        $errors = ($errors || $this->period_end_date->Errors->Count());
        $errors = ($errors || $this->period_id->Errors->Count());
        $errors = ($errors || $this->period_end_time->Errors->Count());
        $errors = ($errors || $this->lblqtytransactions->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-1B4369DC
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_period_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblqtytransactions->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-2BEC7742
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urltkt_period_group"] = CCGetFromGet("tkt_period_group", NULL);
        $this->DataSource->Parameters["urltkt_period_type"] = CCGetFromGet("tkt_period_type", NULL);
        $this->DataSource->Parameters["urltkt_period_id"] = CCGetFromGet("tkt_period_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_addin_shifts_data($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_period_group->SetValue($this->DataSource->tkt_period_group->GetValue());
            $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
            $this->period_type->SetValue($this->DataSource->period_type->GetValue());
            $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
            $this->period_status->SetValue($this->DataSource->period_status->GetValue());
            $this->period_end_date->SetValue($this->DataSource->period_end_date->GetValue());
            $this->period_id->SetValue($this->DataSource->period_id->GetValue());
            $this->period_end_time->SetValue($this->DataSource->period_end_time->GetValue());
            $this->lblqtytransactions->SetValue("");
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
            $this->ControlsVisible["tkt_period_group"] = $this->tkt_period_group->Visible;
            $this->ControlsVisible["period_start_date"] = $this->period_start_date->Visible;
            $this->ControlsVisible["period_type"] = $this->period_type->Visible;
            $this->ControlsVisible["period_start_time"] = $this->period_start_time->Visible;
            $this->ControlsVisible["period_status"] = $this->period_status->Visible;
            $this->ControlsVisible["period_end_date"] = $this->period_end_date->Visible;
            $this->ControlsVisible["period_id"] = $this->period_id->Visible;
            $this->ControlsVisible["period_end_time"] = $this->period_end_time->Visible;
            $this->ControlsVisible["lblqtytransactions"] = $this->lblqtytransactions->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_period_group->SetValue($items[$i]->tkt_period_group);
                        $this->tkt_period_group->Attributes->RestoreFromArray($items[$i]->_tkt_period_groupAttributes);
                        $this->period_start_date->SetValue($items[$i]->period_start_date);
                        $this->period_start_date->Attributes->RestoreFromArray($items[$i]->_period_start_dateAttributes);
                        $this->period_type->SetValue($items[$i]->period_type);
                        $this->period_type->Attributes->RestoreFromArray($items[$i]->_period_typeAttributes);
                        $this->period_start_time->SetValue($items[$i]->period_start_time);
                        $this->period_start_time->Attributes->RestoreFromArray($items[$i]->_period_start_timeAttributes);
                        $this->period_status->SetValue($items[$i]->period_status);
                        $this->period_status->Attributes->RestoreFromArray($items[$i]->_period_statusAttributes);
                        $this->period_end_date->SetValue($items[$i]->period_end_date);
                        $this->period_end_date->Attributes->RestoreFromArray($items[$i]->_period_end_dateAttributes);
                        $this->period_id->SetValue($items[$i]->period_id);
                        $this->period_id->Attributes->RestoreFromArray($items[$i]->_period_idAttributes);
                        $this->period_end_time->SetValue($items[$i]->period_end_time);
                        $this->period_end_time->Attributes->RestoreFromArray($items[$i]->_period_end_timeAttributes);
                        $this->lblqtytransactions->SetValue($items[$i]->lblqtytransactions);
                        $this->lblqtytransactions->Attributes->RestoreFromArray($items[$i]->_lblqtytransactionsAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_period_group->Show();
                        $this->period_start_date->Show();
                        $this->period_type->Show();
                        $this->period_start_time->Show();
                        $this->period_status->Show();
                        $this->period_end_date->Show();
                        $this->period_id->Show();
                        $this->period_end_time->Show();
                        $this->lblqtytransactions->Show();
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

} //End ssf_addin_shifts_data Class @3-FCB6E20C

class clsssf_addin_shifts_dataDataSource extends clsDBConnection1 {  //ssf_addin_shifts_dataDataSource Class @3-9A303638

//DataSource Variables @3-EEA32842
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_period_group;
    public $period_start_date;
    public $period_type;
    public $period_start_time;
    public $period_status;
    public $period_end_date;
    public $period_id;
    public $period_end_time;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-425A123A
    function clsssf_addin_shifts_dataDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_addin_shifts_data";
        $this->Initialize();
        $this->tkt_period_group = new clsField("tkt_period_group", ccsText, "");
        $this->period_start_date = new clsField("period_start_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->period_type = new clsField("period_type", ccsText, "");
        $this->period_start_time = new clsField("period_start_time", ccsDate, array("HH", "nn", "ss"));
        $this->period_status = new clsField("period_status", ccsText, "");
        $this->period_end_date = new clsField("period_end_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->period_id = new clsField("period_id", ccsInteger, "");
        $this->period_end_time = new clsField("period_end_time", ccsDate, array("HH", "nn", "ss"));

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

//Prepare Method @3-6A3CE2D6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_period_group", ccsText, "", "", $this->Parameters["urltkt_period_group"], "", false);
        $this->wp->AddParameter("2", "urltkt_period_type", ccsText, "", "", $this->Parameters["urltkt_period_type"], "", false);
        $this->wp->AddParameter("3", "urltkt_period_id", ccsInteger, "", "", $this->Parameters["urltkt_period_id"], 0, false);
    }
//End Prepare Method

//Open Method @3-2CDF0362
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tkt_periods.*, tkt_period_group_desc \n" .
        "FROM ssf_tkt_periods LEFT JOIN ssf_tkt_period_groups ON\n" .
        "ssf_tkt_periods.tkt_period_group = ssf_tkt_period_groups.tkt_period_group_id\n" .
        "WHERE ( ssf_tkt_periods.tkt_period_group = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' <> 'S' )\n" .
        "AND ssf_tkt_periods.tkt_period_type = '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'\n" .
        "AND ssf_tkt_periods.tkt_period_id = " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " ";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-3B585794
    function SetValues()
    {
        $this->tkt_period_group->SetDBValue($this->f("tkt_period_group_desc"));
        $this->period_start_date->SetDBValue(trim($this->f("tkt_period_date_start")));
        $this->period_type->SetDBValue($this->f("tkt_period_type"));
        $this->period_start_time->SetDBValue(trim($this->f("tkt_period_time_start")));
        $this->period_status->SetDBValue($this->f("tkt_period_status"));
        $this->period_end_date->SetDBValue(trim($this->f("tkt_period_date_end")));
        $this->period_id->SetDBValue(trim($this->f("tkt_period_id")));
        $this->period_end_time->SetDBValue(trim($this->f("tkt_period_time_end")));
    }
//End SetValues Method

} //End ssf_addin_shifts_dataDataSource Class @3-FCB6E20C

//Report1 ReportGroup class @48-A6BC86BA
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_receipt_type, $_tkt_receipt_typeAttributes;
    public $tkt_qty, $_tkt_qtyAttributes;
    public $tkt_net_amount, $_tkt_net_amountAttributes;
    public $tkt_tax_amount, $_tkt_tax_amountAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $TotalSum_tkt_qty, $_TotalSum_tkt_qtyAttributes;
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
        $this->tkt_receipt_type = $this->Parent->tkt_receipt_type->Value;
        $this->tkt_qty = $this->Parent->tkt_qty->Value;
        $this->tkt_net_amount = $this->Parent->tkt_net_amount->Value;
        $this->tkt_tax_amount = $this->Parent->tkt_tax_amount->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_tkt_qty = $this->Parent->TotalSum_tkt_qty->GetTotalValue($mode);
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_tax_amount = $this->Parent->TotalSum_tkt_tax_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_Sorter_tkt_receipt_typeAttributes = $this->Parent->Sorter_tkt_receipt_type->Attributes->GetAsArray();
        $this->_Sorter_tkt_qtyAttributes = $this->Parent->Sorter_tkt_qty->Attributes->GetAsArray();
        $this->_Sorter_tkt_net_amountAttributes = $this->Parent->Sorter_tkt_net_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_amountAttributes = $this->Parent->Sorter_tkt_tax_amount->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_receipt_typeAttributes = $this->Parent->tkt_receipt_type->Attributes->GetAsArray();
        $this->_tkt_qtyAttributes = $this->Parent->tkt_qty->Attributes->GetAsArray();
        $this->_tkt_net_amountAttributes = $this->Parent->tkt_net_amount->Attributes->GetAsArray();
        $this->_tkt_tax_amountAttributes = $this->Parent->tkt_tax_amount->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_qtyAttributes = $this->Parent->TotalSum_tkt_qty->Attributes->GetAsArray();
        $this->_TotalSum_tkt_net_amountAttributes = $this->Parent->TotalSum_tkt_net_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_tax_amountAttributes = $this->Parent->TotalSum_tkt_tax_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_tkt_qty = $this->TotalSum_tkt_qty;
        $Header->_TotalSum_tkt_qtyAttributes = $this->_TotalSum_tkt_qtyAttributes;
        $Header->TotalSum_tkt_net_amount = $this->TotalSum_tkt_net_amount;
        $Header->_TotalSum_tkt_net_amountAttributes = $this->_TotalSum_tkt_net_amountAttributes;
        $Header->TotalSum_tkt_tax_amount = $this->TotalSum_tkt_tax_amount;
        $Header->_TotalSum_tkt_tax_amountAttributes = $this->_TotalSum_tkt_tax_amountAttributes;
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_receipt_type = $Header->tkt_receipt_type;
        $Header->_tkt_receipt_typeAttributes = $this->_tkt_receipt_typeAttributes;
        $this->Parent->tkt_receipt_type->Value = $Header->tkt_receipt_type;
        $this->Parent->tkt_receipt_type->Attributes->RestoreFromArray($Header->_tkt_receipt_typeAttributes);
        $this->tkt_qty = $Header->tkt_qty;
        $Header->_tkt_qtyAttributes = $this->_tkt_qtyAttributes;
        $this->Parent->tkt_qty->Value = $Header->tkt_qty;
        $this->Parent->tkt_qty->Attributes->RestoreFromArray($Header->_tkt_qtyAttributes);
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
    }
    function ChangeTotalControls() {
        $this->TotalSum_tkt_qty = $this->Parent->TotalSum_tkt_qty->GetValue();
        $this->TotalSum_tkt_net_amount = $this->Parent->TotalSum_tkt_net_amount->GetValue();
        $this->TotalSum_tkt_tax_amount = $this->Parent->TotalSum_tkt_tax_amount->GetValue();
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @48-5BE19D45
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
        $this->Parent->tkt_receipt_type->Value = $this->Parent->tkt_receipt_type->initialValue;
        $this->Parent->tkt_qty->Value = $this->Parent->tkt_qty->initialValue;
        $this->Parent->tkt_net_amount->Value = $this->Parent->tkt_net_amount->initialValue;
        $this->Parent->tkt_tax_amount->Value = $this->Parent->tkt_tax_amount->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->TotalSum_tkt_qty->Value = $this->Parent->TotalSum_tkt_qty->initialValue;
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

class clsReportReport1 { //Report1 Class @48-BC2FB08C

//Report1 Variables @48-8E07FF96

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
    public $Sorter_tkt_receipt_type;
    public $Sorter_tkt_qty;
    public $Sorter_tkt_net_amount;
    public $Sorter_tkt_tax_amount;
    public $Sorter_tkt_total_amount;
//End Report1 Variables

//Class_Initialize Event @48-BC20AE46
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport1DataSource($this);
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
        $this->SorterName = CCGetParam("Report1Order", "");
        $this->SorterDirection = CCGetParam("Report1Dir", "");

        $this->Sorter_tkt_receipt_type = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_type", $FileName, $this);
        $this->Sorter_tkt_qty = new clsSorter($this->ComponentName, "Sorter_tkt_qty", $FileName, $this);
        $this->Sorter_tkt_net_amount = new clsSorter($this->ComponentName, "Sorter_tkt_net_amount", $FileName, $this);
        $this->Sorter_tkt_tax_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tax_amount", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->tkt_receipt_type = new clsControl(ccsReportLabel, "tkt_receipt_type", "tkt_receipt_type", ccsText, "", "", $this);
        $this->tkt_receipt_type->HTML = true;
        $this->tkt_receipt_type->EmptyText = "&nbsp;";
        $this->tkt_qty = new clsControl(ccsReportLabel, "tkt_qty", "tkt_qty", ccsInteger, "", "", $this);
        $this->tkt_qty->HTML = true;
        $this->tkt_qty->EmptyText = "&nbsp;";
        $this->tkt_net_amount = new clsControl(ccsReportLabel, "tkt_net_amount", "tkt_net_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_net_amount->HTML = true;
        $this->tkt_net_amount->EmptyText = "&nbsp;";
        $this->tkt_tax_amount = new clsControl(ccsReportLabel, "tkt_tax_amount", "tkt_tax_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tax_amount->HTML = true;
        $this->tkt_tax_amount->EmptyText = "&nbsp;";
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_total_amount->HTML = true;
        $this->tkt_total_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_qty = new clsControl(ccsReportLabel, "TotalSum_tkt_qty", "TotalSum_tkt_qty", ccsText, "", "", $this);
        $this->TotalSum_tkt_qty->TotalFunction = "Sum";
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
    }
//End Class_Initialize Event

//Initialize Method @48-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @48-C9E625B9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_receipt_type->Errors->Count());
        $errors = ($errors || $this->tkt_qty->Errors->Count());
        $errors = ($errors || $this->tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->tkt_tax_amount->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_qty->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_net_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_tax_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @48-DE37156C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_receipt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_net_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_tax_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @48-11435AE5
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_receipt_type->SetValue($this->DataSource->tkt_receipt_type->GetValue());
            $this->tkt_qty->SetValue($this->DataSource->tkt_qty->GetValue());
            $this->tkt_net_amount->SetValue($this->DataSource->tkt_net_amount->GetValue());
            $this->tkt_tax_amount->SetValue($this->DataSource->tkt_tax_amount->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->TotalSum_tkt_qty->SetValue($this->DataSource->TotalSum_tkt_qty->GetValue());
            $this->TotalSum_tkt_net_amount->SetValue($this->DataSource->TotalSum_tkt_net_amount->GetValue());
            $this->TotalSum_tkt_tax_amount->SetValue($this->DataSource->TotalSum_tkt_tax_amount->GetValue());
            $this->TotalSum_tkt_total_amount->SetValue($this->DataSource->TotalSum_tkt_total_amount->GetValue());
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
            $this->ControlsVisible["tkt_receipt_type"] = $this->tkt_receipt_type->Visible;
            $this->ControlsVisible["tkt_qty"] = $this->tkt_qty->Visible;
            $this->ControlsVisible["tkt_net_amount"] = $this->tkt_net_amount->Visible;
            $this->ControlsVisible["tkt_tax_amount"] = $this->tkt_tax_amount->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_receipt_type->SetValue($items[$i]->tkt_receipt_type);
                        $this->tkt_receipt_type->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_typeAttributes);
                        $this->tkt_qty->SetValue($items[$i]->tkt_qty);
                        $this->tkt_qty->Attributes->RestoreFromArray($items[$i]->_tkt_qtyAttributes);
                        $this->tkt_net_amount->SetValue($items[$i]->tkt_net_amount);
                        $this->tkt_net_amount->Attributes->RestoreFromArray($items[$i]->_tkt_net_amountAttributes);
                        $this->tkt_tax_amount->SetValue($items[$i]->tkt_tax_amount);
                        $this->tkt_tax_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tax_amountAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_receipt_type->Show();
                        $this->tkt_qty->Show();
                        $this->tkt_net_amount->Show();
                        $this->tkt_tax_amount->Show();
                        $this->tkt_total_amount->Show();
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
                            $this->TotalSum_tkt_qty->SetValue($items[$i]->TotalSum_tkt_qty);
                            $this->TotalSum_tkt_qty->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_qtyAttributes);
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
                                $this->TotalSum_tkt_qty->Show();
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
                                $this->Sorter_tkt_receipt_type->Show();
                                $this->Sorter_tkt_qty->Show();
                                $this->Sorter_tkt_net_amount->Show();
                                $this->Sorter_tkt_tax_amount->Show();
                                $this->Sorter_tkt_total_amount->Show();
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

} //End Report1 Class @48-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @48-20EE0F53

//DataSource Variables @48-A1899FD9
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_receipt_type;
    public $tkt_qty;
    public $tkt_net_amount;
    public $tkt_tax_amount;
    public $tkt_total_amount;
    public $TotalSum_tkt_qty;
    public $TotalSum_tkt_net_amount;
    public $TotalSum_tkt_tax_amount;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @48-7AC19E99
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->tkt_receipt_type = new clsField("tkt_receipt_type", ccsText, "");
        $this->tkt_qty = new clsField("tkt_qty", ccsInteger, "");
        $this->tkt_net_amount = new clsField("tkt_net_amount", ccsFloat, "");
        $this->tkt_tax_amount = new clsField("tkt_tax_amount", ccsFloat, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->TotalSum_tkt_qty = new clsField("TotalSum_tkt_qty", ccsText, "");
        $this->TotalSum_tkt_net_amount = new clsField("TotalSum_tkt_net_amount", ccsFloat, "");
        $this->TotalSum_tkt_tax_amount = new clsField("TotalSum_tkt_tax_amount", ccsFloat, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @48-B55A7A65
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_receipt_type" => array("tkt_receipt_type", ""), 
            "Sorter_tkt_qty" => array("tkt_qty", ""), 
            "Sorter_tkt_net_amount" => array("tkt_net_amount", ""), 
            "Sorter_tkt_tax_amount" => array("tkt_tax_amount", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", "")));
    }
//End SetOrder Method

//Prepare Method @48-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @48-549003AE
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT  tkt_receipt_type, Sum(tkt_net_amount * ReplacetoNumberCatalog) AS tkt_net_amount, Sum(tkt_tax_amount * ReplacetoNumberCatalog) AS tkt_tax_amount, \n" .
        "Sum(tkt_total_amount * ReplacetoNumberCatalog) AS tkt_total_amount, Count(*) AS tkt_qty \n" .
        "FROM ssf_tkt_trx_header LEFT JOIN ssf_tkt_catalog ON\n" .
        "tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @48-58F94352
    function SetValues()
    {
        $this->tkt_receipt_type->SetDBValue($this->f("tkt_receipt_type"));
        $this->tkt_qty->SetDBValue(trim($this->f("tkt_qty")));
        $this->tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->TotalSum_tkt_qty->SetDBValue($this->f("tkt_qty"));
        $this->TotalSum_tkt_net_amount->SetDBValue(trim($this->f("tkt_net_amount")));
        $this->TotalSum_tkt_tax_amount->SetDBValue(trim($this->f("tkt_tax_amount")));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End Report1DataSource Class @48-FCB6E20C

//Report2 ReportGroup class @77-22F41673
class clsReportGroupReport2 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_tender_id, $_tkt_tender_idAttributes;
    public $tkt_tender_amount, $_tkt_tender_amountAttributes;
    public $TotalSum_tkt_tender_amount, $_TotalSum_tkt_tender_amountAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupReport2(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_tender_id = $this->Parent->tkt_tender_id->Value;
        $this->tkt_tender_amount = $this->Parent->tkt_tender_amount->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetTotalValue($mode);
        $this->_Sorter_tkt_tender_idAttributes = $this->Parent->Sorter_tkt_tender_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_tender_amountAttributes = $this->Parent->Sorter_tkt_tender_amount->Attributes->GetAsArray();
        $this->_tkt_tender_idAttributes = $this->Parent->tkt_tender_id->Attributes->GetAsArray();
        $this->_tkt_tender_amountAttributes = $this->Parent->tkt_tender_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_tender_amountAttributes = $this->Parent->TotalSum_tkt_tender_amount->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_tkt_tender_amount = $this->TotalSum_tkt_tender_amount;
        $Header->_TotalSum_tkt_tender_amountAttributes = $this->_TotalSum_tkt_tender_amountAttributes;
        $this->tkt_tender_id = $Header->tkt_tender_id;
        $Header->_tkt_tender_idAttributes = $this->_tkt_tender_idAttributes;
        $this->Parent->tkt_tender_id->Value = $Header->tkt_tender_id;
        $this->Parent->tkt_tender_id->Attributes->RestoreFromArray($Header->_tkt_tender_idAttributes);
        $this->tkt_tender_amount = $Header->tkt_tender_amount;
        $Header->_tkt_tender_amountAttributes = $this->_tkt_tender_amountAttributes;
        $this->Parent->tkt_tender_amount->Value = $Header->tkt_tender_amount;
        $this->Parent->tkt_tender_amount->Attributes->RestoreFromArray($Header->_tkt_tender_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetValue();
    }
}
//End Report2 ReportGroup class

//Report2 GroupsCollection class @77-A775CA2E
class clsGroupsCollectionReport2 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport2(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport2($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_tender_id->Value = $this->Parent->tkt_tender_id->initialValue;
        $this->Parent->tkt_tender_amount->Value = $this->Parent->tkt_tender_amount->initialValue;
        $this->Parent->TotalSum_tkt_tender_amount->Value = $this->Parent->TotalSum_tkt_tender_amount->initialValue;
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
//End Report2 GroupsCollection class

class clsReportReport2 { //Report2 Class @77-9702E34F

//Report2 Variables @77-FF2560D2

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
    public $Sorter_tkt_tender_id;
    public $Sorter_tkt_tender_amount;
//End Report2 Variables

//Class_Initialize Event @77-C1A4254A
    function clsReportReport2($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report2";
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport2DataSource($this);
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
        $this->SorterName = CCGetParam("Report2Order", "");
        $this->SorterDirection = CCGetParam("Report2Dir", "");

        $this->Sorter_tkt_tender_id = new clsSorter($this->ComponentName, "Sorter_tkt_tender_id", $FileName, $this);
        $this->Sorter_tkt_tender_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tender_amount", $FileName, $this);
        $this->tkt_tender_id = new clsControl(ccsReportLabel, "tkt_tender_id", "tkt_tender_id", ccsText, "", "", $this);
        $this->tkt_tender_id->HTML = true;
        $this->tkt_tender_id->EmptyText = "&nbsp;";
        $this->tkt_tender_amount = new clsControl(ccsReportLabel, "tkt_tender_amount", "tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tender_amount->HTML = true;
        $this->tkt_tender_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_tender_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_tender_amount", "TotalSum_tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_tender_amount->HTML = true;
        $this->TotalSum_tkt_tender_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_tender_amount->EmptyText = "&nbsp;";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @77-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @77-44D6E20D
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @77-59A76203
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tender_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @77-53636B6C
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport2($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
            $this->tkt_tender_amount->SetValue($this->DataSource->tkt_tender_amount->GetValue());
            $this->TotalSum_tkt_tender_amount->SetValue($this->DataSource->TotalSum_tkt_tender_amount->GetValue());
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
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_tender_id->Show();
                        $this->tkt_tender_amount->Show();
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
                            $this->TotalSum_tkt_tender_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_tender_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_tender_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_tender_amount->Show();
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
                                $this->Sorter_tkt_tender_id->Show();
                                $this->Sorter_tkt_tender_amount->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Navigator->Show();
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

} //End Report2 Class @77-FCB6E20C

class clsReport2DataSource extends clsDBConnection1 {  //Report2DataSource Class @77-AB3D314A

//DataSource Variables @77-EA8ABEF7
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_tender_id;
    public $tkt_tender_amount;
    public $TotalSum_tkt_tender_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @77-9F5F5B29
    function clsReport2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report2";
        $this->Initialize();
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_amount = new clsField("tkt_tender_amount", ccsFloat, "");
        $this->TotalSum_tkt_tender_amount = new clsField("TotalSum_tkt_tender_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @77-54B84856
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tender_id" => array("tkt_tender_id", ""), 
            "Sorter_tkt_tender_amount" => array("tkt_tender_amount", "")));
    }
//End SetOrder Method

//Prepare Method @77-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @77-DC34B932
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT  ssf_tkt_trx_tender.tkt_tender_id, Sum(tkt_tender_amount * ReplacetoNumberCatalog) AS tkt_tender_amount \n" .
        "FROM (ssf_tkt_trx_header INNER JOIN ssf_tkt_trx_tender ON ssf_tkt_trx_header.tkt_trans_id = ssf_tkt_trx_tender.tkt_trans_id) \n" .
        "LEFT JOIN ssf_tkt_catalog ON tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "\n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @77-325E0E20
    function SetValues()
    {
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->TotalSum_tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
    }
//End SetValues Method

} //End Report2DataSource Class @77-FCB6E20C

//Report6 ReportGroup class @143-585DD95B
class clsReportGroupReport6 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_plu_id, $_tkt_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $trx_qty, $_trx_qtyAttributes;
    public $trx_sales, $_trx_salesAttributes;
    public $pump_qty, $_pump_qtyAttributes;
    public $pump_sales, $_pump_salesAttributes;
    public $qty_diff, $_qty_diffAttributes;
    public $total_amount_diff, $_total_amount_diffAttributes;
    public $TotalSum_trx_sales, $_TotalSum_trx_salesAttributes;
    public $TotalSum_pump_sales, $_TotalSum_pump_salesAttributes;
    public $TotalSum_total_amount_diff, $_TotalSum_total_amount_diffAttributes;
    public $lnkperiod_sales1, $_lnkperiod_sales1Page, $_lnkperiod_sales1Parameters, $_lnkperiod_sales1Attributes;
    public $lnkperiod_pump1, $_lnkperiod_pump1Page, $_lnkperiod_pump1Parameters, $_lnkperiod_pump1Attributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupReport6(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_plu_id = $this->Parent->tkt_plu_id->Value;
        $this->tkt_plu_long_desc = $this->Parent->tkt_plu_long_desc->Value;
        $this->trx_qty = $this->Parent->trx_qty->Value;
        $this->trx_sales = $this->Parent->trx_sales->Value;
        $this->pump_qty = $this->Parent->pump_qty->Value;
        $this->pump_sales = $this->Parent->pump_sales->Value;
        $this->qty_diff = $this->Parent->qty_diff->Value;
        $this->total_amount_diff = $this->Parent->total_amount_diff->Value;
        $this->lnkperiod_sales1 = $this->Parent->lnkperiod_sales1->Value;
        $this->lnkperiod_pump1 = $this->Parent->lnkperiod_pump1->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_trx_sales = $this->Parent->TotalSum_trx_sales->GetTotalValue($mode);
        $this->TotalSum_pump_sales = $this->Parent->TotalSum_pump_sales->GetTotalValue($mode);
        $this->TotalSum_total_amount_diff = $this->Parent->TotalSum_total_amount_diff->GetTotalValue($mode);
        $this->_lnkperiod_sales1Page = $this->Parent->lnkperiod_sales1->Page;
        $this->_lnkperiod_sales1Parameters = $this->Parent->lnkperiod_sales1->Parameters;
        $this->_lnkperiod_pump1Page = $this->Parent->lnkperiod_pump1->Page;
        $this->_lnkperiod_pump1Parameters = $this->Parent->lnkperiod_pump1->Parameters;
        $this->_tkt_plu_idAttributes = $this->Parent->tkt_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_trx_qtyAttributes = $this->Parent->trx_qty->Attributes->GetAsArray();
        $this->_trx_salesAttributes = $this->Parent->trx_sales->Attributes->GetAsArray();
        $this->_pump_qtyAttributes = $this->Parent->pump_qty->Attributes->GetAsArray();
        $this->_pump_salesAttributes = $this->Parent->pump_sales->Attributes->GetAsArray();
        $this->_qty_diffAttributes = $this->Parent->qty_diff->Attributes->GetAsArray();
        $this->_total_amount_diffAttributes = $this->Parent->total_amount_diff->Attributes->GetAsArray();
        $this->_TotalSum_trx_salesAttributes = $this->Parent->TotalSum_trx_sales->Attributes->GetAsArray();
        $this->_TotalSum_pump_salesAttributes = $this->Parent->TotalSum_pump_sales->Attributes->GetAsArray();
        $this->_TotalSum_total_amount_diffAttributes = $this->Parent->TotalSum_total_amount_diff->Attributes->GetAsArray();
        $this->_lnkperiod_sales1Attributes = $this->Parent->lnkperiod_sales1->Attributes->GetAsArray();
        $this->_lnkperiod_pump1Attributes = $this->Parent->lnkperiod_pump1->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_trx_sales = $this->TotalSum_trx_sales;
        $Header->_TotalSum_trx_salesAttributes = $this->_TotalSum_trx_salesAttributes;
        $Header->TotalSum_pump_sales = $this->TotalSum_pump_sales;
        $Header->_TotalSum_pump_salesAttributes = $this->_TotalSum_pump_salesAttributes;
        $Header->TotalSum_total_amount_diff = $this->TotalSum_total_amount_diff;
        $Header->_TotalSum_total_amount_diffAttributes = $this->_TotalSum_total_amount_diffAttributes;
        $this->tkt_plu_id = $Header->tkt_plu_id;
        $Header->_tkt_plu_idAttributes = $this->_tkt_plu_idAttributes;
        $this->Parent->tkt_plu_id->Value = $Header->tkt_plu_id;
        $this->Parent->tkt_plu_id->Attributes->RestoreFromArray($Header->_tkt_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->trx_qty = $Header->trx_qty;
        $Header->_trx_qtyAttributes = $this->_trx_qtyAttributes;
        $this->Parent->trx_qty->Value = $Header->trx_qty;
        $this->Parent->trx_qty->Attributes->RestoreFromArray($Header->_trx_qtyAttributes);
        $this->trx_sales = $Header->trx_sales;
        $Header->_trx_salesAttributes = $this->_trx_salesAttributes;
        $this->Parent->trx_sales->Value = $Header->trx_sales;
        $this->Parent->trx_sales->Attributes->RestoreFromArray($Header->_trx_salesAttributes);
        $this->pump_qty = $Header->pump_qty;
        $Header->_pump_qtyAttributes = $this->_pump_qtyAttributes;
        $this->Parent->pump_qty->Value = $Header->pump_qty;
        $this->Parent->pump_qty->Attributes->RestoreFromArray($Header->_pump_qtyAttributes);
        $this->pump_sales = $Header->pump_sales;
        $Header->_pump_salesAttributes = $this->_pump_salesAttributes;
        $this->Parent->pump_sales->Value = $Header->pump_sales;
        $this->Parent->pump_sales->Attributes->RestoreFromArray($Header->_pump_salesAttributes);
        $this->qty_diff = $Header->qty_diff;
        $Header->_qty_diffAttributes = $this->_qty_diffAttributes;
        $this->Parent->qty_diff->Value = $Header->qty_diff;
        $this->Parent->qty_diff->Attributes->RestoreFromArray($Header->_qty_diffAttributes);
        $this->total_amount_diff = $Header->total_amount_diff;
        $Header->_total_amount_diffAttributes = $this->_total_amount_diffAttributes;
        $this->Parent->total_amount_diff->Value = $Header->total_amount_diff;
        $this->Parent->total_amount_diff->Attributes->RestoreFromArray($Header->_total_amount_diffAttributes);
        $this->lnkperiod_sales1 = $Header->lnkperiod_sales1;
        $this->_lnkperiod_sales1Page = $Header->_lnkperiod_sales1Page;
        $this->_lnkperiod_sales1Parameters = $Header->_lnkperiod_sales1Parameters;
        $Header->_lnkperiod_sales1Attributes = $this->_lnkperiod_sales1Attributes;
        $this->Parent->lnkperiod_sales1->Value = $Header->lnkperiod_sales1;
        $this->Parent->lnkperiod_sales1->Attributes->RestoreFromArray($Header->_lnkperiod_sales1Attributes);
        $this->lnkperiod_pump1 = $Header->lnkperiod_pump1;
        $this->_lnkperiod_pump1Page = $Header->_lnkperiod_pump1Page;
        $this->_lnkperiod_pump1Parameters = $Header->_lnkperiod_pump1Parameters;
        $Header->_lnkperiod_pump1Attributes = $this->_lnkperiod_pump1Attributes;
        $this->Parent->lnkperiod_pump1->Value = $Header->lnkperiod_pump1;
        $this->Parent->lnkperiod_pump1->Attributes->RestoreFromArray($Header->_lnkperiod_pump1Attributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_trx_sales = $this->Parent->TotalSum_trx_sales->GetValue();
        $this->TotalSum_pump_sales = $this->Parent->TotalSum_pump_sales->GetValue();
        $this->TotalSum_total_amount_diff = $this->Parent->TotalSum_total_amount_diff->GetValue();
    }
}
//End Report6 ReportGroup class

//Report6 GroupsCollection class @143-99A81052
class clsGroupsCollectionReport6 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport6(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport6($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_plu_id->Value = $this->Parent->tkt_plu_id->initialValue;
        $this->Parent->tkt_plu_long_desc->Value = $this->Parent->tkt_plu_long_desc->initialValue;
        $this->Parent->trx_qty->Value = $this->Parent->trx_qty->initialValue;
        $this->Parent->trx_sales->Value = $this->Parent->trx_sales->initialValue;
        $this->Parent->pump_qty->Value = $this->Parent->pump_qty->initialValue;
        $this->Parent->pump_sales->Value = $this->Parent->pump_sales->initialValue;
        $this->Parent->qty_diff->Value = $this->Parent->qty_diff->initialValue;
        $this->Parent->total_amount_diff->Value = $this->Parent->total_amount_diff->initialValue;
        $this->Parent->TotalSum_trx_sales->Value = $this->Parent->TotalSum_trx_sales->initialValue;
        $this->Parent->TotalSum_pump_sales->Value = $this->Parent->TotalSum_pump_sales->initialValue;
        $this->Parent->TotalSum_total_amount_diff->Value = $this->Parent->TotalSum_total_amount_diff->initialValue;
        $this->Parent->lnkperiod_sales1->Value = $this->Parent->lnkperiod_sales1->initialValue;
        $this->Parent->lnkperiod_pump1->Value = $this->Parent->lnkperiod_pump1->initialValue;
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
//End Report6 GroupsCollection class

class clsReportReport6 { //Report6 Class @143-F36E264B

//Report6 Variables @143-C68819AF

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
//End Report6 Variables

//Class_Initialize Event @143-6069D7E7
    function clsReportReport6($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report6";
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport6DataSource($this);
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

        $this->tkt_plu_id = new clsControl(ccsReportLabel, "tkt_plu_id", "tkt_plu_id", ccsMemo, "", "", $this);
        $this->tkt_plu_id->HTML = true;
        $this->tkt_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsMemo, "", "", $this);
        $this->tkt_plu_long_desc->HTML = true;
        $this->tkt_plu_long_desc->EmptyText = "&nbsp;";
        $this->trx_qty = new clsControl(ccsReportLabel, "trx_qty", "trx_qty", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->trx_qty->HTML = true;
        $this->trx_qty->EmptyText = "&nbsp;";
        $this->trx_sales = new clsControl(ccsReportLabel, "trx_sales", "trx_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->trx_sales->HTML = true;
        $this->trx_sales->EmptyText = "&nbsp;";
        $this->pump_qty = new clsControl(ccsReportLabel, "pump_qty", "pump_qty", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->pump_qty->HTML = true;
        $this->pump_qty->EmptyText = "&nbsp;";
        $this->pump_sales = new clsControl(ccsReportLabel, "pump_sales", "pump_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->pump_sales->HTML = true;
        $this->pump_sales->EmptyText = "&nbsp;";
        $this->qty_diff = new clsControl(ccsReportLabel, "qty_diff", "qty_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->qty_diff->HTML = true;
        $this->qty_diff->EmptyText = "&nbsp;";
        $this->total_amount_diff = new clsControl(ccsReportLabel, "total_amount_diff", "total_amount_diff", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->total_amount_diff->HTML = true;
        $this->total_amount_diff->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_trx_sales = new clsControl(ccsReportLabel, "TotalSum_trx_sales", "TotalSum_trx_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_trx_sales->HTML = true;
        $this->TotalSum_trx_sales->TotalFunction = "Sum";
        $this->TotalSum_trx_sales->EmptyText = "&nbsp;";
        $this->TotalSum_pump_sales = new clsControl(ccsReportLabel, "TotalSum_pump_sales", "TotalSum_pump_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_pump_sales->HTML = true;
        $this->TotalSum_pump_sales->TotalFunction = "Sum";
        $this->TotalSum_pump_sales->EmptyText = "&nbsp;";
        $this->TotalSum_total_amount_diff = new clsControl(ccsReportLabel, "TotalSum_total_amount_diff", "TotalSum_total_amount_diff", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_amount_diff->HTML = true;
        $this->TotalSum_total_amount_diff->TotalFunction = "Sum";
        $this->TotalSum_total_amount_diff->EmptyText = "&nbsp;";
        $this->lnkperiod_sales1 = new clsControl(ccsLink, "lnkperiod_sales1", "lnkperiod_sales1", ccsText, "", CCGetRequestParam("lnkperiod_sales1", ccsGet, NULL), $this);
        $this->lnkperiod_sales1->Page = "SSFTicketSalesbyProd.php";
        $this->lnkperiod_pump1 = new clsControl(ccsLink, "lnkperiod_pump1", "lnkperiod_pump1", ccsText, "", CCGetRequestParam("lnkperiod_pump1", ccsGet, NULL), $this);
        $this->lnkperiod_pump1->Page = "../../Reports/SSFTransactionsReport.php";
    }
//End Class_Initialize Event

//Initialize Method @143-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @143-BEF2F160
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->trx_qty->Errors->Count());
        $errors = ($errors || $this->trx_sales->Errors->Count());
        $errors = ($errors || $this->pump_qty->Errors->Count());
        $errors = ($errors || $this->pump_sales->Errors->Count());
        $errors = ($errors || $this->qty_diff->Errors->Count());
        $errors = ($errors || $this->total_amount_diff->Errors->Count());
        $errors = ($errors || $this->TotalSum_trx_sales->Errors->Count());
        $errors = ($errors || $this->TotalSum_pump_sales->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_amount_diff->Errors->Count());
        $errors = ($errors || $this->lnkperiod_sales1->Errors->Count());
        $errors = ($errors || $this->lnkperiod_pump1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @143-3E824C5F
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->trx_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->trx_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->qty_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_amount_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_trx_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_pump_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_amount_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lnkperiod_sales1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lnkperiod_pump1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @143-F3CF60BD
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionReport6($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
            $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
            $this->trx_qty->SetValue($this->DataSource->trx_qty->GetValue());
            $this->trx_sales->SetValue($this->DataSource->trx_sales->GetValue());
            $this->pump_qty->SetValue($this->DataSource->pump_qty->GetValue());
            $this->pump_sales->SetValue($this->DataSource->pump_sales->GetValue());
            $this->qty_diff->SetValue($this->DataSource->qty_diff->GetValue());
            $this->total_amount_diff->SetValue($this->DataSource->total_amount_diff->GetValue());
            $this->TotalSum_trx_sales->SetValue($this->DataSource->TotalSum_trx_sales->GetValue());
            $this->TotalSum_pump_sales->SetValue($this->DataSource->TotalSum_pump_sales->GetValue());
            $this->TotalSum_total_amount_diff->SetValue($this->DataSource->TotalSum_total_amount_diff->GetValue());
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

        $this->Attributes->SetValue("difcolor", "");
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
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["trx_qty"] = $this->trx_qty->Visible;
            $this->ControlsVisible["trx_sales"] = $this->trx_sales->Visible;
            $this->ControlsVisible["pump_qty"] = $this->pump_qty->Visible;
            $this->ControlsVisible["pump_sales"] = $this->pump_sales->Visible;
            $this->ControlsVisible["qty_diff"] = $this->qty_diff->Visible;
            $this->ControlsVisible["total_amount_diff"] = $this->total_amount_diff->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_plu_id->SetValue($items[$i]->tkt_plu_id);
                        $this->tkt_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_plu_idAttributes);
                        $this->tkt_plu_long_desc->SetValue($items[$i]->tkt_plu_long_desc);
                        $this->tkt_plu_long_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_long_descAttributes);
                        $this->trx_qty->SetValue($items[$i]->trx_qty);
                        $this->trx_qty->Attributes->RestoreFromArray($items[$i]->_trx_qtyAttributes);
                        $this->trx_sales->SetValue($items[$i]->trx_sales);
                        $this->trx_sales->Attributes->RestoreFromArray($items[$i]->_trx_salesAttributes);
                        $this->pump_qty->SetValue($items[$i]->pump_qty);
                        $this->pump_qty->Attributes->RestoreFromArray($items[$i]->_pump_qtyAttributes);
                        $this->pump_sales->SetValue($items[$i]->pump_sales);
                        $this->pump_sales->Attributes->RestoreFromArray($items[$i]->_pump_salesAttributes);
                        $this->qty_diff->SetValue($items[$i]->qty_diff);
                        $this->qty_diff->Attributes->RestoreFromArray($items[$i]->_qty_diffAttributes);
                        $this->total_amount_diff->SetValue($items[$i]->total_amount_diff);
                        $this->total_amount_diff->Attributes->RestoreFromArray($items[$i]->_total_amount_diffAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->trx_qty->Show();
                        $this->trx_sales->Show();
                        $this->pump_qty->Show();
                        $this->pump_sales->Show();
                        $this->qty_diff->Show();
                        $this->total_amount_diff->Show();
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
                            $this->TotalSum_trx_sales->SetText(CCFormatNumber($items[$i]->TotalSum_trx_sales, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_trx_sales->Attributes->RestoreFromArray($items[$i]->_TotalSum_trx_salesAttributes);
                            $this->TotalSum_pump_sales->SetText(CCFormatNumber($items[$i]->TotalSum_pump_sales, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_pump_sales->Attributes->RestoreFromArray($items[$i]->_TotalSum_pump_salesAttributes);
                            $this->TotalSum_total_amount_diff->SetText(CCFormatNumber($items[$i]->TotalSum_total_amount_diff, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_amount_diff->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_amount_diffAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_trx_sales->Show();
                                $this->TotalSum_pump_sales->Show();
                                $this->TotalSum_total_amount_diff->Show();
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
                            $this->lnkperiod_sales1->SetValue($items[$i]->lnkperiod_sales1);
                            $this->lnkperiod_sales1->Page = $items[$i]->_lnkperiod_sales1Page;
                            $this->lnkperiod_sales1->Parameters = $items[$i]->_lnkperiod_sales1Parameters;
                            $this->lnkperiod_sales1->Attributes->RestoreFromArray($items[$i]->_lnkperiod_sales1Attributes);
                            $this->lnkperiod_pump1->SetValue($items[$i]->lnkperiod_pump1);
                            $this->lnkperiod_pump1->Page = $items[$i]->_lnkperiod_pump1Page;
                            $this->lnkperiod_pump1->Parameters = $items[$i]->_lnkperiod_pump1Parameters;
                            $this->lnkperiod_pump1->Attributes->RestoreFromArray($items[$i]->_lnkperiod_pump1Attributes);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->lnkperiod_sales1->Show();
                                $this->lnkperiod_pump1->Show();
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

} //End Report6 Class @143-FCB6E20C

class clsReport6DataSource extends clsDBConnection1 {  //Report6DataSource Class @143-23A762E8

//DataSource Variables @143-CE1EDD73
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_plu_long_desc;
    public $trx_qty;
    public $trx_sales;
    public $pump_qty;
    public $pump_sales;
    public $qty_diff;
    public $total_amount_diff;
    public $TotalSum_trx_sales;
    public $TotalSum_pump_sales;
    public $TotalSum_total_amount_diff;
//End DataSource Variables

//DataSourceClass_Initialize Event @143-B7EA96EA
    function clsReport6DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report6";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsMemo, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsMemo, "");
        $this->trx_qty = new clsField("trx_qty", ccsFloat, "");
        $this->trx_sales = new clsField("trx_sales", ccsFloat, "");
        $this->pump_qty = new clsField("pump_qty", ccsFloat, "");
        $this->pump_sales = new clsField("pump_sales", ccsFloat, "");
        $this->qty_diff = new clsField("qty_diff", ccsFloat, "");
        $this->total_amount_diff = new clsField("total_amount_diff", ccsFloat, "");
        $this->TotalSum_trx_sales = new clsField("TotalSum_trx_sales", ccsFloat, "");
        $this->TotalSum_pump_sales = new clsField("TotalSum_pump_sales", ccsFloat, "");
        $this->TotalSum_total_amount_diff = new clsField("TotalSum_total_amount_diff", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @143-B4C66A6E
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "subqry.tkt_plu_id, subqry.tkt_plu_long_desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @143-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @143-25B95781
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "Select subqry.tkt_plu_id, subqry.tkt_plu_long_desc,sum(subqry.tkt_qty_sales) as trx_qty,sum(subqry.tkt_total_amount_sales) as trx_sales, sum(subqry.tkt_qty_pump) as pump_qty, sum(subqry.tkt_total_amount_pump) as pump_sales,   (sum(subqry.tkt_qty_sales) - sum(subqry.tkt_qty_pump)) as qty_diff, (sum(subqry.tkt_total_amount_sales) - sum(subqry.tkt_total_amount_pump) ) as total_amount_diff\n" .
        "from \n" .
        "(SELECT  ssf_tkt_trx_detail.tkt_plu_id, ssf_tkt_plu.tkt_plu_long_desc, \n" .
        "Sum(ssf_tkt_trx_detail.tkt_qty * ReplacetoNumberCatalog) AS tkt_qty_sales,\n" .
        "Sum(ssf_tkt_trx_detail.tkt_total_amount * ReplacetoNumberCatalog) AS tkt_total_amount_sales,\n" .
        "0 as tkt_qty_pump,\n" .
        "0 as tkt_total_amount_pump\n" .
        "FROM (((ssf_tkt_trx_header INNER JOIN ssf_tkt_trx_detail ON ssf_tkt_trx_header.tkt_trans_id = ssf_tkt_trx_detail.tkt_trans_id) \n" .
        "INNER JOIN ssf_tkt_plu ON ssf_tkt_trx_detail.tkt_plu_id = ssf_tkt_plu.tkt_plu_id and ssf_tkt_plu.tkt_plu_type = 'F') \n" .
        "INNER JOIN ssf_tkt_plu_grades ON ssf_tkt_plu_grades.tkt_plu_id = ssf_tkt_plu.tkt_plu_id )\n" .
        "LEFT JOIN ssf_tkt_catalog ON tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "WHERECRITERIA_1\n" .
        "union\n" .
        "SELECT  ssf_tkt_plu.tkt_plu_id, ssf_tkt_plu.tkt_plu_long_desc, \n" .
        "0 as tkt_qty_sales,\n" .
        "0 as tkt_total_amount_sales,\n" .
        "Sum(ssf_pump_sales.volume) AS tkt_qty_pump,\n" .
        "Sum(ssf_pump_sales.money) AS tkt_total_amount_pump\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_tkt_plu_grades ON ssf_pump_sales.grade_id = ssf_tkt_plu_grades.tkt_grade_id)\n" .
        "INNER JOIN ssf_tkt_plu ON ssf_tkt_plu_grades.tkt_plu_id = ssf_tkt_plu.tkt_plu_id and ssf_tkt_plu.tkt_plu_type = 'F'\n" .
        "WHERECRITERIA_2) subqry\n" .
        "group by subqry.tkt_plu_id, subqry.tkt_plu_long_desc {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @143-7252DE63
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->trx_qty->SetDBValue(trim($this->f("trx_qty")));
        $this->trx_sales->SetDBValue(trim($this->f("trx_sales")));
        $this->pump_qty->SetDBValue(trim($this->f("pump_qty")));
        $this->pump_sales->SetDBValue(trim($this->f("pump_sales")));
        $this->qty_diff->SetDBValue(trim($this->f("qty_diff")));
        $this->total_amount_diff->SetDBValue(trim($this->f("total_amount_diff")));
        $this->TotalSum_trx_sales->SetDBValue(trim($this->f("trx_sales")));
        $this->TotalSum_pump_sales->SetDBValue(trim($this->f("pump_sales")));
        $this->TotalSum_total_amount_diff->SetDBValue(trim($this->f("total_amount_diff")));
    }
//End SetValues Method

} //End Report6DataSource Class @143-FCB6E20C

//Report3 ReportGroup class @179-21ADADA3
class clsReportGroupReport3 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_attendant_id, $tkt_attendant_idDup, $_tkt_attendant_idAttributes;
    public $tkt_tender_id, $_tkt_tender_idAttributes;
    public $tkt_tender_amount, $_tkt_tender_amountAttributes;
    public $Sum_tkt_tender_amount, $_Sum_tkt_tender_amountAttributes;
    public $TotalSum_tkt_tender_amount, $_TotalSum_tkt_tender_amountAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $tkt_attendant_idTotalIndex;

    function clsReportGroupReport3(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_attendant_id = $this->Parent->tkt_attendant_id->Value;
        $this->tkt_tender_id = $this->Parent->tkt_tender_id->Value;
        $this->tkt_tender_amount = $this->Parent->tkt_tender_amount->Value;
        if ($PrevGroup) {
            $this->tkt_attendant_idDup =  CCCompareValues($this->tkt_attendant_id, $PrevGroup->tkt_attendant_id, $this->Parent->tkt_attendant_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_tkt_tender_amount = $this->Parent->Sum_tkt_tender_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetTotalValue($mode);
        $this->_Sorter_tkt_tender_idAttributes = $this->Parent->Sorter_tkt_tender_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_tender_amountAttributes = $this->Parent->Sorter_tkt_tender_amount->Attributes->GetAsArray();
        $this->_tkt_attendant_idAttributes = $this->Parent->tkt_attendant_id->Attributes->GetAsArray();
        $this->_tkt_tender_idAttributes = $this->Parent->tkt_tender_id->Attributes->GetAsArray();
        $this->_tkt_tender_amountAttributes = $this->Parent->tkt_tender_amount->Attributes->GetAsArray();
        $this->_Sum_tkt_tender_amountAttributes = $this->Parent->Sum_tkt_tender_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_tender_amountAttributes = $this->Parent->TotalSum_tkt_tender_amount->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_tkt_tender_amount = $this->Sum_tkt_tender_amount;
        $Header->_Sum_tkt_tender_amountAttributes = $this->_Sum_tkt_tender_amountAttributes;
        $Header->TotalSum_tkt_tender_amount = $this->TotalSum_tkt_tender_amount;
        $Header->_TotalSum_tkt_tender_amountAttributes = $this->_TotalSum_tkt_tender_amountAttributes;
        $this->tkt_attendant_id = $Header->tkt_attendant_id;
        $Header->_tkt_attendant_idAttributes = $this->_tkt_attendant_idAttributes;
        $this->Parent->tkt_attendant_id->Value = $Header->tkt_attendant_id;
        $this->Parent->tkt_attendant_id->Attributes->RestoreFromArray($Header->_tkt_attendant_idAttributes);
        $this->tkt_tender_id = $Header->tkt_tender_id;
        $Header->_tkt_tender_idAttributes = $this->_tkt_tender_idAttributes;
        $this->Parent->tkt_tender_id->Value = $Header->tkt_tender_id;
        $this->Parent->tkt_tender_id->Attributes->RestoreFromArray($Header->_tkt_tender_idAttributes);
        $this->tkt_tender_amount = $Header->tkt_tender_amount;
        $Header->_tkt_tender_amountAttributes = $this->_tkt_tender_amountAttributes;
        $this->Parent->tkt_tender_amount->Value = $Header->tkt_tender_amount;
        $this->Parent->tkt_tender_amount->Attributes->RestoreFromArray($Header->_tkt_tender_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->Sum_tkt_tender_amount = $this->Parent->Sum_tkt_tender_amount->GetValue();
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetValue();
    }
}
//End Report3 ReportGroup class

//Report3 GroupsCollection class @179-937690A4
class clsGroupsCollectionReport3 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mtkt_attendant_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport3(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mtkt_attendant_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport3($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->tkt_attendant_idTotalIndex = $this->mtkt_attendant_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_attendant_id->Value = $this->Parent->tkt_attendant_id->initialValue;
        $this->Parent->tkt_tender_id->Value = $this->Parent->tkt_tender_id->initialValue;
        $this->Parent->tkt_tender_amount->Value = $this->Parent->tkt_tender_amount->initialValue;
        $this->Parent->Sum_tkt_tender_amount->Value = $this->Parent->Sum_tkt_tender_amount->initialValue;
        $this->Parent->TotalSum_tkt_tender_amount->Value = $this->Parent->TotalSum_tkt_tender_amount->initialValue;
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
        if ($groupName == "tkt_attendant_id") {
            $Grouptkt_attendant_id = & $this->InitGroup(true);
            $this->Parent->tkt_attendant_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_attendant_id_Header->CCSEvents, "OnInitialize", $this->Parent->tkt_attendant_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->tkt_attendant_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->tkt_attendant_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->tkt_attendant_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->tkt_attendant_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_attendant_id_Header->Height;
                $Grouptkt_attendant_id->SetTotalControls("GetNextValue");
            $this->Parent->tkt_attendant_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_attendant_id_Header->CCSEvents, "OnCalculate", $this->Parent->tkt_attendant_id_Header);
            $Grouptkt_attendant_id->SetControls();
            $Grouptkt_attendant_id->Mode = 1;
            $Grouptkt_attendant_id->GroupType = "tkt_attendant_id";
            $this->mtkt_attendant_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouptkt_attendant_id;
            $this->Parent->Sum_tkt_tender_amount->Reset();
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
        $Grouptkt_attendant_id = & $this->InitGroup(true);
        $this->Parent->tkt_attendant_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_attendant_id_Footer->CCSEvents, "OnInitialize", $this->Parent->tkt_attendant_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->tkt_attendant_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->tkt_attendant_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->tkt_attendant_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouptkt_attendant_id->SetTotalControls("GetPrevValue");
        $Grouptkt_attendant_id->SyncWithHeader($this->Groups[$this->mtkt_attendant_idCurrentHeaderIndex]);
        if ($this->Parent->tkt_attendant_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_attendant_id_Footer->Height;
        $this->Parent->tkt_attendant_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_attendant_id_Footer->CCSEvents, "OnCalculate", $this->Parent->tkt_attendant_id_Footer);
        $Grouptkt_attendant_id->SetControls();
        $this->Parent->Sum_tkt_tender_amount->Reset();
        $this->RestoreValues();
        $Grouptkt_attendant_id->Mode = 2;
        $Grouptkt_attendant_id->GroupType ="tkt_attendant_id";
        $this->Groups[] = & $Grouptkt_attendant_id;
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
//End Report3 GroupsCollection class

class clsReportReport3 { //Report3 Class @179-8E19D20E

//Report3 Variables @179-899D4488

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
    public $tkt_attendant_id_HeaderBlock, $tkt_attendant_id_Header;
    public $tkt_attendant_id_FooterBlock, $tkt_attendant_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $tkt_attendant_id_HeaderControls, $tkt_attendant_id_FooterControls;
    public $Sorter_tkt_tender_id;
    public $Sorter_tkt_tender_amount;
//End Report3 Variables

//Class_Initialize Event @179-E994FE4C
    function clsReportReport3($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report3";
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->tkt_attendant_id_Footer = new clsSection($this);
        $this->tkt_attendant_id_Header = new clsSection($this);
        $this->tkt_attendant_id_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->tkt_attendant_id_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport3DataSource($this);
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
        $this->SorterName = CCGetParam("Report3Order", "");
        $this->SorterDirection = CCGetParam("Report3Dir", "");

        $this->Sorter_tkt_tender_id = new clsSorter($this->ComponentName, "Sorter_tkt_tender_id", $FileName, $this);
        $this->Sorter_tkt_tender_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tender_amount", $FileName, $this);
        $this->tkt_attendant_id = new clsControl(ccsReportLabel, "tkt_attendant_id", "tkt_attendant_id", ccsMemo, "", "", $this);
        $this->tkt_attendant_id->HTML = true;
        $this->tkt_attendant_id->EmptyText = "&nbsp;";
        $this->tkt_tender_id = new clsControl(ccsReportLabel, "tkt_tender_id", "tkt_tender_id", ccsText, "", "", $this);
        $this->tkt_tender_id->HTML = true;
        $this->tkt_tender_id->EmptyText = "&nbsp;";
        $this->tkt_tender_amount = new clsControl(ccsReportLabel, "tkt_tender_amount", "tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tender_amount->HTML = true;
        $this->tkt_tender_amount->EmptyText = "&nbsp;";
        $this->Sum_tkt_tender_amount = new clsControl(ccsReportLabel, "Sum_tkt_tender_amount", "Sum_tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_tkt_tender_amount->HTML = true;
        $this->Sum_tkt_tender_amount->TotalFunction = "Sum";
        $this->Sum_tkt_tender_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_tender_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_tender_amount", "TotalSum_tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_tender_amount->HTML = true;
        $this->TotalSum_tkt_tender_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_tender_amount->EmptyText = "&nbsp;";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @179-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @179-15EB1B47
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_attendant_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->Sum_tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @179-26BEB42A
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_attendant_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @179-D3811ACE
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $tkt_attendant_idKey = "";
        $Groups = new clsGroupsCollectionReport3($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_attendant_id->SetValue($this->DataSource->tkt_attendant_id->GetValue());
            $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
            $this->tkt_tender_amount->SetValue($this->DataSource->tkt_tender_amount->GetValue());
            $this->Sum_tkt_tender_amount->SetValue($this->DataSource->Sum_tkt_tender_amount->GetValue());
            $this->TotalSum_tkt_tender_amount->SetValue($this->DataSource->TotalSum_tkt_tender_amount->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $tkt_attendant_idKey != $this->DataSource->f("tkt_attendant_id")) {
                $Groups->OpenGroup("tkt_attendant_id");
            }
            $Groups->AddItem();
            $tkt_attendant_idKey = $this->DataSource->f("tkt_attendant_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $tkt_attendant_idKey != $this->DataSource->f("tkt_attendant_id")) {
                $Groups->CloseGroup("tkt_attendant_id");
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
            $this->ControlsVisible["tkt_attendant_id"] = $this->tkt_attendant_id->Visible;
            $this->ControlsVisible["tkt_tender_id"] = $this->tkt_tender_id->Visible;
            $this->ControlsVisible["tkt_tender_amount"] = $this->tkt_tender_amount->Visible;
            $this->ControlsVisible["Sum_tkt_tender_amount"] = $this->Sum_tkt_tender_amount->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_attendant_id->Visible = $this->ControlsVisible["tkt_attendant_id"] && !$items[$i]->tkt_attendant_idDup;
                        $this->tkt_attendant_id->SetValue($items[$i]->tkt_attendant_id);
                        $this->tkt_attendant_id->Attributes->RestoreFromArray($items[$i]->_tkt_attendant_idAttributes);
                        $this->tkt_tender_id->SetValue($items[$i]->tkt_tender_id);
                        $this->tkt_tender_id->Attributes->RestoreFromArray($items[$i]->_tkt_tender_idAttributes);
                        $this->tkt_tender_amount->SetValue($items[$i]->tkt_tender_amount);
                        $this->tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tender_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_attendant_id->Show();
                        $this->tkt_tender_id->Show();
                        $this->tkt_tender_amount->Show();
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
                            $this->TotalSum_tkt_tender_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_tender_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_tender_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_tender_amount->Show();
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
                                $this->Sorter_tkt_tender_id->Show();
                                $this->Sorter_tkt_tender_amount->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Navigator->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "tkt_attendant_id":
                        if ($items[$i]->Mode == 1) {
                            $this->tkt_attendant_id_Header->CCSEventResult = CCGetEvent($this->tkt_attendant_id_Header->CCSEvents, "BeforeShow", $this->tkt_attendant_id_Header);
                            if ($this->tkt_attendant_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_attendant_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_attendant_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_tkt_tender_amount->SetText(CCFormatNumber($items[$i]->Sum_tkt_tender_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_Sum_tkt_tender_amountAttributes);
                            $this->tkt_attendant_id_Footer->CCSEventResult = CCGetEvent($this->tkt_attendant_id_Footer->CCSEvents, "BeforeShow", $this->tkt_attendant_id_Footer);
                            if ($this->tkt_attendant_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_attendant_id_Footer";
                                $this->Sum_tkt_tender_amount->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_attendant_id_Footer", true, "Section Detail");
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

} //End Report3 Class @179-FCB6E20C

class clsReport3DataSource extends clsDBConnection1 {  //Report3DataSource Class @179-64A32682

//DataSource Variables @179-C57F4883
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_attendant_id;
    public $tkt_tender_id;
    public $tkt_tender_amount;
    public $Sum_tkt_tender_amount;
    public $TotalSum_tkt_tender_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @179-339832E3
    function clsReport3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report3";
        $this->Initialize();
        $this->tkt_attendant_id = new clsField("tkt_attendant_id", ccsMemo, "");
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_amount = new clsField("tkt_tender_amount", ccsFloat, "");
        $this->Sum_tkt_tender_amount = new clsField("Sum_tkt_tender_amount", ccsFloat, "");
        $this->TotalSum_tkt_tender_amount = new clsField("TotalSum_tkt_tender_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @179-54B84856
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tender_id" => array("tkt_tender_id", ""), 
            "Sorter_tkt_tender_amount" => array("tkt_tender_amount", "")));
    }
//End SetOrder Method

//Prepare Method @179-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @179-7B34D454
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT  ssf_tkt_trx_header.tkt_attendant_id, ssf_tkt_trx_tender.tkt_tender_id, Sum(tkt_tender_amount * ReplacetoNumberCatalog) AS tkt_tender_amount \n" .
        "FROM (ssf_tkt_trx_header INNER JOIN ssf_tkt_trx_tender ON ssf_tkt_trx_header.tkt_trans_id = ssf_tkt_trx_tender.tkt_trans_id) \n" .
        "LEFT JOIN ssf_tkt_catalog ON tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "tkt_attendant_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @179-E0E61D94
    function SetValues()
    {
        $this->tkt_attendant_id->SetDBValue($this->f("tkt_attendant_id"));
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->Sum_tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->TotalSum_tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
    }
//End SetValues Method

} //End Report3DataSource Class @179-FCB6E20C

//Report4 ReportGroup class @196-47115FDC
class clsReportGroupReport4 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_pos_id, $tkt_pos_idDup, $_tkt_pos_idAttributes;
    public $tkt_tender_id, $_tkt_tender_idAttributes;
    public $tkt_tender_amount, $_tkt_tender_amountAttributes;
    public $Sum_tkt_tender_amount, $_Sum_tkt_tender_amountAttributes;
    public $TotalSum_tkt_tender_amount, $_TotalSum_tkt_tender_amountAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $tkt_pos_idTotalIndex;

    function clsReportGroupReport4(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_pos_id = $this->Parent->tkt_pos_id->Value;
        $this->tkt_tender_id = $this->Parent->tkt_tender_id->Value;
        $this->tkt_tender_amount = $this->Parent->tkt_tender_amount->Value;
        if ($PrevGroup) {
            $this->tkt_pos_idDup =  CCCompareValues($this->tkt_pos_id, $PrevGroup->tkt_pos_id, $this->Parent->tkt_pos_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_tkt_tender_amount = $this->Parent->Sum_tkt_tender_amount->GetTotalValue($mode);
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetTotalValue($mode);
        $this->_Sorter_tkt_tender_idAttributes = $this->Parent->Sorter_tkt_tender_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_tender_amountAttributes = $this->Parent->Sorter_tkt_tender_amount->Attributes->GetAsArray();
        $this->_tkt_pos_idAttributes = $this->Parent->tkt_pos_id->Attributes->GetAsArray();
        $this->_tkt_tender_idAttributes = $this->Parent->tkt_tender_id->Attributes->GetAsArray();
        $this->_tkt_tender_amountAttributes = $this->Parent->tkt_tender_amount->Attributes->GetAsArray();
        $this->_Sum_tkt_tender_amountAttributes = $this->Parent->Sum_tkt_tender_amount->Attributes->GetAsArray();
        $this->_TotalSum_tkt_tender_amountAttributes = $this->Parent->TotalSum_tkt_tender_amount->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_tkt_tender_amount = $this->Sum_tkt_tender_amount;
        $Header->_Sum_tkt_tender_amountAttributes = $this->_Sum_tkt_tender_amountAttributes;
        $Header->TotalSum_tkt_tender_amount = $this->TotalSum_tkt_tender_amount;
        $Header->_TotalSum_tkt_tender_amountAttributes = $this->_TotalSum_tkt_tender_amountAttributes;
        $this->tkt_pos_id = $Header->tkt_pos_id;
        $Header->_tkt_pos_idAttributes = $this->_tkt_pos_idAttributes;
        $this->Parent->tkt_pos_id->Value = $Header->tkt_pos_id;
        $this->Parent->tkt_pos_id->Attributes->RestoreFromArray($Header->_tkt_pos_idAttributes);
        $this->tkt_tender_id = $Header->tkt_tender_id;
        $Header->_tkt_tender_idAttributes = $this->_tkt_tender_idAttributes;
        $this->Parent->tkt_tender_id->Value = $Header->tkt_tender_id;
        $this->Parent->tkt_tender_id->Attributes->RestoreFromArray($Header->_tkt_tender_idAttributes);
        $this->tkt_tender_amount = $Header->tkt_tender_amount;
        $Header->_tkt_tender_amountAttributes = $this->_tkt_tender_amountAttributes;
        $this->Parent->tkt_tender_amount->Value = $Header->tkt_tender_amount;
        $this->Parent->tkt_tender_amount->Attributes->RestoreFromArray($Header->_tkt_tender_amountAttributes);
    }
    function ChangeTotalControls() {
        $this->Sum_tkt_tender_amount = $this->Parent->Sum_tkt_tender_amount->GetValue();
        $this->TotalSum_tkt_tender_amount = $this->Parent->TotalSum_tkt_tender_amount->GetValue();
    }
}
//End Report4 ReportGroup class

//Report4 GroupsCollection class @196-449F3968
class clsGroupsCollectionReport4 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mtkt_pos_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport4(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mtkt_pos_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport4($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->tkt_pos_idTotalIndex = $this->mtkt_pos_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_pos_id->Value = $this->Parent->tkt_pos_id->initialValue;
        $this->Parent->tkt_tender_id->Value = $this->Parent->tkt_tender_id->initialValue;
        $this->Parent->tkt_tender_amount->Value = $this->Parent->tkt_tender_amount->initialValue;
        $this->Parent->Sum_tkt_tender_amount->Value = $this->Parent->Sum_tkt_tender_amount->initialValue;
        $this->Parent->TotalSum_tkt_tender_amount->Value = $this->Parent->TotalSum_tkt_tender_amount->initialValue;
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
        if ($groupName == "tkt_pos_id") {
            $Grouptkt_pos_id = & $this->InitGroup(true);
            $this->Parent->tkt_pos_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_pos_id_Header->CCSEvents, "OnInitialize", $this->Parent->tkt_pos_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->tkt_pos_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->tkt_pos_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->tkt_pos_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->tkt_pos_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_pos_id_Header->Height;
                $Grouptkt_pos_id->SetTotalControls("GetNextValue");
            $this->Parent->tkt_pos_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_pos_id_Header->CCSEvents, "OnCalculate", $this->Parent->tkt_pos_id_Header);
            $Grouptkt_pos_id->SetControls();
            $Grouptkt_pos_id->Mode = 1;
            $Grouptkt_pos_id->GroupType = "tkt_pos_id";
            $this->mtkt_pos_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouptkt_pos_id;
            $this->Parent->Sum_tkt_tender_amount->Reset();
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
        $Grouptkt_pos_id = & $this->InitGroup(true);
        $this->Parent->tkt_pos_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_pos_id_Footer->CCSEvents, "OnInitialize", $this->Parent->tkt_pos_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->tkt_pos_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->tkt_pos_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->tkt_pos_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouptkt_pos_id->SetTotalControls("GetPrevValue");
        $Grouptkt_pos_id->SyncWithHeader($this->Groups[$this->mtkt_pos_idCurrentHeaderIndex]);
        if ($this->Parent->tkt_pos_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_pos_id_Footer->Height;
        $this->Parent->tkt_pos_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_pos_id_Footer->CCSEvents, "OnCalculate", $this->Parent->tkt_pos_id_Footer);
        $Grouptkt_pos_id->SetControls();
        $this->Parent->Sum_tkt_tender_amount->Reset();
        $this->RestoreValues();
        $Grouptkt_pos_id->Mode = 2;
        $Grouptkt_pos_id->GroupType ="tkt_pos_id";
        $this->Groups[] = & $Grouptkt_pos_id;
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
//End Report4 GroupsCollection class

class clsReportReport4 { //Report4 Class @196-C15844C9

//Report4 Variables @196-0304E5F3

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
    public $tkt_pos_id_HeaderBlock, $tkt_pos_id_Header;
    public $tkt_pos_id_FooterBlock, $tkt_pos_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $tkt_pos_id_HeaderControls, $tkt_pos_id_FooterControls;
    public $Sorter_tkt_tender_id;
    public $Sorter_tkt_tender_amount;
//End Report4 Variables

//Class_Initialize Event @196-92574802
    function clsReportReport4($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report4";
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->tkt_pos_id_Footer = new clsSection($this);
        $this->tkt_pos_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->tkt_pos_id_Footer->Height);
        $this->tkt_pos_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport4DataSource($this);
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
        $this->SorterName = CCGetParam("Report4Order", "");
        $this->SorterDirection = CCGetParam("Report4Dir", "");

        $this->Sorter_tkt_tender_id = new clsSorter($this->ComponentName, "Sorter_tkt_tender_id", $FileName, $this);
        $this->Sorter_tkt_tender_amount = new clsSorter($this->ComponentName, "Sorter_tkt_tender_amount", $FileName, $this);
        $this->tkt_pos_id = new clsControl(ccsReportLabel, "tkt_pos_id", "tkt_pos_id", ccsInteger, "", "", $this);
        $this->tkt_pos_id->HTML = true;
        $this->tkt_pos_id->EmptyText = "&nbsp;";
        $this->tkt_tender_id = new clsControl(ccsReportLabel, "tkt_tender_id", "tkt_tender_id", ccsText, "", "", $this);
        $this->tkt_tender_id->HTML = true;
        $this->tkt_tender_id->EmptyText = "&nbsp;";
        $this->tkt_tender_amount = new clsControl(ccsReportLabel, "tkt_tender_amount", "tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->tkt_tender_amount->HTML = true;
        $this->tkt_tender_amount->EmptyText = "&nbsp;";
        $this->Sum_tkt_tender_amount = new clsControl(ccsReportLabel, "Sum_tkt_tender_amount", "Sum_tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_tkt_tender_amount->HTML = true;
        $this->Sum_tkt_tender_amount->TotalFunction = "Sum";
        $this->Sum_tkt_tender_amount->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_tender_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_tender_amount", "TotalSum_tkt_tender_amount", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_tender_amount->HTML = true;
        $this->TotalSum_tkt_tender_amount->TotalFunction = "Sum";
        $this->TotalSum_tkt_tender_amount->EmptyText = "&nbsp;";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @196-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @196-D32C8312
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_pos_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_id->Errors->Count());
        $errors = ($errors || $this->tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->Sum_tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_tender_amount->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @196-CA5C8401
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_pos_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_tender_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @196-5F7272C0
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $tkt_pos_idKey = "";
        $Groups = new clsGroupsCollectionReport4($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_pos_id->SetValue($this->DataSource->tkt_pos_id->GetValue());
            $this->tkt_tender_id->SetValue($this->DataSource->tkt_tender_id->GetValue());
            $this->tkt_tender_amount->SetValue($this->DataSource->tkt_tender_amount->GetValue());
            $this->Sum_tkt_tender_amount->SetValue($this->DataSource->Sum_tkt_tender_amount->GetValue());
            $this->TotalSum_tkt_tender_amount->SetValue($this->DataSource->TotalSum_tkt_tender_amount->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $tkt_pos_idKey != $this->DataSource->f("tkt_pos_id")) {
                $Groups->OpenGroup("tkt_pos_id");
            }
            $Groups->AddItem();
            $tkt_pos_idKey = $this->DataSource->f("tkt_pos_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $tkt_pos_idKey != $this->DataSource->f("tkt_pos_id")) {
                $Groups->CloseGroup("tkt_pos_id");
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
            $this->ControlsVisible["tkt_pos_id"] = $this->tkt_pos_id->Visible;
            $this->ControlsVisible["tkt_tender_id"] = $this->tkt_tender_id->Visible;
            $this->ControlsVisible["tkt_tender_amount"] = $this->tkt_tender_amount->Visible;
            $this->ControlsVisible["Sum_tkt_tender_amount"] = $this->Sum_tkt_tender_amount->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_pos_id->Visible = $this->ControlsVisible["tkt_pos_id"] && !$items[$i]->tkt_pos_idDup;
                        $this->tkt_pos_id->SetValue($items[$i]->tkt_pos_id);
                        $this->tkt_pos_id->Attributes->RestoreFromArray($items[$i]->_tkt_pos_idAttributes);
                        $this->tkt_tender_id->SetValue($items[$i]->tkt_tender_id);
                        $this->tkt_tender_id->Attributes->RestoreFromArray($items[$i]->_tkt_tender_idAttributes);
                        $this->tkt_tender_amount->SetValue($items[$i]->tkt_tender_amount);
                        $this->tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_tkt_tender_amountAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_pos_id->Show();
                        $this->tkt_tender_id->Show();
                        $this->tkt_tender_amount->Show();
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
                            $this->TotalSum_tkt_tender_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_tender_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_tender_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_tkt_tender_amount->Show();
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
                                $this->Sorter_tkt_tender_id->Show();
                                $this->Sorter_tkt_tender_amount->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Navigator->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "tkt_pos_id":
                        if ($items[$i]->Mode == 1) {
                            $this->tkt_pos_id_Header->CCSEventResult = CCGetEvent($this->tkt_pos_id_Header->CCSEvents, "BeforeShow", $this->tkt_pos_id_Header);
                            if ($this->tkt_pos_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_pos_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_pos_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_tkt_tender_amount->SetText(CCFormatNumber($items[$i]->Sum_tkt_tender_amount, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_tkt_tender_amount->Attributes->RestoreFromArray($items[$i]->_Sum_tkt_tender_amountAttributes);
                            $this->tkt_pos_id_Footer->CCSEventResult = CCGetEvent($this->tkt_pos_id_Footer->CCSEvents, "BeforeShow", $this->tkt_pos_id_Footer);
                            if ($this->tkt_pos_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_pos_id_Footer";
                                $this->Sum_tkt_tender_amount->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_pos_id_Footer", true, "Section Detail");
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

} //End Report4 Class @196-FCB6E20C

class clsReport4DataSource extends clsDBConnection1 {  //Report4DataSource Class @196-67EA4B39

//DataSource Variables @196-B0C11D8F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_pos_id;
    public $tkt_tender_id;
    public $tkt_tender_amount;
    public $Sum_tkt_tender_amount;
    public $TotalSum_tkt_tender_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @196-7DE80580
    function clsReport4DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report4";
        $this->Initialize();
        $this->tkt_pos_id = new clsField("tkt_pos_id", ccsInteger, "");
        $this->tkt_tender_id = new clsField("tkt_tender_id", ccsText, "");
        $this->tkt_tender_amount = new clsField("tkt_tender_amount", ccsFloat, "");
        $this->Sum_tkt_tender_amount = new clsField("Sum_tkt_tender_amount", ccsFloat, "");
        $this->TotalSum_tkt_tender_amount = new clsField("TotalSum_tkt_tender_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @196-54B84856
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tender_id" => array("tkt_tender_id", ""), 
            "Sorter_tkt_tender_amount" => array("tkt_tender_amount", "")));
    }
//End SetOrder Method

//Prepare Method @196-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @196-0E910397
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT  ssf_tkt_trx_header.tkt_pos_id, ssf_tkt_trx_tender.tkt_tender_id, Sum(tkt_tender_amount  * ReplacetoNumberCatalog) AS tkt_tender_amount \n" .
        "FROM (ssf_tkt_trx_header INNER JOIN ssf_tkt_trx_tender ON ssf_tkt_trx_header.tkt_trans_id = ssf_tkt_trx_tender.tkt_trans_id) \n" .
        "LEFT JOIN ssf_tkt_catalog ON tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "tkt_pos_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @196-2A4E6D13
    function SetValues()
    {
        $this->tkt_pos_id->SetDBValue(trim($this->f("tkt_pos_id")));
        $this->tkt_tender_id->SetDBValue($this->f("tkt_tender_id"));
        $this->tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->Sum_tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
        $this->TotalSum_tkt_tender_amount->SetDBValue(trim($this->f("tkt_tender_amount")));
    }
//End SetValues Method

} //End Report4DataSource Class @196-FCB6E20C

//Pump_Group ReportGroup class @223-E9DFF53A
class clsReportGroupPump_Group {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $pump_group_name, $pump_group_nameDup, $_pump_group_nameAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $pump_qty, $_pump_qtyAttributes;
    public $pump_sales, $_pump_salesAttributes;
    public $sub_pump_group_name, $_sub_pump_group_nameAttributes;
    public $TotalSum_total_volume1, $_TotalSum_total_volume1Attributes;
    public $TotalSum_total_money1, $_TotalSum_total_money1Attributes;
    public $TotalSum_pump_qty1, $_TotalSum_pump_qty1Attributes;
    public $TotalSum_pump_sales1, $_TotalSum_pump_sales1Attributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $TotalSum_pump_qty, $_TotalSum_pump_qtyAttributes;
    public $TotalSum_pump_sales, $_TotalSum_pump_salesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $Group_pump_group_nameTotalIndex;

    function clsReportGroupPump_Group(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->pump_group_name = $this->Parent->pump_group_name->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        $this->pump_qty = $this->Parent->pump_qty->Value;
        $this->pump_sales = $this->Parent->pump_sales->Value;
        $this->sub_pump_group_name = $this->Parent->sub_pump_group_name->Value;
        if ($PrevGroup) {
            $this->pump_group_nameDup =  CCCompareValues($this->pump_group_name, $PrevGroup->pump_group_name, $this->Parent->pump_group_name->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_total_volume1 = $this->Parent->TotalSum_total_volume1->GetTotalValue($mode);
        $this->TotalSum_total_money1 = $this->Parent->TotalSum_total_money1->GetTotalValue($mode);
        $this->TotalSum_pump_qty1 = $this->Parent->TotalSum_pump_qty1->GetTotalValue($mode);
        $this->TotalSum_pump_sales1 = $this->Parent->TotalSum_pump_sales1->GetTotalValue($mode);
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->TotalSum_pump_qty = $this->Parent->TotalSum_pump_qty->GetTotalValue($mode);
        $this->TotalSum_pump_sales = $this->Parent->TotalSum_pump_sales->GetTotalValue($mode);
        $this->_pump_group_nameAttributes = $this->Parent->pump_group_name->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_pump_qtyAttributes = $this->Parent->pump_qty->Attributes->GetAsArray();
        $this->_pump_salesAttributes = $this->Parent->pump_sales->Attributes->GetAsArray();
        $this->_sub_pump_group_nameAttributes = $this->Parent->sub_pump_group_name->Attributes->GetAsArray();
        $this->_TotalSum_total_volume1Attributes = $this->Parent->TotalSum_total_volume1->Attributes->GetAsArray();
        $this->_TotalSum_total_money1Attributes = $this->Parent->TotalSum_total_money1->Attributes->GetAsArray();
        $this->_TotalSum_pump_qty1Attributes = $this->Parent->TotalSum_pump_qty1->Attributes->GetAsArray();
        $this->_TotalSum_pump_sales1Attributes = $this->Parent->TotalSum_pump_sales1->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
        $this->_TotalSum_pump_qtyAttributes = $this->Parent->TotalSum_pump_qty->Attributes->GetAsArray();
        $this->_TotalSum_pump_salesAttributes = $this->Parent->TotalSum_pump_sales->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_total_volume1 = $this->TotalSum_total_volume1;
        $Header->_TotalSum_total_volume1Attributes = $this->_TotalSum_total_volume1Attributes;
        $Header->TotalSum_total_money1 = $this->TotalSum_total_money1;
        $Header->_TotalSum_total_money1Attributes = $this->_TotalSum_total_money1Attributes;
        $Header->TotalSum_pump_qty1 = $this->TotalSum_pump_qty1;
        $Header->_TotalSum_pump_qty1Attributes = $this->_TotalSum_pump_qty1Attributes;
        $Header->TotalSum_pump_sales1 = $this->TotalSum_pump_sales1;
        $Header->_TotalSum_pump_sales1Attributes = $this->_TotalSum_pump_sales1Attributes;
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $Header->TotalSum_pump_qty = $this->TotalSum_pump_qty;
        $Header->_TotalSum_pump_qtyAttributes = $this->_TotalSum_pump_qtyAttributes;
        $Header->TotalSum_pump_sales = $this->TotalSum_pump_sales;
        $Header->_TotalSum_pump_salesAttributes = $this->_TotalSum_pump_salesAttributes;
        $this->pump_group_name = $Header->pump_group_name;
        $Header->_pump_group_nameAttributes = $this->_pump_group_nameAttributes;
        $this->Parent->pump_group_name->Value = $Header->pump_group_name;
        $this->Parent->pump_group_name->Attributes->RestoreFromArray($Header->_pump_group_nameAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
        $this->pump_qty = $Header->pump_qty;
        $Header->_pump_qtyAttributes = $this->_pump_qtyAttributes;
        $this->Parent->pump_qty->Value = $Header->pump_qty;
        $this->Parent->pump_qty->Attributes->RestoreFromArray($Header->_pump_qtyAttributes);
        $this->pump_sales = $Header->pump_sales;
        $Header->_pump_salesAttributes = $this->_pump_salesAttributes;
        $this->Parent->pump_sales->Value = $Header->pump_sales;
        $this->Parent->pump_sales->Attributes->RestoreFromArray($Header->_pump_salesAttributes);
        $this->sub_pump_group_name = $Header->sub_pump_group_name;
        $Header->_sub_pump_group_nameAttributes = $this->_sub_pump_group_nameAttributes;
        $this->Parent->sub_pump_group_name->Value = $Header->sub_pump_group_name;
        $this->Parent->sub_pump_group_name->Attributes->RestoreFromArray($Header->_sub_pump_group_nameAttributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_total_volume1 = $this->Parent->TotalSum_total_volume1->GetValue();
        $this->TotalSum_total_money1 = $this->Parent->TotalSum_total_money1->GetValue();
        $this->TotalSum_pump_qty1 = $this->Parent->TotalSum_pump_qty1->GetValue();
        $this->TotalSum_pump_sales1 = $this->Parent->TotalSum_pump_sales1->GetValue();
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
        $this->TotalSum_pump_qty = $this->Parent->TotalSum_pump_qty->GetValue();
        $this->TotalSum_pump_sales = $this->Parent->TotalSum_pump_sales->GetValue();
    }
}
//End Pump_Group ReportGroup class

//Pump_Group GroupsCollection class @223-8A6B4E43
class clsGroupsCollectionPump_Group {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mGroup_pump_group_nameCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionPump_Group(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mGroup_pump_group_nameCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupPump_Group($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->Group_pump_group_nameTotalIndex = $this->mGroup_pump_group_nameCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->pump_group_name->Value = $this->Parent->pump_group_name->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->pump_qty->Value = $this->Parent->pump_qty->initialValue;
        $this->Parent->pump_sales->Value = $this->Parent->pump_sales->initialValue;
        $this->Parent->sub_pump_group_name->Value = $this->Parent->sub_pump_group_name->initialValue;
        $this->Parent->TotalSum_total_volume1->Value = $this->Parent->TotalSum_total_volume1->initialValue;
        $this->Parent->TotalSum_total_money1->Value = $this->Parent->TotalSum_total_money1->initialValue;
        $this->Parent->TotalSum_pump_qty1->Value = $this->Parent->TotalSum_pump_qty1->initialValue;
        $this->Parent->TotalSum_pump_sales1->Value = $this->Parent->TotalSum_pump_sales1->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
        $this->Parent->TotalSum_pump_qty->Value = $this->Parent->TotalSum_pump_qty->initialValue;
        $this->Parent->TotalSum_pump_sales->Value = $this->Parent->TotalSum_pump_sales->initialValue;
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
        if ($groupName == "Group_pump_group_name") {
            $GroupGroup_pump_group_name = & $this->InitGroup(true);
            $this->Parent->Group_pump_group_name_Header->CCSEventResult = CCGetEvent($this->Parent->Group_pump_group_name_Header->CCSEvents, "OnInitialize", $this->Parent->Group_pump_group_name_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->Group_pump_group_name_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->Group_pump_group_name_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->Group_pump_group_name_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->Group_pump_group_name_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Group_pump_group_name_Header->Height;
                $GroupGroup_pump_group_name->SetTotalControls("GetNextValue");
            $this->Parent->Group_pump_group_name_Header->CCSEventResult = CCGetEvent($this->Parent->Group_pump_group_name_Header->CCSEvents, "OnCalculate", $this->Parent->Group_pump_group_name_Header);
            $GroupGroup_pump_group_name->SetControls();
            $GroupGroup_pump_group_name->Mode = 1;
            $GroupGroup_pump_group_name->GroupType = "Group_pump_group_name";
            $this->mGroup_pump_group_nameCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $GroupGroup_pump_group_name;
            $this->Parent->TotalSum_total_volume1->Reset();
            $this->Parent->TotalSum_total_money1->Reset();
            $this->Parent->TotalSum_pump_qty1->Reset();
            $this->Parent->TotalSum_pump_sales1->Reset();
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
        $GroupGroup_pump_group_name = & $this->InitGroup(true);
        $this->Parent->Group_pump_group_name_Footer->CCSEventResult = CCGetEvent($this->Parent->Group_pump_group_name_Footer->CCSEvents, "OnInitialize", $this->Parent->Group_pump_group_name_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->Group_pump_group_name_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->Group_pump_group_name_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->Group_pump_group_name_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $GroupGroup_pump_group_name->SetTotalControls("GetPrevValue");
        $GroupGroup_pump_group_name->SyncWithHeader($this->Groups[$this->mGroup_pump_group_nameCurrentHeaderIndex]);
        if ($this->Parent->Group_pump_group_name_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->Group_pump_group_name_Footer->Height;
        $this->Parent->Group_pump_group_name_Footer->CCSEventResult = CCGetEvent($this->Parent->Group_pump_group_name_Footer->CCSEvents, "OnCalculate", $this->Parent->Group_pump_group_name_Footer);
        $GroupGroup_pump_group_name->SetControls();
        $this->Parent->TotalSum_total_volume1->Reset();
        $this->Parent->TotalSum_total_money1->Reset();
        $this->Parent->TotalSum_pump_qty1->Reset();
        $this->Parent->TotalSum_pump_sales1->Reset();
        $this->RestoreValues();
        $GroupGroup_pump_group_name->Mode = 2;
        $GroupGroup_pump_group_name->GroupType ="Group_pump_group_name";
        $this->Groups[] = & $GroupGroup_pump_group_name;
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
//End Pump_Group GroupsCollection class

class clsReportPump_Group { //Pump_Group Class @223-89D2A2D4

//Pump_Group Variables @223-DA244C2B

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
    public $Group_pump_group_name_HeaderBlock, $Group_pump_group_name_Header;
    public $Group_pump_group_name_FooterBlock, $Group_pump_group_name_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $Group_pump_group_name_HeaderControls, $Group_pump_group_name_FooterControls;
//End Pump_Group Variables

//Class_Initialize Event @223-3DDCBB33
    function clsReportPump_Group($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Pump_Group";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Detail->Visible = false;
        $this->Report_Footer = new clsSection($this);
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Group_pump_group_name_Footer = new clsSection($this);
        $this->Group_pump_group_name_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Group_pump_group_name_Footer->Height);
        $this->Group_pump_group_name_Header = new clsSection($this);
        $this->Group_pump_group_name_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Group_pump_group_name_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsPump_GroupDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 80;
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

        $this->pump_group_name = new clsControl(ccsReportLabel, "pump_group_name", "pump_group_name", ccsText, "", "", $this);
        $this->pump_group_name->HTML = true;
        $this->pump_group_name->EmptyText = "&nbsp;";
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->total_volume->HTML = true;
        $this->total_volume->EmptyText = "&nbsp;";
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->total_money->HTML = true;
        $this->total_money->EmptyText = "&nbsp;";
        $this->pump_qty = new clsControl(ccsReportLabel, "pump_qty", "pump_qty", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->pump_qty->HTML = true;
        $this->pump_qty->EmptyText = "&nbsp;";
        $this->pump_sales = new clsControl(ccsReportLabel, "pump_sales", "pump_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->pump_sales->HTML = true;
        $this->pump_sales->EmptyText = "&nbsp;";
        $this->sub_pump_group_name = new clsControl(ccsReportLabel, "sub_pump_group_name", "sub_pump_group_name", ccsText, "", "", $this);
        $this->TotalSum_total_volume1 = new clsControl(ccsReportLabel, "TotalSum_total_volume1", "TotalSum_total_volume1", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume1->HTML = true;
        $this->TotalSum_total_volume1->TotalFunction = "Sum";
        $this->TotalSum_total_volume1->EmptyText = "&nbsp;";
        $this->TotalSum_total_money1 = new clsControl(ccsReportLabel, "TotalSum_total_money1", "TotalSum_total_money1", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money1->HTML = true;
        $this->TotalSum_total_money1->TotalFunction = "Sum";
        $this->TotalSum_total_money1->EmptyText = "&nbsp;";
        $this->TotalSum_pump_qty1 = new clsControl(ccsReportLabel, "TotalSum_pump_qty1", "TotalSum_pump_qty1", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_pump_qty1->HTML = true;
        $this->TotalSum_pump_qty1->TotalFunction = "Sum";
        $this->TotalSum_pump_qty1->EmptyText = "&nbsp;";
        $this->TotalSum_pump_sales1 = new clsControl(ccsReportLabel, "TotalSum_pump_sales1", "TotalSum_pump_sales1", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_pump_sales1->HTML = true;
        $this->TotalSum_pump_sales1->TotalFunction = "Sum";
        $this->TotalSum_pump_sales1->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->HTML = true;
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_volume->EmptyText = "&nbsp;";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->HTML = true;
        $this->TotalSum_total_money->TotalFunction = "Sum";
        $this->TotalSum_total_money->EmptyText = "&nbsp;";
        $this->TotalSum_pump_qty = new clsControl(ccsReportLabel, "TotalSum_pump_qty", "TotalSum_pump_qty", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_pump_qty->HTML = true;
        $this->TotalSum_pump_qty->TotalFunction = "Sum";
        $this->TotalSum_pump_qty->EmptyText = "&nbsp;";
        $this->TotalSum_pump_sales = new clsControl(ccsReportLabel, "TotalSum_pump_sales", "TotalSum_pump_sales", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_pump_sales->HTML = true;
        $this->TotalSum_pump_sales->TotalFunction = "Sum";
        $this->TotalSum_pump_sales->EmptyText = "&nbsp;";
    }
//End Class_Initialize Event

//Initialize Method @223-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @223-70721F08
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pump_group_name->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->pump_qty->Errors->Count());
        $errors = ($errors || $this->pump_sales->Errors->Count());
        $errors = ($errors || $this->sub_pump_group_name->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume1->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money1->Errors->Count());
        $errors = ($errors || $this->TotalSum_pump_qty1->Errors->Count());
        $errors = ($errors || $this->TotalSum_pump_sales1->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_pump_qty->Errors->Count());
        $errors = ($errors || $this->TotalSum_pump_sales->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @223-44978A76
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pump_group_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sub_pump_group_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_pump_qty1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_pump_sales1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_pump_qty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_pump_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @223-F3BE314C
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Group_pump_group_nameKey = "";
        $Groups = new clsGroupsCollectionPump_Group($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->pump_group_name->SetValue($this->DataSource->pump_group_name->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->pump_qty->SetValue($this->DataSource->pump_qty->GetValue());
            $this->pump_sales->SetValue($this->DataSource->pump_sales->GetValue());
            $this->sub_pump_group_name->SetValue($this->DataSource->sub_pump_group_name->GetValue());
            $this->TotalSum_total_volume1->SetValue($this->DataSource->TotalSum_total_volume1->GetValue());
            $this->TotalSum_total_money1->SetValue($this->DataSource->TotalSum_total_money1->GetValue());
            $this->TotalSum_pump_qty1->SetValue($this->DataSource->TotalSum_pump_qty1->GetValue());
            $this->TotalSum_pump_sales1->SetValue($this->DataSource->TotalSum_pump_sales1->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            $this->TotalSum_pump_qty->SetValue($this->DataSource->TotalSum_pump_qty->GetValue());
            $this->TotalSum_pump_sales->SetValue($this->DataSource->TotalSum_pump_sales->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $Group_pump_group_nameKey != $this->DataSource->f("pump_group_name")) {
                $Groups->OpenGroup("Group_pump_group_name");
            }
            $Groups->AddItem();
            $Group_pump_group_nameKey = $this->DataSource->f("pump_group_name");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $Group_pump_group_nameKey != $this->DataSource->f("pump_group_name")) {
                $Groups->CloseGroup("Group_pump_group_name");
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
            $this->ControlsVisible["pump_group_name"] = $this->pump_group_name->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            $this->ControlsVisible["pump_qty"] = $this->pump_qty->Visible;
            $this->ControlsVisible["pump_sales"] = $this->pump_sales->Visible;
            $this->ControlsVisible["sub_pump_group_name"] = $this->sub_pump_group_name->Visible;
            $this->ControlsVisible["TotalSum_total_volume1"] = $this->TotalSum_total_volume1->Visible;
            $this->ControlsVisible["TotalSum_total_money1"] = $this->TotalSum_total_money1->Visible;
            $this->ControlsVisible["TotalSum_pump_qty1"] = $this->TotalSum_pump_qty1->Visible;
            $this->ControlsVisible["TotalSum_pump_sales1"] = $this->TotalSum_pump_sales1->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->pump_group_name->Visible = $this->ControlsVisible["pump_group_name"] && !$items[$i]->pump_group_nameDup;
                        $this->pump_group_name->SetValue($items[$i]->pump_group_name);
                        $this->pump_group_name->Attributes->RestoreFromArray($items[$i]->_pump_group_nameAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->pump_qty->SetValue($items[$i]->pump_qty);
                        $this->pump_qty->Attributes->RestoreFromArray($items[$i]->_pump_qtyAttributes);
                        $this->pump_sales->SetValue($items[$i]->pump_sales);
                        $this->pump_sales->Attributes->RestoreFromArray($items[$i]->_pump_salesAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->pump_group_name->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
                        $this->pump_qty->Show();
                        $this->pump_sales->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->TotalSum_pump_qty->SetText(CCFormatNumber($items[$i]->TotalSum_pump_qty, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_pump_qty->Attributes->RestoreFromArray($items[$i]->_TotalSum_pump_qtyAttributes);
                            $this->TotalSum_pump_sales->SetText(CCFormatNumber($items[$i]->TotalSum_pump_sales, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_pump_sales->Attributes->RestoreFromArray($items[$i]->_TotalSum_pump_salesAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
                                $this->TotalSum_pump_qty->Show();
                                $this->TotalSum_pump_sales->Show();
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
                    case "Group_pump_group_name":
                        if ($items[$i]->Mode == 1) {
                            $this->Group_pump_group_name_Header->CCSEventResult = CCGetEvent($this->Group_pump_group_name_Header->CCSEvents, "BeforeShow", $this->Group_pump_group_name_Header);
                            if ($this->Group_pump_group_name_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Group_pump_group_name_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Group_pump_group_name_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->sub_pump_group_name->SetValue($items[$i]->sub_pump_group_name);
                            $this->sub_pump_group_name->Attributes->RestoreFromArray($items[$i]->_sub_pump_group_nameAttributes);
                            $this->TotalSum_total_volume1->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume1, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume1->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volume1Attributes);
                            $this->TotalSum_total_money1->SetText(CCFormatNumber($items[$i]->TotalSum_total_money1, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money1->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_money1Attributes);
                            $this->TotalSum_pump_qty1->SetText(CCFormatNumber($items[$i]->TotalSum_pump_qty1, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_pump_qty1->Attributes->RestoreFromArray($items[$i]->_TotalSum_pump_qty1Attributes);
                            $this->TotalSum_pump_sales1->SetText(CCFormatNumber($items[$i]->TotalSum_pump_sales1, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_pump_sales1->Attributes->RestoreFromArray($items[$i]->_TotalSum_pump_sales1Attributes);
                            $this->Group_pump_group_name_Footer->CCSEventResult = CCGetEvent($this->Group_pump_group_name_Footer->CCSEvents, "BeforeShow", $this->Group_pump_group_name_Footer);
                            if ($this->Group_pump_group_name_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Group_pump_group_name_Footer";
                                $this->sub_pump_group_name->Show();
                                $this->TotalSum_total_volume1->Show();
                                $this->TotalSum_total_money1->Show();
                                $this->TotalSum_pump_qty1->Show();
                                $this->TotalSum_pump_sales1->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Group_pump_group_name_Footer", true, "Section Detail");
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

} //End Pump_Group Class @223-FCB6E20C

class clsPump_GroupDataSource extends clsDBConnection1 {  //Pump_GroupDataSource Class @223-BD3C92D1

//DataSource Variables @223-94A838B0
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $pump_group_name;
    public $total_volume;
    public $total_money;
    public $pump_qty;
    public $pump_sales;
    public $sub_pump_group_name;
    public $TotalSum_total_volume1;
    public $TotalSum_total_money1;
    public $TotalSum_pump_qty1;
    public $TotalSum_pump_sales1;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
    public $TotalSum_pump_qty;
    public $TotalSum_pump_sales;
//End DataSource Variables

//DataSourceClass_Initialize Event @223-0C8F7C02
    function clsPump_GroupDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Pump_Group";
        $this->Initialize();
        $this->pump_group_name = new clsField("pump_group_name", ccsText, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, "");
        $this->total_money = new clsField("total_money", ccsFloat, "");
        $this->pump_qty = new clsField("pump_qty", ccsFloat, "");
        $this->pump_sales = new clsField("pump_sales", ccsFloat, "");
        $this->sub_pump_group_name = new clsField("sub_pump_group_name", ccsText, "");
        $this->TotalSum_total_volume1 = new clsField("TotalSum_total_volume1", ccsFloat, "");
        $this->TotalSum_total_money1 = new clsField("TotalSum_total_money1", ccsFloat, "");
        $this->TotalSum_pump_qty1 = new clsField("TotalSum_pump_qty1", ccsFloat, "");
        $this->TotalSum_pump_sales1 = new clsField("TotalSum_pump_sales1", ccsFloat, "");
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, "");
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, "");
        $this->TotalSum_pump_qty = new clsField("TotalSum_pump_qty", ccsFloat, "");
        $this->TotalSum_pump_sales = new clsField("TotalSum_pump_sales", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @223-82D69AD1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "subqry.pump_group_id, subqry.pump_group_name ,subqry.pump_id, subqry.tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @223-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @223-F2CB6D3E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "Select subqry.pump_group_id, subqry.pump_group_name, subqry.pump_id as pump_id, subqry.tkt_plu_id,sum(subqry.total_volume) as total_volume,\n" .
        "sum(subqry.total_money) as total_money, sum(subqry.tkt_qty_pump) as pump_qty, \n" .
        "sum(subqry.tkt_total_amount_pump) as pump_sales,   \n" .
        "(sum(subqry.total_volume) - sum(subqry.tkt_qty_pump)) as qty_diff, \n" .
        "(sum(subqry.total_money) - sum(subqry.tkt_total_amount_pump) ) as total_amount_diff\n" .
        "from \n" .
        "(\n" .
        "SELECT ssf_pump_sales.pump_id AS pump_id, pump_group_name, ssf_pump_group_details.pump_group_id AS pump_group_id, tkt_plu_id, \n" .
        "Sum(tkt_qty * ReplacetoNumberCatalog) AS total_volume,\n" .
        "Sum(ssf_tkt_trx_detail.tkt_total_amount * ReplacetoNumberCatalog) AS total_money,\n" .
        "0 as tkt_qty_pump,\n" .
        "0 as tkt_total_amount_pump\n" .
        "FROM ((ssf_tkt_trx_detail INNER JOIN ssf_tkt_trx_header ON\n" .
        "ssf_tkt_trx_detail.tkt_trans_id = ssf_tkt_trx_header.tkt_trans_id) INNER JOIN (ssf_pump_sales LEFT JOIN (ssf_pump_group_details LEFT JOIN ssf_pump_group_header ON\n" .
        "ssf_pump_group_details.pump_group_id = ssf_pump_group_header.pump_group_id) ON\n" .
        "ssf_pump_sales.pump_id = ssf_pump_group_details.pump_id) ON\n" .
        "ssf_tkt_trx_detail.tkt_spirit_sale_id = ssf_pump_sales.sale_id) \n" .
        "LEFT JOIN ssf_tkt_catalog ON ssf_tkt_trx_header.tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type'\n" .
        "WHERECRITERIA_1\n" .
        "union\n" .
        "SELECT  ssf_pump_sales.pump_id AS pump_id, pump_group_name, ssf_pump_group_details.pump_group_id AS pump_group_id, ssf_tkt_plu.tkt_plu_id,\n" .
        "0 as total_volume,\n" .
        "0 as total_money,\n" .
        "Sum(ssf_pump_sales.volume) AS tkt_qty_pump,\n" .
        "Sum(ssf_pump_sales.money) AS tkt_total_amount_pump\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_tkt_plu_grades ON ssf_pump_sales.grade_id = ssf_tkt_plu_grades.tkt_grade_id)\n" .
        "INNER JOIN ssf_tkt_plu ON ssf_tkt_plu_grades.tkt_plu_id = ssf_tkt_plu.tkt_plu_id and ssf_tkt_plu.tkt_plu_type = 'F'\n" .
        "LEFT JOIN (ssf_pump_group_details\n" .
        "LEFT JOIN ssf_pump_group_header ON\n" .
        "ssf_pump_group_details.pump_group_id = ssf_pump_group_header.pump_group_id) ON\n" .
        "ssf_pump_sales.pump_id = ssf_pump_group_details.pump_id\n" .
        "WHERECRITERIA_2) subqry\n" .
        "group by subqry.pump_group_id, subqry.pump_group_name ,subqry.pump_id, subqry.tkt_plu_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "pump_group_name asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @223-2901FA0D
    function SetValues()
    {
        $this->pump_group_name->SetDBValue($this->f("pump_group_name"));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->pump_qty->SetDBValue(trim($this->f("pump_qty")));
        $this->pump_sales->SetDBValue(trim($this->f("pump_sales")));
        $this->sub_pump_group_name->SetDBValue($this->f("pump_group_name"));
        $this->TotalSum_total_volume1->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money1->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_pump_qty1->SetDBValue(trim($this->f("pump_qty")));
        $this->TotalSum_pump_sales1->SetDBValue(trim($this->f("pump_sales")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_pump_qty->SetDBValue(trim($this->f("pump_qty")));
        $this->TotalSum_pump_sales->SetDBValue(trim($this->f("pump_sales")));
    }
//End SetValues Method

} //End Pump_GroupDataSource Class @223-FCB6E20C





//Initialize Page @1-2B6162D9
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
$TemplateFileName = "SSFTicketPeriodDetail.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-E1F47B42
include("./SSFTicketPeriodDetail_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-BEA4D67D
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_addin_shifts_data = new clsReportssf_addin_shifts_data("", $MainPage);
$Panel1 = new clsPanel("Panel1", $MainPage);
$s_rep_option = new clsControl(ccsRadioButton, "s_rep_option", "s_rep_option", ccsText, "", CCGetRequestParam("s_rep_option", ccsGet, NULL), $MainPage);
$s_rep_option->DSType = dsListOfValues;
$s_rep_option->Values = array(array("1", $CCSLocales->GetText("period_rep_sales_block")), array("2", $CCSLocales->GetText("period_rep_pos_block")), array("3", $CCSLocales->GetText("period_rep_user_block")), array("4", $CCSLocales->GetText("ssf_fuel_reconciliation")), array("5", $CCSLocales->GetText("ssf_rep_pump_group")));
$s_rep_option->HTML = true;
$Report1 = new clsReportReport1("", $MainPage);
$Report2 = new clsReportReport2("", $MainPage);
$Report6 = new clsReportReport6("", $MainPage);
$Report3 = new clsReportReport3("", $MainPage);
$Report4 = new clsReportReport4("", $MainPage);
$Pump_Group = new clsReportPump_Group("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_addin_shifts_data = & $ssf_addin_shifts_data;
$MainPage->Panel1 = & $Panel1;
$MainPage->s_rep_option = & $s_rep_option;
$MainPage->Report1 = & $Report1;
$MainPage->Report2 = & $Report2;
$MainPage->Report6 = & $Report6;
$MainPage->Report3 = & $Report3;
$MainPage->Report4 = & $Report4;
$MainPage->Pump_Group = & $Pump_Group;
$Panel1->AddComponent("s_rep_option", $s_rep_option);
if(!is_array($s_rep_option->Value) && !strlen($s_rep_option->Value) && $s_rep_option->Value !== false)
    $s_rep_option->SetText("1");
$ssf_addin_shifts_data->Initialize();
$Report1->Initialize();
$Report2->Initialize();
$Report6->Initialize();
$Report3->Initialize();
$Report4->Initialize();
$Pump_Group->Initialize();

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

//Go to destination page @1-AFF8DE72
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_shifts_data);
    unset($Report1);
    unset($Report2);
    unset($Report6);
    unset($Report3);
    unset($Report4);
    unset($Pump_Group);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-E87794FC
$s_rep_option->Prepare();
$SSFSpiritHeader->Show();
$Button1->Show();
$ssf_addin_shifts_data->Show();
$Report1->Show();
$Report2->Show();
$Report6->Show();
$Report3->Show();
$Report4->Show();
$Pump_Group->Show();
$ViewMode->Show();
$Panel1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-E5549D70
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_shifts_data);
unset($Report1);
unset($Report2);
unset($Report6);
unset($Report3);
unset($Report4);
unset($Pump_Group);
unset($Tpl);
//End Unload Page


?>
