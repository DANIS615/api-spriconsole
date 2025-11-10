<?php
//Include Common Files @1-03EB3BF5
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Reports/");
define("FileName", "SSFTagSaleReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_addin_tags_sale_data { //ssf_addin_tags_sale_data Class @18-40BECA33

//Variables @18-9E315808

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

//Class_Initialize Event @18-5AC78DDB
    function clsRecordssf_addin_tags_sale_data($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_tags_sale_data/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_tags_sale_data";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "ssf_addin_tags_sale_data", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_addin_tags_sale_data", "s_date_to", $this);
            $this->s_time_from = new clsControl(ccsTextBox, "s_time_from", "s_time_from", ccsText, "", CCGetRequestParam("s_time_from", $Method, NULL), $this);
            $this->s_time_to = new clsControl(ccsTextBox, "s_time_to", "s_time_to", ccsText, "", CCGetRequestParam("s_time_to", $Method, NULL), $this);
            $this->s_tkt_cust_id = new clsControl(ccsTextBox, "s_tkt_cust_id", "s_tkt_cust_id", ccsText, "", CCGetRequestParam("s_tkt_cust_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopCustomerList.php";
            $this->s_tag_sale_tag_id = new clsControl(ccsTextBox, "s_tag_sale_tag_id", "s_tag_sale_tag_id", ccsText, "", CCGetRequestParam("s_tag_sale_tag_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopSubAccountList.php";
            $this->s_pump_id = new clsControl(ccsListBox, "s_pump_id", "s_pump_id", ccsInteger, "", CCGetRequestParam("s_pump_id", $Method, NULL), $this);
            $this->s_pump_id->DSType = dsSQL;
            list($this->s_pump_id->BoundColumn, $this->s_pump_id->TextColumn, $this->s_pump_id->DBFormat) = array("id", "id", "");
            $this->s_pump_id->DataSource = new clsDBConnection1();
            $this->s_pump_id->ds = & $this->s_pump_id->DataSource;
            $this->s_pump_id->DataSource->SQL = "";
            $this->s_pump_id->DataSource->Order = "";
            $this->s_grade_id = new clsControl(ccsListBox, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("param_value", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "param_value";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @18-F634514C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_time_from->Validate() && $Validation);
        $Validation = ($this->s_time_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_cust_id->Validate() && $Validation);
        $Validation = ($this->s_tag_sale_tag_id->Validate() && $Validation);
        $Validation = ($this->s_pump_id->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_cust_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tag_sale_tag_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @18-1FB4356A
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_time_from->Errors->Count());
        $errors = ($errors || $this->s_time_to->Errors->Count());
        $errors = ($errors || $this->s_tkt_cust_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->s_tag_sale_tag_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->s_pump_id->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @18-F2A72287
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
        $Redirect = "SSFTagSaleReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTagSaleReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @18-BF970916
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_pump_id->Prepare();
        $this->s_grade_id->Prepare();

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
            $Error = ComposeStrings($Error, $this->s_tkt_cust_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tag_sale_tag_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
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
        $this->s_tkt_cust_id->Show();
        $this->Link1->Show();
        $this->s_tag_sale_tag_id->Show();
        $this->Link2->Show();
        $this->s_pump_id->Show();
        $this->s_grade_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_addin_tags_sale_data Class @18-FCB6E20C

//ssf_addin_tags_sale_data1 ReportGroup class @3-21D2195E
class clsReportGroupssf_addin_tags_sale_data1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tag_sale_id, $_tag_sale_idAttributes;
    public $tag_sale_tag_id, $_tag_sale_tag_idAttributes;
    public $tkt_cust_id, $_tkt_cust_idAttributes;
    public $tkt_cust_name, $_tkt_cust_nameAttributes;
    public $end_date, $_end_dateAttributes;
    public $end_time, $_end_timeAttributes;
    public $pump_id, $_pump_idAttributes;
    public $hose_id, $_hose_idAttributes;
    public $grade_id, $_grade_idAttributes;
    public $volume, $_volumeAttributes;
    public $money, $_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_addin_tags_sale_data1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tag_sale_id = $this->Parent->tag_sale_id->Value;
        $this->tag_sale_tag_id = $this->Parent->tag_sale_tag_id->Value;
        $this->tkt_cust_id = $this->Parent->tkt_cust_id->Value;
        $this->tkt_cust_name = $this->Parent->tkt_cust_name->Value;
        $this->end_date = $this->Parent->end_date->Value;
        $this->end_time = $this->Parent->end_time->Value;
        $this->pump_id = $this->Parent->pump_id->Value;
        $this->hose_id = $this->Parent->hose_id->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->volume = $this->Parent->volume->Value;
        $this->money = $this->Parent->money->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Sorter_tag_sale_idAttributes = $this->Parent->Sorter_tag_sale_id->Attributes->GetAsArray();
        $this->_Sorter_tag_sale_tag_idAttributes = $this->Parent->Sorter_tag_sale_tag_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_cust_idAttributes = $this->Parent->Sorter_tkt_cust_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_cust_nameAttributes = $this->Parent->Sorter_tkt_cust_name->Attributes->GetAsArray();
        $this->_Sorter_end_dateAttributes = $this->Parent->Sorter_end_date->Attributes->GetAsArray();
        $this->_Sorter_end_timeAttributes = $this->Parent->Sorter_end_time->Attributes->GetAsArray();
        $this->_Sorter_pump_idAttributes = $this->Parent->Sorter_pump_id->Attributes->GetAsArray();
        $this->_Sorter_hose_idAttributes = $this->Parent->Sorter_hose_id->Attributes->GetAsArray();
        $this->_Sorter_grade_idAttributes = $this->Parent->Sorter_grade_id->Attributes->GetAsArray();
        $this->_Sorter_volumeAttributes = $this->Parent->Sorter_volume->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_tag_sale_idAttributes = $this->Parent->tag_sale_id->Attributes->GetAsArray();
        $this->_tag_sale_tag_idAttributes = $this->Parent->tag_sale_tag_id->Attributes->GetAsArray();
        $this->_tkt_cust_idAttributes = $this->Parent->tkt_cust_id->Attributes->GetAsArray();
        $this->_tkt_cust_nameAttributes = $this->Parent->tkt_cust_name->Attributes->GetAsArray();
        $this->_end_dateAttributes = $this->Parent->end_date->Attributes->GetAsArray();
        $this->_end_timeAttributes = $this->Parent->end_time->Attributes->GetAsArray();
        $this->_pump_idAttributes = $this->Parent->pump_id->Attributes->GetAsArray();
        $this->_hose_idAttributes = $this->Parent->hose_id->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_volume = $this->TotalSum_volume;
        $Header->_TotalSum_volumeAttributes = $this->_TotalSum_volumeAttributes;
        $Header->TotalSum_money = $this->TotalSum_money;
        $Header->_TotalSum_moneyAttributes = $this->_TotalSum_moneyAttributes;
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->tag_sale_id = $Header->tag_sale_id;
        $Header->_tag_sale_idAttributes = $this->_tag_sale_idAttributes;
        $this->Parent->tag_sale_id->Value = $Header->tag_sale_id;
        $this->Parent->tag_sale_id->Attributes->RestoreFromArray($Header->_tag_sale_idAttributes);
        $this->tag_sale_tag_id = $Header->tag_sale_tag_id;
        $Header->_tag_sale_tag_idAttributes = $this->_tag_sale_tag_idAttributes;
        $this->Parent->tag_sale_tag_id->Value = $Header->tag_sale_tag_id;
        $this->Parent->tag_sale_tag_id->Attributes->RestoreFromArray($Header->_tag_sale_tag_idAttributes);
        $this->tkt_cust_id = $Header->tkt_cust_id;
        $Header->_tkt_cust_idAttributes = $this->_tkt_cust_idAttributes;
        $this->Parent->tkt_cust_id->Value = $Header->tkt_cust_id;
        $this->Parent->tkt_cust_id->Attributes->RestoreFromArray($Header->_tkt_cust_idAttributes);
        $this->tkt_cust_name = $Header->tkt_cust_name;
        $Header->_tkt_cust_nameAttributes = $this->_tkt_cust_nameAttributes;
        $this->Parent->tkt_cust_name->Value = $Header->tkt_cust_name;
        $this->Parent->tkt_cust_name->Attributes->RestoreFromArray($Header->_tkt_cust_nameAttributes);
        $this->end_date = $Header->end_date;
        $Header->_end_dateAttributes = $this->_end_dateAttributes;
        $this->Parent->end_date->Value = $Header->end_date;
        $this->Parent->end_date->Attributes->RestoreFromArray($Header->_end_dateAttributes);
        $this->end_time = $Header->end_time;
        $Header->_end_timeAttributes = $this->_end_timeAttributes;
        $this->Parent->end_time->Value = $Header->end_time;
        $this->Parent->end_time->Attributes->RestoreFromArray($Header->_end_timeAttributes);
        $this->pump_id = $Header->pump_id;
        $Header->_pump_idAttributes = $this->_pump_idAttributes;
        $this->Parent->pump_id->Value = $Header->pump_id;
        $this->Parent->pump_id->Attributes->RestoreFromArray($Header->_pump_idAttributes);
        $this->hose_id = $Header->hose_id;
        $Header->_hose_idAttributes = $this->_hose_idAttributes;
        $this->Parent->hose_id->Value = $Header->hose_id;
        $this->Parent->hose_id->Attributes->RestoreFromArray($Header->_hose_idAttributes);
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->volume = $Header->volume;
        $Header->_volumeAttributes = $this->_volumeAttributes;
        $this->Parent->volume->Value = $Header->volume;
        $this->Parent->volume->Attributes->RestoreFromArray($Header->_volumeAttributes);
        $this->money = $Header->money;
        $Header->_moneyAttributes = $this->_moneyAttributes;
        $this->Parent->money->Value = $Header->money;
        $this->Parent->money->Attributes->RestoreFromArray($Header->_moneyAttributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetValue();
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetValue();
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_addin_tags_sale_data1 ReportGroup class

//ssf_addin_tags_sale_data1 GroupsCollection class @3-1ECD2E3E
class clsGroupsCollectionssf_addin_tags_sale_data1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_addin_tags_sale_data1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_addin_tags_sale_data1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tag_sale_id->Value = $this->Parent->tag_sale_id->initialValue;
        $this->Parent->tag_sale_tag_id->Value = $this->Parent->tag_sale_tag_id->initialValue;
        $this->Parent->tkt_cust_id->Value = $this->Parent->tkt_cust_id->initialValue;
        $this->Parent->tkt_cust_name->Value = $this->Parent->tkt_cust_name->initialValue;
        $this->Parent->end_date->Value = $this->Parent->end_date->initialValue;
        $this->Parent->end_time->Value = $this->Parent->end_time->initialValue;
        $this->Parent->pump_id->Value = $this->Parent->pump_id->initialValue;
        $this->Parent->hose_id->Value = $this->Parent->hose_id->initialValue;
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->volume->Value = $this->Parent->volume->initialValue;
        $this->Parent->money->Value = $this->Parent->money->initialValue;
        $this->Parent->TotalSum_volume->Value = $this->Parent->TotalSum_volume->initialValue;
        $this->Parent->TotalSum_money->Value = $this->Parent->TotalSum_money->initialValue;
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
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
//End ssf_addin_tags_sale_data1 GroupsCollection class

class clsReportssf_addin_tags_sale_data1 { //ssf_addin_tags_sale_data1 Class @3-CAEA8D25

//ssf_addin_tags_sale_data1 Variables @3-19BC9986

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
    public $Sorter_tag_sale_id;
    public $Sorter_tag_sale_tag_id;
    public $Sorter_tkt_cust_id;
    public $Sorter_tkt_cust_name;
    public $Sorter_end_date;
    public $Sorter_end_time;
    public $Sorter_pump_id;
    public $Sorter_hose_id;
    public $Sorter_grade_id;
    public $Sorter_volume;
    public $Sorter_money;
//End ssf_addin_tags_sale_data1 Variables

//Class_Initialize Event @3-B4486FF2
    function clsReportssf_addin_tags_sale_data1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_tags_sale_data1";
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
        $this->DataSource = new clsssf_addin_tags_sale_data1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_tags_sale_data1Order", "");
        $this->SorterDirection = CCGetParam("ssf_addin_tags_sale_data1Dir", "");

        $this->Sorter_tag_sale_id = new clsSorter($this->ComponentName, "Sorter_tag_sale_id", $FileName, $this);
        $this->Sorter_tag_sale_tag_id = new clsSorter($this->ComponentName, "Sorter_tag_sale_tag_id", $FileName, $this);
        $this->Sorter_tkt_cust_id = new clsSorter($this->ComponentName, "Sorter_tkt_cust_id", $FileName, $this);
        $this->Sorter_tkt_cust_name = new clsSorter($this->ComponentName, "Sorter_tkt_cust_name", $FileName, $this);
        $this->Sorter_end_date = new clsSorter($this->ComponentName, "Sorter_end_date", $FileName, $this);
        $this->Sorter_end_time = new clsSorter($this->ComponentName, "Sorter_end_time", $FileName, $this);
        $this->Sorter_pump_id = new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->Sorter_hose_id = new clsSorter($this->ComponentName, "Sorter_hose_id", $FileName, $this);
        $this->Sorter_grade_id = new clsSorter($this->ComponentName, "Sorter_grade_id", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->tag_sale_id = new clsControl(ccsReportLabel, "tag_sale_id", "tag_sale_id", ccsInteger, "", "", $this);
        $this->tag_sale_tag_id = new clsControl(ccsReportLabel, "tag_sale_tag_id", "tag_sale_tag_id", ccsText, "", "", $this);
        $this->tkt_cust_id = new clsControl(ccsReportLabel, "tkt_cust_id", "tkt_cust_id", ccsText, "", "", $this);
        $this->tkt_cust_name = new clsControl(ccsReportLabel, "tkt_cust_name", "tkt_cust_name", ccsText, "", "", $this);
        $this->end_date = new clsControl(ccsReportLabel, "end_date", "end_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->end_time = new clsControl(ccsReportLabel, "end_time", "end_time", ccsDate, array("H", ":", "nn", ":", "ss"), "", $this);
        $this->pump_id = new clsControl(ccsReportLabel, "pump_id", "pump_id", ccsInteger, "", "", $this);
        $this->hose_id = new clsControl(ccsReportLabel, "hose_id", "hose_id", ccsInteger, "", "", $this);
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_volume = new clsControl(ccsReportLabel, "TotalSum_volume", "TotalSum_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_volume->TotalFunction = "Sum";
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_money->TotalFunction = "Sum";
        $this->Report_CurrentDateTime = new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array('ShortDate', ' ', 'ShortTime'), "", $this);
        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
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

//CheckErrors Method @3-BA685361
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tag_sale_id->Errors->Count());
        $errors = ($errors || $this->tag_sale_tag_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_id->Errors->Count());
        $errors = ($errors || $this->tkt_cust_name->Errors->Count());
        $errors = ($errors || $this->end_date->Errors->Count());
        $errors = ($errors || $this->end_time->Errors->Count());
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->hose_id->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-EBE37412
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tag_sale_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tag_sale_tag_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_cust_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->hose_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-73FF8225
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tag_sale_tag_id"] = CCGetFromGet("s_tag_sale_tag_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_time_from"] = CCGetFromGet("s_time_from", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_time_to"] = CCGetFromGet("s_time_to", NULL);
        $this->DataSource->Parameters["urls_tkt_cust_id"] = CCGetFromGet("s_tkt_cust_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_addin_tags_sale_data1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tag_sale_id->SetValue($this->DataSource->tag_sale_id->GetValue());
            $this->tag_sale_tag_id->SetValue($this->DataSource->tag_sale_tag_id->GetValue());
            $this->tkt_cust_id->SetValue($this->DataSource->tkt_cust_id->GetValue());
            $this->tkt_cust_name->SetValue($this->DataSource->tkt_cust_name->GetValue());
            $this->end_date->SetValue($this->DataSource->end_date->GetValue());
            $this->end_time->SetValue($this->DataSource->end_time->GetValue());
            $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
            $this->hose_id->SetValue($this->DataSource->hose_id->GetValue());
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->volume->SetValue($this->DataSource->volume->GetValue());
            $this->money->SetValue($this->DataSource->money->GetValue());
            $this->TotalSum_volume->SetValue($this->DataSource->TotalSum_volume->GetValue());
            $this->TotalSum_money->SetValue($this->DataSource->TotalSum_money->GetValue());
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
            $this->ControlsVisible["tag_sale_id"] = $this->tag_sale_id->Visible;
            $this->ControlsVisible["tag_sale_tag_id"] = $this->tag_sale_tag_id->Visible;
            $this->ControlsVisible["tkt_cust_id"] = $this->tkt_cust_id->Visible;
            $this->ControlsVisible["tkt_cust_name"] = $this->tkt_cust_name->Visible;
            $this->ControlsVisible["end_date"] = $this->end_date->Visible;
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["hose_id"] = $this->hose_id->Visible;
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tag_sale_id->SetValue($items[$i]->tag_sale_id);
                        $this->tag_sale_id->Attributes->RestoreFromArray($items[$i]->_tag_sale_idAttributes);
                        $this->tag_sale_tag_id->SetValue($items[$i]->tag_sale_tag_id);
                        $this->tag_sale_tag_id->Attributes->RestoreFromArray($items[$i]->_tag_sale_tag_idAttributes);
                        $this->tkt_cust_id->SetValue($items[$i]->tkt_cust_id);
                        $this->tkt_cust_id->Attributes->RestoreFromArray($items[$i]->_tkt_cust_idAttributes);
                        $this->tkt_cust_name->SetValue($items[$i]->tkt_cust_name);
                        $this->tkt_cust_name->Attributes->RestoreFromArray($items[$i]->_tkt_cust_nameAttributes);
                        $this->end_date->SetValue($items[$i]->end_date);
                        $this->end_date->Attributes->RestoreFromArray($items[$i]->_end_dateAttributes);
                        $this->end_time->SetValue($items[$i]->end_time);
                        $this->end_time->Attributes->RestoreFromArray($items[$i]->_end_timeAttributes);
                        $this->pump_id->SetValue($items[$i]->pump_id);
                        $this->pump_id->Attributes->RestoreFromArray($items[$i]->_pump_idAttributes);
                        $this->hose_id->SetValue($items[$i]->hose_id);
                        $this->hose_id->Attributes->RestoreFromArray($items[$i]->_hose_idAttributes);
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tag_sale_id->Show();
                        $this->tag_sale_tag_id->Show();
                        $this->tkt_cust_id->Show();
                        $this->tkt_cust_name->Show();
                        $this->end_date->Show();
                        $this->end_time->Show();
                        $this->pump_id->Show();
                        $this->hose_id->Show();
                        $this->grade_id->Show();
                        $this->volume->Show();
                        $this->money->Show();
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
                            $this->TotalSum_volume->SetText(CCFormatNumber($items[$i]->TotalSum_volume, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_volumeAttributes);
                            $this->TotalSum_money->SetText(CCFormatNumber($items[$i]->TotalSum_money, array(False, 2, Null, "", False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_volume->Show();
                                $this->TotalSum_money->Show();
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
                                $this->Sorter_tag_sale_id->Show();
                                $this->Sorter_tag_sale_tag_id->Show();
                                $this->Sorter_tkt_cust_id->Show();
                                $this->Sorter_tkt_cust_name->Show();
                                $this->Sorter_end_date->Show();
                                $this->Sorter_end_time->Show();
                                $this->Sorter_pump_id->Show();
                                $this->Sorter_hose_id->Show();
                                $this->Sorter_grade_id->Show();
                                $this->Sorter_volume->Show();
                                $this->Sorter_money->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
                            $this->Report_CurrentDateTime->SetValue(CCFormatDate(CCGetDateArray(), $this->Report_CurrentDateTime->Format));
                            $this->Report_CurrentDateTime->Attributes->RestoreFromArray($items[$i]->_Report_CurrentDateTimeAttributes);
                            $this->Report_TotalRecords->SetValue($items[$i]->Report_TotalRecords);
                            $this->Report_TotalRecords->Attributes->RestoreFromArray($items[$i]->_Report_TotalRecordsAttributes);
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
                                $this->Report_TotalRecords->Show();
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

} //End ssf_addin_tags_sale_data1 Class @3-FCB6E20C

class clsssf_addin_tags_sale_data1DataSource extends clsDBConnection1 {  //ssf_addin_tags_sale_data1DataSource Class @3-661048AF

//DataSource Variables @3-962370F2
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tag_sale_id;
    public $tag_sale_tag_id;
    public $tkt_cust_id;
    public $tkt_cust_name;
    public $end_date;
    public $end_time;
    public $pump_id;
    public $hose_id;
    public $grade_id;
    public $volume;
    public $money;
    public $TotalSum_volume;
    public $TotalSum_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-778F7E92
    function clsssf_addin_tags_sale_data1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_addin_tags_sale_data1";
        $this->Initialize();
        $this->tag_sale_id = new clsField("tag_sale_id", ccsInteger, "");
        $this->tag_sale_tag_id = new clsField("tag_sale_tag_id", ccsText, "");
        $this->tkt_cust_id = new clsField("tkt_cust_id", ccsText, "");
        $this->tkt_cust_name = new clsField("tkt_cust_name", ccsText, "");
        $this->end_date = new clsField("end_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->end_time = new clsField("end_time", ccsDate, array("hh", "nn", "ss"));
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->hose_id = new clsField("hose_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-2B02FE5A
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ftsd_sale_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tag_sale_id" => array("ftsd_sale_id", ""), 
            "Sorter_tag_sale_tag_id" => array("ftsd_sale_sub_account_id", ""), 
            "Sorter_tkt_cust_id" => array("tkt_cust_id", ""), 
            "Sorter_tkt_cust_name" => array("tkt_cust_name", ""), 
            "Sorter_end_date" => array("end_date", ""), 
            "Sorter_end_time" => array("end_time", ""), 
            "Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_hose_id" => array("hose_id", ""), 
            "Sorter_grade_id" => array("grade_id", ""), 
            "Sorter_volume" => array("volume", ""), 
            "Sorter_money" => array("money", "")));
    }
//End SetOrder Method

//Prepare Method @3-09A5B554
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tag_sale_tag_id", ccsText, "", "", $this->Parameters["urls_tag_sale_tag_id"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_time_from", ccsText, "", "", $this->Parameters["urls_time_from"], "", false);
        $this->wp->AddParameter("4", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], 0, false);
        $this->wp->AddParameter("5", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], 0, false);
        $this->wp->AddParameter("6", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("7", "urls_time_to", ccsText, "", "", $this->Parameters["urls_time_to"], "", false);
        $this->wp->AddParameter("8", "urls_tkt_cust_id", ccsText, "", "", $this->Parameters["urls_tkt_cust_id"], "", false);
    }
//End Prepare Method

//Open Method @3-BE6C524E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT end_date, end_time, pump_id, hose_id, grade_id, volume, money, ftsd_sale_sub_account_id, ftsd_sale_id,\n" .
        "config_values.id AS id,tkt_cust_id,tkt_cust_name\n" .
        "FROM (((ssf_flt_tags_sale_data INNER JOIN ssf_pump_sales ON\n" .
        "ssf_flt_tags_sale_data.ftsd_sale_id = ssf_pump_sales.sale_id) INNER JOIN config_values\n" .
        "ON ssf_pump_sales.grade_id = config_values.param_value) INNER JOIN ssf_flt_customers_subaccounts\n" .
        "ON fcs_subaccnt_id = ftsd_sale_sub_account_id) INNER JOIN ssf_tkt_customers\n" .
        "ON ssf_tkt_customers.tkt_cust_id = ssf_flt_customers_subaccounts.fcs_subaccnt_cust_id\n" .
        "WHERE ftsd_sale_sub_account_id LIKE '%" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "%'\n" .
        "AND ( ssf_tkt_customers.tkt_cust_id = '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("8"), ccsText) . "' = '' )\n" .
        "AND ( ssf_pump_sales.end_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( ssf_pump_sales.end_date <= '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' = '' )\n" .
        "AND ( ssf_pump_sales.grade_id = " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("5"), ccsInteger) . " = 0 )\n" .
        "AND ( ssf_pump_sales.pump_id = " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 0 )\n" .
        "AND ( config_values.library = 'grade'  )\n" .
        "AND ( config_values.groupname = 'general' )\n" .
        "AND ( config_values.parameter = 'number' )\n" .
        "AND ( ( ssf_pump_sales.end_date SQLConcat ssf_pump_sales.end_time >= ('" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "') )\n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = ''  )\n" .
        "AND ( ( ssf_pump_sales.end_date SQLConcat ssf_pump_sales.end_time <= ('" . $this->SQLValue($this->wp->GetDBValue("6"), ccsText) . "' SQLConcat '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "') ) \n" .
        " OR  '" . $this->SQLValue($this->wp->GetDBValue("7"), ccsText) . "' = ''  ){SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-474F8F81
    function SetValues()
    {
        $this->tag_sale_id->SetDBValue(trim($this->f("ftsd_sale_id")));
        $this->tag_sale_tag_id->SetDBValue($this->f("ftsd_sale_sub_account_id"));
        $this->tkt_cust_id->SetDBValue($this->f("tkt_cust_id"));
        $this->tkt_cust_name->SetDBValue($this->f("tkt_cust_name"));
        $this->end_date->SetDBValue(trim($this->f("end_date")));
        $this->end_time->SetDBValue(trim($this->f("end_time")));
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->hose_id->SetDBValue(trim($this->f("hose_id")));
        $this->grade_id->SetDBValue($this->f("id"));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
    }
//End SetValues Method

} //End ssf_addin_tags_sale_data1DataSource Class @3-FCB6E20C

//Initialize Page @1-E74C8696
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
$TemplateFileName = "SSFTagSaleReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-840E5999
include("./SSFTagSaleReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-41402938
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_tags_sale_data = new clsRecordssf_addin_tags_sale_data("", $MainPage);
$btnPrint = new clsButton("btnPrint", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_addin_tags_sale_data1 = new clsReportssf_addin_tags_sale_data1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_tags_sale_data = & $ssf_addin_tags_sale_data;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_addin_tags_sale_data1 = & $ssf_addin_tags_sale_data1;
$ssf_addin_tags_sale_data1->Initialize();

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

//Execute Components @1-636F57ED
$SSFSpiritHeader->Operations();
$ssf_addin_tags_sale_data->Operation();
//End Execute Components

//Go to destination page @1-32820EC6
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_tags_sale_data);
    unset($ssf_addin_tags_sale_data1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-6582497D
$SSFSpiritHeader->Show();
$ssf_addin_tags_sale_data->Show();
$btnPrint->Show();
$ssf_addin_tags_sale_data1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-35ABA181
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_tags_sale_data);
unset($ssf_addin_tags_sale_data1);
unset($Tpl);
//End Unload Page


?>
