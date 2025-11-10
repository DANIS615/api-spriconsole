<?php
//Include Common Files @1-0C6DBC9A
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFPriceChangeReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @61-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecorda_bSearch { //a_bSearch Class @15-8799FBB1

//Variables @15-9E315808

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

//Class_Initialize Event @15-488C9EA3
    function clsRecorda_bSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record a_bSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "a_bSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_application_date = new clsControl(ccsTextBox, "s_application_date", "s_application_date", ccsText, "", CCGetRequestParam("s_application_date", $Method, NULL), $this);
            $this->DatePicker_s_application_date1 = new clsDatePicker("DatePicker_s_application_date1", "a_bSearch", "s_application_date", $this);
            $this->e_application_date = new clsControl(ccsTextBox, "e_application_date", "e_application_date", ccsText, "", CCGetRequestParam("e_application_date", $Method, NULL), $this);
            $this->DatePicker_e_application_date1 = new clsDatePicker("DatePicker_e_application_date1", "a_bSearch", "e_application_date", $this);
            $this->s_grade_id = new clsControl(ccsListBox, "s_grade_id", $CCSLocales->GetText("grade_id"), ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("param_value", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select id, param_value from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "id";
            $this->s_price_level = new clsControl(ccsListBox, "s_price_level", $CCSLocales->GetText("price_level"), ccsInteger, "", CCGetRequestParam("s_price_level", $Method, NULL), $this);
            $this->s_price_level->DSType = dsListOfValues;
            $this->s_price_level->Values = array(array("1", "1"), array("2", "2"), array("3", "3"), array("4", "4"), array("5", "5"), array("6", "6"), array("7", "7"), array("8", "8"), array("9", "9"), array("10", "10"));
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFPriceChangeReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @15-17D7BDA5
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_application_date->Validate() && $Validation);
        $Validation = ($this->e_application_date->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $Validation = ($this->s_price_level->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_application_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->e_application_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_price_level->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @15-ABE13206
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_application_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_application_date1->Errors->Count());
        $errors = ($errors || $this->e_application_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_e_application_date1->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->s_price_level->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @15-E2BB5190
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
        $Redirect = "SSFPriceChangeReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFPriceChangeReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @15-17AECCF7
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_grade_id->Prepare();
        $this->s_price_level->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_application_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_application_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->e_application_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_e_application_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_price_level->Errors->ToString());
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

        $this->s_application_date->Show();
        $this->DatePicker_s_application_date1->Show();
        $this->e_application_date->Show();
        $this->DatePicker_e_application_date1->Show();
        $this->s_grade_id->Show();
        $this->s_price_level->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End a_bSearch Class @15-FCB6E20C

//ssf_addin_prices_change_a ReportGroup class @2-44BD01D3
class clsReportGroupssf_addin_prices_change_a {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $s_application_date, $_s_application_dateAttributes;
    public $e_application_date, $_e_application_dateAttributes;
    public $s_price_level, $_s_price_levelAttributes;
    public $s_grade_id, $_s_grade_idAttributes;
    public $convert, $_convertAttributes;
    public $col1, $_col1Attributes;
    public $col2, $_col2Attributes;
    public $col3, $_col3Attributes;
    public $col4, $_col4Attributes;
    public $col5, $_col5Attributes;
    public $col6, $_col6Attributes;
    public $price_change_id, $_price_change_idAttributes;
    public $grade_id, $_grade_idAttributes;
    public $price_level1, $_price_level1Attributes;
    public $application_date, $_application_dateAttributes;
    public $application_time, $_application_timeAttributes;
    public $ppu, $_ppuAttributes;
    public $TotalMin_ppu, $_TotalMin_ppuAttributes;
    public $TotalMax_ppu, $_TotalMax_ppuAttributes;
    public $TotalAvg_ppu, $_TotalAvg_ppuAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_addin_prices_change_a(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->s_application_date = $this->Parent->s_application_date->Value;
        $this->e_application_date = $this->Parent->e_application_date->Value;
        $this->s_price_level = $this->Parent->s_price_level->Value;
        $this->s_grade_id = $this->Parent->s_grade_id->Value;
        $this->convert = $this->Parent->convert->Value;
        $this->col1 = $this->Parent->col1->Value;
        $this->col2 = $this->Parent->col2->Value;
        $this->col3 = $this->Parent->col3->Value;
        $this->col4 = $this->Parent->col4->Value;
        $this->col5 = $this->Parent->col5->Value;
        $this->col6 = $this->Parent->col6->Value;
        $this->price_change_id = $this->Parent->price_change_id->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->price_level1 = $this->Parent->price_level1->Value;
        $this->application_date = $this->Parent->application_date->Value;
        $this->application_time = $this->Parent->application_time->Value;
        $this->ppu = $this->Parent->ppu->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalMin_ppu = $this->Parent->TotalMin_ppu->GetTotalValue($mode);
        $this->TotalMax_ppu = $this->Parent->TotalMax_ppu->GetTotalValue($mode);
        $this->TotalAvg_ppu = $this->Parent->TotalAvg_ppu->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_s_application_dateAttributes = $this->Parent->s_application_date->Attributes->GetAsArray();
        $this->_e_application_dateAttributes = $this->Parent->e_application_date->Attributes->GetAsArray();
        $this->_s_price_levelAttributes = $this->Parent->s_price_level->Attributes->GetAsArray();
        $this->_s_grade_idAttributes = $this->Parent->s_grade_id->Attributes->GetAsArray();
        $this->_convertAttributes = $this->Parent->convert->Attributes->GetAsArray();
        $this->_Sorter_price_change_idAttributes = $this->Parent->Sorter_price_change_id->Attributes->GetAsArray();
        $this->_col1Attributes = $this->Parent->col1->Attributes->GetAsArray();
        $this->_Sorter_grade_idAttributes = $this->Parent->Sorter_grade_id->Attributes->GetAsArray();
        $this->_col2Attributes = $this->Parent->col2->Attributes->GetAsArray();
        $this->_Sorter_price_levelAttributes = $this->Parent->Sorter_price_level->Attributes->GetAsArray();
        $this->_col3Attributes = $this->Parent->col3->Attributes->GetAsArray();
        $this->_Sorter_application_dateAttributes = $this->Parent->Sorter_application_date->Attributes->GetAsArray();
        $this->_col4Attributes = $this->Parent->col4->Attributes->GetAsArray();
        $this->_Sorter_application_timeAttributes = $this->Parent->Sorter_application_time->Attributes->GetAsArray();
        $this->_col5Attributes = $this->Parent->col5->Attributes->GetAsArray();
        $this->_Sorter_ppuAttributes = $this->Parent->Sorter_ppu->Attributes->GetAsArray();
        $this->_col6Attributes = $this->Parent->col6->Attributes->GetAsArray();
        $this->_price_change_idAttributes = $this->Parent->price_change_id->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_price_level1Attributes = $this->Parent->price_level1->Attributes->GetAsArray();
        $this->_application_dateAttributes = $this->Parent->application_date->Attributes->GetAsArray();
        $this->_application_timeAttributes = $this->Parent->application_time->Attributes->GetAsArray();
        $this->_ppuAttributes = $this->Parent->ppu->Attributes->GetAsArray();
        $this->_TotalMin_ppuAttributes = $this->Parent->TotalMin_ppu->Attributes->GetAsArray();
        $this->_TotalMax_ppuAttributes = $this->Parent->TotalMax_ppu->Attributes->GetAsArray();
        $this->_TotalAvg_ppuAttributes = $this->Parent->TotalAvg_ppu->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalMin_ppu = $this->TotalMin_ppu;
        $Header->_TotalMin_ppuAttributes = $this->_TotalMin_ppuAttributes;
        $Header->TotalMax_ppu = $this->TotalMax_ppu;
        $Header->_TotalMax_ppuAttributes = $this->_TotalMax_ppuAttributes;
        $Header->TotalAvg_ppu = $this->TotalAvg_ppu;
        $Header->_TotalAvg_ppuAttributes = $this->_TotalAvg_ppuAttributes;
        $this->s_application_date = $Header->s_application_date;
        $Header->_s_application_dateAttributes = $this->_s_application_dateAttributes;
        $this->Parent->s_application_date->Value = $Header->s_application_date;
        $this->Parent->s_application_date->Attributes->RestoreFromArray($Header->_s_application_dateAttributes);
        $this->e_application_date = $Header->e_application_date;
        $Header->_e_application_dateAttributes = $this->_e_application_dateAttributes;
        $this->Parent->e_application_date->Value = $Header->e_application_date;
        $this->Parent->e_application_date->Attributes->RestoreFromArray($Header->_e_application_dateAttributes);
        $this->s_price_level = $Header->s_price_level;
        $Header->_s_price_levelAttributes = $this->_s_price_levelAttributes;
        $this->Parent->s_price_level->Value = $Header->s_price_level;
        $this->Parent->s_price_level->Attributes->RestoreFromArray($Header->_s_price_levelAttributes);
        $this->s_grade_id = $Header->s_grade_id;
        $Header->_s_grade_idAttributes = $this->_s_grade_idAttributes;
        $this->Parent->s_grade_id->Value = $Header->s_grade_id;
        $this->Parent->s_grade_id->Attributes->RestoreFromArray($Header->_s_grade_idAttributes);
        $this->convert = $Header->convert;
        $Header->_convertAttributes = $this->_convertAttributes;
        $this->Parent->convert->Value = $Header->convert;
        $this->Parent->convert->Attributes->RestoreFromArray($Header->_convertAttributes);
        $this->col1 = $Header->col1;
        $Header->_col1Attributes = $this->_col1Attributes;
        $this->Parent->col1->Value = $Header->col1;
        $this->Parent->col1->Attributes->RestoreFromArray($Header->_col1Attributes);
        $this->col2 = $Header->col2;
        $Header->_col2Attributes = $this->_col2Attributes;
        $this->Parent->col2->Value = $Header->col2;
        $this->Parent->col2->Attributes->RestoreFromArray($Header->_col2Attributes);
        $this->col3 = $Header->col3;
        $Header->_col3Attributes = $this->_col3Attributes;
        $this->Parent->col3->Value = $Header->col3;
        $this->Parent->col3->Attributes->RestoreFromArray($Header->_col3Attributes);
        $this->col4 = $Header->col4;
        $Header->_col4Attributes = $this->_col4Attributes;
        $this->Parent->col4->Value = $Header->col4;
        $this->Parent->col4->Attributes->RestoreFromArray($Header->_col4Attributes);
        $this->col5 = $Header->col5;
        $Header->_col5Attributes = $this->_col5Attributes;
        $this->Parent->col5->Value = $Header->col5;
        $this->Parent->col5->Attributes->RestoreFromArray($Header->_col5Attributes);
        $this->col6 = $Header->col6;
        $Header->_col6Attributes = $this->_col6Attributes;
        $this->Parent->col6->Value = $Header->col6;
        $this->Parent->col6->Attributes->RestoreFromArray($Header->_col6Attributes);
        $this->price_change_id = $Header->price_change_id;
        $Header->_price_change_idAttributes = $this->_price_change_idAttributes;
        $this->Parent->price_change_id->Value = $Header->price_change_id;
        $this->Parent->price_change_id->Attributes->RestoreFromArray($Header->_price_change_idAttributes);
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->price_level1 = $Header->price_level1;
        $Header->_price_level1Attributes = $this->_price_level1Attributes;
        $this->Parent->price_level1->Value = $Header->price_level1;
        $this->Parent->price_level1->Attributes->RestoreFromArray($Header->_price_level1Attributes);
        $this->application_date = $Header->application_date;
        $Header->_application_dateAttributes = $this->_application_dateAttributes;
        $this->Parent->application_date->Value = $Header->application_date;
        $this->Parent->application_date->Attributes->RestoreFromArray($Header->_application_dateAttributes);
        $this->application_time = $Header->application_time;
        $Header->_application_timeAttributes = $this->_application_timeAttributes;
        $this->Parent->application_time->Value = $Header->application_time;
        $this->Parent->application_time->Attributes->RestoreFromArray($Header->_application_timeAttributes);
        $this->ppu = $Header->ppu;
        $Header->_ppuAttributes = $this->_ppuAttributes;
        $this->Parent->ppu->Value = $Header->ppu;
        $this->Parent->ppu->Attributes->RestoreFromArray($Header->_ppuAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalMin_ppu = $this->Parent->TotalMin_ppu->GetValue();
        $this->TotalMax_ppu = $this->Parent->TotalMax_ppu->GetValue();
        $this->TotalAvg_ppu = $this->Parent->TotalAvg_ppu->GetValue();
    }
}
//End ssf_addin_prices_change_a ReportGroup class

//ssf_addin_prices_change_a GroupsCollection class @2-6D283356
class clsGroupsCollectionssf_addin_prices_change_a {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_addin_prices_change_a(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_addin_prices_change_a($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->s_application_date->Value = $this->Parent->s_application_date->initialValue;
        $this->Parent->e_application_date->Value = $this->Parent->e_application_date->initialValue;
        $this->Parent->s_price_level->Value = $this->Parent->s_price_level->initialValue;
        $this->Parent->s_grade_id->Value = $this->Parent->s_grade_id->initialValue;
        $this->Parent->convert->Value = $this->Parent->convert->initialValue;
        $this->Parent->col1->Value = $this->Parent->col1->initialValue;
        $this->Parent->col2->Value = $this->Parent->col2->initialValue;
        $this->Parent->col3->Value = $this->Parent->col3->initialValue;
        $this->Parent->col4->Value = $this->Parent->col4->initialValue;
        $this->Parent->col5->Value = $this->Parent->col5->initialValue;
        $this->Parent->col6->Value = $this->Parent->col6->initialValue;
        $this->Parent->price_change_id->Value = $this->Parent->price_change_id->initialValue;
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->price_level1->Value = $this->Parent->price_level1->initialValue;
        $this->Parent->application_date->Value = $this->Parent->application_date->initialValue;
        $this->Parent->application_time->Value = $this->Parent->application_time->initialValue;
        $this->Parent->ppu->Value = $this->Parent->ppu->initialValue;
        $this->Parent->TotalMin_ppu->Value = $this->Parent->TotalMin_ppu->initialValue;
        $this->Parent->TotalMax_ppu->Value = $this->Parent->TotalMax_ppu->initialValue;
        $this->Parent->TotalAvg_ppu->Value = $this->Parent->TotalAvg_ppu->initialValue;
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
//End ssf_addin_prices_change_a GroupsCollection class

class clsReportssf_addin_prices_change_a { //ssf_addin_prices_change_a Class @2-52ACDCDD

//ssf_addin_prices_change_a Variables @2-E4DD9A47

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
    public $Sorter_price_change_id;
    public $Sorter_grade_id;
    public $Sorter_price_level;
    public $Sorter_application_date;
    public $Sorter_application_time;
    public $Sorter_ppu;
//End ssf_addin_prices_change_a Variables

//Class_Initialize Event @2-D0BECF5D
    function clsReportssf_addin_prices_change_a($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_prices_change_a";
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
        $this->Report_Footer->Visible = false;
        $this->Report_Header = new clsSection($this);
        $this->Report_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Header->Height);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_addin_prices_change_aDataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 35;
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
        $this->SorterName = CCGetParam("ssf_addin_prices_change_aOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_prices_change_aDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->s_application_date = new clsControl(ccsHidden, "s_application_date", "s_application_date", ccsText, "", CCGetRequestParam("s_application_date", ccsGet, NULL), $this);
        $this->e_application_date = new clsControl(ccsHidden, "e_application_date", "e_application_date", ccsText, "", CCGetRequestParam("e_application_date", ccsGet, NULL), $this);
        $this->s_price_level = new clsControl(ccsHidden, "s_price_level", "s_price_level", ccsText, "", CCGetRequestParam("s_price_level", ccsGet, NULL), $this);
        $this->s_grade_id = new clsControl(ccsHidden, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", ccsGet, NULL), $this);
        $this->convert = new clsControl(ccsHidden, "convert", "convert", ccsText, "", CCGetRequestParam("convert", ccsGet, NULL), $this);
        $this->Sorter_price_change_id = new clsSorter($this->ComponentName, "Sorter_price_change_id", $FileName, $this);
        $this->col1 = new clsControl(ccsCheckBox, "col1", "col1", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col1", ccsGet, NULL), $this);
        $this->col1->CheckedValue = true;
        $this->col1->UncheckedValue = false;
        $this->Sorter_grade_id = new clsSorter($this->ComponentName, "Sorter_grade_id", $FileName, $this);
        $this->col2 = new clsControl(ccsCheckBox, "col2", "col2", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col2", ccsGet, NULL), $this);
        $this->col2->CheckedValue = true;
        $this->col2->UncheckedValue = false;
        $this->Sorter_price_level = new clsSorter($this->ComponentName, "Sorter_price_level", $FileName, $this);
        $this->col3 = new clsControl(ccsCheckBox, "col3", "col3", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col3", ccsGet, NULL), $this);
        $this->col3->CheckedValue = true;
        $this->col3->UncheckedValue = false;
        $this->Sorter_application_date = new clsSorter($this->ComponentName, "Sorter_application_date", $FileName, $this);
        $this->col4 = new clsControl(ccsCheckBox, "col4", "col4", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col4", ccsGet, NULL), $this);
        $this->col4->CheckedValue = true;
        $this->col4->UncheckedValue = false;
        $this->Sorter_application_time = new clsSorter($this->ComponentName, "Sorter_application_time", $FileName, $this);
        $this->col5 = new clsControl(ccsCheckBox, "col5", "col5", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col5", ccsGet, NULL), $this);
        $this->col5->CheckedValue = true;
        $this->col5->UncheckedValue = false;
        $this->Sorter_ppu = new clsSorter($this->ComponentName, "Sorter_ppu", $FileName, $this);
        $this->col6 = new clsControl(ccsCheckBox, "col6", "col6", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col6", ccsGet, NULL), $this);
        $this->col6->CheckedValue = true;
        $this->col6->UncheckedValue = false;
        $this->price_change_id = new clsControl(ccsReportLabel, "price_change_id", "price_change_id", ccsInteger, "", "", $this);
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->price_level1 = new clsControl(ccsReportLabel, "price_level1", "price_level1", ccsInteger, "", "", $this);
        $this->application_date = new clsControl(ccsReportLabel, "application_date", "application_date", ccsText, "", "", $this);
        $this->application_time = new clsControl(ccsReportLabel, "application_time", "application_time", ccsText, "", "", $this);
        $this->ppu = new clsControl(ccsReportLabel, "ppu", "ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->ppu->HTML = true;
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalMin_ppu = new clsControl(ccsReportLabel, "TotalMin_ppu", "TotalMin_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalMin_ppu->TotalFunction = "Min";
        $this->TotalMax_ppu = new clsControl(ccsReportLabel, "TotalMax_ppu", "TotalMax_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalMax_ppu->TotalFunction = "Max";
        $this->TotalAvg_ppu = new clsControl(ccsReportLabel, "TotalAvg_ppu", "TotalAvg_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalAvg_ppu->TotalFunction = "Avg";
        $this->Report_CurrentPage = new clsControl(ccsReportLabel, "Report_CurrentPage", "Report_CurrentPage", ccsInteger, "", "", $this);
        $this->Report_TotalPages = new clsControl(ccsReportLabel, "Report_TotalPages", "Report_TotalPages", ccsInteger, "", "", $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->PageBreak = new clsPanel("PageBreak", $this);
    }
//End Class_Initialize Event

//Initialize Method @2-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @2-2C506B2B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->s_application_date->Errors->Count());
        $errors = ($errors || $this->e_application_date->Errors->Count());
        $errors = ($errors || $this->s_price_level->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->convert->Errors->Count());
        $errors = ($errors || $this->col1->Errors->Count());
        $errors = ($errors || $this->col2->Errors->Count());
        $errors = ($errors || $this->col3->Errors->Count());
        $errors = ($errors || $this->col4->Errors->Count());
        $errors = ($errors || $this->col5->Errors->Count());
        $errors = ($errors || $this->col6->Errors->Count());
        $errors = ($errors || $this->price_change_id->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->price_level1->Errors->Count());
        $errors = ($errors || $this->application_date->Errors->Count());
        $errors = ($errors || $this->application_time->Errors->Count());
        $errors = ($errors || $this->ppu->Errors->Count());
        $errors = ($errors || $this->TotalMin_ppu->Errors->Count());
        $errors = ($errors || $this->TotalMax_ppu->Errors->Count());
        $errors = ($errors || $this->TotalAvg_ppu->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @2-CD85C4F0
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->s_application_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->e_application_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->s_price_level->Errors->ToString());
        $errors = ComposeStrings($errors, $this->s_grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->convert->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col3->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col4->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col5->Errors->ToString());
        $errors = ComposeStrings($errors, $this->col6->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price_change_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->price_level1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->application_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->application_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalMin_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalMax_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalAvg_ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @2-C9485D85
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_application_date"] = CCGetFromGet("s_application_date", NULL);
        $this->DataSource->Parameters["urle_application_date"] = CCGetFromGet("e_application_date", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_price_level"] = CCGetFromGet("s_price_level", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_addin_prices_change_a($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->price_change_id->SetValue($this->DataSource->price_change_id->GetValue());
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->price_level1->SetValue($this->DataSource->price_level1->GetValue());
            $this->application_date->SetValue($this->DataSource->application_date->GetValue());
            $this->application_time->SetValue($this->DataSource->application_time->GetValue());
            $this->ppu->SetValue($this->DataSource->ppu->GetValue());
            $this->TotalMin_ppu->SetValue($this->DataSource->TotalMin_ppu->GetValue());
            $this->TotalMax_ppu->SetValue($this->DataSource->TotalMax_ppu->GetValue());
            $this->TotalAvg_ppu->SetValue($this->DataSource->TotalAvg_ppu->GetValue());
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
            $this->ControlsVisible["price_change_id"] = $this->price_change_id->Visible;
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["price_level1"] = $this->price_level1->Visible;
            $this->ControlsVisible["application_date"] = $this->application_date->Visible;
            $this->ControlsVisible["application_time"] = $this->application_time->Visible;
            $this->ControlsVisible["ppu"] = $this->ppu->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->price_change_id->SetValue($items[$i]->price_change_id);
                        $this->price_change_id->Attributes->RestoreFromArray($items[$i]->_price_change_idAttributes);
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->price_level1->SetValue($items[$i]->price_level1);
                        $this->price_level1->Attributes->RestoreFromArray($items[$i]->_price_level1Attributes);
                        $this->application_date->SetValue($items[$i]->application_date);
                        $this->application_date->Attributes->RestoreFromArray($items[$i]->_application_dateAttributes);
                        $this->application_time->SetValue($items[$i]->application_time);
                        $this->application_time->Attributes->RestoreFromArray($items[$i]->_application_timeAttributes);
                        $this->ppu->SetValue($items[$i]->ppu);
                        $this->ppu->Attributes->RestoreFromArray($items[$i]->_ppuAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->price_change_id->Show();
                        $this->grade_id->Show();
                        $this->price_level1->Show();
                        $this->application_date->Show();
                        $this->application_time->Show();
                        $this->ppu->Show();
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                        if ($this->Detail->Visible)
                            $Tpl->parseto("Section Detail", true, "Section Detail");
                        break;
                    case "Report":
                        if ($items[$i]->Mode == 1) {
                            $this->Report_TotalRecords->SetValue($items[$i]->Report_TotalRecords);
                            $this->Report_TotalRecords->Attributes->RestoreFromArray($items[$i]->_Report_TotalRecordsAttributes);
                            $this->s_application_date->SetValue($items[$i]->s_application_date);
                            $this->s_application_date->Attributes->RestoreFromArray($items[$i]->_s_application_dateAttributes);
                            $this->e_application_date->SetValue($items[$i]->e_application_date);
                            $this->e_application_date->Attributes->RestoreFromArray($items[$i]->_e_application_dateAttributes);
                            $this->s_price_level->SetValue($items[$i]->s_price_level);
                            $this->s_price_level->Attributes->RestoreFromArray($items[$i]->_s_price_levelAttributes);
                            $this->s_grade_id->SetValue($items[$i]->s_grade_id);
                            $this->s_grade_id->Attributes->RestoreFromArray($items[$i]->_s_grade_idAttributes);
                            $this->convert->SetValue($items[$i]->convert);
                            $this->convert->Attributes->RestoreFromArray($items[$i]->_convertAttributes);
                            $this->Report_Header->CCSEventResult = CCGetEvent($this->Report_Header->CCSEvents, "BeforeShow", $this->Report_Header);
                            if ($this->Report_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Header";
                                $this->Attributes->Show();
                                $this->Report_TotalRecords->Show();
                                $this->s_application_date->Show();
                                $this->e_application_date->Show();
                                $this->s_price_level->Show();
                                $this->s_grade_id->Show();
                                $this->convert->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->TotalMin_ppu->SetText(CCFormatNumber($items[$i]->TotalMin_ppu, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalMin_ppu->Attributes->RestoreFromArray($items[$i]->_TotalMin_ppuAttributes);
                            $this->TotalMax_ppu->SetText(CCFormatNumber($items[$i]->TotalMax_ppu, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalMax_ppu->Attributes->RestoreFromArray($items[$i]->_TotalMax_ppuAttributes);
                            $this->TotalAvg_ppu->SetText(CCFormatNumber($items[$i]->TotalAvg_ppu, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalAvg_ppu->Attributes->RestoreFromArray($items[$i]->_TotalAvg_ppuAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalMin_ppu->Show();
                                $this->TotalMax_ppu->Show();
                                $this->TotalAvg_ppu->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Report_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "Page":
                        if ($items[$i]->Mode == 1) {
                            $this->col1->SetValue($items[$i]->col1);
                            $this->col1->Attributes->RestoreFromArray($items[$i]->_col1Attributes);
                            $this->col2->SetValue($items[$i]->col2);
                            $this->col2->Attributes->RestoreFromArray($items[$i]->_col2Attributes);
                            $this->col3->SetValue($items[$i]->col3);
                            $this->col3->Attributes->RestoreFromArray($items[$i]->_col3Attributes);
                            $this->col4->SetValue($items[$i]->col4);
                            $this->col4->Attributes->RestoreFromArray($items[$i]->_col4Attributes);
                            $this->col5->SetValue($items[$i]->col5);
                            $this->col5->Attributes->RestoreFromArray($items[$i]->_col5Attributes);
                            $this->col6->SetValue($items[$i]->col6);
                            $this->col6->Attributes->RestoreFromArray($items[$i]->_col6Attributes);
                            $this->Page_Header->CCSEventResult = CCGetEvent($this->Page_Header->CCSEvents, "BeforeShow", $this->Page_Header);
                            if ($this->Page_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Header";
                                $this->Attributes->Show();
                                $this->Sorter_price_change_id->Show();
                                $this->col1->Show();
                                $this->Sorter_grade_id->Show();
                                $this->col2->Show();
                                $this->Sorter_price_level->Show();
                                $this->col3->Show();
                                $this->Sorter_application_date->Show();
                                $this->col4->Show();
                                $this->Sorter_application_time->Show();
                                $this->col5->Show();
                                $this->Sorter_ppu->Show();
                                $this->col6->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
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

} //End ssf_addin_prices_change_a Class @2-FCB6E20C

class clsssf_addin_prices_change_aDataSource extends clsDBConnection1 {  //ssf_addin_prices_change_aDataSource Class @2-DB4D9F2C

//DataSource Variables @2-3E97D403
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $price_change_id;
    public $grade_id;
    public $price_level1;
    public $application_date;
    public $application_time;
    public $ppu;
    public $TotalMin_ppu;
    public $TotalMax_ppu;
    public $TotalAvg_ppu;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-2CFB57C8
    function clsssf_addin_prices_change_aDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_addin_prices_change_a";
        $this->Initialize();
        $this->price_change_id = new clsField("price_change_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->price_level1 = new clsField("price_level1", ccsInteger, "");
        $this->application_date = new clsField("application_date", ccsText, "");
        $this->application_time = new clsField("application_time", ccsText, "");
        $this->ppu = new clsField("ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->TotalMin_ppu = new clsField("TotalMin_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalMax_ppu = new clsField("TotalMax_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalAvg_ppu = new clsField("TotalAvg_ppu", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-F51A2FC1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "b.grade_id desc, application_date desc, a.application_time desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_price_change_id" => array("a.price_change_id", ""), 
            "Sorter_grade_id" => array("grade_id", ""), 
            "Sorter_price_level" => array("price_level", ""), 
            "Sorter_application_date" => array("application_date", ""), 
            "Sorter_application_time" => array("application_time", ""), 
            "Sorter_ppu" => array("ppu", "")));
    }
//End SetOrder Method

//Prepare Method @2-317E6D7A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urls_application_date", ccsText, "", "", $this->Parameters["urls_application_date"], 19000101, false);
        $this->wp->AddParameter("3", "urle_application_date", ccsText, "", "", $this->Parameters["urle_application_date"], 21000101, false);
        $this->wp->AddParameter("4", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], "", false);
        $this->wp->AddParameter("5", "urls_price_level", ccsInteger, "", "", $this->Parameters["urls_price_level"], "", false);
        $this->wp->Criterion[1] = "a.price_change_id = b.price_change_id";
        $this->wp->Criterion[2] = $this->wp->Operation(opGreaterThanOrEqual, "a.application_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opLessThanOrEqual, "a.application_date", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "b.grade_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
        $this->wp->Criterion[5] = $this->wp->Operation(opEqual, "b.price_level", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsInteger),false);
        $this->wp->Criterion[6] = "config_values.library = 'grade'";
        $this->wp->Criterion[7] = "config_values.groupname = 'general'";
        $this->wp->Criterion[8] = "config_values.parameter = 'number'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
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
             $this->wp->Criterion[7]), 
             $this->wp->Criterion[8]);
    }
//End Prepare Method

//Open Method @2-3FD22DAA
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT a.price_change_id AS price_change_id, id AS grade_id, price_level, application_date, application_time, ppu \n\n" .
        "FROM ssf_addin_prices_change a, ssf_addin_prices_change_detail b INNER JOIN config_values ON\n\n" .
        "b.grade_id = config_values.param_value {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-0BBD2CD7
    function SetValues()
    {
        $this->price_change_id->SetDBValue(trim($this->f("price_change_id")));
        $this->grade_id->SetDBValue($this->f("grade_id"));
        $this->price_level1->SetDBValue(trim($this->f("price_level")));
        $this->application_date->SetDBValue($this->f("application_date"));
        $this->application_time->SetDBValue($this->f("application_time"));
        $this->ppu->SetDBValue(trim($this->f("ppu")));
        $this->TotalMin_ppu->SetDBValue(trim($this->f("ppu")));
        $this->TotalMax_ppu->SetDBValue(trim($this->f("ppu")));
        $this->TotalAvg_ppu->SetDBValue(trim($this->f("ppu")));
    }
//End SetValues Method

} //End ssf_addin_prices_change_aDataSource Class @2-FCB6E20C

//Initialize Page @1-D242986F
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
$TemplateFileName = "SSFPriceChangeReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-CF4AEFF3
include("./SSFPriceChangeReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-3646724F
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$a_bSearch = new clsRecorda_bSearch("", $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->HTML = true;
$Link1->Page = "SSFPriceChangeReport.php";
$Button2 = new clsButton("Button2", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_addin_prices_change_a = new clsReportssf_addin_prices_change_a("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->a_bSearch = & $a_bSearch;
$MainPage->Link1 = & $Link1;
$MainPage->Button2 = & $Button2;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_addin_prices_change_a = & $ssf_addin_prices_change_a;
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Parameters = CCAddParam($Link1->Parameters, "ViewMode", "Print");
$Link1->Parameters = CCAddParam($Link1->Parameters, "export", "1");
$ssf_addin_prices_change_a->Initialize();

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

//Execute Components @1-AE7B92AC
$SSFSpiritHeader->Operations();
$a_bSearch->Operation();
//End Execute Components

//Go to destination page @1-7C152A91
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($a_bSearch);
    unset($ssf_addin_prices_change_a);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-764259BA
$SSFSpiritHeader->Show();
$a_bSearch->Show();
$Button2->Show();
$ssf_addin_prices_change_a->Show();
$Link1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-7CF9B018
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($a_bSearch);
unset($ssf_addin_prices_change_a);
unset($Tpl);
//End Unload Page


?>
