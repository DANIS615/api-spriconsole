<?php
//Include Common Files @1-CA072938
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTrxGroupByHourPump.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_pump_sales { //ssf_pump_sales Class @38-5B615C1E

//Variables @38-9E315808

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

//Class_Initialize Event @38-18F35F2F
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
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", $CCSLocales->GetText("start_date"), ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->s_date_from->Required = true;
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "ssf_pump_sales", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->s_date_to->Required = true;
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_pump_sales", "s_date_to", $this);
            $this->s_time_from = new clsControl(ccsListBox, "s_time_from", "s_time_from", ccsText, "", CCGetRequestParam("s_time_from", $Method, NULL), $this);
            $this->s_time_from->DSType = dsListOfValues;
            $this->s_time_from->Values = array(array("000000", "00:00:00"), array("010000", "01:00:00"), array("020000", "02:00:00"), array("030000", "03:00:00"), array("040000", "04:00:00"), array("050000", "05:00:00"), array("060000", "06:00:00"), array("070000", "07:00:00"), array("080000", "08:00:00"), array("090000", "09:00:00"), array("100000", "10:00:00"), array("110000", "11:00:00"), array("120000", "12:00:00"), array("130000", "13:00:00"), array("140000", "14:00:00"), array("150000", "15:00:00"), array("160000", "16:00:00"), array("170000", "17:00:00"), array("180000", "18:00:00"), array("190000", "19:00:00"), array("200000", "20:00:00"), array("210000", "21:00:00"), array("220000", "22:00:00"), array("230000", "23:00:00"));
            $this->s_time_to = new clsControl(ccsListBox, "s_time_to", "s_time_to", ccsText, "", CCGetRequestParam("s_time_to", $Method, NULL), $this);
            $this->s_time_to->DSType = dsListOfValues;
            $this->s_time_to->Values = array(array("000000", "00:00:00"), array("010000", "01:00:00"), array("020000", "02:00:00"), array("030000", "03:00:00"), array("040000", "04:00:00"), array("050000", "05:00:00"), array("060000", "06:00:00"), array("070000", "07:00:00"), array("080000", "08:00:00"), array("090000", "09:00:00"), array("100000", "10:00:00"), array("110000", "11:00:00"), array("120000", "12:00:00"), array("130000", "13:00:00"), array("140000", "14:00:00"), array("150000", "15:00:00"), array("160000", "16:00:00"), array("170000", "17:00:00"), array("180000", "18:00:00"), array("190000", "19:00:00"), array("200000", "20:00:00"), array("210000", "21:00:00"), array("220000", "22:00:00"), array("230000", "23:00:00"), array("235959", "23:59:59"));
            $this->s_pump_id = new clsControl(ccsListBox, "s_pump_id", "s_pump_id", ccsInteger, "", CCGetRequestParam("s_pump_id", $Method, NULL), $this);
            $this->s_pump_id->DSType = dsSQL;
            list($this->s_pump_id->BoundColumn, $this->s_pump_id->TextColumn, $this->s_pump_id->DBFormat) = array("id", "id", "");
            $this->s_pump_id->DataSource = new clsDBConnection1();
            $this->s_pump_id->ds = & $this->s_pump_id->DataSource;
            $this->s_pump_id->DataSource->SQL = "Select ID as ID from config_values \n" .
            "where library = 'pump' and groupname = 'general'\n" .
            "and parameter = 'ID'  {SQL_OrderBy}";
            $this->s_pump_id->DataSource->Order = "id";
            $this->s_grade_id = new clsControl(ccsListBox, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("param_value", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "param_value";
            $this->s_unit_id = new clsControl(ccsListBox, "s_unit_id", "s_unit_id", ccsText, "", CCGetRequestParam("s_unit_id", $Method, NULL), $this);
            $this->s_unit_id->DSType = dsSQL;
            list($this->s_unit_id->BoundColumn, $this->s_unit_id->TextColumn, $this->s_unit_id->DBFormat) = array("param_value", "param_value", "");
            $this->s_unit_id->DataSource = new clsDBConnection1();
            $this->s_unit_id->ds = & $this->s_unit_id->DataSource;
            $this->s_unit_id->DataSource->SQL = "Select distinct param_value from config_values where library = 'grade' \n" .
            "and groupname = 'general' and parameter = 'vol_unit_desc'";
            $this->s_unit_id->DataSource->Order = "";
            $this->calcdays = new clsControl(ccsHidden, "calcdays", "calcdays", ccsText, "", CCGetRequestParam("calcdays", $Method, NULL), $this);
            $this->rbnGroupOption = new clsControl(ccsRadioButton, "rbnGroupOption", "rbnGroupOption", ccsText, "", CCGetRequestParam("rbnGroupOption", $Method, NULL), $this);
            $this->rbnGroupOption->DSType = dsListOfValues;
            $this->rbnGroupOption->Values = array(array("1", $CCSLocales->GetText("ssf_bypump")), array("2", $CCSLocales->GetText("ssf_bygrade")), array("3", $CCSLocales->GetText("ssf_bypumpgrade")));
            $this->rbnGroupOption->HTML = true;
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->s_time_from->Value) && !strlen($this->s_time_from->Value) && $this->s_time_from->Value !== false)
                    $this->s_time_from->SetText("000000");
                if(!is_array($this->s_time_to->Value) && !strlen($this->s_time_to->Value) && $this->s_time_to->Value !== false)
                    $this->s_time_to->SetText("235959");
                if(!is_array($this->rbnGroupOption->Value) && !strlen($this->rbnGroupOption->Value) && $this->rbnGroupOption->Value !== false)
                    $this->rbnGroupOption->SetText(1);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @38-4AB9869F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_time_from->Validate() && $Validation);
        $Validation = ($this->s_time_to->Validate() && $Validation);
        $Validation = ($this->s_pump_id->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $Validation = ($this->s_unit_id->Validate() && $Validation);
        $Validation = ($this->calcdays->Validate() && $Validation);
        $Validation = ($this->rbnGroupOption->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_unit_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->calcdays->Errors->Count() == 0);
        $Validation =  $Validation && ($this->rbnGroupOption->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @38-9F3DC670
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_time_from->Errors->Count());
        $errors = ($errors || $this->s_time_to->Errors->Count());
        $errors = ($errors || $this->s_pump_id->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->s_unit_id->Errors->Count());
        $errors = ($errors || $this->calcdays->Errors->Count());
        $errors = ($errors || $this->rbnGroupOption->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @38-54E2B22E
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
        $Redirect = "SSFTrxGroupByHourPump.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTrxGroupByHourPump.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @38-8880AE46
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_time_from->Prepare();
        $this->s_time_to->Prepare();
        $this->s_pump_id->Prepare();
        $this->s_grade_id->Prepare();
        $this->s_unit_id->Prepare();
        $this->rbnGroupOption->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_end_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_unit_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->calcdays->Errors->ToString());
            $Error = ComposeStrings($Error, $this->rbnGroupOption->Errors->ToString());
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
        $this->DatePicker_s_end_date1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_time_from->Show();
        $this->s_time_to->Show();
        $this->s_pump_id->Show();
        $this->s_grade_id->Show();
        $this->s_unit_id->Show();
        $this->calcdays->Show();
        $this->rbnGroupOption->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_pump_sales Class @38-FCB6E20C

//Report1 ReportGroup class @3-59F6F3BE
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $end_time, $end_timeDup, $_end_timeAttributes;
    public $pump_id, $_pump_idAttributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $Sum_money, $_Sum_moneyAttributes;
    public $Sum_volume, $_Sum_volumeAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $end_timeTotalIndex;

    function clsReportGroupReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->end_time = $this->Parent->end_time->Value;
        $this->pump_id = $this->Parent->pump_id->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        if ($PrevGroup) {
            $this->end_timeDup =  CCCompareValues($this->end_time, $PrevGroup->end_time, $this->Parent->end_time->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_money = $this->Parent->Sum_money->GetTotalValue($mode);
        $this->Sum_volume = $this->Parent->Sum_volume->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_pump_idAttributes = $this->Parent->Sorter_pump_id->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_Sorter_volumeAttributes = $this->Parent->Sorter_volume->Attributes->GetAsArray();
        $this->_end_timeAttributes = $this->Parent->end_time->Attributes->GetAsArray();
        $this->_pump_idAttributes = $this->Parent->pump_id->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_Sum_moneyAttributes = $this->Parent->Sum_money->Attributes->GetAsArray();
        $this->_Sum_volumeAttributes = $this->Parent->Sum_volume->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Sum_money = $this->Sum_money;
        $Header->_Sum_moneyAttributes = $this->_Sum_moneyAttributes;
        $Header->Sum_volume = $this->Sum_volume;
        $Header->_Sum_volumeAttributes = $this->_Sum_volumeAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->TotalSum_volume = $this->TotalSum_volume;
        $Header->_TotalSum_volumeAttributes = $this->_TotalSum_volumeAttributes;
        $this->end_time = $Header->end_time;
        $Header->_end_timeAttributes = $this->_end_timeAttributes;
        $this->Parent->end_time->Value = $Header->end_time;
        $this->Parent->end_time->Attributes->RestoreFromArray($Header->_end_timeAttributes);
        $this->pump_id = $Header->pump_id;
        $Header->_pump_idAttributes = $this->_pump_idAttributes;
        $this->Parent->pump_id->Value = $Header->pump_id;
        $this->Parent->pump_id->Attributes->RestoreFromArray($Header->_pump_idAttributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Sum_money = $this->Parent->Sum_money->GetValue();
        $this->Sum_volume = $this->Parent->Sum_volume->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @3-872C872B
class clsGroupsCollectionReport1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
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
        $this->mend_timeCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->end_timeTotalIndex = $this->mend_timeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->end_time->Value = $this->Parent->end_time->initialValue;
        $this->Parent->pump_id->Value = $this->Parent->pump_id->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->Sum_money->Value = $this->Parent->Sum_money->initialValue;
        $this->Parent->Sum_volume->Value = $this->Parent->Sum_volume->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->TotalSum_volume->Value = $this->Parent->TotalSum_volume->initialValue;
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
        if ($groupName == "end_time") {
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
            $this->Parent->Sum_money->Reset();
            $this->Parent->Sum_volume->Reset();
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
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnInitialize", $this->Parent->end_time_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->end_time_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->end_time_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->end_time_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupend_time->SetTotalControls("GetPrevValue");
        $Groupend_time->SyncWithHeader($this->Groups[$this->mend_timeCurrentHeaderIndex]);
        if ($this->Parent->end_time_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_time_Footer->Height;
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnCalculate", $this->Parent->end_time_Footer);
        $Groupend_time->SetControls();
        $this->Parent->Sum_money->Reset();
        $this->Parent->Sum_volume->Reset();
        $this->RestoreValues();
        $Groupend_time->Mode = 2;
        $Groupend_time->GroupType ="end_time";
        $this->Groups[] = & $Groupend_time;
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

//Report1 Variables @3-A5C55EDF

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
    public $end_time_HeaderBlock, $end_time_Header;
    public $end_time_FooterBlock, $end_time_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $end_time_HeaderControls, $end_time_FooterControls;
    public $Sorter_pump_id;
    public $Sorter_money;
    public $Sorter_volume;
//End Report1 Variables

//Class_Initialize Event @3-C426CFF9
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
        $this->end_time_Footer = new clsSection($this);
        $this->end_time_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->end_time_Footer->Height);
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
        $this->SorterName = CCGetParam("Report1Order", "");
        $this->SorterDirection = CCGetParam("Report1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->end_time = new clsControl(ccsReportLabel, "end_time", "end_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->end_time->HTML = true;
        $this->end_time->EmptyText = "&nbsp;";
        $this->pump_id = new clsControl(ccsReportLabel, "pump_id", "pump_id", ccsInteger, "", "", $this);
        $this->pump_id->HTML = true;
        $this->pump_id->EmptyText = "&nbsp;";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->money->HTML = true;
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->HTML = true;
        $this->volume->EmptyText = "&nbsp;";
        $this->Sum_money = new clsControl(ccsReportLabel, "Sum_money", "Sum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_money->HTML = true;
        $this->Sum_money->TotalFunction = "Sum";
        $this->Sum_money->EmptyText = "&nbsp;";
        $this->Sum_volume = new clsControl(ccsReportLabel, "Sum_volume", "Sum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_volume->HTML = true;
        $this->Sum_volume->TotalFunction = "Sum";
        $this->Sum_volume->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->HTML = true;
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->TotalSum_money->EmptyText = "&nbsp;";
        $this->TotalSum_volume = new clsControl(ccsReportLabel, "TotalSum_volume", "TotalSum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_volume->HTML = true;
        $this->TotalSum_volume->TotalFunction = "Sum";
        $this->TotalSum_volume->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-01395335
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->end_time->Errors->Count());
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->Sum_money->Errors->Count());
        $errors = ($errors || $this->Sum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-A83D88CE
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-8E293021
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_unit_id"] = CCGetFromGet("s_unit_id", NULL);
        $this->DataSource->Parameters["urlcalcdays"] = CCGetFromGet("calcdays", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $end_timeKey = "";
        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->end_time->SetValue($this->DataSource->end_time->GetValue());
            $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->Sum_money->SetValue($this->DataSource->Sum_money->GetValue());
            $this->Sum_volume->SetValue($this->DataSource->Sum_volume->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
            $this->TotalSum_volume->SetValue($this->DataSource->TotalSum_volume->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $end_timeKey != $this->DataSource->f("end_time")) {
                $Groups->OpenGroup("end_time");
            }
            $Groups->AddItem();
            $end_timeKey = $this->DataSource->f("end_time");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $end_timeKey != $this->DataSource->f("end_time")) {
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
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["Sum_money"] = $this->Sum_money->Visible;
            $this->ControlsVisible["Sum_volume"] = $this->Sum_volume->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->end_time->Visible = $this->ControlsVisible["end_time"] && !$items[$i]->end_timeDup;
                        $this->end_time->SetValue($items[$i]->end_time);
                        $this->end_time->Attributes->RestoreFromArray($items[$i]->_end_timeAttributes);
                        $this->pump_id->SetValue($items[$i]->pump_id);
                        $this->pump_id->Attributes->RestoreFromArray($items[$i]->_pump_idAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->end_time->Show();
                        $this->pump_id->Show();
                        $this->money->Show();
                        $this->volume->Show();
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
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_money->Show();
                                $this->TotalSum_volume->Show();
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
                                $this->Sorter_pump_id->Show();
                                $this->Sorter_money->Show();
                                $this->Sorter_volume->Show();
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
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_money->SetText(CCFormatNumber($items[$i]->Sum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_money->Attributes->RestoreFromArray($items[$i]->_Sum_moneyAttributes);
                            $this->Sum_volume->SetText(CCFormatNumber($items[$i]->Sum_volume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_volume->Attributes->RestoreFromArray($items[$i]->_Sum_volumeAttributes);
                            $this->end_time_Footer->CCSEventResult = CCGetEvent($this->end_time_Footer->CCSEvents, "BeforeShow", $this->end_time_Footer);
                            if ($this->end_time_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_time_Footer";
                                $this->Sum_money->Show();
                                $this->Sum_volume->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_time_Footer", true, "Section Detail");
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

//DataSource Variables @3-66193B31
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $end_time;
    public $pump_id;
    public $money;
    public $volume;
    public $Sum_money;
    public $Sum_volume;
    public $TotalSum_money;
    public $TotalSum_volume;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-201FE819
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->end_time = new clsField("end_time", ccsDate, array("HH"));
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->Sum_money = new clsField("Sum_money", ccsFloat, "");
        $this->Sum_volume = new clsField("Sum_volume", ccsFloat, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-1887C220
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "pump_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter_volume" => array("volume", "")));
    }
//End SetOrder Method

//Prepare Method @3-BAD08FEE
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], h, false);
        $this->wp->AddParameter("4", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], h, false);
        $this->wp->AddParameter("5", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], 0, false);
        $this->wp->AddParameter("6", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], 0, false);
        $this->wp->AddParameter("7", "urls_unit_id", ccsText, "", "", $this->Parameters["urls_unit_id"], -1, false);
        $this->wp->AddParameter("8", "urlcalcdays", ccsInteger, "", "", $this->Parameters["urlcalcdays"], 1, false);
    }
//End Prepare Method

//Open Method @3-D0B74C79
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT SQLSubstr(a.end_time,1,2) as end_time, pump_id,\n" .
        "sum(a.money)/ " . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as money, sum(a.volume)/ " . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as volume\n" .
        "FROM ssf_pump_sales a, config_values b, config_values c\n" .
        "WHERE a.end_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'\n" .
        "AND a.end_date <= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' \n" .
        "and ( a.end_time >= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = 'h' )\n" .
        "and ( a.end_time <= '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = 'h' )\n" .
        "and (a.pump_id = " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0)\n" .
        "and (a.grade_id = " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " = 0)\n" .
        "and a.sale_type <> 0\n" .
        "and b.library = 'grade' \n" .
        "and b.groupname = 'general'\n" .
        "and b.parameter = 'number'\n" .
        "and b.param_value = a.grade_id\n" .
        "and c.library = b.library\n" .
        "and c.groupname = b.groupname\n" .
        "and b.id =  c.id\n" .
        "and c.parameter = 'vol_unit_desc'\n" .
        "and ( c.param_value = '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = '-1' )     \n" .
        "group by  SQLSubstr(a.end_time,1,2), pump_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "end_time asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-98FE4B15
    function SetValues()
    {
        $this->end_time->SetDBValue(trim($this->f("end_time")));
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->Sum_money->SetDBValue(trim($this->f("money")));
        $this->Sum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
    }
//End SetValues Method

} //End Report1DataSource Class @3-FCB6E20C

//rptByGrade ReportGroup class @58-F2FEE1A3
class clsReportGrouprptByGrade {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $end_time, $end_timeDup, $_end_timeAttributes;
    public $grade_id, $_grade_idAttributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $Sum_money, $_Sum_moneyAttributes;
    public $Sum_volume, $_Sum_volumeAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $end_timeTotalIndex;

    function clsReportGrouprptByGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->end_time = $this->Parent->end_time->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        if ($PrevGroup) {
            $this->end_timeDup =  CCCompareValues($this->end_time, $PrevGroup->end_time, $this->Parent->end_time->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_money = $this->Parent->Sum_money->GetTotalValue($mode);
        $this->Sum_volume = $this->Parent->Sum_volume->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_pump_idAttributes = $this->Parent->Sorter_pump_id->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_Sorter_volumeAttributes = $this->Parent->Sorter_volume->Attributes->GetAsArray();
        $this->_end_timeAttributes = $this->Parent->end_time->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_Sum_moneyAttributes = $this->Parent->Sum_money->Attributes->GetAsArray();
        $this->_Sum_volumeAttributes = $this->Parent->Sum_volume->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Sum_money = $this->Sum_money;
        $Header->_Sum_moneyAttributes = $this->_Sum_moneyAttributes;
        $Header->Sum_volume = $this->Sum_volume;
        $Header->_Sum_volumeAttributes = $this->_Sum_volumeAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->TotalSum_volume = $this->TotalSum_volume;
        $Header->_TotalSum_volumeAttributes = $this->_TotalSum_volumeAttributes;
        $this->end_time = $Header->end_time;
        $Header->_end_timeAttributes = $this->_end_timeAttributes;
        $this->Parent->end_time->Value = $Header->end_time;
        $this->Parent->end_time->Attributes->RestoreFromArray($Header->_end_timeAttributes);
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Sum_money = $this->Parent->Sum_money->GetValue();
        $this->Sum_volume = $this->Parent->Sum_volume->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetValue();
    }
}
//End rptByGrade ReportGroup class

//rptByGrade GroupsCollection class @58-975394D1
class clsGroupsCollectionrptByGrade {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mend_timeCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionrptByGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mend_timeCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGrouprptByGrade($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->end_timeTotalIndex = $this->mend_timeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->end_time->Value = $this->Parent->end_time->initialValue;
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->Sum_money->Value = $this->Parent->Sum_money->initialValue;
        $this->Parent->Sum_volume->Value = $this->Parent->Sum_volume->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->TotalSum_volume->Value = $this->Parent->TotalSum_volume->initialValue;
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
        if ($groupName == "end_time") {
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
            $this->Parent->Sum_money->Reset();
            $this->Parent->Sum_volume->Reset();
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
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnInitialize", $this->Parent->end_time_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->end_time_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->end_time_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->end_time_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupend_time->SetTotalControls("GetPrevValue");
        $Groupend_time->SyncWithHeader($this->Groups[$this->mend_timeCurrentHeaderIndex]);
        if ($this->Parent->end_time_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_time_Footer->Height;
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnCalculate", $this->Parent->end_time_Footer);
        $Groupend_time->SetControls();
        $this->Parent->Sum_money->Reset();
        $this->Parent->Sum_volume->Reset();
        $this->RestoreValues();
        $Groupend_time->Mode = 2;
        $Groupend_time->GroupType ="end_time";
        $this->Groups[] = & $Groupend_time;
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
//End rptByGrade GroupsCollection class

class clsReportrptByGrade { //rptByGrade Class @58-1063AB6A

//rptByGrade Variables @58-A5C55EDF

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
    public $end_time_HeaderBlock, $end_time_Header;
    public $end_time_FooterBlock, $end_time_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $end_time_HeaderControls, $end_time_FooterControls;
    public $Sorter_pump_id;
    public $Sorter_money;
    public $Sorter_volume;
//End rptByGrade Variables

//Class_Initialize Event @58-E04D4512
    function clsReportrptByGrade($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "rptByGrade";
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
        $this->end_time_Footer = new clsSection($this);
        $this->end_time_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->end_time_Footer->Height);
        $this->end_time_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsrptByGradeDataSource($this);
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
        $this->SorterName = CCGetParam("rptByGradeOrder", "");
        $this->SorterDirection = CCGetParam("rptByGradeDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->end_time = new clsControl(ccsReportLabel, "end_time", "end_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->end_time->HTML = true;
        $this->end_time->EmptyText = "&nbsp;";
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->grade_id->HTML = true;
        $this->grade_id->EmptyText = "&nbsp;";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->money->HTML = true;
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->HTML = true;
        $this->volume->EmptyText = "&nbsp;";
        $this->Sum_money = new clsControl(ccsReportLabel, "Sum_money", "Sum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_money->HTML = true;
        $this->Sum_money->TotalFunction = "Sum";
        $this->Sum_money->EmptyText = "&nbsp;";
        $this->Sum_volume = new clsControl(ccsReportLabel, "Sum_volume", "Sum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_volume->HTML = true;
        $this->Sum_volume->TotalFunction = "Sum";
        $this->Sum_volume->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->HTML = true;
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->TotalSum_money->EmptyText = "&nbsp;";
        $this->TotalSum_volume = new clsControl(ccsReportLabel, "TotalSum_volume", "TotalSum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_volume->HTML = true;
        $this->TotalSum_volume->TotalFunction = "Sum";
        $this->TotalSum_volume->EmptyText = "&nbsp;";
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

//Initialize Method @58-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @58-1B235650
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->end_time->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->Sum_money->Errors->Count());
        $errors = ($errors || $this->Sum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @58-EE2BC2F9
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @58-519E5B16
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_unit_id"] = CCGetFromGet("s_unit_id", NULL);
        $this->DataSource->Parameters["urlcalcdays"] = CCGetFromGet("calcdays", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $end_timeKey = "";
        $Groups = new clsGroupsCollectionrptByGrade($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->end_time->SetValue($this->DataSource->end_time->GetValue());
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->Sum_money->SetValue($this->DataSource->Sum_money->GetValue());
            $this->Sum_volume->SetValue($this->DataSource->Sum_volume->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
            $this->TotalSum_volume->SetValue($this->DataSource->TotalSum_volume->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $end_timeKey != $this->DataSource->f("end_time")) {
                $Groups->OpenGroup("end_time");
            }
            $Groups->AddItem();
            $end_timeKey = $this->DataSource->f("end_time");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $end_timeKey != $this->DataSource->f("end_time")) {
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
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["Sum_money"] = $this->Sum_money->Visible;
            $this->ControlsVisible["Sum_volume"] = $this->Sum_volume->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->end_time->Visible = $this->ControlsVisible["end_time"] && !$items[$i]->end_timeDup;
                        $this->end_time->SetValue($items[$i]->end_time);
                        $this->end_time->Attributes->RestoreFromArray($items[$i]->_end_timeAttributes);
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->end_time->Show();
                        $this->grade_id->Show();
                        $this->money->Show();
                        $this->volume->Show();
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
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_money->Show();
                                $this->TotalSum_volume->Show();
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
                                $this->Sorter_pump_id->Show();
                                $this->Sorter_money->Show();
                                $this->Sorter_volume->Show();
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
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_money->SetText(CCFormatNumber($items[$i]->Sum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_money->Attributes->RestoreFromArray($items[$i]->_Sum_moneyAttributes);
                            $this->Sum_volume->SetText(CCFormatNumber($items[$i]->Sum_volume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_volume->Attributes->RestoreFromArray($items[$i]->_Sum_volumeAttributes);
                            $this->end_time_Footer->CCSEventResult = CCGetEvent($this->end_time_Footer->CCSEvents, "BeforeShow", $this->end_time_Footer);
                            if ($this->end_time_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_time_Footer";
                                $this->Sum_money->Show();
                                $this->Sum_volume->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_time_Footer", true, "Section Detail");
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

} //End rptByGrade Class @58-FCB6E20C

class clsrptByGradeDataSource extends clsDBConnection1 {  //rptByGradeDataSource Class @58-00A56523

//DataSource Variables @58-5DE28436
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $end_time;
    public $grade_id;
    public $money;
    public $volume;
    public $Sum_money;
    public $Sum_volume;
    public $TotalSum_money;
    public $TotalSum_volume;
//End DataSource Variables

//DataSourceClass_Initialize Event @58-F689DBCA
    function clsrptByGradeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report rptByGrade";
        $this->Initialize();
        $this->end_time = new clsField("end_time", ccsDate, array("HH"));
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->Sum_money = new clsField("Sum_money", ccsFloat, "");
        $this->Sum_volume = new clsField("Sum_volume", ccsFloat, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @58-C7C5E408
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "grade_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter_volume" => array("volume", "")));
    }
//End SetOrder Method

//Prepare Method @58-BAD08FEE
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], h, false);
        $this->wp->AddParameter("4", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], h, false);
        $this->wp->AddParameter("5", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], 0, false);
        $this->wp->AddParameter("6", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], 0, false);
        $this->wp->AddParameter("7", "urls_unit_id", ccsText, "", "", $this->Parameters["urls_unit_id"], -1, false);
        $this->wp->AddParameter("8", "urlcalcdays", ccsInteger, "", "", $this->Parameters["urlcalcdays"], 1, false);
    }
//End Prepare Method

//Open Method @58-2472656C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT SQLSubstr(a.end_time,1,2) as end_time, grade_id, b.id as grade_id_desc, \n" .
        "sum(a.money)/ " . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as money, sum(a.volume)/ " . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as volume\n" .
        "FROM ssf_pump_sales a, config_values b, config_values c\n" .
        "WHERE a.end_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'\n" .
        "AND a.end_date <= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' \n" .
        "and ( a.end_time >= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = 'h' )\n" .
        "and ( a.end_time <= '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = 'h' )\n" .
        "and (a.pump_id = " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0)\n" .
        "and (a.grade_id = " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " = 0)\n" .
        "and a.sale_type <> 0\n" .
        "and a.grade_id = b.param_value\n" .
        "AND ( b.library = 'grade'  )\n" .
        "AND ( b.groupname = 'general' )\n" .
        "AND ( b.parameter = 'number' ) \n" .
        "and c.library = b.library\n" .
        "and c.groupname = b.groupname\n" .
        "and b.id =  c.id\n" .
        "and c.parameter = 'vol_unit_desc'\n" .
        "and ( c.param_value = '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = '-1' )   \n" .
        "group by  SQLSubstr(a.end_time,1,2), grade_id, b.id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "end_time asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @58-250DA69B
    function SetValues()
    {
        $this->end_time->SetDBValue(trim($this->f("end_time")));
        $this->grade_id->SetDBValue($this->f("grade_id_desc"));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->Sum_money->SetDBValue(trim($this->f("money")));
        $this->Sum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
    }
//End SetValues Method

} //End rptByGradeDataSource Class @58-FCB6E20C

//rptByPumpGrade ReportGroup class @92-6315AEFC
class clsReportGrouprptByPumpGrade {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $end_time, $end_timeDup, $_end_timeAttributes;
    public $pump_id, $pump_idDup, $_pump_idAttributes;
    public $grade_id, $_grade_idAttributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $Sum_money, $_Sum_moneyAttributes;
    public $Sum_volume, $_Sum_volumeAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $end_timeTotalIndex;

    function clsReportGrouprptByPumpGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->end_time = $this->Parent->end_time->Value;
        $this->pump_id = $this->Parent->pump_id->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        if ($PrevGroup) {
            $this->end_timeDup =  CCCompareValues($this->end_time, $PrevGroup->end_time, $this->Parent->end_time->DataType) == 0;
            $this->pump_idDup =  CCCompareValues($this->pump_id, $PrevGroup->pump_id, $this->Parent->pump_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_money = $this->Parent->Sum_money->GetTotalValue($mode);
        $this->Sum_volume = $this->Parent->Sum_volume->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_pump_idAttributes = $this->Parent->Sorter_pump_id->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_Sorter_volumeAttributes = $this->Parent->Sorter_volume->Attributes->GetAsArray();
        $this->_end_timeAttributes = $this->Parent->end_time->Attributes->GetAsArray();
        $this->_pump_idAttributes = $this->Parent->pump_id->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_Sum_moneyAttributes = $this->Parent->Sum_money->Attributes->GetAsArray();
        $this->_Sum_volumeAttributes = $this->Parent->Sum_volume->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Sum_money = $this->Sum_money;
        $Header->_Sum_moneyAttributes = $this->_Sum_moneyAttributes;
        $Header->Sum_volume = $this->Sum_volume;
        $Header->_Sum_volumeAttributes = $this->_Sum_volumeAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->TotalSum_volume = $this->TotalSum_volume;
        $Header->_TotalSum_volumeAttributes = $this->_TotalSum_volumeAttributes;
        $this->end_time = $Header->end_time;
        $Header->_end_timeAttributes = $this->_end_timeAttributes;
        $this->Parent->end_time->Value = $Header->end_time;
        $this->Parent->end_time->Attributes->RestoreFromArray($Header->_end_timeAttributes);
        $this->pump_id = $Header->pump_id;
        $Header->_pump_idAttributes = $this->_pump_idAttributes;
        $this->Parent->pump_id->Value = $Header->pump_id;
        $this->Parent->pump_id->Attributes->RestoreFromArray($Header->_pump_idAttributes);
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Sum_money = $this->Parent->Sum_money->GetValue();
        $this->Sum_volume = $this->Parent->Sum_volume->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetValue();
    }
}
//End rptByPumpGrade ReportGroup class

//rptByPumpGrade GroupsCollection class @92-EE34FCD7
class clsGroupsCollectionrptByPumpGrade {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mend_timeCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionrptByPumpGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mend_timeCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGrouprptByPumpGrade($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->end_timeTotalIndex = $this->mend_timeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->end_time->Value = $this->Parent->end_time->initialValue;
        $this->Parent->pump_id->Value = $this->Parent->pump_id->initialValue;
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->Sum_money->Value = $this->Parent->Sum_money->initialValue;
        $this->Parent->Sum_volume->Value = $this->Parent->Sum_volume->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->TotalSum_volume->Value = $this->Parent->TotalSum_volume->initialValue;
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
        if ($groupName == "end_time") {
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
            $this->Parent->Sum_money->Reset();
            $this->Parent->Sum_volume->Reset();
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
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnInitialize", $this->Parent->end_time_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->end_time_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->end_time_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->end_time_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupend_time->SetTotalControls("GetPrevValue");
        $Groupend_time->SyncWithHeader($this->Groups[$this->mend_timeCurrentHeaderIndex]);
        if ($this->Parent->end_time_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->end_time_Footer->Height;
        $this->Parent->end_time_Footer->CCSEventResult = CCGetEvent($this->Parent->end_time_Footer->CCSEvents, "OnCalculate", $this->Parent->end_time_Footer);
        $Groupend_time->SetControls();
        $this->Parent->Sum_money->Reset();
        $this->Parent->Sum_volume->Reset();
        $this->RestoreValues();
        $Groupend_time->Mode = 2;
        $Groupend_time->GroupType ="end_time";
        $this->Groups[] = & $Groupend_time;
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
//End rptByPumpGrade GroupsCollection class

class clsReportrptByPumpGrade { //rptByPumpGrade Class @92-C2D50AB0

//rptByPumpGrade Variables @92-A5C55EDF

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
    public $end_time_HeaderBlock, $end_time_Header;
    public $end_time_FooterBlock, $end_time_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $end_time_HeaderControls, $end_time_FooterControls;
    public $Sorter_pump_id;
    public $Sorter_money;
    public $Sorter_volume;
//End rptByPumpGrade Variables

//Class_Initialize Event @92-8CFAFACC
    function clsReportrptByPumpGrade($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "rptByPumpGrade";
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
        $this->end_time_Footer = new clsSection($this);
        $this->end_time_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->end_time_Footer->Height);
        $this->end_time_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsrptByPumpGradeDataSource($this);
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
        $this->SorterName = CCGetParam("rptByPumpGradeOrder", "");
        $this->SorterDirection = CCGetParam("rptByPumpGradeDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->end_time = new clsControl(ccsReportLabel, "end_time", "end_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->end_time->HTML = true;
        $this->end_time->EmptyText = "&nbsp;";
        $this->pump_id = new clsControl(ccsReportLabel, "pump_id", "pump_id", ccsInteger, "", "", $this);
        $this->pump_id->HTML = true;
        $this->pump_id->EmptyText = "&nbsp;";
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->grade_id->HTML = true;
        $this->grade_id->EmptyText = "&nbsp;";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->money->HTML = true;
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->HTML = true;
        $this->volume->EmptyText = "&nbsp;";
        $this->Sum_money = new clsControl(ccsReportLabel, "Sum_money", "Sum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_money->HTML = true;
        $this->Sum_money->TotalFunction = "Sum";
        $this->Sum_money->EmptyText = "&nbsp;";
        $this->Sum_volume = new clsControl(ccsReportLabel, "Sum_volume", "Sum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_volume->HTML = true;
        $this->Sum_volume->TotalFunction = "Sum";
        $this->Sum_volume->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->HTML = true;
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->TotalSum_money->EmptyText = "&nbsp;";
        $this->TotalSum_volume = new clsControl(ccsReportLabel, "TotalSum_volume", "TotalSum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_volume->HTML = true;
        $this->TotalSum_volume->TotalFunction = "Sum";
        $this->TotalSum_volume->EmptyText = "&nbsp;";
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

//Initialize Method @92-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @92-20D05031
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->end_time->Errors->Count());
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->Sum_money->Errors->Count());
        $errors = ($errors || $this->Sum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @92-4103D893
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @92-5F0504FD
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_unit_id"] = CCGetFromGet("s_unit_id", NULL);
        $this->DataSource->Parameters["urlcalcdays"] = CCGetFromGet("calcdays", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $end_timeKey = "";
        $Groups = new clsGroupsCollectionrptByPumpGrade($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->end_time->SetValue($this->DataSource->end_time->GetValue());
            $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->Sum_money->SetValue($this->DataSource->Sum_money->GetValue());
            $this->Sum_volume->SetValue($this->DataSource->Sum_volume->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
            $this->TotalSum_volume->SetValue($this->DataSource->TotalSum_volume->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $end_timeKey != $this->DataSource->f("end_time")) {
                $Groups->OpenGroup("end_time");
            }
            $Groups->AddItem();
            $end_timeKey = $this->DataSource->f("end_time");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $end_timeKey != $this->DataSource->f("end_time")) {
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
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["Sum_money"] = $this->Sum_money->Visible;
            $this->ControlsVisible["Sum_volume"] = $this->Sum_volume->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->end_time->Visible = $this->ControlsVisible["end_time"] && !$items[$i]->end_timeDup;
                        $this->end_time->SetValue($items[$i]->end_time);
                        $this->end_time->Attributes->RestoreFromArray($items[$i]->_end_timeAttributes);
                        $this->pump_id->Visible = $this->ControlsVisible["pump_id"] && !$items[$i]->pump_idDup;
                        $this->pump_id->SetValue($items[$i]->pump_id);
                        $this->pump_id->Attributes->RestoreFromArray($items[$i]->_pump_idAttributes);
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->end_time->Show();
                        $this->pump_id->Show();
                        $this->grade_id->Show();
                        $this->money->Show();
                        $this->volume->Show();
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
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_money->Show();
                                $this->TotalSum_volume->Show();
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
                                $this->Sorter_pump_id->Show();
                                $this->Sorter_money->Show();
                                $this->Sorter_volume->Show();
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
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_money->SetText(CCFormatNumber($items[$i]->Sum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_money->Attributes->RestoreFromArray($items[$i]->_Sum_moneyAttributes);
                            $this->Sum_volume->SetText(CCFormatNumber($items[$i]->Sum_volume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_volume->Attributes->RestoreFromArray($items[$i]->_Sum_volumeAttributes);
                            $this->end_time_Footer->CCSEventResult = CCGetEvent($this->end_time_Footer->CCSEvents, "BeforeShow", $this->end_time_Footer);
                            if ($this->end_time_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section end_time_Footer";
                                $this->Sum_money->Show();
                                $this->Sum_volume->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section end_time_Footer", true, "Section Detail");
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

} //End rptByPumpGrade Class @92-FCB6E20C

class clsrptByPumpGradeDataSource extends clsDBConnection1 {  //rptByPumpGradeDataSource Class @92-C858EADC

//DataSource Variables @92-18A59528
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $end_time;
    public $pump_id;
    public $grade_id;
    public $money;
    public $volume;
    public $Sum_money;
    public $Sum_volume;
    public $TotalSum_money;
    public $TotalSum_volume;
//End DataSource Variables

//DataSourceClass_Initialize Event @92-4D173BB7
    function clsrptByPumpGradeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report rptByPumpGrade";
        $this->Initialize();
        $this->end_time = new clsField("end_time", ccsDate, array("HH"));
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->Sum_money = new clsField("Sum_money", ccsFloat, "");
        $this->Sum_volume = new clsField("Sum_volume", ccsFloat, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @92-81008345
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "pump_id, grade_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter_volume" => array("volume", "")));
    }
//End SetOrder Method

//Prepare Method @92-BAD08FEE
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], h, false);
        $this->wp->AddParameter("4", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], h, false);
        $this->wp->AddParameter("5", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], 0, false);
        $this->wp->AddParameter("6", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], 0, false);
        $this->wp->AddParameter("7", "urls_unit_id", ccsText, "", "", $this->Parameters["urls_unit_id"], -1, false);
        $this->wp->AddParameter("8", "urlcalcdays", ccsInteger, "", "", $this->Parameters["urlcalcdays"], 1, false);
    }
//End Prepare Method

//Open Method @92-59C878B3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT SQLSubstr(a.end_time,1,2) as end_time, pump_id, grade_id, b.id as grade_id_desc, \n" .
        "sum(a.money)/" . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as money, sum(a.volume)/" . $this->SQLValue($this->wp->GetDBValue("8"), ccsInteger) . " as volume\n" .
        "FROM ssf_pump_sales a, config_values b, config_values c\n" .
        "WHERE a.end_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'\n" .
        "AND a.end_date <= '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' \n" .
        "and ( a.end_time >= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = 'h' )\n" .
        "and ( a.end_time <= '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("4"), ccsText) . "' = 'h' )\n" .
        "and (a.pump_id = " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0)\n" .
        "and (a.grade_id = " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("6"), ccsInteger) . " = 0)\n" .
        "and a.sale_type <> 0\n" .
        "and a.grade_id = b.param_value\n" .
        "AND ( b.library = 'grade'  )\n" .
        "AND ( b.groupname = 'general' )\n" .
        "AND ( b.parameter = 'number' ) \n" .
        "and c.library = b.library\n" .
        "and c.groupname = b.groupname\n" .
        "and b.id =  c.id\n" .
        "and c.parameter = 'vol_unit_desc'\n" .
        "and ( c.param_value = '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = '-1' )   \n" .
        "group by  SQLSubstr(a.end_time,1,2), pump_id, grade_id, b.id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "end_time asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @92-7A095143
    function SetValues()
    {
        $this->end_time->SetDBValue(trim($this->f("end_time")));
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->grade_id->SetDBValue($this->f("grade_id_desc"));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->Sum_money->SetDBValue(trim($this->f("money")));
        $this->Sum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
    }
//End SetValues Method

} //End rptByPumpGradeDataSource Class @92-FCB6E20C

//Initialize Page @1-E74BDB37
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
$TemplateFileName = "SSFTrxGroupByHourPump.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-2EE8C1EA
include("./SSFTrxGroupByHourPump_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-300EF63E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_pump_sales = new clsRecordssf_pump_sales("", $MainPage);
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$btnPrint = new clsButton("btnPrint", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$rptByGrade = new clsReportrptByGrade("", $MainPage);
$rptByPumpGrade = new clsReportrptByPumpGrade("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_pump_sales = & $ssf_pump_sales;
$MainPage->Label1 = & $Label1;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$MainPage->rptByGrade = & $rptByGrade;
$MainPage->rptByPumpGrade = & $rptByPumpGrade;
$Report1->Initialize();
$rptByGrade->Initialize();
$rptByPumpGrade->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

$Charset = $Charset ? $Charset : "windows-1252";
if ($Charset)
    header("Content-Type: text/html; charset=" . $Charset);
//End Initialize Objects

//Initialize HTML Template @1-8BA72015
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
$Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
$Tpl->block_path = "/$BlockToParse";
$Attributes->SetValue("tableborder", "");
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-953BAC19
$SSFSpiritHeader->Operations();
$ssf_pump_sales->Operation();
//End Execute Components

//Go to destination page @1-D9BAB570
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_pump_sales);
    unset($Report1);
    unset($rptByGrade);
    unset($rptByPumpGrade);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-13C2ABA0
$SSFSpiritHeader->Show();
$ssf_pump_sales->Show();
$btnPrint->Show();
$Report1->Show();
$rptByGrade->Show();
$rptByPumpGrade->Show();
$Label1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-024C24BB
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_pump_sales);
unset($Report1);
unset($rptByGrade);
unset($rptByPumpGrade);
unset($Tpl);
//End Unload Page


?>
