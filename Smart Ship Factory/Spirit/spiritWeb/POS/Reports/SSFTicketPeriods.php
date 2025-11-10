<?php
//Include Common Files @1-628E5A62
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketPeriods.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_shifts_dataSearch { //ssf_addin_shifts_dataSearch Class @13-3D6B99A5

//Variables @13-9E315808

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

//Class_Initialize Event @13-91097CB9
    function clsRecordssf_addin_shifts_dataSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_shifts_dataSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_shifts_dataSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_period_group = new clsControl(ccsListBox, "s_period_group", "s_period_group", ccsText, "", CCGetRequestParam("s_period_group", $Method, NULL), $this);
            $this->s_period_group->DSType = dsTable;
            list($this->s_period_group->BoundColumn, $this->s_period_group->TextColumn, $this->s_period_group->DBFormat) = array("tkt_period_group_id", "tkt_period_group_desc", "");
            $this->s_period_group->DataSource = new clsDBConnection1();
            $this->s_period_group->ds = & $this->s_period_group->DataSource;
            $this->s_period_group->DataSource->SQL = "SELECT * \n" .
"FROM ssf_tkt_period_groups {SQL_Where} {SQL_OrderBy}";
            $this->s_period_group->DataSource->Order = "tkt_period_group_id";
            $this->s_period_group->DataSource->Order = "tkt_period_group_id";
            $this->s_period_type = new clsControl(ccsListBox, "s_period_type", "s_period_type", ccsText, "", CCGetRequestParam("s_period_type", $Method, NULL), $this);
            $this->s_period_type->DSType = dsListOfValues;
            $this->s_period_type->Values = array(array("S", "Turnos"), array("D", "Dias"), array("M", "Meses"), array("Y", "Años"));
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->s_period_type->Value) && !strlen($this->s_period_type->Value) && $this->s_period_type->Value !== false)
                    $this->s_period_type->SetText($CCSLocales->GetText("ssf_shifts"));
            }
        }
    }
//End Class_Initialize Event

//Validate Method @13-C44E5C6F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_period_group->Validate() && $Validation);
        $Validation = ($this->s_period_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_period_group->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_period_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @13-186BED2B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_period_group->Errors->Count());
        $errors = ($errors || $this->s_period_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @13-FC4B4430
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
        $Redirect = "SSFTicketPeriods.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketPeriods.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @13-CBED6539
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_period_group->Prepare();
        $this->s_period_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_period_group->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_period_type->Errors->ToString());
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

        $this->s_period_group->Show();
        $this->s_period_type->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_shifts_dataSearch Class @13-FCB6E20C

//ssf_tkt_periods ReportGroup class @34-2B74E362
class clsReportGroupssf_tkt_periods {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_period_group, $_tkt_period_groupAttributes;
    public $tkt_period_id, $_tkt_period_idPage, $_tkt_period_idParameters, $_tkt_period_idAttributes;
    public $tkt_period_date_start, $_tkt_period_date_startAttributes;
    public $tkt_period_time_start, $_tkt_period_time_startAttributes;
    public $tkt_period_date_end, $_tkt_period_date_endAttributes;
    public $tkt_period_time_end, $_tkt_period_time_endAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $tkt_period_groupTotalIndex;

