<?php
//Include Common Files @1-75C5730C
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTanksDailyReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tank_day_diff_ssf_tan { //ssf_tank_day_diff_ssf_tan Class @19-B7689525

//Variables @19-9E315808

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

//Class_Initialize Event @19-39A53635
    function clsRecordssf_tank_day_diff_ssf_tan($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tank_day_diff_ssf_tan/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tank_day_diff_ssf_tan";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_ssf_tank_day_sales_tank_id = new clsControl(ccsListBox, "s_ssf_tank_day_sales_tank_id", "s_ssf_tank_day_sales_tank_id", ccsInteger, "", CCGetRequestParam("s_ssf_tank_day_sales_tank_id", $Method, NULL), $this);
            $this->s_ssf_tank_day_sales_tank_id->DSType = dsSQL;
            list($this->s_ssf_tank_day_sales_tank_id->BoundColumn, $this->s_ssf_tank_day_sales_tank_id->TextColumn, $this->s_ssf_tank_day_sales_tank_id->DBFormat) = array("tank_id", "tank_id", "");
            $this->s_ssf_tank_day_sales_tank_id->DataSource = new clsDBConnection1();
            $this->s_ssf_tank_day_sales_tank_id->ds = & $this->s_ssf_tank_day_sales_tank_id->DataSource;
            $this->s_ssf_tank_day_sales_tank_id->DataSource->SQL = "SELECT param_value AS tank_id \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'tank' )\n" .
            "AND ( groupname = 'general' )\n" .
            "AND ( parameter = 'ID' )";
            $this->s_ssf_tank_day_sales_tank_id->DataSource->Order = "";
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "ssf_tank_day_diff_ssf_tan", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_tank_day_diff_ssf_tan", "s_date_to", $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @19-D6E412AC
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_ssf_tank_day_sales_tank_id->Validate() && $Validation);
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_ssf_tank_day_sales_tank_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @19-835D5E15
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_ssf_tank_day_sales_tank_id->Errors->Count());
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @19-FEDC3DE9
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
        $Redirect = "SSFTanksDailyReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTanksDailyReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @19-6FBF5910
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_ssf_tank_day_sales_tank_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_ssf_tank_day_sales_tank_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_from1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
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

        $this->s_ssf_tank_day_sales_tank_id->Show();
        $this->s_date_from->Show();
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tank_day_diff_ssf_tan Class @19-FCB6E20C

//ssf_tank_day_sales_ssf_ta ReportGroup class @3-FEEFDBF8
class clsReportGroupssf_tank_day_sales_ssf_ta {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $ssf_tank_day_sales_tank_id, $_ssf_tank_day_sales_tank_idAttributes;
    public $sales_date, $_sales_dateAttributes;
    public $initial_stock, $_initial_stockAttributes;
    public $accum_sales, $_accum_salesAttributes;
    public $total_deliveries, $_total_deliveriesAttributes;
    public $accum_diff, $_accum_diffAttributes;
    public $stock_final, $_stock_finalAttributes;
    public $first_stock, $_first_stockAttributes;
    public $Sum_accum_sales, $_Sum_accum_salesAttributes;
    public $Sum_total_deliveries, $_Sum_total_deliveriesAttributes;
    public $Sum_accum_diff, $_Sum_accum_diffAttributes;
    public $sum_stock_final, $_sum_stock_finalAttributes;
    public $total_first_stock, $_total_first_stockAttributes;
    public $TotalSum_accum_sales, $_TotalSum_accum_salesAttributes;
    public $TotalSum_total_deliveries, $_TotalSum_total_deliveriesAttributes;
    public $TotalSum_accum_diff, $_TotalSum_accum_diffAttributes;
    public $total_stock_final, $_total_stock_finalAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $ssf_tank_day_sales_tank_idTotalIndex;

