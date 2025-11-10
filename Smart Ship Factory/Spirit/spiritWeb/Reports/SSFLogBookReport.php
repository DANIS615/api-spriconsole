<?php
//Include Common Files @1-439F69C9
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFLogBookReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_slb_events_conf { //ssf_addin_slb_events_conf Class @14-71D849C8

//Variables @14-9E315808

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

//Class_Initialize Event @14-EB897833
    function clsRecordssf_addin_slb_events_conf($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_slb_events_conf/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_slb_events_conf";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "ssf_addin_slb_events_conf", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_addin_slb_events_conf", "s_date_to", $this);
            $this->s_time_from = new clsControl(ccsTextBox, "s_time_from", "s_time_from", ccsText, "", CCGetRequestParam("s_time_from", $Method, NULL), $this);
            $this->s_time_to = new clsControl(ccsTextBox, "s_time_to", "s_time_to", ccsText, "", CCGetRequestParam("s_time_to", $Method, NULL), $this);
            $this->s_event_id = new clsControl(ccsListBox, "s_event_id", "s_event_id", ccsInteger, "", CCGetRequestParam("s_event_id", $Method, NULL), $this);
            $this->s_event_id->DSType = dsTable;
            list($this->s_event_id->BoundColumn, $this->s_event_id->TextColumn, $this->s_event_id->DBFormat) = array("slb_event_id", "slb_label", "");
            $this->s_event_id->DataSource = new clsDBConnection1();
            $this->s_event_id->ds = & $this->s_event_id->DataSource;
            $this->s_event_id->DataSource->SQL = "SELECT slb_event_id, slb_label \n" .
"FROM ssf_addin_slb_events_config {SQL_Where} {SQL_OrderBy}";
            $this->s_slb_userid = new clsControl(ccsListBox, "s_slb_userid", "s_slb_userid", ccsText, "", CCGetRequestParam("s_slb_userid", $Method, NULL), $this);
            $this->s_slb_userid->DSType = dsTable;
            list($this->s_slb_userid->BoundColumn, $this->s_slb_userid->TextColumn, $this->s_slb_userid->DBFormat) = array("user_id", "user_id", "");
            $this->s_slb_userid->DataSource = new clsDBConnection1();
            $this->s_slb_userid->ds = & $this->s_slb_userid->DataSource;
            $this->s_slb_userid->DataSource->SQL = "SELECT user_id \n" .
"FROM ssf_sec_users {SQL_Where} {SQL_OrderBy}";
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Page = "SSFLogBookReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @14-4A6CE25C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_time_from->Validate() && $Validation);
        $Validation = ($this->s_time_to->Validate() && $Validation);
        $Validation = ($this->s_event_id->Validate() && $Validation);
        $Validation = ($this->s_slb_userid->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_event_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_slb_userid->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @14-2B3811AC
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_time_from->Errors->Count());
        $errors = ($errors || $this->s_time_to->Errors->Count());
        $errors = ($errors || $this->s_event_id->Errors->Count());
        $errors = ($errors || $this->s_slb_userid->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @14-91D7A222
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
        $Redirect = "SSFLogBookReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFLogBookReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @14-300FE9B5
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_event_id->Prepare();
        $this->s_slb_userid->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_from1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_event_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_slb_userid->Errors->ToString());
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

        $this->s_date_from->Show();
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_time_from->Show();
        $this->s_time_to->Show();
        $this->s_event_id->Show();
        $this->s_slb_userid->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_slb_events_conf Class @14-FCB6E20C

//ssf_addin_slb_events_log ReportGroup class @3-4834953E
class clsReportGroupssf_addin_slb_events_log {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $slb_event_date, $_slb_event_dateAttributes;
    public $slb_event_time, $_slb_event_timeAttributes;
    public $event_id, $_event_idAttributes;
    public $slb_label, $_slb_labelAttributes;
    public $slb_userid, $_slb_useridAttributes;
    public $event_message, $_event_messageAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_addin_slb_events_log(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->slb_event_date = $this->Parent->slb_event_date->Value;
        $this->slb_event_time = $this->Parent->slb_event_time->Value;
        $this->event_id = $this->Parent->event_id->Value;
        $this->slb_label = $this->Parent->slb_label->Value;
        $this->slb_userid = $this->Parent->slb_userid->Value;
        $this->event_message = $this->Parent->event_message->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_Sorter_slb_event_dateAttributes = $this->Parent->Sorter_slb_event_date->Attributes->GetAsArray();
        $this->_Sorter_slb_event_timeAttributes = $this->Parent->Sorter_slb_event_time->Attributes->GetAsArray();
        $this->_Sorter_event_idAttributes = $this->Parent->Sorter_event_id->Attributes->GetAsArray();
        $this->_Sorter_slb_labelAttributes = $this->Parent->Sorter_slb_label->Attributes->GetAsArray();
        $this->_Sorter_slb_useridAttributes = $this->Parent->Sorter_slb_userid->Attributes->GetAsArray();
        $this->_slb_event_dateAttributes = $this->Parent->slb_event_date->Attributes->GetAsArray();
        $this->_slb_event_timeAttributes = $this->Parent->slb_event_time->Attributes->GetAsArray();
        $this->_event_idAttributes = $this->Parent->event_id->Attributes->GetAsArray();
        $this->_slb_labelAttributes = $this->Parent->slb_label->Attributes->GetAsArray();
        $this->_slb_useridAttributes = $this->Parent->slb_userid->Attributes->GetAsArray();
        $this->_event_messageAttributes = $this->Parent->event_message->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->slb_event_date = $Header->slb_event_date;
        $Header->_slb_event_dateAttributes = $this->_slb_event_dateAttributes;
        $this->Parent->slb_event_date->Value = $Header->slb_event_date;
        $this->Parent->slb_event_date->Attributes->RestoreFromArray($Header->_slb_event_dateAttributes);
        $this->slb_event_time = $Header->slb_event_time;
        $Header->_slb_event_timeAttributes = $this->_slb_event_timeAttributes;
        $this->Parent->slb_event_time->Value = $Header->slb_event_time;
        $this->Parent->slb_event_time->Attributes->RestoreFromArray($Header->_slb_event_timeAttributes);
        $this->event_id = $Header->event_id;
        $Header->_event_idAttributes = $this->_event_idAttributes;
        $this->Parent->event_id->Value = $Header->event_id;
        $this->Parent->event_id->Attributes->RestoreFromArray($Header->_event_idAttributes);
        $this->slb_label = $Header->slb_label;
        $Header->_slb_labelAttributes = $this->_slb_labelAttributes;
        $this->Parent->slb_label->Value = $Header->slb_label;
        $this->Parent->slb_label->Attributes->RestoreFromArray($Header->_slb_labelAttributes);
        $this->slb_userid = $Header->slb_userid;
        $Header->_slb_useridAttributes = $this->_slb_useridAttributes;
        $this->Parent->slb_userid->Value = $Header->slb_userid;
        $this->Parent->slb_userid->Attributes->RestoreFromArray($Header->_slb_useridAttributes);
        $this->event_message = $Header->event_message;
        $Header->_event_messageAttributes = $this->_event_messageAttributes;
        $this->Parent->event_message->Value = $Header->event_message;
        $this->Parent->event_message->Attributes->RestoreFromArray($Header->_event_messageAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_addin_slb_events_log ReportGroup class

//ssf_addin_slb_events_log GroupsCollection class @3-449402CD
class clsGroupsCollectionssf_addin_slb_events_log {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_addin_slb_events_log(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_addin_slb_events_log($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->slb_event_date->Value = $this->Parent->slb_event_date->initialValue;
        $this->Parent->slb_event_time->Value = $this->Parent->slb_event_time->initialValue;
        $this->Parent->event_id->Value = $this->Parent->event_id->initialValue;
        $this->Parent->slb_label->Value = $this->Parent->slb_label->initialValue;
        $this->Parent->slb_userid->Value = $this->Parent->slb_userid->initialValue;
        $this->Parent->event_message->Value = $this->Parent->event_message->initialValue;
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
//End ssf_addin_slb_events_log GroupsCollection class

class clsReportssf_addin_slb_events_log { //ssf_addin_slb_events_log Class @3-05934BCE

//ssf_addin_slb_events_log Variables @3-D6523CA9

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
    public $Page_FooterBlock, $Page_Footer;
    public $Page_HeaderBlock, $Page_Header;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $Sorter_slb_event_date;
    public $Sorter_slb_event_time;
    public $Sorter_event_id;
    public $Sorter_slb_label;
    public $Sorter_slb_userid;
//End ssf_addin_slb_events_log Variables

//Class_Initialize Event @3-8288A6EB
    function clsReportssf_addin_slb_events_log($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_slb_events_log";
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
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_addin_slb_events_logDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_slb_events_logOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_slb_events_logDir", "");

        $this->Sorter_slb_event_date = new clsSorter($this->ComponentName, "Sorter_slb_event_date", $FileName, $this);
        $this->Sorter_slb_event_time = new clsSorter($this->ComponentName, "Sorter_slb_event_time", $FileName, $this);
        $this->Sorter_event_id = new clsSorter($this->ComponentName, "Sorter_event_id", $FileName, $this);
        $this->Sorter_slb_label = new clsSorter($this->ComponentName, "Sorter_slb_label", $FileName, $this);
        $this->Sorter_slb_userid = new clsSorter($this->ComponentName, "Sorter_slb_userid", $FileName, $this);
        $this->slb_event_date = new clsControl(ccsReportLabel, "slb_event_date", "slb_event_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->slb_event_date->HTML = true;
        $this->slb_event_date->EmptyText = "&nbsp;";
        $this->slb_event_time = new clsControl(ccsReportLabel, "slb_event_time", "slb_event_time", ccsDate, array("H", ":", "nn", ":", "ss"), "", $this);
        $this->slb_event_time->HTML = true;
        $this->slb_event_time->EmptyText = "&nbsp;";
        $this->event_id = new clsControl(ccsReportLabel, "event_id", "event_id", ccsInteger, "", "", $this);
        $this->event_id->HTML = true;
        $this->event_id->EmptyText = "&nbsp;";
        $this->slb_label = new clsControl(ccsReportLabel, "slb_label", "slb_label", ccsText, "", "", $this);
        $this->slb_label->HTML = true;
        $this->slb_label->EmptyText = "&nbsp;";
        $this->slb_userid = new clsControl(ccsReportLabel, "slb_userid", "slb_userid", ccsText, "", "", $this);
        $this->slb_userid->HTML = true;
        $this->slb_userid->EmptyText = "&nbsp;";
        $this->event_message = new clsControl(ccsReportLabel, "event_message", "event_message", ccsMemo, "", "", $this);
        $this->event_message->HTML = true;
        $this->event_message->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-E39CFC81
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->slb_event_date->Errors->Count());
        $errors = ($errors || $this->slb_event_time->Errors->Count());
        $errors = ($errors || $this->event_id->Errors->Count());
        $errors = ($errors || $this->slb_label->Errors->Count());
        $errors = ($errors || $this->slb_userid->Errors->Count());
        $errors = ($errors || $this->event_message->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-C8242F8A
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->slb_event_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slb_event_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->event_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slb_label->Errors->ToString());
        $errors = ComposeStrings($errors, $this->slb_userid->Errors->ToString());
        $errors = ComposeStrings($errors, $this->event_message->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-292D2B05
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_event_id"] = CCGetFromGet("s_event_id", NULL);
        $this->DataSource->Parameters["urls_slb_userid"] = CCGetFromGet("s_slb_userid", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_addin_slb_events_log($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->slb_event_date->SetValue($this->DataSource->slb_event_date->GetValue());
            $this->slb_event_time->SetValue($this->DataSource->slb_event_time->GetValue());
            $this->event_id->SetValue($this->DataSource->event_id->GetValue());
            $this->slb_label->SetValue($this->DataSource->slb_label->GetValue());
            $this->slb_userid->SetValue($this->DataSource->slb_userid->GetValue());
            $this->event_message->SetValue($this->DataSource->event_message->GetValue());
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
            $this->ControlsVisible["slb_event_date"] = $this->slb_event_date->Visible;
            $this->ControlsVisible["slb_event_time"] = $this->slb_event_time->Visible;
            $this->ControlsVisible["event_id"] = $this->event_id->Visible;
            $this->ControlsVisible["slb_label"] = $this->slb_label->Visible;
            $this->ControlsVisible["slb_userid"] = $this->slb_userid->Visible;
            $this->ControlsVisible["event_message"] = $this->event_message->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->slb_event_date->SetValue($items[$i]->slb_event_date);
                        $this->slb_event_date->Attributes->RestoreFromArray($items[$i]->_slb_event_dateAttributes);
                        $this->slb_event_time->SetValue($items[$i]->slb_event_time);
                        $this->slb_event_time->Attributes->RestoreFromArray($items[$i]->_slb_event_timeAttributes);
                        $this->event_id->SetValue($items[$i]->event_id);
                        $this->event_id->Attributes->RestoreFromArray($items[$i]->_event_idAttributes);
                        $this->slb_label->SetValue($items[$i]->slb_label);
                        $this->slb_label->Attributes->RestoreFromArray($items[$i]->_slb_labelAttributes);
                        $this->slb_userid->SetValue($items[$i]->slb_userid);
                        $this->slb_userid->Attributes->RestoreFromArray($items[$i]->_slb_useridAttributes);
                        $this->event_message->SetValue($items[$i]->event_message);
                        $this->event_message->Attributes->RestoreFromArray($items[$i]->_event_messageAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->slb_event_date->Show();
                        $this->slb_event_time->Show();
                        $this->event_id->Show();
                        $this->slb_label->Show();
                        $this->slb_userid->Show();
                        $this->event_message->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
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
                                $this->Sorter_slb_event_date->Show();
                                $this->Sorter_slb_event_time->Show();
                                $this->Sorter_event_id->Show();
                                $this->Sorter_slb_label->Show();
                                $this->Sorter_slb_userid->Show();
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

} //End ssf_addin_slb_events_log Class @3-FCB6E20C

class clsssf_addin_slb_events_logDataSource extends clsDBConnection1 {  //ssf_addin_slb_events_logDataSource Class @3-BD90229A

//DataSource Variables @3-8D8C3ECF
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $slb_event_date;
    public $slb_event_time;
    public $event_id;
    public $slb_label;
    public $slb_userid;
    public $event_message;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-4BA092CD
    function clsssf_addin_slb_events_logDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_addin_slb_events_log";
        $this->Initialize();
        $this->slb_event_date = new clsField("slb_event_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->slb_event_time = new clsField("slb_event_time", ccsDate, array("hh", "nn", "ss"));
        $this->event_id = new clsField("event_id", ccsInteger, "");
        $this->slb_label = new clsField("slb_label", ccsText, "");
        $this->slb_userid = new clsField("slb_userid", ccsText, "");
        $this->event_message = new clsField("event_message", ccsMemo, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-2CCFCC72
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "slb_event_date desc, slb_event_time desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_slb_event_date" => array("slb_event_date", ""), 
            "Sorter_slb_event_time" => array("slb_event_time", ""), 
            "Sorter_event_id" => array("ssf_addin_slb_events_log.slb_event_id", ""), 
            "Sorter_slb_label" => array("slb_label", ""), 
            "Sorter_slb_userid" => array("slb_userid", "")));
    }
//End SetOrder Method

//Prepare Method @3-4BB41652
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("3", "urls_event_id", ccsInteger, "", "", $this->Parameters["urls_event_id"], 0, false);
        $this->wp->AddParameter("4", "urls_slb_userid", ccsText, "", "", $this->Parameters["urls_slb_userid"], "", false);
        $this->wp->AddParameter("5", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("6", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
    }
//End Prepare Method

//Open Method @3-E513B957
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT slb_event_date, slb_event_time, ssf_addin_slb_events_log.slb_event_id AS event_id, slb_label, slb_userid, ssf_addin_slb_events_log.slb_desc AS event_message \n" .
        "FROM ssf_addin_slb_events_log INNER JOIN ssf_addin_slb_events_config ON\n" .
        "ssf_addin_slb_events_log.slb_event_id = ssf_addin_slb_events_config.slb_event_id\n" .
        "WHERE ( slb_event_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = '' )\n" .
        "AND ( slb_event_date <= '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = '' )\n" .
        "AND (  ( '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' = ''  and ( slb_event_time >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' ) )\n" .
        "      OR ( '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' <> ''  and (  (slb_event_date SQLConcat slb_event_time) >= ('" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "')\n" .
        "	  		or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' ) ) )\n" .
        "AND (  ( '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' = ''  and ( slb_event_time <= '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' ) )\n" .
        "      OR ( '" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' <> ''  and (  (slb_event_date SQLConcat slb_event_time) <= ('" . $this->SQLValue($this->wp->GetDBValue("5"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "')\n" .
        "	  		or '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' ) ) )\n" .
        "AND ( ssf_addin_slb_events_log.slb_event_id = " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("3"), ccsInteger) . " = 0 )\n" .
        "AND ( slb_userid = '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = '' ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-9A41B8F9
    function SetValues()
    {
        $this->slb_event_date->SetDBValue(trim($this->f("slb_event_date")));
        $this->slb_event_time->SetDBValue(trim($this->f("slb_event_time")));
        $this->event_id->SetDBValue(trim($this->f("event_id")));
        $this->slb_label->SetDBValue($this->f("slb_label"));
        $this->slb_userid->SetDBValue($this->f("slb_userid"));
        $this->event_message->SetDBValue($this->f("event_message"));
    }
//End SetValues Method

} //End ssf_addin_slb_events_logDataSource Class @3-FCB6E20C

//Initialize Page @1-FC124FE3
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
$TemplateFileName = "SSFLogBookReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-8B855EFD
include("./SSFLogBookReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-44119F61
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_slb_events_conf = new clsRecordssf_addin_slb_events_conf("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_addin_slb_events_log = new clsReportssf_addin_slb_events_log("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_slb_events_conf = & $ssf_addin_slb_events_conf;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_addin_slb_events_log = & $ssf_addin_slb_events_log;
$ssf_addin_slb_events_log->Initialize();

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

//Execute Components @1-1D3BD198
$SSFSpiritHeader->Operations();
$ssf_addin_slb_events_conf->Operation();
//End Execute Components

//Go to destination page @1-9D7C165B
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_slb_events_conf);
    unset($ssf_addin_slb_events_log);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-7F127C12
$SSFSpiritHeader->Show();
$ssf_addin_slb_events_conf->Show();
$Button1->Show();
$ssf_addin_slb_events_log->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-D7B80D09
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_slb_events_conf);
unset($ssf_addin_slb_events_log);
unset($Tpl);
//End Unload Page


?>
