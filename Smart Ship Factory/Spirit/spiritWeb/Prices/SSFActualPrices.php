<?php
//Include Common Files @1-3EF5A8A9
define("RelativePath", "..");
define("PathToCurrentPage", "/Prices/");
define("FileName", "SSFActualPrices.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//ssf_grade_prices ReportGroup class @3-9A688F36
class clsReportGroupssf_grade_prices {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $ViewMode, $_ViewModeAttributes;
    public $grade_id, $grade_idDup, $_grade_idAttributes;
    public $level, $_levelAttributes;
    public $ppu, $_ppuAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $grade_idTotalIndex;

    function clsReportGroupssf_grade_prices(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->ViewMode = $this->Parent->ViewMode->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->level = $this->Parent->level->Value;
        $this->ppu = $this->Parent->ppu->Value;
        if ($PrevGroup) {
            $this->grade_idDup =  CCCompareValues($this->grade_id, $PrevGroup->grade_id, $this->Parent->grade_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_ViewModeAttributes = $this->Parent->ViewMode->Attributes->GetAsArray();
        $this->_Sorter_levelAttributes = $this->Parent->Sorter_level->Attributes->GetAsArray();
        $this->_Sorter_ppuAttributes = $this->Parent->Sorter_ppu->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_levelAttributes = $this->Parent->level->Attributes->GetAsArray();
        $this->_ppuAttributes = $this->Parent->ppu->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->ViewMode = $Header->ViewMode;
        $Header->_ViewModeAttributes = $this->_ViewModeAttributes;
        $this->Parent->ViewMode->Value = $Header->ViewMode;
        $this->Parent->ViewMode->Attributes->RestoreFromArray($Header->_ViewModeAttributes);
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->level = $Header->level;
        $Header->_levelAttributes = $this->_levelAttributes;
        $this->Parent->level->Value = $Header->level;
        $this->Parent->level->Attributes->RestoreFromArray($Header->_levelAttributes);
        $this->ppu = $Header->ppu;
        $Header->_ppuAttributes = $this->_ppuAttributes;
        $this->Parent->ppu->Value = $Header->ppu;
        $this->Parent->ppu->Attributes->RestoreFromArray($Header->_ppuAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_grade_prices ReportGroup class

//ssf_grade_prices GroupsCollection class @3-C7DDAE78
class clsGroupsCollectionssf_grade_prices {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mgrade_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_grade_prices(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mgrade_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_grade_prices($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->grade_idTotalIndex = $this->mgrade_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->ViewMode->Value = $this->Parent->ViewMode->initialValue;
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->level->Value = $this->Parent->level->initialValue;
        $this->Parent->ppu->Value = $this->Parent->ppu->initialValue;
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
        if ($groupName == "grade_id") {
            $Groupgrade_id = & $this->InitGroup(true);
            $this->Parent->grade_id_Header->CCSEventResult = CCGetEvent($this->Parent->grade_id_Header->CCSEvents, "OnInitialize", $this->Parent->grade_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->grade_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->grade_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->grade_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->grade_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->grade_id_Header->Height;
                $Groupgrade_id->SetTotalControls("GetNextValue");
            $this->Parent->grade_id_Header->CCSEventResult = CCGetEvent($this->Parent->grade_id_Header->CCSEvents, "OnCalculate", $this->Parent->grade_id_Header);
            $Groupgrade_id->SetControls();
            $Groupgrade_id->Mode = 1;
            $Groupgrade_id->GroupType = "grade_id";
            $this->mgrade_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupgrade_id;
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
        $Groupgrade_id = & $this->InitGroup(true);
        $this->Parent->grade_id_Footer->CCSEventResult = CCGetEvent($this->Parent->grade_id_Footer->CCSEvents, "OnInitialize", $this->Parent->grade_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->grade_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->grade_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->grade_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupgrade_id->SetTotalControls("GetPrevValue");
        $Groupgrade_id->SyncWithHeader($this->Groups[$this->mgrade_idCurrentHeaderIndex]);
        if ($this->Parent->grade_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->grade_id_Footer->Height;
        $this->Parent->grade_id_Footer->CCSEventResult = CCGetEvent($this->Parent->grade_id_Footer->CCSEvents, "OnCalculate", $this->Parent->grade_id_Footer);
        $Groupgrade_id->SetControls();
        $this->RestoreValues();
        $Groupgrade_id->Mode = 2;
        $Groupgrade_id->GroupType ="grade_id";
        $this->Groups[] = & $Groupgrade_id;
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
//End ssf_grade_prices GroupsCollection class

class clsReportssf_grade_prices { //ssf_grade_prices Class @3-DD882270

//ssf_grade_prices Variables @3-99269E9D

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
    public $grade_id_HeaderBlock, $grade_id_Header;
    public $grade_id_FooterBlock, $grade_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $grade_id_HeaderControls, $grade_id_FooterControls;
    public $Sorter_level;
    public $Sorter_ppu;
//End ssf_grade_prices Variables

//Class_Initialize Event @3-391846D0
    function clsReportssf_grade_prices($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_grade_prices";
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
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->grade_id_Footer = new clsSection($this);
        $this->grade_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_grade_pricesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_grade_pricesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_grade_pricesDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $this);
        $this->Sorter_level = new clsSorter($this->ComponentName, "Sorter_level", $FileName, $this);
        $this->Sorter_ppu = new clsSorter($this->ComponentName, "Sorter_ppu", $FileName, $this);
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->level = new clsControl(ccsReportLabel, "level", "level", ccsInteger, "", "", $this);
        $this->level->HTML = true;
        $this->level->EmptyText = "&nbsp;";
        $this->ppu = new clsControl(ccsReportLabel, "ppu", "ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->ppu->HTML = true;
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_CurrentDateTime->HTML = true;
        $this->Report_CurrentDateTime->EmptyText = "&nbsp;";
        $this->Report_CurrentPage = new clsControl(ccsReportLabel, "Report_CurrentPage", "Report_CurrentPage", ccsInteger, "", "", $this);
        $this->Report_CurrentPage->HTML = true;
        $this->Report_CurrentPage->EmptyText = "&nbsp;";
        $this->Report_TotalPages = new clsControl(ccsReportLabel, "Report_TotalPages", "Report_TotalPages", ccsInteger, "", "", $this);
        $this->Report_TotalPages->HTML = true;
        $this->Report_TotalPages->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-7789FEED
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->ViewMode->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->level->Errors->Count());
        $errors = ($errors || $this->ppu->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-E2AC4ED9
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ViewMode->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->level->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-00DB7A35
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;


        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $grade_idKey = "";
        $Groups = new clsGroupsCollectionssf_grade_prices($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->level->SetValue($this->DataSource->level->GetValue());
            $this->ppu->SetValue($this->DataSource->ppu->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $grade_idKey != $this->DataSource->f("grade_id")) {
                $Groups->OpenGroup("grade_id");
            }
            $Groups->AddItem();
            $grade_idKey = $this->DataSource->f("grade_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $grade_idKey != $this->DataSource->f("grade_id")) {
                $Groups->CloseGroup("grade_id");
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
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["level"] = $this->level->Visible;
            $this->ControlsVisible["ppu"] = $this->ppu->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->grade_id->Visible = $this->ControlsVisible["grade_id"] && !$items[$i]->grade_idDup;
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->level->SetValue($items[$i]->level);
                        $this->level->Attributes->RestoreFromArray($items[$i]->_levelAttributes);
                        $this->ppu->SetValue($items[$i]->ppu);
                        $this->ppu->Attributes->RestoreFromArray($items[$i]->_ppuAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->grade_id->Show();
                        $this->level->Show();
                        $this->ppu->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_TotalRecords->SetValue($items[$i]->Report_TotalRecords);
                            $this->Report_TotalRecords->Attributes->RestoreFromArray($items[$i]->_Report_TotalRecordsAttributes);
                            $this->ViewMode->SetValue($items[$i]->ViewMode);
                            $this->ViewMode->Attributes->RestoreFromArray($items[$i]->_ViewModeAttributes);
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
                                $this->Report_TotalRecords->Show();
                                $this->ViewMode->Show();
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
                                $this->Sorter_level->Show();
                                $this->Sorter_ppu->Show();
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
                    case "grade_id":
                        if ($items[$i]->Mode == 1) {
                            $this->grade_id_Header->CCSEventResult = CCGetEvent($this->grade_id_Header->CCSEvents, "BeforeShow", $this->grade_id_Header);
                            if ($this->grade_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section grade_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section grade_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->grade_id_Footer->CCSEventResult = CCGetEvent($this->grade_id_Footer->CCSEvents, "BeforeShow", $this->grade_id_Footer);
                            if ($this->grade_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section grade_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section grade_id_Footer", true, "Section Detail");
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

} //End ssf_grade_prices Class @3-FCB6E20C

class clsssf_grade_pricesDataSource extends clsDBConnection1 {  //ssf_grade_pricesDataSource Class @3-D54C40F8

//DataSource Variables @3-91C3B020
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $grade_id;
    public $level;
    public $ppu;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-E1D1F57E
    function clsssf_grade_pricesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_grade_prices";
        $this->Initialize();
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->level = new clsField("level", ccsInteger, "");
        $this->ppu = new clsField("ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-371435B5
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_level" => array("level", ""), 
            "Sorter_ppu" => array("ppu", "")));
    }
//End SetOrder Method

//Prepare Method @3-C7EF0236
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "config_values.library = 'grade'";
        $this->wp->Criterion[2] = "config_values.groupname = 'general'";
        $this->wp->Criterion[3] = "config_values.parameter = 'number'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-75CFAFCC
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT \"level\", ppu, id AS grade_id \n\n" .
        "FROM ssf_grade_prices INNER JOIN config_values ON\n\n" .
        "ssf_grade_prices.grade_id = config_values.param_value {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "grade_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-98AB0A9C
    function SetValues()
    {
        $this->grade_id->SetDBValue($this->f("grade_id"));
        $this->level->SetDBValue(trim($this->f("level")));
        $this->ppu->SetDBValue(trim($this->f("ppu")));
    }
//End SetValues Method

} //End ssf_grade_pricesDataSource Class @3-FCB6E20C

//Initialize Page @1-A6481F29
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
$TemplateFileName = "SSFActualPrices.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-94362AE2
include("./SSFActualPrices_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-AA8FBA39
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ssf_grade_prices = new clsReportssf_grade_prices("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Button1 = & $Button1;
$MainPage->ssf_grade_prices = & $ssf_grade_prices;
$ssf_grade_prices->Initialize();

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

//Go to destination page @1-4DFC15E8
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_grade_prices);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-452E6302
$SSFSpiritHeader->Show();
$Button1->Show();
$ssf_grade_prices->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-42E9076D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_grade_prices);
unset($Tpl);
//End Unload Page


?>