    function clsReportGroupssf_tank_day_sales_ssf_ta(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->ssf_tank_day_sales_tank_id = $this->Parent->ssf_tank_day_sales_tank_id->Value;
        $this->sales_date = $this->Parent->sales_date->Value;
        $this->initial_stock = $this->Parent->initial_stock->Value;
        $this->accum_sales = $this->Parent->accum_sales->Value;
        $this->total_deliveries = $this->Parent->total_deliveries->Value;
        $this->accum_diff = $this->Parent->accum_diff->Value;
        $this->stock_final = $this->Parent->stock_final->Value;
        $this->first_stock = $this->Parent->first_stock->Value;
        $this->sum_stock_final = $this->Parent->sum_stock_final->Value;
        $this->total_first_stock = $this->Parent->total_first_stock->Value;
        $this->total_stock_final = $this->Parent->total_stock_final->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_accum_sales = $this->Parent->Sum_accum_sales->GetTotalValue($mode);
        $this->Sum_total_deliveries = $this->Parent->Sum_total_deliveries->GetTotalValue($mode);
        $this->Sum_accum_diff = $this->Parent->Sum_accum_diff->GetTotalValue($mode);
        $this->TotalSum_accum_sales = $this->Parent->TotalSum_accum_sales->GetTotalValue($mode);
        $this->TotalSum_total_deliveries = $this->Parent->TotalSum_total_deliveries->GetTotalValue($mode);
        $this->TotalSum_accum_diff = $this->Parent->TotalSum_accum_diff->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_ssf_tank_day_sales_tank_idAttributes = $this->Parent->ssf_tank_day_sales_tank_id->Attributes->GetAsArray();
        $this->_Sorter_sales_dateAttributes = $this->Parent->Sorter_sales_date->Attributes->GetAsArray();
        $this->_sales_dateAttributes = $this->Parent->sales_date->Attributes->GetAsArray();
        $this->_initial_stockAttributes = $this->Parent->initial_stock->Attributes->GetAsArray();
        $this->_accum_salesAttributes = $this->Parent->accum_sales->Attributes->GetAsArray();
        $this->_total_deliveriesAttributes = $this->Parent->total_deliveries->Attributes->GetAsArray();
        $this->_accum_diffAttributes = $this->Parent->accum_diff->Attributes->GetAsArray();
        $this->_stock_finalAttributes = $this->Parent->stock_final->Attributes->GetAsArray();
        $this->_first_stockAttributes = $this->Parent->first_stock->Attributes->GetAsArray();
        $this->_Sum_accum_salesAttributes = $this->Parent->Sum_accum_sales->Attributes->GetAsArray();
        $this->_Sum_total_deliveriesAttributes = $this->Parent->Sum_total_deliveries->Attributes->GetAsArray();
        $this->_Sum_accum_diffAttributes = $this->Parent->Sum_accum_diff->Attributes->GetAsArray();
        $this->_sum_stock_finalAttributes = $this->Parent->sum_stock_final->Attributes->GetAsArray();
        $this->_total_first_stockAttributes = $this->Parent->total_first_stock->Attributes->GetAsArray();
        $this->_TotalSum_accum_salesAttributes = $this->Parent->TotalSum_accum_sales->Attributes->GetAsArray();
        $this->_TotalSum_total_deliveriesAttributes = $this->Parent->TotalSum_total_deliveries->Attributes->GetAsArray();
        $this->_TotalSum_accum_diffAttributes = $this->Parent->TotalSum_accum_diff->Attributes->GetAsArray();
        $this->_total_stock_finalAttributes = $this->Parent->total_stock_final->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Sum_accum_sales = $this->Sum_accum_sales;
        $Header->_Sum_accum_salesAttributes = $this->_Sum_accum_salesAttributes;
        $Header->Sum_total_deliveries = $this->Sum_total_deliveries;
        $Header->_Sum_total_deliveriesAttributes = $this->_Sum_total_deliveriesAttributes;
        $Header->Sum_accum_diff = $this->Sum_accum_diff;
        $Header->_Sum_accum_diffAttributes = $this->_Sum_accum_diffAttributes;
        $Header->TotalSum_accum_sales = $this->TotalSum_accum_sales;
        $Header->_TotalSum_accum_salesAttributes = $this->_TotalSum_accum_salesAttributes;
        $Header->TotalSum_total_deliveries = $this->TotalSum_total_deliveries;
        $Header->_TotalSum_total_deliveriesAttributes = $this->_TotalSum_total_deliveriesAttributes;
        $Header->TotalSum_accum_diff = $this->TotalSum_accum_diff;
        $Header->_TotalSum_accum_diffAttributes = $this->_TotalSum_accum_diffAttributes;
        $this->ssf_tank_day_sales_tank_id = $Header->ssf_tank_day_sales_tank_id;
        $Header->_ssf_tank_day_sales_tank_idAttributes = $this->_ssf_tank_day_sales_tank_idAttributes;
        $this->Parent->ssf_tank_day_sales_tank_id->Value = $Header->ssf_tank_day_sales_tank_id;
        $this->Parent->ssf_tank_day_sales_tank_id->Attributes->RestoreFromArray($Header->_ssf_tank_day_sales_tank_idAttributes);
        $this->sales_date = $Header->sales_date;
        $Header->_sales_dateAttributes = $this->_sales_dateAttributes;
        $this->Parent->sales_date->Value = $Header->sales_date;
        $this->Parent->sales_date->Attributes->RestoreFromArray($Header->_sales_dateAttributes);
        $this->initial_stock = $Header->initial_stock;
        $Header->_initial_stockAttributes = $this->_initial_stockAttributes;
        $this->Parent->initial_stock->Value = $Header->initial_stock;
        $this->Parent->initial_stock->Attributes->RestoreFromArray($Header->_initial_stockAttributes);
        $this->accum_sales = $Header->accum_sales;
        $Header->_accum_salesAttributes = $this->_accum_salesAttributes;
        $this->Parent->accum_sales->Value = $Header->accum_sales;
        $this->Parent->accum_sales->Attributes->RestoreFromArray($Header->_accum_salesAttributes);
        $this->total_deliveries = $Header->total_deliveries;
        $Header->_total_deliveriesAttributes = $this->_total_deliveriesAttributes;
        $this->Parent->total_deliveries->Value = $Header->total_deliveries;
        $this->Parent->total_deliveries->Attributes->RestoreFromArray($Header->_total_deliveriesAttributes);
        $this->accum_diff = $Header->accum_diff;
        $Header->_accum_diffAttributes = $this->_accum_diffAttributes;
        $this->Parent->accum_diff->Value = $Header->accum_diff;
        $this->Parent->accum_diff->Attributes->RestoreFromArray($Header->_accum_diffAttributes);
        $this->stock_final = $Header->stock_final;
        $Header->_stock_finalAttributes = $this->_stock_finalAttributes;
        $this->Parent->stock_final->Value = $Header->stock_final;
        $this->Parent->stock_final->Attributes->RestoreFromArray($Header->_stock_finalAttributes);
        $this->first_stock = $Header->first_stock;
        $Header->_first_stockAttributes = $this->_first_stockAttributes;
        $this->Parent->first_stock->Value = $Header->first_stock;
        $this->Parent->first_stock->Attributes->RestoreFromArray($Header->_first_stockAttributes);
        $this->sum_stock_final = $Header->sum_stock_final;
        $Header->_sum_stock_finalAttributes = $this->_sum_stock_finalAttributes;
        $this->Parent->sum_stock_final->Value = $Header->sum_stock_final;
        $this->Parent->sum_stock_final->Attributes->RestoreFromArray($Header->_sum_stock_finalAttributes);
        $this->total_first_stock = $Header->total_first_stock;
        $Header->_total_first_stockAttributes = $this->_total_first_stockAttributes;
        $this->Parent->total_first_stock->Value = $Header->total_first_stock;
        $this->Parent->total_first_stock->Attributes->RestoreFromArray($Header->_total_first_stockAttributes);
        $this->total_stock_final = $Header->total_stock_final;
        $Header->_total_stock_finalAttributes = $this->_total_stock_finalAttributes;
        $this->Parent->total_stock_final->Value = $Header->total_stock_final;
        $this->Parent->total_stock_final->Attributes->RestoreFromArray($Header->_total_stock_finalAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Sum_accum_sales = $this->Parent->Sum_accum_sales->GetValue();
        $this->Sum_total_deliveries = $this->Parent->Sum_total_deliveries->GetValue();
        $this->Sum_accum_diff = $this->Parent->Sum_accum_diff->GetValue();
        $this->TotalSum_accum_sales = $this->Parent->TotalSum_accum_sales->GetValue();
        $this->TotalSum_total_deliveries = $this->Parent->TotalSum_total_deliveries->GetValue();
        $this->TotalSum_accum_diff = $this->Parent->TotalSum_accum_diff->GetValue();
    }
}
//End ssf_tank_day_sales_ssf_ta ReportGroup class

//ssf_tank_day_sales_ssf_ta GroupsCollection class @3-6B47DFA5
class clsGroupsCollectionssf_tank_day_sales_ssf_ta {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mssf_tank_day_sales_tank_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tank_day_sales_ssf_ta(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mssf_tank_day_sales_tank_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tank_day_sales_ssf_ta($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->ssf_tank_day_sales_tank_idTotalIndex = $this->mssf_tank_day_sales_tank_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->ssf_tank_day_sales_tank_id->Value = $this->Parent->ssf_tank_day_sales_tank_id->initialValue;
        $this->Parent->sales_date->Value = $this->Parent->sales_date->initialValue;
        $this->Parent->initial_stock->Value = $this->Parent->initial_stock->initialValue;
        $this->Parent->accum_sales->Value = $this->Parent->accum_sales->initialValue;
        $this->Parent->total_deliveries->Value = $this->Parent->total_deliveries->initialValue;
        $this->Parent->accum_diff->Value = $this->Parent->accum_diff->initialValue;
        $this->Parent->stock_final->Value = $this->Parent->stock_final->initialValue;
        $this->Parent->first_stock->Value = $this->Parent->first_stock->initialValue;
        $this->Parent->Sum_accum_sales->Value = $this->Parent->Sum_accum_sales->initialValue;
        $this->Parent->Sum_total_deliveries->Value = $this->Parent->Sum_total_deliveries->initialValue;
        $this->Parent->Sum_accum_diff->Value = $this->Parent->Sum_accum_diff->initialValue;
        $this->Parent->sum_stock_final->Value = $this->Parent->sum_stock_final->initialValue;
        $this->Parent->total_first_stock->Value = $this->Parent->total_first_stock->initialValue;
        $this->Parent->TotalSum_accum_sales->Value = $this->Parent->TotalSum_accum_sales->initialValue;
        $this->Parent->TotalSum_total_deliveries->Value = $this->Parent->TotalSum_total_deliveries->initialValue;
        $this->Parent->TotalSum_accum_diff->Value = $this->Parent->TotalSum_accum_diff->initialValue;
        $this->Parent->total_stock_final->Value = $this->Parent->total_stock_final->initialValue;
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
        if ($groupName == "ssf_tank_day_sales_tank_id") {
            $Groupssf_tank_day_sales_tank_id = & $this->InitGroup(true);
            $this->Parent->ssf_tank_day_sales_tank_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_tank_day_sales_tank_id_Header->CCSEvents, "OnInitialize", $this->Parent->ssf_tank_day_sales_tank_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->ssf_tank_day_sales_tank_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->ssf_tank_day_sales_tank_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->ssf_tank_day_sales_tank_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->ssf_tank_day_sales_tank_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_tank_day_sales_tank_id_Header->Height;
                $Groupssf_tank_day_sales_tank_id->SetTotalControls("GetNextValue");
            $this->Parent->ssf_tank_day_sales_tank_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_tank_day_sales_tank_id_Header->CCSEvents, "OnCalculate", $this->Parent->ssf_tank_day_sales_tank_id_Header);
            $Groupssf_tank_day_sales_tank_id->SetControls();
            $Groupssf_tank_day_sales_tank_id->Mode = 1;
            $Groupssf_tank_day_sales_tank_id->GroupType = "ssf_tank_day_sales_tank_id";
            $this->mssf_tank_day_sales_tank_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupssf_tank_day_sales_tank_id;
            $this->Parent->Sum_accum_sales->Reset();
            $this->Parent->Sum_total_deliveries->Reset();
            $this->Parent->Sum_accum_diff->Reset();
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
        $Groupssf_tank_day_sales_tank_id = & $this->InitGroup(true);
        $this->Parent->ssf_tank_day_sales_tank_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_tank_day_sales_tank_id_Footer->CCSEvents, "OnInitialize", $this->Parent->ssf_tank_day_sales_tank_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->ssf_tank_day_sales_tank_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->ssf_tank_day_sales_tank_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->ssf_tank_day_sales_tank_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupssf_tank_day_sales_tank_id->SetTotalControls("GetPrevValue");
        $Groupssf_tank_day_sales_tank_id->SyncWithHeader($this->Groups[$this->mssf_tank_day_sales_tank_idCurrentHeaderIndex]);
        if ($this->Parent->ssf_tank_day_sales_tank_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_tank_day_sales_tank_id_Footer->Height;
        $this->Parent->ssf_tank_day_sales_tank_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_tank_day_sales_tank_id_Footer->CCSEvents, "OnCalculate", $this->Parent->ssf_tank_day_sales_tank_id_Footer);
        $Groupssf_tank_day_sales_tank_id->SetControls();
        $this->Parent->Sum_accum_sales->Reset();
        $this->Parent->Sum_total_deliveries->Reset();
        $this->Parent->Sum_accum_diff->Reset();
        $this->RestoreValues();
        $Groupssf_tank_day_sales_tank_id->Mode = 2;
        $Groupssf_tank_day_sales_tank_id->GroupType ="ssf_tank_day_sales_tank_id";
        $this->Groups[] = & $Groupssf_tank_day_sales_tank_id;
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
//End ssf_tank_day_sales_ssf_ta GroupsCollection class

class clsReportssf_tank_day_sales_ssf_ta { //ssf_tank_day_sales_ssf_ta Class @3-C4C1088B

//ssf_tank_day_sales_ssf_ta Variables @3-4DE9BE28

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
    public $ssf_tank_day_sales_tank_id_HeaderBlock, $ssf_tank_day_sales_tank_id_Header;
    public $ssf_tank_day_sales_tank_id_FooterBlock, $ssf_tank_day_sales_tank_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $ssf_tank_day_sales_tank_id_HeaderControls, $ssf_tank_day_sales_tank_id_FooterControls;
    public $Sorter_sales_date;
//End ssf_tank_day_sales_ssf_ta Variables

//Class_Initialize Event @3-DD5566F7
    function clsReportssf_tank_day_sales_ssf_ta($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tank_day_sales_ssf_ta";
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
        $this->ssf_tank_day_sales_tank_id_Footer = new clsSection($this);
        $this->ssf_tank_day_sales_tank_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->ssf_tank_day_sales_tank_id_Footer->Height);
        $this->ssf_tank_day_sales_tank_id_Header = new clsSection($this);
        $this->ssf_tank_day_sales_tank_id_Header->Height = 2;
        $MaxSectionSize = max($MaxSectionSize, $this->ssf_tank_day_sales_tank_id_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tank_day_sales_ssf_taDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tank_day_sales_ssf_taOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tank_day_sales_ssf_taDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->ssf_tank_day_sales_tank_id = new clsControl(ccsReportLabel, "ssf_tank_day_sales_tank_id", "ssf_tank_day_sales_tank_id", ccsInteger, "", "", $this);
        $this->ssf_tank_day_sales_tank_id->HTML = true;
        $this->ssf_tank_day_sales_tank_id->EmptyText = "&nbsp;";
        $this->Sorter_sales_date = new clsSorter($this->ComponentName, "Sorter_sales_date", $FileName, $this);
        $this->sales_date = new clsControl(ccsReportLabel, "sales_date", "sales_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->sales_date->HTML = true;
        $this->sales_date->EmptyText = "&nbsp;";
        $this->initial_stock = new clsControl(ccsReportLabel, "initial_stock", "initial_stock", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->initial_stock->HTML = true;
        $this->initial_stock->EmptyText = "&nbsp;";
        $this->accum_sales = new clsControl(ccsReportLabel, "accum_sales", "accum_sales", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->accum_sales->HTML = true;
        $this->accum_sales->EmptyText = "&nbsp;";
        $this->total_deliveries = new clsControl(ccsReportLabel, "total_deliveries", "total_deliveries", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->total_deliveries->HTML = true;
        $this->total_deliveries->EmptyText = "&nbsp;";
        $this->accum_diff = new clsControl(ccsReportLabel, "accum_diff", "accum_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->accum_diff->HTML = true;
        $this->accum_diff->EmptyText = "&nbsp;";
        $this->stock_final = new clsControl(ccsReportLabel, "stock_final", "stock_final", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->stock_final->HTML = true;
        $this->stock_final->EmptyText = "&nbsp;";
        $this->first_stock = new clsControl(ccsReportLabel, "first_stock", "first_stock", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->first_stock->IsEmptySource = true;
        $this->Sum_accum_sales = new clsControl(ccsReportLabel, "Sum_accum_sales", "Sum_accum_sales", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_accum_sales->HTML = true;
        $this->Sum_accum_sales->TotalFunction = "Sum";
        $this->Sum_accum_sales->EmptyText = "&nbsp;";
        $this->Sum_total_deliveries = new clsControl(ccsReportLabel, "Sum_total_deliveries", "Sum_total_deliveries", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_deliveries->HTML = true;
        $this->Sum_total_deliveries->TotalFunction = "Sum";
        $this->Sum_total_deliveries->EmptyText = "&nbsp;";
        $this->Sum_accum_diff = new clsControl(ccsReportLabel, "Sum_accum_diff", "Sum_accum_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_accum_diff->HTML = true;
        $this->Sum_accum_diff->TotalFunction = "Sum";
        $this->Sum_accum_diff->EmptyText = "&nbsp;";
        $this->sum_stock_final = new clsControl(ccsReportLabel, "sum_stock_final", "sum_stock_final", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->sum_stock_final->IsEmptySource = true;
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->total_first_stock = new clsControl(ccsReportLabel, "total_first_stock", "total_first_stock", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->total_first_stock->IsEmptySource = true;
        $this->TotalSum_accum_sales = new clsControl(ccsReportLabel, "TotalSum_accum_sales", "TotalSum_accum_sales", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_accum_sales->HTML = true;
        $this->TotalSum_accum_sales->TotalFunction = "Sum";
        $this->TotalSum_accum_sales->EmptyText = "&nbsp;";
        $this->TotalSum_total_deliveries = new clsControl(ccsReportLabel, "TotalSum_total_deliveries", "TotalSum_total_deliveries", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_deliveries->HTML = true;
        $this->TotalSum_total_deliveries->TotalFunction = "Sum";
        $this->TotalSum_total_deliveries->EmptyText = "&nbsp;";
        $this->TotalSum_accum_diff = new clsControl(ccsReportLabel, "TotalSum_accum_diff", "TotalSum_accum_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_accum_diff->HTML = true;
        $this->TotalSum_accum_diff->TotalFunction = "Sum";
        $this->TotalSum_accum_diff->EmptyText = "&nbsp;";
        $this->total_stock_final = new clsControl(ccsReportLabel, "total_stock_final", "total_stock_final", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->total_stock_final->IsEmptySource = true;
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

//CheckErrors Method @3-91F5F850
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->ssf_tank_day_sales_tank_id->Errors->Count());
        $errors = ($errors || $this->sales_date->Errors->Count());
        $errors = ($errors || $this->initial_stock->Errors->Count());
        $errors = ($errors || $this->accum_sales->Errors->Count());
        $errors = ($errors || $this->total_deliveries->Errors->Count());
        $errors = ($errors || $this->accum_diff->Errors->Count());
        $errors = ($errors || $this->stock_final->Errors->Count());
        $errors = ($errors || $this->first_stock->Errors->Count());
        $errors = ($errors || $this->Sum_accum_sales->Errors->Count());
        $errors = ($errors || $this->Sum_total_deliveries->Errors->Count());
        $errors = ($errors || $this->Sum_accum_diff->Errors->Count());
        $errors = ($errors || $this->sum_stock_final->Errors->Count());
        $errors = ($errors || $this->total_first_stock->Errors->Count());
        $errors = ($errors || $this->TotalSum_accum_sales->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_deliveries->Errors->Count());
        $errors = ($errors || $this->TotalSum_accum_diff->Errors->Count());
        $errors = ($errors || $this->total_stock_final->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-AFDB5526
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_tank_day_sales_tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sales_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->initial_stock->Errors->ToString());
        $errors = ComposeStrings($errors, $this->accum_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_deliveries->Errors->ToString());
        $errors = ComposeStrings($errors, $this->accum_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->stock_final->Errors->ToString());
        $errors = ComposeStrings($errors, $this->first_stock->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_accum_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_deliveries->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_accum_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sum_stock_final->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_first_stock->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_accum_sales->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_deliveries->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_accum_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_stock_final->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-72E4DA09
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_ssf_tank_day_sales_tank_id"] = CCGetFromGet("s_ssf_tank_day_sales_tank_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $ssf_tank_day_sales_tank_idKey = "";
        $Groups = new clsGroupsCollectionssf_tank_day_sales_ssf_ta($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->ssf_tank_day_sales_tank_id->SetValue($this->DataSource->ssf_tank_day_sales_tank_id->GetValue());
            $this->sales_date->SetValue($this->DataSource->sales_date->GetValue());
            $this->initial_stock->SetValue($this->DataSource->initial_stock->GetValue());
            $this->accum_sales->SetValue($this->DataSource->accum_sales->GetValue());
            $this->total_deliveries->SetValue($this->DataSource->total_deliveries->GetValue());
            $this->accum_diff->SetValue($this->DataSource->accum_diff->GetValue());
            $this->stock_final->SetValue($this->DataSource->stock_final->GetValue());
            $this->Sum_accum_sales->SetValue($this->DataSource->Sum_accum_sales->GetValue());
            $this->Sum_total_deliveries->SetValue($this->DataSource->Sum_total_deliveries->GetValue());
            $this->Sum_accum_diff->SetValue($this->DataSource->Sum_accum_diff->GetValue());
            $this->TotalSum_accum_sales->SetValue($this->DataSource->TotalSum_accum_sales->GetValue());
            $this->TotalSum_total_deliveries->SetValue($this->DataSource->TotalSum_total_deliveries->GetValue());
            $this->TotalSum_accum_diff->SetValue($this->DataSource->TotalSum_accum_diff->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            $this->first_stock->SetValue("");
            $this->sum_stock_final->SetValue("");
            $this->total_first_stock->SetValue("");
            $this->total_stock_final->SetValue("");
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $ssf_tank_day_sales_tank_idKey != $this->DataSource->f("tank_id")) {
                $Groups->OpenGroup("ssf_tank_day_sales_tank_id");
            }
            $Groups->AddItem();
            $ssf_tank_day_sales_tank_idKey = $this->DataSource->f("tank_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $ssf_tank_day_sales_tank_idKey != $this->DataSource->f("tank_id")) {
                $Groups->CloseGroup("ssf_tank_day_sales_tank_id");
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
            $this->ControlsVisible["ssf_tank_day_sales_tank_id"] = $this->ssf_tank_day_sales_tank_id->Visible;
            $this->ControlsVisible["Sorter_sales_date"] = $this->Sorter_sales_date->Visible;
            $this->ControlsVisible["sales_date"] = $this->sales_date->Visible;
            $this->ControlsVisible["initial_stock"] = $this->initial_stock->Visible;
            $this->ControlsVisible["accum_sales"] = $this->accum_sales->Visible;
            $this->ControlsVisible["total_deliveries"] = $this->total_deliveries->Visible;
            $this->ControlsVisible["accum_diff"] = $this->accum_diff->Visible;
            $this->ControlsVisible["stock_final"] = $this->stock_final->Visible;
            $this->ControlsVisible["first_stock"] = $this->first_stock->Visible;
            $this->ControlsVisible["Sum_accum_sales"] = $this->Sum_accum_sales->Visible;
            $this->ControlsVisible["Sum_total_deliveries"] = $this->Sum_total_deliveries->Visible;
            $this->ControlsVisible["Sum_accum_diff"] = $this->Sum_accum_diff->Visible;
            $this->ControlsVisible["sum_stock_final"] = $this->sum_stock_final->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->sales_date->SetValue($items[$i]->sales_date);
                        $this->sales_date->Attributes->RestoreFromArray($items[$i]->_sales_dateAttributes);
                        $this->initial_stock->SetValue($items[$i]->initial_stock);
                        $this->initial_stock->Attributes->RestoreFromArray($items[$i]->_initial_stockAttributes);
                        $this->accum_sales->SetValue($items[$i]->accum_sales);
                        $this->accum_sales->Attributes->RestoreFromArray($items[$i]->_accum_salesAttributes);
                        $this->total_deliveries->SetValue($items[$i]->total_deliveries);
                        $this->total_deliveries->Attributes->RestoreFromArray($items[$i]->_total_deliveriesAttributes);
                        $this->accum_diff->SetValue($items[$i]->accum_diff);
                        $this->accum_diff->Attributes->RestoreFromArray($items[$i]->_accum_diffAttributes);
                        $this->stock_final->SetValue($items[$i]->stock_final);
                        $this->stock_final->Attributes->RestoreFromArray($items[$i]->_stock_finalAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->sales_date->Show();
                        $this->initial_stock->Show();
                        $this->accum_sales->Show();
                        $this->total_deliveries->Show();
                        $this->accum_diff->Show();
                        $this->stock_final->Show();
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
                            $this->total_first_stock->SetValue($items[$i]->total_first_stock);
                            $this->total_first_stock->Attributes->RestoreFromArray($items[$i]->_total_first_stockAttributes);
                            $this->TotalSum_accum_sales->SetText(CCFormatNumber($items[$i]->TotalSum_accum_sales, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_accum_sales->Attributes->RestoreFromArray($items[$i]->_TotalSum_accum_salesAttributes);
                            $this->TotalSum_total_deliveries->SetText(CCFormatNumber($items[$i]->TotalSum_total_deliveries, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_deliveries->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_deliveriesAttributes);
                            $this->TotalSum_accum_diff->SetText(CCFormatNumber($items[$i]->TotalSum_accum_diff, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_accum_diff->Attributes->RestoreFromArray($items[$i]->_TotalSum_accum_diffAttributes);
                            $this->total_stock_final->SetValue($items[$i]->total_stock_final);
                            $this->total_stock_final->Attributes->RestoreFromArray($items[$i]->_total_stock_finalAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->total_first_stock->Show();
                                $this->TotalSum_accum_sales->Show();
                                $this->TotalSum_total_deliveries->Show();
                                $this->TotalSum_accum_diff->Show();
                                $this->total_stock_final->Show();
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
                    case "ssf_tank_day_sales_tank_id":
                        if ($items[$i]->Mode == 1) {
                            $this->ssf_tank_day_sales_tank_id->SetValue($items[$i]->ssf_tank_day_sales_tank_id);
                            $this->ssf_tank_day_sales_tank_id->Attributes->RestoreFromArray($items[$i]->_ssf_tank_day_sales_tank_idAttributes);
                            $this->ssf_tank_day_sales_tank_id_Header->CCSEventResult = CCGetEvent($this->ssf_tank_day_sales_tank_id_Header->CCSEvents, "BeforeShow", $this->ssf_tank_day_sales_tank_id_Header);
                            if ($this->ssf_tank_day_sales_tank_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_tank_day_sales_tank_id_Header";
                                $this->Attributes->Show();
                                $this->ssf_tank_day_sales_tank_id->Show();
                                $this->Sorter_sales_date->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_tank_day_sales_tank_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->first_stock->SetValue($items[$i]->first_stock);
                            $this->first_stock->Attributes->RestoreFromArray($items[$i]->_first_stockAttributes);
                            $this->Sum_accum_sales->SetText(CCFormatNumber($items[$i]->Sum_accum_sales, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_accum_sales->Attributes->RestoreFromArray($items[$i]->_Sum_accum_salesAttributes);
                            $this->Sum_total_deliveries->SetText(CCFormatNumber($items[$i]->Sum_total_deliveries, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_deliveries->Attributes->RestoreFromArray($items[$i]->_Sum_total_deliveriesAttributes);
                            $this->Sum_accum_diff->SetText(CCFormatNumber($items[$i]->Sum_accum_diff, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_accum_diff->Attributes->RestoreFromArray($items[$i]->_Sum_accum_diffAttributes);
                            $this->sum_stock_final->SetValue($items[$i]->sum_stock_final);
                            $this->sum_stock_final->Attributes->RestoreFromArray($items[$i]->_sum_stock_finalAttributes);
                            $this->ssf_tank_day_sales_tank_id_Footer->CCSEventResult = CCGetEvent($this->ssf_tank_day_sales_tank_id_Footer->CCSEvents, "BeforeShow", $this->ssf_tank_day_sales_tank_id_Footer);
                            if ($this->ssf_tank_day_sales_tank_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_tank_day_sales_tank_id_Footer";
                                $this->first_stock->Show();
                                $this->Sum_accum_sales->Show();
                                $this->Sum_total_deliveries->Show();
                                $this->Sum_accum_diff->Show();
                                $this->sum_stock_final->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_tank_day_sales_tank_id_Footer", true, "Section Detail");
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

} //End ssf_tank_day_sales_ssf_ta Class @3-FCB6E20C

class clsssf_tank_day_sales_ssf_taDataSource extends clsDBConnection1 {  //ssf_tank_day_sales_ssf_taDataSource Class @3-14E4F7CF

//DataSource Variables @3-85CA58EC
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $ssf_tank_day_sales_tank_id;
    public $sales_date;
    public $initial_stock;
    public $accum_sales;
    public $total_deliveries;
    public $accum_diff;
    public $stock_final;
    public $Sum_accum_sales;
    public $Sum_total_deliveries;
    public $Sum_accum_diff;
    public $TotalSum_accum_sales;
    public $TotalSum_total_deliveries;
    public $TotalSum_accum_diff;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-A0C8094C
    function clsssf_tank_day_sales_ssf_taDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tank_day_sales_ssf_ta";
        $this->Initialize();
        $this->ssf_tank_day_sales_tank_id = new clsField("ssf_tank_day_sales_tank_id", ccsInteger, "");
        $this->sales_date = new clsField("sales_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->initial_stock = new clsField("initial_stock", ccsFloat, "");
        $this->accum_sales = new clsField("accum_sales", ccsFloat, "");
        $this->total_deliveries = new clsField("total_deliveries", ccsFloat, "");
        $this->accum_diff = new clsField("accum_diff", ccsFloat, "");
        $this->stock_final = new clsField("stock_final", ccsFloat, "");
        $this->Sum_accum_sales = new clsField("Sum_accum_sales", ccsFloat, "");
        $this->Sum_total_deliveries = new clsField("Sum_total_deliveries", ccsFloat, "");
        $this->Sum_accum_diff = new clsField("Sum_accum_diff", ccsFloat, "");
        $this->TotalSum_accum_sales = new clsField("TotalSum_accum_sales", ccsFloat, "");
        $this->TotalSum_total_deliveries = new clsField("TotalSum_total_deliveries", ccsFloat, "");
        $this->TotalSum_accum_diff = new clsField("TotalSum_accum_diff", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-527B05D0
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "sales_date";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_sales_date" => array("sales_date", "")));
    }
//End SetOrder Method

//Prepare Method @3-B76576A9
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_ssf_tank_day_sales_tank_id", ccsInteger, "", "", $this->Parameters["urls_ssf_tank_day_sales_tank_id"], 0, false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
    }
//End Prepare Method

//Open Method @3-42580776
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "select tank_id, sales_date, sum(sales) as accum_sales, sum(ini_stock) as initial_stock, sum(accum_diff) as accum_diff, sum(total_deliveries) as total_deliveries, 1 as stock_final\n" .
        "from ( \n" .
        "select b.tank_id, b.sales_date as sales_date, b.accum_sales as sales, b.initial_stock as ini_stock,0 as total_deliveries, 0 as accum_diff\n" .
        "from ssf_tank_day_sales b \n" .
        "WHERE ( b.tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0)\n" .
        "AND  ( b.sales_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND (b.sales_date <= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "union\n" .
        "select a.tank_id, a.date_end as sales_date,0 as sales,0 as ini_stock ,sum(a.vol_total) as total_deliveries, 0 as accum_diff\n" .
        "from ssf_tank_deliveries a \n" .
        "WHERE ( a.tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0)\n" .
        "AND ( a.date_end >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( a.date_end <= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "group by a.tank_id, a.date_end\n" .
        "union\n" .
        "select c.tank_id, c.diff_date as sales_date, 0 as sales,0 as ini_stock,0 as total_deliveries, c.accum_diff as accum_diff\n" .
        "from ssf_tank_day_diff c\n" .
        "WHERE ( c.tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0)\n" .
        "AND ( c.diff_date >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "'  or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( c.diff_date <= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        " ) subqry\n" .
        "group by tank_id, sales_date {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "tank_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-E5ACE151
    function SetValues()
    {
        $this->ssf_tank_day_sales_tank_id->SetDBValue(trim($this->f("tank_id")));
        $this->sales_date->SetDBValue(trim($this->f("sales_date")));
        $this->initial_stock->SetDBValue(trim($this->f("initial_stock")));
        $this->accum_sales->SetDBValue(trim($this->f("accum_sales")));
        $this->total_deliveries->SetDBValue(trim($this->f("total_deliveries")));
        $this->accum_diff->SetDBValue(trim($this->f("accum_diff")));
        $this->stock_final->SetDBValue(trim($this->f("stock_final")));
        $this->Sum_accum_sales->SetDBValue(trim($this->f("accum_sales")));
        $this->Sum_total_deliveries->SetDBValue(trim($this->f("total_deliveries")));
        $this->Sum_accum_diff->SetDBValue(trim($this->f("accum_diff")));
        $this->TotalSum_accum_sales->SetDBValue(trim($this->f("accum_sales")));
        $this->TotalSum_total_deliveries->SetDBValue(trim($this->f("total_deliveries")));
        $this->TotalSum_accum_diff->SetDBValue(trim($this->f("accum_diff")));
    }
//End SetValues Method

} //End ssf_tank_day_sales_ssf_taDataSource Class @3-FCB6E20C

//Initialize Page @1-01C39676
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
$TemplateFileName = "SSFTanksDailyReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-11983956
include("./SSFTanksDailyReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-02CD7A7C
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tank_day_diff_ssf_tan = new clsRecordssf_tank_day_diff_ssf_tan("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tank_day_sales_ssf_ta = new clsReportssf_tank_day_sales_ssf_ta("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tank_day_diff_ssf_tan = & $ssf_tank_day_diff_ssf_tan;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tank_day_sales_ssf_ta = & $ssf_tank_day_sales_ssf_ta;
$ssf_tank_day_sales_ssf_ta->Initialize();

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

//Execute Components @1-871236A7
$SSFSpiritHeader->Operations();
$ssf_tank_day_diff_ssf_tan->Operation();
//End Execute Components

//Go to destination page @1-EFDB6385
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tank_day_diff_ssf_tan);
    unset($ssf_tank_day_sales_ssf_ta);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-84EF2F47
$SSFSpiritHeader->Show();
$ssf_tank_day_diff_ssf_tan->Show();
$Button1->Show();
$ssf_tank_day_sales_ssf_ta->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-14C37163
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tank_day_diff_ssf_tan);
unset($ssf_tank_day_sales_ssf_ta);
unset($Tpl);
//End Unload Page


?>
