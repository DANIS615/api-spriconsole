<?php
//Include Common Files @1-1DFE22F4
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTrxGroupByDate.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_pump_sales { //ssf_pump_sales Class @36-5B615C1E

//Variables @36-9E315808

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

//Class_Initialize Event @36-1644D198
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
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_pump_sales";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "ssf_pump_sales", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_pump_sales", "s_date_to", $this);
            $this->s_unit_id = new clsControl(ccsListBox, "s_unit_id", "s_unit_id", ccsText, "", CCGetRequestParam("s_unit_id", $Method, NULL), $this);
            $this->s_unit_id->DSType = dsSQL;
            list($this->s_unit_id->BoundColumn, $this->s_unit_id->TextColumn, $this->s_unit_id->DBFormat) = array("param_value", "param_value", "");
            $this->s_unit_id->DataSource = new clsDBConnection1();
            $this->s_unit_id->ds = & $this->s_unit_id->DataSource;
            $this->s_unit_id->DataSource->SQL = "Select distinct param_value from config_values where library = 'grade' \n" .
            "and groupname = 'general' and parameter = 'vol_unit_desc'";
            $this->s_unit_id->DataSource->Order = "";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTrxGroupByDate.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @36-230F4BEA
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_unit_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_unit_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @36-C13AD539
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_unit_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @36-6C8B06A2
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
        $Redirect = "SSFTrxGroupByDate.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTrxGroupByDate.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @36-D5386B52
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_unit_id->Prepare();

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
            $Error = ComposeStrings($Error, $this->s_unit_id->Errors->ToString());
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
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_unit_id->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_pump_sales Class @36-FCB6E20C