    function clsReportGroupssf_tkt_periods(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_period_group = $this->Parent->tkt_period_group->Value;
        $this->tkt_period_id = $this->Parent->tkt_period_id->Value;
        $this->tkt_period_date_start = $this->Parent->tkt_period_date_start->Value;
        $this->tkt_period_time_start = $this->Parent->tkt_period_time_start->Value;
        $this->tkt_period_date_end = $this->Parent->tkt_period_date_end->Value;
        $this->tkt_period_time_end = $this->Parent->tkt_period_time_end->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_tkt_period_idPage = $this->Parent->tkt_period_id->Page;
        $this->_tkt_period_idParameters = $this->Parent->tkt_period_id->Parameters;
        $this->_tkt_period_groupAttributes = $this->Parent->tkt_period_group->Attributes->GetAsArray();
        $this->_Sorter_tkt_period_idAttributes = $this->Parent->Sorter_tkt_period_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_period_date_startAttributes = $this->Parent->Sorter_tkt_period_date_start->Attributes->GetAsArray();
        $this->_Sorter_tkt_period_time_startAttributes = $this->Parent->Sorter_tkt_period_time_start->Attributes->GetAsArray();
        $this->_Sorter_tkt_period_date_endAttributes = $this->Parent->Sorter_tkt_period_date_end->Attributes->GetAsArray();
        $this->_Sorter_tkt_period_time_endAttributes = $this->Parent->Sorter_tkt_period_time_end->Attributes->GetAsArray();
        $this->_tkt_period_idAttributes = $this->Parent->tkt_period_id->Attributes->GetAsArray();
        $this->_tkt_period_date_startAttributes = $this->Parent->tkt_period_date_start->Attributes->GetAsArray();
        $this->_tkt_period_time_startAttributes = $this->Parent->tkt_period_time_start->Attributes->GetAsArray();
        $this->_tkt_period_date_endAttributes = $this->Parent->tkt_period_date_end->Attributes->GetAsArray();
        $this->_tkt_period_time_endAttributes = $this->Parent->tkt_period_time_end->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->tkt_period_group = $Header->tkt_period_group;
        $Header->_tkt_period_groupAttributes = $this->_tkt_period_groupAttributes;
        $this->Parent->tkt_period_group->Value = $Header->tkt_period_group;
        $this->Parent->tkt_period_group->Attributes->RestoreFromArray($Header->_tkt_period_groupAttributes);
        $this->tkt_period_id = $Header->tkt_period_id;
        $this->_tkt_period_idPage = $Header->_tkt_period_idPage;
        $this->_tkt_period_idParameters = $Header->_tkt_period_idParameters;
        $Header->_tkt_period_idAttributes = $this->_tkt_period_idAttributes;
        $this->Parent->tkt_period_id->Value = $Header->tkt_period_id;
        $this->Parent->tkt_period_id->Attributes->RestoreFromArray($Header->_tkt_period_idAttributes);
        $this->tkt_period_date_start = $Header->tkt_period_date_start;
        $Header->_tkt_period_date_startAttributes = $this->_tkt_period_date_startAttributes;
        $this->Parent->tkt_period_date_start->Value = $Header->tkt_period_date_start;
        $this->Parent->tkt_period_date_start->Attributes->RestoreFromArray($Header->_tkt_period_date_startAttributes);
        $this->tkt_period_time_start = $Header->tkt_period_time_start;
        $Header->_tkt_period_time_startAttributes = $this->_tkt_period_time_startAttributes;
        $this->Parent->tkt_period_time_start->Value = $Header->tkt_period_time_start;
        $this->Parent->tkt_period_time_start->Attributes->RestoreFromArray($Header->_tkt_period_time_startAttributes);
        $this->tkt_period_date_end = $Header->tkt_period_date_end;
        $Header->_tkt_period_date_endAttributes = $this->_tkt_period_date_endAttributes;
        $this->Parent->tkt_period_date_end->Value = $Header->tkt_period_date_end;
        $this->Parent->tkt_period_date_end->Attributes->RestoreFromArray($Header->_tkt_period_date_endAttributes);
        $this->tkt_period_time_end = $Header->tkt_period_time_end;
        $Header->_tkt_period_time_endAttributes = $this->_tkt_period_time_endAttributes;
        $this->Parent->tkt_period_time_end->Value = $Header->tkt_period_time_end;
        $this->Parent->tkt_period_time_end->Attributes->RestoreFromArray($Header->_tkt_period_time_endAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_periods ReportGroup class

//ssf_tkt_periods GroupsCollection class @34-6ECA83CF
class clsGroupsCollectionssf_tkt_periods {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mtkt_period_groupCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_periods(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mtkt_period_groupCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_periods($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->tkt_period_groupTotalIndex = $this->mtkt_period_groupCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_period_group->Value = $this->Parent->tkt_period_group->initialValue;
        $this->Parent->tkt_period_id->Value = $this->Parent->tkt_period_id->initialValue;
        $this->Parent->tkt_period_date_start->Value = $this->Parent->tkt_period_date_start->initialValue;
        $this->Parent->tkt_period_time_start->Value = $this->Parent->tkt_period_time_start->initialValue;
        $this->Parent->tkt_period_date_end->Value = $this->Parent->tkt_period_date_end->initialValue;
        $this->Parent->tkt_period_time_end->Value = $this->Parent->tkt_period_time_end->initialValue;
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
        if ($groupName == "tkt_period_group") {
            $Grouptkt_period_group = & $this->InitGroup(true);
            $this->Parent->tkt_period_group_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_period_group_Header->CCSEvents, "OnInitialize", $this->Parent->tkt_period_group_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->tkt_period_group_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->tkt_period_group_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->tkt_period_group_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->tkt_period_group_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_period_group_Header->Height;
                $Grouptkt_period_group->SetTotalControls("GetNextValue");
            $this->Parent->tkt_period_group_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_period_group_Header->CCSEvents, "OnCalculate", $this->Parent->tkt_period_group_Header);
            $Grouptkt_period_group->SetControls();
            $Grouptkt_period_group->Mode = 1;
            $Grouptkt_period_group->GroupType = "tkt_period_group";
            $this->mtkt_period_groupCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouptkt_period_group;
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
        $Grouptkt_period_group = & $this->InitGroup(true);
        $this->Parent->tkt_period_group_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_period_group_Footer->CCSEvents, "OnInitialize", $this->Parent->tkt_period_group_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->tkt_period_group_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->tkt_period_group_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->tkt_period_group_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouptkt_period_group->SetTotalControls("GetPrevValue");
        $Grouptkt_period_group->SyncWithHeader($this->Groups[$this->mtkt_period_groupCurrentHeaderIndex]);
        if ($this->Parent->tkt_period_group_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_period_group_Footer->Height;
        $this->Parent->tkt_period_group_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_period_group_Footer->CCSEvents, "OnCalculate", $this->Parent->tkt_period_group_Footer);
        $Grouptkt_period_group->SetControls();
        $this->RestoreValues();
        $Grouptkt_period_group->Mode = 2;
        $Grouptkt_period_group->GroupType ="tkt_period_group";
        $this->Groups[] = & $Grouptkt_period_group;
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
//End ssf_tkt_periods GroupsCollection class

class clsReportssf_tkt_periods { //ssf_tkt_periods Class @34-193DAEA4

//ssf_tkt_periods Variables @34-494D85CC

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
    public $tkt_period_group_HeaderBlock, $tkt_period_group_Header;
    public $tkt_period_group_FooterBlock, $tkt_period_group_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $tkt_period_group_HeaderControls, $tkt_period_group_FooterControls;
    public $Sorter_tkt_period_id;
    public $Sorter_tkt_period_date_start;
    public $Sorter_tkt_period_time_start;
    public $Sorter_tkt_period_date_end;
    public $Sorter_tkt_period_time_end;
//End ssf_tkt_periods Variables

//Class_Initialize Event @34-37F9BD8A
    function clsReportssf_tkt_periods($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_periods";
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
        $this->tkt_period_group_Footer = new clsSection($this);
        $this->tkt_period_group_Header = new clsSection($this);
        $this->tkt_period_group_Header->Height = 2;
        $MaxSectionSize = max($MaxSectionSize, $this->tkt_period_group_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_periodsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_periodsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_periodsDir", "");

        $this->tkt_period_group = new clsControl(ccsReportLabel, "tkt_period_group", "tkt_period_group", ccsText, "", "", $this);
        $this->tkt_period_group->HTML = true;
        $this->tkt_period_group->EmptyText = "&nbsp;";
        $this->Sorter_tkt_period_id = new clsSorter($this->ComponentName, "Sorter_tkt_period_id", $FileName, $this);
        $this->Sorter_tkt_period_date_start = new clsSorter($this->ComponentName, "Sorter_tkt_period_date_start", $FileName, $this);
        $this->Sorter_tkt_period_time_start = new clsSorter($this->ComponentName, "Sorter_tkt_period_time_start", $FileName, $this);
        $this->Sorter_tkt_period_date_end = new clsSorter($this->ComponentName, "Sorter_tkt_period_date_end", $FileName, $this);
        $this->Sorter_tkt_period_time_end = new clsSorter($this->ComponentName, "Sorter_tkt_period_time_end", $FileName, $this);
        $this->tkt_period_id = new clsControl(ccsLink, "tkt_period_id", "tkt_period_id", ccsInteger, "", CCGetRequestParam("tkt_period_id", ccsGet, NULL), $this);
        $this->tkt_period_id->HTML = true;
        $this->tkt_period_id->Page = "SSFTicketPeriodDetail.php";
        $this->tkt_period_date_start = new clsControl(ccsReportLabel, "tkt_period_date_start", "tkt_period_date_start", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_period_date_start->HTML = true;
        $this->tkt_period_date_start->EmptyText = "&nbsp;";
        $this->tkt_period_time_start = new clsControl(ccsReportLabel, "tkt_period_time_start", "tkt_period_time_start", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->tkt_period_time_start->HTML = true;
        $this->tkt_period_time_start->EmptyText = "&nbsp;";
        $this->tkt_period_date_end = new clsControl(ccsReportLabel, "tkt_period_date_end", "tkt_period_date_end", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_period_date_end->HTML = true;
        $this->tkt_period_date_end->EmptyText = "&nbsp;";
        $this->tkt_period_time_end = new clsControl(ccsReportLabel, "tkt_period_time_end", "tkt_period_time_end", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->tkt_period_time_end->HTML = true;
        $this->tkt_period_time_end->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
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

//CheckErrors Method @34-948501CD
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_period_group->Errors->Count());
        $errors = ($errors || $this->tkt_period_id->Errors->Count());
        $errors = ($errors || $this->tkt_period_date_start->Errors->Count());
        $errors = ($errors || $this->tkt_period_time_start->Errors->Count());
        $errors = ($errors || $this->tkt_period_date_end->Errors->Count());
        $errors = ($errors || $this->tkt_period_time_end->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @34-024DB71E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_period_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_date_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_time_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_date_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_time_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @34-B1C9B411
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_period_type"] = CCGetFromGet("s_period_type", NULL);
        $this->DataSource->Parameters["urls_period_group"] = CCGetFromGet("s_period_group", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $tkt_period_groupKey = "";
        $Groups = new clsGroupsCollectionssf_tkt_periods($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_period_group->SetValue($this->DataSource->tkt_period_group->GetValue());
            $this->tkt_period_id->SetValue($this->DataSource->tkt_period_id->GetValue());
            $this->tkt_period_date_start->SetValue($this->DataSource->tkt_period_date_start->GetValue());
            $this->tkt_period_time_start->SetValue($this->DataSource->tkt_period_time_start->GetValue());
            $this->tkt_period_date_end->SetValue($this->DataSource->tkt_period_date_end->GetValue());
            $this->tkt_period_time_end->SetValue($this->DataSource->tkt_period_time_end->GetValue());
            $this->tkt_period_id->Parameters = "";
            $this->tkt_period_id->Parameters = CCAddParam($this->tkt_period_id->Parameters, "tkt_period_group", $this->DataSource->f("tkt_period_group"));
            $this->tkt_period_id->Parameters = CCAddParam($this->tkt_period_id->Parameters, "tkt_period_type", $this->DataSource->f("tkt_period_type"));
            $this->tkt_period_id->Parameters = CCAddParam($this->tkt_period_id->Parameters, "tkt_period_id", $this->DataSource->f("tkt_period_id"));
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $tkt_period_groupKey != $this->DataSource->f("tkt_period_group")) {
                $Groups->OpenGroup("tkt_period_group");
            }
            $Groups->AddItem();
            $tkt_period_groupKey = $this->DataSource->f("tkt_period_group");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $tkt_period_groupKey != $this->DataSource->f("tkt_period_group")) {
                $Groups->CloseGroup("tkt_period_group");
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
            $this->ControlsVisible["tkt_period_group"] = $this->tkt_period_group->Visible;
            $this->ControlsVisible["Sorter_tkt_period_id"] = $this->Sorter_tkt_period_id->Visible;
            $this->ControlsVisible["Sorter_tkt_period_date_start"] = $this->Sorter_tkt_period_date_start->Visible;
            $this->ControlsVisible["Sorter_tkt_period_time_start"] = $this->Sorter_tkt_period_time_start->Visible;
            $this->ControlsVisible["Sorter_tkt_period_date_end"] = $this->Sorter_tkt_period_date_end->Visible;
            $this->ControlsVisible["Sorter_tkt_period_time_end"] = $this->Sorter_tkt_period_time_end->Visible;
            $this->ControlsVisible["tkt_period_id"] = $this->tkt_period_id->Visible;
            $this->ControlsVisible["tkt_period_date_start"] = $this->tkt_period_date_start->Visible;
            $this->ControlsVisible["tkt_period_time_start"] = $this->tkt_period_time_start->Visible;
            $this->ControlsVisible["tkt_period_date_end"] = $this->tkt_period_date_end->Visible;
            $this->ControlsVisible["tkt_period_time_end"] = $this->tkt_period_time_end->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_period_id->SetValue($items[$i]->tkt_period_id);
                        $this->tkt_period_id->Page = $items[$i]->_tkt_period_idPage;
                        $this->tkt_period_id->Parameters = $items[$i]->_tkt_period_idParameters;
                        $this->tkt_period_id->Attributes->RestoreFromArray($items[$i]->_tkt_period_idAttributes);
                        $this->tkt_period_date_start->SetValue($items[$i]->tkt_period_date_start);
                        $this->tkt_period_date_start->Attributes->RestoreFromArray($items[$i]->_tkt_period_date_startAttributes);
                        $this->tkt_period_time_start->SetValue($items[$i]->tkt_period_time_start);
                        $this->tkt_period_time_start->Attributes->RestoreFromArray($items[$i]->_tkt_period_time_startAttributes);
                        $this->tkt_period_date_end->SetValue($items[$i]->tkt_period_date_end);
                        $this->tkt_period_date_end->Attributes->RestoreFromArray($items[$i]->_tkt_period_date_endAttributes);
                        $this->tkt_period_time_end->SetValue($items[$i]->tkt_period_time_end);
                        $this->tkt_period_time_end->Attributes->RestoreFromArray($items[$i]->_tkt_period_time_endAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_period_id->Show();
                        $this->tkt_period_date_start->Show();
                        $this->tkt_period_time_start->Show();
                        $this->tkt_period_date_end->Show();
                        $this->tkt_period_time_end->Show();
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
                    case "tkt_period_group":
                        if ($items[$i]->Mode == 1) {
                            $this->tkt_period_group->SetValue($items[$i]->tkt_period_group);
                            $this->tkt_period_group->Attributes->RestoreFromArray($items[$i]->_tkt_period_groupAttributes);
                            $this->tkt_period_group_Header->CCSEventResult = CCGetEvent($this->tkt_period_group_Header->CCSEvents, "BeforeShow", $this->tkt_period_group_Header);
                            if ($this->tkt_period_group_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_period_group_Header";
                                $this->Attributes->Show();
                                $this->tkt_period_group->Show();
                                $this->Sorter_tkt_period_id->Show();
                                $this->Sorter_tkt_period_date_start->Show();
                                $this->Sorter_tkt_period_time_start->Show();
                                $this->Sorter_tkt_period_date_end->Show();
                                $this->Sorter_tkt_period_time_end->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_period_group_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->tkt_period_group_Footer->CCSEventResult = CCGetEvent($this->tkt_period_group_Footer->CCSEvents, "BeforeShow", $this->tkt_period_group_Footer);
                            if ($this->tkt_period_group_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_period_group_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_period_group_Footer", true, "Section Detail");
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

} //End ssf_tkt_periods Class @34-FCB6E20C

class clsssf_tkt_periodsDataSource extends clsDBConnection1 {  //ssf_tkt_periodsDataSource Class @34-B063B656

//DataSource Variables @34-D6CED1FF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_period_group;
    public $tkt_period_id;
    public $tkt_period_date_start;
    public $tkt_period_time_start;
    public $tkt_period_date_end;
    public $tkt_period_time_end;
//End DataSource Variables

//DataSourceClass_Initialize Event @34-8D4E437C
    function clsssf_tkt_periodsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_periods";
        $this->Initialize();
        $this->tkt_period_group = new clsField("tkt_period_group", ccsText, "");
        $this->tkt_period_id = new clsField("tkt_period_id", ccsInteger, "");
        $this->tkt_period_date_start = new clsField("tkt_period_date_start", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_period_time_start = new clsField("tkt_period_time_start", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_period_date_end = new clsField("tkt_period_date_end", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_period_time_end = new clsField("tkt_period_time_end", ccsDate, array("HH", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @34-83B5129E
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_periods.tkt_period_type, ssf_tkt_periods.tkt_period_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_period_id" => array("tkt_period_id", ""), 
            "Sorter_tkt_period_date_start" => array("tkt_period_date_start", ""), 
            "Sorter_tkt_period_time_start" => array("tkt_period_time_start", ""), 
            "Sorter_tkt_period_date_end" => array("tkt_period_date_end", ""), 
            "Sorter_tkt_period_time_end" => array("tkt_period_time_end", "")));
    }
//End SetOrder Method

//Prepare Method @34-58B00ECA
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_period_type", ccsText, "", "", $this->Parameters["urls_period_type"], S, false);
        $this->wp->AddParameter("2", "urls_period_group", ccsText, "", "", $this->Parameters["urls_period_group"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_periods.tkt_period_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "ssf_tkt_periods.tkt_period_group", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @34-6BA51F3C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tkt_periods.*, tkt_period_group_desc \n\n" .
        "FROM ssf_tkt_periods LEFT JOIN ssf_tkt_period_groups ON\n\n" .
        "ssf_tkt_periods.tkt_period_group = ssf_tkt_period_groups.tkt_period_group_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "tkt_period_group asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @34-1A8F5301
    function SetValues()
    {
        $this->tkt_period_group->SetDBValue($this->f("tkt_period_group_desc"));
        $this->tkt_period_id->SetDBValue(trim($this->f("tkt_period_id")));
        $this->tkt_period_date_start->SetDBValue(trim($this->f("tkt_period_date_start")));
        $this->tkt_period_time_start->SetDBValue(trim($this->f("tkt_period_time_start")));
        $this->tkt_period_date_end->SetDBValue(trim($this->f("tkt_period_date_end")));
        $this->tkt_period_time_end->SetDBValue(trim($this->f("tkt_period_time_end")));
    }
//End SetValues Method

} //End ssf_tkt_periodsDataSource Class @34-FCB6E20C

//Initialize Page @1-F6DE4EF7
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
$TemplateFileName = "SSFTicketPeriods.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-82D80F8D
include("./SSFTicketPeriods_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B6364821
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_shifts_dataSearch = new clsRecordssf_addin_shifts_dataSearch("", $MainPage);
$ssf_tkt_periods = new clsReportssf_tkt_periods("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_shifts_dataSearch = & $ssf_addin_shifts_dataSearch;
$MainPage->ssf_tkt_periods = & $ssf_tkt_periods;
$ssf_tkt_periods->Initialize();

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

//Execute Components @1-619DEFA0
$SSFSpiritHeader->Operations();
$ssf_addin_shifts_dataSearch->Operation();
//End Execute Components

//Go to destination page @1-7A525B93
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_shifts_dataSearch);
    unset($ssf_tkt_periods);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A28E4F3E
$SSFSpiritHeader->Show();
$ssf_addin_shifts_dataSearch->Show();
$ssf_tkt_periods->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-590078F8
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_shifts_dataSearch);
unset($ssf_tkt_periods);
unset($Tpl);
//End Unload Page


?>