//Report1 ReportGroup class @3-1A41ECE6
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $end_date, $end_dateDup, $_end_dateAttributes;
    public $end_time, $end_timeDup, $_end_timePage, $_end_timeParameters, $_end_timeAttributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $total_trans, $_total_transAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $TotalSum_trans, $_TotalSum_transAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $end_dateTotalIndex;
    public $end_timeTotalIndex;

    function clsReportGroupReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->end_date = $this->Parent->end_date->Value;
        $this->end_time = $this->Parent->end_time->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        $this->total_trans = $this->Parent->total_trans->Value;
        if ($PrevGroup) {
            $this->end_dateDup =  CCCompareValues($this->end_date, $PrevGroup->end_date, $this->Parent->end_date->DataType) == 0;
            $this->end_timeDup =  CCCompareValues($this->end_time, $PrevGroup->end_time, $this->Parent->end_time->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->TotalSum_trans = $this->Parent->TotalSum_trans->GetTotalValue($mode);
        $this->_end_timePage = $this->Parent->end_time->Page;
        $this->_end_timeParameters = $this->Parent->end_time->Parameters;
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_end_dateAttributes = $this->Parent->end_date->Attributes->GetAsArray();
        $this->_end_timeAttributes = $this->Parent->end_time->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_total_transAttributes = $this->Parent->total_trans->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_TotalSum_transAttributes = $this->Parent->TotalSum_trans->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->TotalSum_volume = $this->TotalSum_volume;
        $Header->_TotalSum_volumeAttributes = $this->_TotalSum_volumeAttributes;
        $Header->TotalSum_trans = $this->TotalSum_trans;
        $Header->_TotalSum_transAttributes = $this->_TotalSum_transAttributes;
        $this->end_date = $Header->end_date;
        $Header->_end_dateAttributes = $this->_end_dateAttributes;
        $this->Parent->end_date->Value = $Header->end_date;
        $this->Parent->end_date->Attributes->RestoreFromArray($Header->_end_dateAttributes);
        $this->end_time = $Header->end_time;
        $this->_end_timePage = $Header->_end_timePage;
        $this->_end_timeParameters = $Header->_end_timeParameters;
        $Header->_end_timeAttributes = $this->_end_timeAttributes;
        $this->Parent->end_time->Value = $Header->end_time;
        $this->Parent->end_time->Attributes->RestoreFromArray($Header->_end_timeAttributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
        $this->total_trans = $Header->total_trans;
        $Header->_total_transAttributes = $this->_total_transAttributes;
        $this->Parent->total_trans->Value = $Header->total_trans;
        $this->Parent->total_trans->Attributes->RestoreFromArray($Header->_total_transAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetValue();
        $this->TotalSum_trans = $this->Parent->TotalSum_trans->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @3-7ECB7ADA
class clsGroupsCollectionReport1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mend_dateCurrentHeaderIndex;
    public $mend_timeCurrentHeaderIndex;
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
        $this->mend_dateCurrentHeaderIndex = 1;
        $this->mend_timeCurrentHeaderIndex = 2;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->end_dateTotalIndex = $this->mend_dateCurrentHeaderIndex;
        $group->end_timeTotalIndex = $this->mend_timeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->end_date->Value = $this->Parent->end_date->initialValue;
        $this->Parent->end_time->Value = $this->Parent->end_time->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->total_trans->Value = $this->Parent->total_trans->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->TotalSum_volume->Value = $this->Parent->TotalSum_volume->initialValue;
        $this->Parent->TotalSum_trans->Value = $this->Parent->TotalSum_trans->initialValue;
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
        if ($groupName == "end_date") {
            $Groupend_date = & $this->InitGroup(true);
            $this->Parent->end_date_Header->CCSEventResult = CCGetEvent($this->Parent->end_date_Header->CCSEvents, "OnInitialize", $this->Parent->end_date_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->end_date_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->end_date_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->end_date_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->end_date_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_date_Header->Height;
                $Groupend_date->SetTotalControls("GetNextValue");
            $this->Parent->end_date_Header->CCSEventResult = CCGetEvent($this->Parent->end_date_Header->CCSEvents, "OnCalculate", $this->Parent->end_date_Header);
            $Groupend_date->SetControls();
            $Groupend_date->Mode = 1;
            $OpenFlag = true;
            $Groupend_date->GroupType = "end_date";
            $this->mend_dateCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupend_date;
        }
        if ($groupName == "end_time" or $OpenFlag) {
            $Groupend_time = & $this->InitGroup(true);
            $this->Parent->end_time_Header->CCSEventResult = CCGetEvent($this->Parent->end_time_Header->CCSEvents, "OnInitialize", $this->Parent->end_time_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->end_time_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->end_time_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->end_time_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->end_time_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_time_Header->Height;
                $Groupend_time->SetTotalControls("GetNextValue");
            $this->Parent->end_time_Header->CCSEventResult = CCGetEvent($this->Parent->end_time_Header->CCSEvents, "OnCalculate", $this->Parent->end_time_Header);
            $Groupend_time->SetControls();
            $Groupend_time->Mode = 1;
            $Groupend_time->GroupType = "end_time";
            $this->mend_timeCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupend_time;
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
        $Groupend_time = & $this->InitGroup(true);
        $Groupend_time->SetTotalControls("GetPrevValue");
        $Groupend_time->SyncWithHeader($this->Groups[$this->mend_timeCurrentHeaderIndex]);
        $Groupend_time->SetControls();
        $this->RestoreValues();
        $Groupend_time->Mode = 2;
        $Groupend_time->GroupType ="end_time";
        $this->Groups[] = & $Groupend_time;
        if ($groupName == "end_time") return;
        $Groupend_date = & $this->InitGroup(true);
        $this->Parent->end_date_Footer->CCSEventResult = CCGetEvent($this->Parent->end_date_Footer->CCSEvents, "OnInitialize", $this->Parent->end_date_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->end_date_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->end_date_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->end_date_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupend_date->SetTotalControls("GetPrevValue");
        $Groupend_date->SyncWithHeader($this->Groups[$this->mend_dateCurrentHeaderIndex]);
        if ($this->Parent->end_date_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_date_Footer->Height;
        $this->Parent->end_date_Footer->CCSEventResult = CCGetEvent($this->Parent->end_date_Footer->CCSEvents, "OnCalculate", $this->Parent->end_date_Footer);
        $Groupend_date->SetControls();
        $this->RestoreValues();
        $Groupend_date->Mode = 2;
        $Groupend_date->GroupType ="end_date";
        $this->Groups[] = & $Groupend_date;
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

class clsReportReport1 { //Report1 Class @3-BC2FB08C

//Report1 Variables @3-7D5561CB

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
    public $end_date_HeaderBlock, $end_date_Header;
    public $end_date_FooterBlock, $end_date_Footer;
    public $end_time_HeaderBlock, $end_time_Header;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $end_date_HeaderControls, $end_date_FooterControls;
    public $end_time_HeaderControls, $end_time_FooterControls;
//End Report1 Variables

//Class_Initialize Event @3-18DAF3EF
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
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->end_date_Footer = new clsSection($this);
        $this->end_date_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->end_date_Footer->Height);
        $this->end_date_Header = new clsSection($this);
        $this->end_time_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
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

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->end_date = new clsControl(ccsLabel, "end_date", "end_date", ccsText, "", CCGetRequestParam("end_date", ccsGet, NULL), $this);
        $this->end_time = new clsControl(ccsLink, "end_time", "end_time", ccsText, "", CCGetRequestParam("end_time", ccsGet, NULL), $this);
        $this->end_time->HTML = true;
        $this->end_time->Page = "SSFTransactionsReport.php";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->EmptyText = "&nbsp;";
        $this->total_trans = new clsControl(ccsReportLabel, "total_trans", "total_trans", ccsInteger, "", "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->HTML = true;
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->TotalSum_money->EmptyText = "&nbsp;";
        $this->TotalSum_volume = new clsControl(ccsReportLabel, "TotalSum_volume", "TotalSum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_volume->HTML = true;
        $this->TotalSum_volume->TotalFunction = "Sum";
        $this->TotalSum_trans = new clsControl(ccsReportLabel, "TotalSum_trans", "TotalSum_trans", ccsInteger, "", "", $this);
        $this->TotalSum_trans->TotalFunction = "Sum";
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_CurrentDateTime->HTML = true;
        $this->Report_CurrentDateTime->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-D026822E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->end_date->Errors->Count());
        $errors = ($errors || $this->end_time->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->total_trans->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_trans->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-B760D92D
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_trans->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_trans->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-FE7B3450
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_unit_id"] = CCGetFromGet("s_unit_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $end_dateKey = "";
        $end_timeKey = "";
        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->end_date->SetValue($this->DataSource->end_date->GetValue());
            $this->end_time->SetValue($this->DataSource->end_time->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->total_trans->SetValue($this->DataSource->total_trans->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
            $this->TotalSum_volume->SetValue($this->DataSource->TotalSum_volume->GetValue());
            $this->TotalSum_trans->SetValue($this->DataSource->TotalSum_trans->GetValue());
            $this->end_time->Parameters = "";
            $this->end_time->Parameters = CCAddParam($this->end_time->Parameters, "p_sale_start", $this->DataSource->f("max_sale_id"));
            $this->end_time->Parameters = CCAddParam($this->end_time->Parameters, "p_sale_end", $this->DataSource->f("min_sale_id"));
            $this->end_time->Parameters = CCAddParam($this->end_time->Parameters, "s_unit_id", CCGetFromGet("s_unit_id", NULL));
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $end_dateKey != $this->DataSource->f("end_date")) {
                $Groups->OpenGroup("end_date");
            } elseif ($end_timeKey != $this->DataSource->f("end_time")) {
                $Groups->OpenGroup("end_time");
            }
            $Groups->AddItem();
            $end_dateKey = $this->DataSource->f("end_date");
            $end_timeKey = $this->DataSource->f("end_time");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $end_dateKey != $this->DataSource->f("end_date")) {
                $Groups->CloseGroup("end_date");
            } elseif ($end_timeKey != $this->DataSource->f("end_time")) {
                $Groups->CloseGroup("end_time");
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
            $this->ControlsVisible["end_date"] = $this->end_date->Visible;
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["total_trans"] = $this->total_trans->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->end_date->Visible = $this->ControlsVisible["end_date"] && !$items[$i]->end_dateDup;
                        $this->end_date->SetValue($items[$i]->end_date);
                        $this->end_date->Attributes->RestoreFromArray($items[$i]->_end_dateAttributes);
                        $this->end_time->Visible = $this->ControlsVisible["end_time"] && !$items[$i]->end_timeDup;
                        $this->end_time->SetValue($items[$i]->end_time);
                        $this->end_time->Page = $items[$i]->_end_timePage;
                        $this->end_time->Parameters = $items[$i]->_end_timeParameters;
                        $this->end_time->Attributes->RestoreFromArray($items[$i]->_end_timeAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->total_trans->SetValue($items[$i]->total_trans);
                        $this->total_trans->Attributes->RestoreFromArray($items[$i]->_total_transAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->end_date->Show();
                        $this->end_time->Show();
                        $this->money->Show();
                        $this->volume->Show();
                        $this->total_trans->Show();
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
                            $this->TotalSum_money->SetText(CCFormatNumber($items[$i]->TotalSum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_moneyAttributes);
                            $this->TotalSum_volume->SetText(CCFormatNumber($items[$i]->TotalSum_volume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_volumeAttributes);
                            $this->TotalSum_trans->SetValue($items[$i]->TotalSum_trans);
                            $this->TotalSum_trans->Attributes->RestoreFromArray($items[$i]->_TotalSum_transAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_money->Show();
                                $this->TotalSum_volume->Show();
                                $this->TotalSum_trans->Show();
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
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Report_CurrentDateTime->Show();
                                $this->PageBreak->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "end_date":
                        if ($items[$i]->Mode == 1) {
                            $this->end_date_Header->CCSEventResult = CCGetEvent($this->end_date_Header->CCSEvents, "BeforeShow", $this->end_date_Header);
                            if ($this->end_date_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_date_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_date_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->end_date_Footer->CCSEventResult = CCGetEvent($this->end_date_Footer->CCSEvents, "BeforeShow", $this->end_date_Footer);
                            if ($this->end_date_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_date_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_date_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "end_time":
                        if ($items[$i]->Mode == 1) {
                            $this->end_time_Header->CCSEventResult = CCGetEvent($this->end_time_Header->CCSEvents, "BeforeShow", $this->end_time_Header);
                            if ($this->end_time_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_time_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_time_Header", true, "Section Detail");
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

} //End Report1 Class @3-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @3-20EE0F53

//DataSource Variables @3-32DC6DC4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $end_date;
    public $end_time;
    public $money;
    public $volume;
    public $total_trans;
    public $TotalSum_money;
    public $TotalSum_volume;
    public $TotalSum_trans;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-F22FE030
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->end_date = new clsField("end_date", ccsText, "");
        $this->end_time = new clsField("end_time", ccsText, "");
        $this->money = new clsField("money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->volume = new clsField("volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->total_trans = new clsField("total_trans", ccsInteger, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_trans = new clsField("TotalSum_trans", ccsInteger, "");

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

//Prepare Method @3-4F860335
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_unit_id", ccsText, "", "", $this->Parameters["urls_unit_id"], "", false);
    }
//End Prepare Method

//Open Method @3-64B1F2AF
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT min(a.sale_id) as max_sale_id, max(a.sale_id) as min_sale_id, a.end_date, substr(a.end_time,1,2) as end_time,\n" .
        "sum(a.money) as money, sum(a.volume) as volume, count(*) as total_trans\n" .
        "FROM ssf_pump_sales a, config_values b, config_values c\n" .
        "WHERE a.end_date >= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'\n" .
        "AND a.end_date <= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' \n" .
        "and b.library = 'grade' \n" .
        "and b.groupname = 'general'\n" .
        "and b.parameter = 'number'\n" .
        "and b.param_value = a.grade_id\n" .
        "and c.library = b.library\n" .
        "and c.groupname = b.groupname\n" .
        "and b.id =  c.id\n" .
        "and c.parameter = 'vol_unit_desc'\n" .
        "and ( c.param_value = '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' ) \n" .
        "group by  a.end_date, substr(a.end_time,1,2)";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "end_date asc,end_time asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-879287D4
    function SetValues()
    {
        $this->end_date->SetDBValue($this->f("end_date"));
        $this->end_time->SetDBValue($this->f("end_time"));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->total_trans->SetDBValue(trim($this->f("total_trans")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_trans->SetDBValue(trim($this->f("total_trans")));
    }
//End SetValues Method

} //End Report1DataSource Class @3-FCB6E20C

//ssf_pump_sales1 ReportGroup class @56-311517F2
class clsReportGroupssf_pump_sales1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $end_date, $_end_datePage, $_end_dateParameters, $_end_dateAttributes;
    public $Link1, $_Link1Page, $_Link1Parameters, $_Link1Attributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $total_trans, $_total_transAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSumVolume, $_TotalSumVolumeAttributes;
    public $totalsum_trans, $_totalsum_transAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_pump_sales1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->end_date = $this->Parent->end_date->Value;
        $this->Link1 = $this->Parent->Link1->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        $this->total_trans = $this->Parent->total_trans->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSumVolume = $this->Parent->TotalSumVolume->GetTotalValue($mode);
        $this->totalsum_trans = $this->Parent->totalsum_trans->GetTotalValue($mode);
        $this->_end_datePage = $this->Parent->end_date->Page;
        $this->_end_dateParameters = $this->Parent->end_date->Parameters;
        $this->_Link1Page = $this->Parent->Link1->Page;
        $this->_Link1Parameters = $this->Parent->Link1->Parameters;
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_end_dateAttributes = $this->Parent->Sorter_end_date->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_Sorter1Attributes = $this->Parent->Sorter1->Attributes->GetAsArray();
        $this->_end_dateAttributes = $this->Parent->end_date->Attributes->GetAsArray();
        $this->_Link1Attributes = $this->Parent->Link1->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_total_transAttributes = $this->Parent->total_trans->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSumVolumeAttributes = $this->Parent->TotalSumVolume->Attributes->GetAsArray();
        $this->_totalsum_transAttributes = $this->Parent->totalsum_trans->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->TotalSumVolume = $this->TotalSumVolume;
        $Header->_TotalSumVolumeAttributes = $this->_TotalSumVolumeAttributes;
        $Header->totalsum_trans = $this->totalsum_trans;
        $Header->_totalsum_transAttributes = $this->_totalsum_transAttributes;
        $this->end_date = $Header->end_date;
        $this->_end_datePage = $Header->_end_datePage;
        $this->_end_dateParameters = $Header->_end_dateParameters;
        $Header->_end_dateAttributes = $this->_end_dateAttributes;
        $this->Parent->end_date->Value = $Header->end_date;
        $this->Parent->end_date->Attributes->RestoreFromArray($Header->_end_dateAttributes);
        $this->Link1 = $Header->Link1;
        $this->_Link1Page = $Header->_Link1Page;
        $this->_Link1Parameters = $Header->_Link1Parameters;
        $Header->_Link1Attributes = $this->_Link1Attributes;
        $this->Parent->Link1->Value = $Header->Link1;
        $this->Parent->Link1->Attributes->RestoreFromArray($Header->_Link1Attributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
        $this->total_trans = $Header->total_trans;
        $Header->_total_transAttributes = $this->_total_transAttributes;
        $this->Parent->total_trans->Value = $Header->total_trans;
        $this->Parent->total_trans->Attributes->RestoreFromArray($Header->_total_transAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->TotalSumVolume = $this->Parent->TotalSumVolume->GetValue();
        $this->totalsum_trans = $this->Parent->totalsum_trans->GetValue();
    }
}
//End ssf_pump_sales1 ReportGroup class

//ssf_pump_sales1 GroupsCollection class @56-6264362C
class clsGroupsCollectionssf_pump_sales1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_pump_sales1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_pump_sales1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->end_date->Value = $this->Parent->end_date->initialValue;
        $this->Parent->Link1->Value = $this->Parent->Link1->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->total_trans->Value = $this->Parent->total_trans->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->TotalSumVolume->Value = $this->Parent->TotalSumVolume->initialValue;
        $this->Parent->totalsum_trans->Value = $this->Parent->totalsum_trans->initialValue;
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
//End ssf_pump_sales1 GroupsCollection class

class clsReportssf_pump_sales1 { //ssf_pump_sales1 Class @56-BD29C31B

//ssf_pump_sales1 Variables @56-9ABCD218

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
    public $Sorter_end_date;
    public $Sorter_money;
    public $Sorter1;
//End ssf_pump_sales1 Variables

//Class_Initialize Event @56-04748E6B
    function clsReportssf_pump_sales1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_pump_sales1";
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
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_pump_sales1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_pump_sales1Order", "");
        $this->SorterDirection = CCGetParam("ssf_pump_sales1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_end_date = new clsSorter($this->ComponentName, "Sorter_end_date", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter1 = new clsSorter($this->ComponentName, "Sorter1", $FileName, $this);
        $this->end_date = new clsControl(ccsLink, "end_date", "end_date", ccsText, "", CCGetRequestParam("end_date", ccsGet, NULL), $this);
        $this->end_date->HTML = true;
        $this->end_date->Page = "SSFTransactionsReport.php";
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTrxGroupByDate.php";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->money->HTML = true;
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->HTML = true;
        $this->volume->EmptyText = "&nbsp;";
        $this->total_trans = new clsControl(ccsReportLabel, "total_trans", "total_trans", ccsInteger, "", "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->HTML = true;
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->TotalSum_money->EmptyText = "&nbsp;";
        $this->TotalSumVolume = new clsControl(ccsReportLabel, "TotalSumVolume", "TotalSumVolume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSumVolume->HTML = true;
        $this->TotalSumVolume->TotalFunction = "Sum";
        $this->TotalSumVolume->EmptyText = "&nbsp;";
        $this->totalsum_trans = new clsControl(ccsReportLabel, "totalsum_trans", "totalsum_trans", ccsInteger, "", "", $this);
        $this->totalsum_trans->TotalFunction = "Sum";
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

//Initialize Method @56-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @56-550024D6
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->end_date->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->total_trans->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSumVolume->Errors->Count());
        $errors = ($errors || $this->totalsum_trans->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @56-14E5BB53
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Link1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_trans->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSumVolume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->totalsum_trans->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @56-959AECDB
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_unit_id"] = CCGetFromGet("s_unit_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_pump_sales1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->end_date->SetValue($this->DataSource->end_date->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->total_trans->SetValue($this->DataSource->total_trans->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
            $this->TotalSumVolume->SetValue($this->DataSource->TotalSumVolume->GetValue());
            $this->totalsum_trans->SetValue($this->DataSource->totalsum_trans->GetValue());
            $this->end_date->Parameters = "";
            $this->end_date->Parameters = CCAddParam($this->end_date->Parameters, "p_sale_start", $this->DataSource->f("min_sale_id"));
            $this->end_date->Parameters = CCAddParam($this->end_date->Parameters, "p_sale_end", $this->DataSource->f("max_sale_id"));
            $this->end_date->Parameters = CCAddParam($this->end_date->Parameters, "s_unit_id", CCGetFromGet("s_unit_id", NULL));
            $this->Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
            $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_date_from", $this->DataSource->f("end_date"));
            $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_date_to", $this->DataSource->f("end_date"));
            $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "rbtReportopt", 2);
            $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_unit_id", CCGetFromGet("s_unit_id", NULL));
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
            $this->ControlsVisible["end_date"] = $this->end_date->Visible;
            $this->ControlsVisible["Link1"] = $this->Link1->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["total_trans"] = $this->total_trans->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->end_date->SetValue($items[$i]->end_date);
                        $this->end_date->Page = $items[$i]->_end_datePage;
                        $this->end_date->Parameters = $items[$i]->_end_dateParameters;
                        $this->end_date->Attributes->RestoreFromArray($items[$i]->_end_dateAttributes);
                        $this->Link1->SetValue($items[$i]->Link1);
                        $this->Link1->Page = $items[$i]->_Link1Page;
                        $this->Link1->Parameters = $items[$i]->_Link1Parameters;
                        $this->Link1->Attributes->RestoreFromArray($items[$i]->_Link1Attributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->total_trans->SetValue($items[$i]->total_trans);
                        $this->total_trans->Attributes->RestoreFromArray($items[$i]->_total_transAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->end_date->Show();
                        $this->Link1->Show();
                        $this->money->Show();
                        $this->volume->Show();
                        $this->total_trans->Show();
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
                            $this->TotalSum_money->SetText(CCFormatNumber($items[$i]->TotalSum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_moneyAttributes);
                            $this->TotalSumVolume->SetText(CCFormatNumber($items[$i]->TotalSumVolume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSumVolume->Attributes->RestoreFromArray($items[$i]->_TotalSumVolumeAttributes);
                            $this->totalsum_trans->SetValue($items[$i]->totalsum_trans);
                            $this->totalsum_trans->Attributes->RestoreFromArray($items[$i]->_totalsum_transAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_money->Show();
                                $this->TotalSumVolume->Show();
                                $this->totalsum_trans->Show();
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
                                $this->Sorter_end_date->Show();
                                $this->Sorter_money->Show();
                                $this->Sorter1->Show();
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

} //End ssf_pump_sales1 Class @56-FCB6E20C

class clsssf_pump_sales1DataSource extends clsDBConnection1 {  //ssf_pump_sales1DataSource Class @56-4D30BE54

//DataSource Variables @56-B4859E20
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $end_date;
    public $money;
    public $volume;
    public $total_trans;
    public $TotalSum_money;
    public $TotalSumVolume;
    public $totalsum_trans;
//End DataSource Variables

//DataSourceClass_Initialize Event @56-4473F117
    function clsssf_pump_sales1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_pump_sales1";
        $this->Initialize();
        $this->end_date = new clsField("end_date", ccsText, "");
        $this->money = new clsField("money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->volume = new clsField("volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->total_trans = new clsField("total_trans", ccsInteger, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSumVolume = new clsField("TotalSumVolume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->totalsum_trans = new clsField("totalsum_trans", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @56-F6C46D60
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "end_date desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_end_date" => array("end_date", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter1" => array("volume", "")));
    }
//End SetOrder Method

//Prepare Method @56-169B09B9
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("7", "urls_unit_id", ccsText, "", "", $this->Parameters["urls_unit_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = "b.library = 'grade' ";
        $this->wp->Criterion[4] = "b.groupname = 'general'";
        $this->wp->Criterion[5] = "b.parameter = 'number'";
        $this->wp->Criterion[6] = "c.parameter = 'vol_unit_desc'";
        $this->wp->Criterion[7] = $this->wp->Operation(opEqual, "c.param_value", $this->wp->GetDBValue("7"), $this->ToSQL($this->wp->GetDBValue("7"), ccsText),false);
        $this->Where = $this->wp->opAND(
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
             $this->wp->Criterion[7]);
    }
//End Prepare Method

//Open Method @56-7ABAA2A1
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT Max(sale_id) AS max_sale_id, Sum(money) AS money, end_date, Min(sale_id) AS min_sale_id, Sum(volume) AS volume, Count(sale_id) AS total_trans \n\n" .
        "FROM ssf_pump_sales INNER JOIN (config_values b INNER JOIN config_values c ON\n\n" .
        "b.library = c.library AND b.id = c.id AND b.groupname = c.groupname) ON\n\n" .
        "ssf_pump_sales.grade_id = b.param_value {SQL_Where}\n\n" .
        "GROUP BY end_date {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @56-95D4B09A
    function SetValues()
    {
        $this->end_date->SetDBValue($this->f("end_date"));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->total_trans->SetDBValue(trim($this->f("total_trans")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSumVolume->SetDBValue(trim($this->f("volume")));
        $this->totalsum_trans->SetDBValue(trim($this->f("total_trans")));
    }
//End SetValues Method

} //End ssf_pump_sales1DataSource Class @56-FCB6E20C

//Initialize Page @1-BD171CA9
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
$TemplateFileName = "SSFTrxGroupByDate.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-09D11AD0
include("./SSFTrxGroupByDate_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-94F39172
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_pump_sales = new clsRecordssf_pump_sales("", $MainPage);
$btnPrint = new clsButton("btnPrint", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$ssf_pump_sales1 = new clsReportssf_pump_sales1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_pump_sales = & $ssf_pump_sales;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$MainPage->ssf_pump_sales1 = & $ssf_pump_sales1;
$Report1->Initialize();
$ssf_pump_sales1->Initialize();

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

//Execute Components @1-953BAC19
$SSFSpiritHeader->Operations();
$ssf_pump_sales->Operation();
//End Execute Components

//Go to destination page @1-4BDF34BD
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_pump_sales);
    unset($Report1);
    unset($ssf_pump_sales1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A191ED0F
$SSFSpiritHeader->Show();
$ssf_pump_sales->Show();
$btnPrint->Show();
$Report1->Show();
$ssf_pump_sales1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BEA0ED81
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_pump_sales);
unset($Report1);
unset($ssf_pump_sales1);
unset($Tpl);
//End Unload Page


?>
