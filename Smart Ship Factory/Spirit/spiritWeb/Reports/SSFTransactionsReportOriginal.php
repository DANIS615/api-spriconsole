<?php
//Include Common Files @1-A3E7BB19
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTransactionsReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @111-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_pump_salesSearch { //ssf_pump_salesSearch Class @3-77E3522F

//Variables @3-CD05146A

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

    // Class variables
//End Variables

//Class_Initialize Event @3-1C1B7452
    function clsRecordssf_pump_salesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_pump_salesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_pump_salesSearch";
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = & new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = & new clsDatePicker("DatePicker_s_date_from1", "ssf_pump_salesSearch", "s_date_from", $this);
            $this->s_date_to = & new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = & new clsDatePicker("DatePicker_s_date_to1", "ssf_pump_salesSearch", "s_date_to", $this);
            $this->s_pump_id = & new clsControl(ccsListBox, "s_pump_id", "s_pump_id", ccsInteger, "", CCGetRequestParam("s_pump_id", $Method, NULL), $this);
            $this->s_pump_id->DSType = dsSQL;
            list($this->s_pump_id->BoundColumn, $this->s_pump_id->TextColumn, $this->s_pump_id->DBFormat) = array("id", "id", "");
            $this->s_pump_id->DataSource = new clsDBConnection1();
            $this->s_pump_id->ds = & $this->s_pump_id->DataSource;
            $this->s_pump_id->DataSource->SQL = "Select to_number(ID,'99') as ID from config_values \n" .
            "where library = 'pump' and groupname = 'general'\n" .
            "and parameter = 'ID' {SQL_OrderBy}";
            $this->s_pump_id->DataSource->Order = "id";
            $this->s_grade_id = & new clsControl(ccsListBox, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", $Method, NULL), $this);
            $this->s_grade_id->DSType = dsSQL;
            list($this->s_grade_id->BoundColumn, $this->s_grade_id->TextColumn, $this->s_grade_id->DBFormat) = array("param_value", "id", "");
            $this->s_grade_id->DataSource = new clsDBConnection1();
            $this->s_grade_id->ds = & $this->s_grade_id->DataSource;
            $this->s_grade_id->DataSource->SQL = "Select param_value, id from config_values \n" .
            "where library = 'grade' and groupname = 'general'\n" .
            "and parameter = 'number' {SQL_OrderBy}";
            $this->s_grade_id->DataSource->Order = "param_value";
            $this->s_sale_type = & new clsControl(ccsListBox, "s_sale_type", "s_sale_type", ccsInteger, "", CCGetRequestParam("s_sale_type", $Method, NULL), $this);
            $this->s_sale_type->DSType = dsListOfValues;
            $this->s_sale_type->Values = array(array("0", "Ventas sin Control"), array("1", "Ventas"), array("2", "Pruebas de Surtidor"));
            $this->Link1 = & new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTransactionsReport.php";
            $this->Button_DoSearch = & new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @3-3B13CF22
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_pump_id->Validate() && $Validation);
        $Validation = ($this->s_grade_id->Validate() && $Validation);
        $Validation = ($this->s_sale_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_pump_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_grade_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_sale_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-5DB9E3F4
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_pump_id->Errors->Count());
        $errors = ($errors || $this->s_grade_id->Errors->Count());
        $errors = ($errors || $this->s_sale_type->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-CFC236B2
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
        $Redirect = "SSFTransactionsReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTransactionsReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-8025FD0D
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
        $this->s_sale_type->Prepare();

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
            $Error = ComposeStrings($Error, $this->s_pump_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_grade_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_sale_type->Errors->ToString());
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
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->s_date_from->Show();
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->s_pump_id->Show();
        $this->s_grade_id->Show();
        $this->s_sale_type->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_pump_salesSearch Class @3-FCB6E20C



class clsGridconfig_values_ssf_addin_p { //config_values_ssf_addin_p class @179-9CE2D887

//Variables @179-3BC55B0F

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    // Grid Controls
    public $StaticControls;
    public $RowControls;
    public $Sorter_sale_id;
    public $Sorter_end_date;
    public $Sorter_end_time;
    public $Sorter_pump_id;
    public $Sorter_hose_id;
    public $Sorter_id;
    public $Sorter_volume;
    public $Sorter_ppu;
    public $Sorter_money;
    public $Sorter_sale_type;
    public $Sorter_pay_payment_type;
//End Variables

//Class_Initialize Event @179-504D1D19
    function clsGridconfig_values_ssf_addin_p($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "config_values_ssf_addin_p";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid config_values_ssf_addin_p";
        $this->DataSource = new clsconfig_values_ssf_addin_pDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("config_values_ssf_addin_pOrder", "");
        $this->SorterDirection = CCGetParam("config_values_ssf_addin_pDir", "");

        $this->Data_sale_id = & new clsPanel("Data_sale_id", $this);
        $this->sale_id = & new clsControl(ccsLabel, "sale_id", "sale_id", ccsInteger, "", CCGetRequestParam("sale_id", ccsGet, NULL), $this);
        $this->Data_end_date = & new clsPanel("Data_end_date", $this);
        $this->end_date = & new clsControl(ccsLabel, "end_date", "end_date", ccsText, "", CCGetRequestParam("end_date", ccsGet, NULL), $this);
        $this->Data_end_time = & new clsPanel("Data_end_time", $this);
        $this->end_time = & new clsControl(ccsLabel, "end_time", "end_time", ccsText, "", CCGetRequestParam("end_time", ccsGet, NULL), $this);
        $this->Data_pump_id = & new clsPanel("Data_pump_id", $this);
        $this->pump_id = & new clsControl(ccsLabel, "pump_id", "pump_id", ccsInteger, "", CCGetRequestParam("pump_id", ccsGet, NULL), $this);
        $this->Data_hose_id = & new clsPanel("Data_hose_id", $this);
        $this->hose_id = & new clsControl(ccsLabel, "hose_id", "hose_id", ccsInteger, "", CCGetRequestParam("hose_id", ccsGet, NULL), $this);
        $this->Data_id = & new clsPanel("Data_id", $this);
        $this->id = & new clsControl(ccsLabel, "id", "id", ccsText, "", CCGetRequestParam("id", ccsGet, NULL), $this);
        $this->Data_volume = & new clsPanel("Data_volume", $this);
        $this->volume = & new clsControl(ccsLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("volume", ccsGet, NULL), $this);
        $this->Data_ppu = & new clsPanel("Data_ppu", $this);
        $this->ppu = & new clsControl(ccsLabel, "ppu", "ppu", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("ppu", ccsGet, NULL), $this);
        $this->Data_money = & new clsPanel("Data_money", $this);
        $this->money = & new clsControl(ccsLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("money", ccsGet, NULL), $this);
        $this->Data_sale_type = & new clsPanel("Data_sale_type", $this);
        $this->sale_type = & new clsControl(ccsLabel, "sale_type", "sale_type", ccsInteger, "", CCGetRequestParam("sale_type", ccsGet, NULL), $this);
        $this->Data_pay_payment_type = & new clsPanel("Data_pay_payment_type", $this);
        $this->pay_payment_type = & new clsControl(ccsLabel, "pay_payment_type", "pay_payment_type", ccsText, "", CCGetRequestParam("pay_payment_type", ccsGet, NULL), $this);
        $this->config_values_ssf_addin_p_TotalRecords = & new clsControl(ccsLabel, "config_values_ssf_addin_p_TotalRecords", "config_values_ssf_addin_p_TotalRecords", ccsText, "", CCGetRequestParam("config_values_ssf_addin_p_TotalRecords", ccsGet, NULL), $this);
        $this->s_date_from = & new clsControl(ccsHidden, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", ccsGet, NULL), $this);
        $this->s_date_to = & new clsControl(ccsHidden, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", ccsGet, NULL), $this);
        $this->s_pump_id = & new clsControl(ccsHidden, "s_pump_id", "s_pump_id", ccsText, "", CCGetRequestParam("s_pump_id", ccsGet, NULL), $this);
        $this->s_grade_id = & new clsControl(ccsHidden, "s_grade_id", "s_grade_id", ccsText, "", CCGetRequestParam("s_grade_id", ccsGet, NULL), $this);
        $this->s_sale_type = & new clsControl(ccsHidden, "s_sale_type", "s_sale_type", ccsText, "", CCGetRequestParam("s_sale_type", ccsGet, NULL), $this);
        $this->Hidden1 = & new clsControl(ccsHidden, "Hidden1", "Hidden1", ccsDate, $DefaultDateFormat, CCGetRequestParam("Hidden1", ccsGet, NULL), $this);
        $this->ViewMode = & new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $this);
        $this->p_sale_start = & new clsControl(ccsHidden, "p_sale_start", "p_sale_start", ccsText, "", CCGetRequestParam("p_sale_start", ccsGet, NULL), $this);
        $this->p_sale_end = & new clsControl(ccsHidden, "p_sale_end", "p_sale_end", ccsText, "", CCGetRequestParam("p_sale_end", ccsGet, NULL), $this);
        $this->Header_sale_id = & new clsPanel("Header_sale_id", $this);
        $this->Sorter_sale_id = & new clsSorter($this->ComponentName, "Sorter_sale_id", $FileName, $this);
        $this->col1 = & new clsControl(ccsCheckBox, "col1", "col1", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col1", ccsGet, NULL), $this);
        $this->col1->CheckedValue = true;
        $this->col1->UncheckedValue = false;
        $this->Header_end_date = & new clsPanel("Header_end_date", $this);
        $this->Sorter_end_date = & new clsSorter($this->ComponentName, "Sorter_end_date", $FileName, $this);
        $this->col2 = & new clsControl(ccsCheckBox, "col2", "col2", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col2", ccsGet, NULL), $this);
        $this->col2->CheckedValue = true;
        $this->col2->UncheckedValue = false;
        $this->Header_end_time = & new clsPanel("Header_end_time", $this);
        $this->Sorter_end_time = & new clsSorter($this->ComponentName, "Sorter_end_time", $FileName, $this);
        $this->col3 = & new clsControl(ccsCheckBox, "col3", "col3", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col3", ccsGet, NULL), $this);
        $this->col3->CheckedValue = true;
        $this->col3->UncheckedValue = false;
        $this->Header_pump_id = & new clsPanel("Header_pump_id", $this);
        $this->Sorter_pump_id = & new clsSorter($this->ComponentName, "Sorter_pump_id", $FileName, $this);
        $this->col4 = & new clsControl(ccsCheckBox, "col4", "col4", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col4", ccsGet, NULL), $this);
        $this->col4->CheckedValue = true;
        $this->col4->UncheckedValue = false;
        $this->Header_hose_id = & new clsPanel("Header_hose_id", $this);
        $this->Sorter_hose_id = & new clsSorter($this->ComponentName, "Sorter_hose_id", $FileName, $this);
        $this->col5 = & new clsControl(ccsCheckBox, "col5", "col5", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col5", ccsGet, NULL), $this);
        $this->col5->CheckedValue = true;
        $this->col5->UncheckedValue = false;
        $this->Header_id = & new clsPanel("Header_id", $this);
        $this->Sorter_id = & new clsSorter($this->ComponentName, "Sorter_id", $FileName, $this);
        $this->col6 = & new clsControl(ccsCheckBox, "col6", "col6", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col6", ccsGet, NULL), $this);
        $this->col6->CheckedValue = true;
        $this->col6->UncheckedValue = false;
        $this->Header_volume = & new clsPanel("Header_volume", $this);
        $this->Sorter_volume = & new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->col7 = & new clsControl(ccsCheckBox, "col7", "col7", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col7", ccsGet, NULL), $this);
        $this->col7->CheckedValue = true;
        $this->col7->UncheckedValue = false;
        $this->Header_ppu = & new clsPanel("Header_ppu", $this);
        $this->Sorter_ppu = & new clsSorter($this->ComponentName, "Sorter_ppu", $FileName, $this);
        $this->col8 = & new clsControl(ccsCheckBox, "col8", "col8", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col8", ccsGet, NULL), $this);
        $this->col8->CheckedValue = true;
        $this->col8->UncheckedValue = false;
        $this->Header_money = & new clsPanel("Header_money", $this);
        $this->Sorter_money = & new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->col9 = & new clsControl(ccsCheckBox, "col9", "col9", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col9", ccsGet, NULL), $this);
        $this->col9->CheckedValue = true;
        $this->col9->UncheckedValue = false;
        $this->Header_sale_type = & new clsPanel("Header_sale_type", $this);
        $this->Sorter_sale_type = & new clsSorter($this->ComponentName, "Sorter_sale_type", $FileName, $this);
        $this->col10 = & new clsControl(ccsCheckBox, "col10", "col10", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col10", ccsGet, NULL), $this);
        $this->col10->CheckedValue = true;
        $this->col10->UncheckedValue = false;
        $this->Header_pay_payment_type = & new clsPanel("Header_pay_payment_type", $this);
        $this->Sorter_pay_payment_type = & new clsSorter($this->ComponentName, "Sorter_pay_payment_type", $FileName, $this);
        $this->col11 = & new clsControl(ccsCheckBox, "col11", "col11", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("col11", ccsGet, NULL), $this);
        $this->col11->CheckedValue = true;
        $this->col11->UncheckedValue = false;
        $this->lblTotalFooter = & new clsControl(ccsLabel, "lblTotalFooter", "lblTotalFooter", ccsText, "", CCGetRequestParam("lblTotalFooter", ccsGet, NULL), $this);
        $this->Report_CurrentDateTime = & new clsControl(ccsReportLabel, "Report_CurrentDateTime", "Report_CurrentDateTime", ccsText, array("mm", "/", "dd", "/", "yyyy", " ", "h", ":", "nn", " ", "AM/PM"), "", $this);
        $this->Report_CurrentPage = & new clsControl(ccsLabel, "Report_CurrentPage", "Report_CurrentPage", ccsText, "", CCGetRequestParam("Report_CurrentPage", ccsGet, NULL), $this);
        $this->Report_TotalPages = & new clsControl(ccsLabel, "Report_TotalPages", "Report_TotalPages", ccsText, "", CCGetRequestParam("Report_TotalPages", ccsGet, NULL), $this);
        $this->Navigator = & new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpMoving, $this);
        $this->PageBreak = & new clsPanel("PageBreak", $this);
        $this->Header_sale_id->AddComponent("Sorter_sale_id", $this->Sorter_sale_id);
        $this->Header_sale_id->AddComponent("col1", $this->col1);
        $this->Header_end_date->AddComponent("Sorter_end_date", $this->Sorter_end_date);
        $this->Header_end_date->AddComponent("col2", $this->col2);
        $this->Header_end_time->AddComponent("Sorter_end_time", $this->Sorter_end_time);
        $this->Header_end_time->AddComponent("col3", $this->col3);
        $this->Header_pump_id->AddComponent("Sorter_pump_id", $this->Sorter_pump_id);
        $this->Header_pump_id->AddComponent("col4", $this->col4);
        $this->Header_hose_id->AddComponent("Sorter_hose_id", $this->Sorter_hose_id);
        $this->Header_hose_id->AddComponent("col5", $this->col5);
        $this->Header_id->AddComponent("Sorter_id", $this->Sorter_id);
        $this->Header_id->AddComponent("col6", $this->col6);
        $this->Header_volume->AddComponent("Sorter_volume", $this->Sorter_volume);
        $this->Header_volume->AddComponent("col7", $this->col7);
        $this->Header_ppu->AddComponent("Sorter_ppu", $this->Sorter_ppu);
        $this->Header_ppu->AddComponent("col8", $this->col8);
        $this->Header_money->AddComponent("Sorter_money", $this->Sorter_money);
        $this->Header_money->AddComponent("col9", $this->col9);
        $this->Header_sale_type->AddComponent("Sorter_sale_type", $this->Sorter_sale_type);
        $this->Header_sale_type->AddComponent("col10", $this->col10);
        $this->Header_pay_payment_type->AddComponent("Sorter_pay_payment_type", $this->Sorter_pay_payment_type);
        $this->Header_pay_payment_type->AddComponent("col11", $this->col11);
        $this->Data_sale_id->AddComponent("sale_id", $this->sale_id);
        $this->Data_end_date->AddComponent("end_date", $this->end_date);
        $this->Data_end_time->AddComponent("end_time", $this->end_time);
        $this->Data_pump_id->AddComponent("pump_id", $this->pump_id);
        $this->Data_hose_id->AddComponent("hose_id", $this->hose_id);
        $this->Data_id->AddComponent("id", $this->id);
        $this->Data_volume->AddComponent("volume", $this->volume);
        $this->Data_ppu->AddComponent("ppu", $this->ppu);
        $this->Data_money->AddComponent("money", $this->money);
        $this->Data_sale_type->AddComponent("sale_type", $this->sale_type);
        $this->Data_pay_payment_type->AddComponent("pay_payment_type", $this->pay_payment_type);
    }
//End Class_Initialize Event

//Initialize Method @179-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @179-F831E257
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urlp_sale_start"] = CCGetFromGet("p_sale_start", NULL);
        $this->DataSource->Parameters["urlp_sale_end"] = CCGetFromGet("p_sale_end", NULL);
        $this->DataSource->Parameters["urls_grade_id"] = CCGetFromGet("s_grade_id", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);
        $this->DataSource->Parameters["urls_sale_type"] = CCGetFromGet("s_sale_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->IsEmpty = ! $this->DataSource->next_record();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->IsEmpty = false;
            $this->ControlsVisible["Data_sale_id"] = $this->Data_sale_id->Visible;
            $this->ControlsVisible["sale_id"] = $this->sale_id->Visible;
            $this->ControlsVisible["Data_end_date"] = $this->Data_end_date->Visible;
            $this->ControlsVisible["end_date"] = $this->end_date->Visible;
            $this->ControlsVisible["Data_end_time"] = $this->Data_end_time->Visible;
            $this->ControlsVisible["end_time"] = $this->end_time->Visible;
            $this->ControlsVisible["Data_pump_id"] = $this->Data_pump_id->Visible;
            $this->ControlsVisible["pump_id"] = $this->pump_id->Visible;
            $this->ControlsVisible["Data_hose_id"] = $this->Data_hose_id->Visible;
            $this->ControlsVisible["hose_id"] = $this->hose_id->Visible;
            $this->ControlsVisible["Data_id"] = $this->Data_id->Visible;
            $this->ControlsVisible["id"] = $this->id->Visible;
            $this->ControlsVisible["Data_volume"] = $this->Data_volume->Visible;
            $this->ControlsVisible["volume"] = $this->volume->Visible;
            $this->ControlsVisible["Data_ppu"] = $this->Data_ppu->Visible;
            $this->ControlsVisible["ppu"] = $this->ppu->Visible;
            $this->ControlsVisible["Data_money"] = $this->Data_money->Visible;
            $this->ControlsVisible["money"] = $this->money->Visible;
            $this->ControlsVisible["Data_sale_type"] = $this->Data_sale_type->Visible;
            $this->ControlsVisible["sale_type"] = $this->sale_type->Visible;
            $this->ControlsVisible["Data_pay_payment_type"] = $this->Data_pay_payment_type->Visible;
            $this->ControlsVisible["pay_payment_type"] = $this->pay_payment_type->Visible;
            do {
                $this->RowNumber++;
                $this->DataSource->SetValues();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->sale_id->SetValue($this->DataSource->sale_id->GetValue());
                $this->end_date->SetValue($this->DataSource->end_date->GetValue());
                $this->end_time->SetValue($this->DataSource->end_time->GetValue());
                $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
                $this->hose_id->SetValue($this->DataSource->hose_id->GetValue());
                $this->id->SetValue($this->DataSource->id->GetValue());
                $this->volume->SetValue($this->DataSource->volume->GetValue());
                $this->ppu->SetValue($this->DataSource->ppu->GetValue());
                $this->money->SetValue($this->DataSource->money->GetValue());
                $this->sale_type->SetValue($this->DataSource->sale_type->GetValue());
                $this->pay_payment_type->SetValue($this->DataSource->pay_payment_type->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Data_sale_id->Show();
                $this->Data_end_date->Show();
                $this->Data_end_time->Show();
                $this->Data_pump_id->Show();
                $this->Data_hose_id->Show();
                $this->Data_id->Show();
                $this->Data_volume->Show();
                $this->Data_ppu->Show();
                $this->Data_money->Show();
                $this->Data_sale_type->Show();
                $this->Data_pay_payment_type->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            } while (($this->RowNumber < $this->PageSize) && $this->DataSource->next_record());
        }
        else // Show NoRecords block if no records are found
        {
            $this->IsEmpty = true;
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        if(!is_array($this->Hidden1->Value) && !strlen($this->Hidden1->Value) && $this->Hidden1->Value !== false)
            $this->Hidden1->SetValue(time());
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->config_values_ssf_addin_p_TotalRecords->Show();
        $this->s_date_from->Show();
        $this->s_date_to->Show();
        $this->s_pump_id->Show();
        $this->s_grade_id->Show();
        $this->s_sale_type->Show();
        $this->Hidden1->Show();
        $this->ViewMode->Show();
        $this->p_sale_start->Show();
        $this->p_sale_end->Show();
        $this->Header_sale_id->Show();
        $this->Sorter_sale_id->Show();
        $this->col1->Show();
        $this->Header_end_date->Show();
        $this->Sorter_end_date->Show();
        $this->col2->Show();
        $this->Header_end_time->Show();
        $this->Sorter_end_time->Show();
        $this->col3->Show();
        $this->Header_pump_id->Show();
        $this->Sorter_pump_id->Show();
        $this->col4->Show();
        $this->Header_hose_id->Show();
        $this->Sorter_hose_id->Show();
        $this->col5->Show();
        $this->Header_id->Show();
        $this->Sorter_id->Show();
        $this->col6->Show();
        $this->Header_volume->Show();
        $this->Sorter_volume->Show();
        $this->col7->Show();
        $this->Header_ppu->Show();
        $this->Sorter_ppu->Show();
        $this->col8->Show();
        $this->Header_money->Show();
        $this->Sorter_money->Show();
        $this->col9->Show();
        $this->Header_sale_type->Show();
        $this->Sorter_sale_type->Show();
        $this->col10->Show();
        $this->Header_pay_payment_type->Show();
        $this->Sorter_pay_payment_type->Show();
        $this->col11->Show();
        $this->lblTotalFooter->Show();
        $this->Report_CurrentDateTime->Show();
        $this->Report_CurrentPage->Show();
        $this->Report_TotalPages->Show();
        $this->Navigator->Show();
        $this->PageBreak->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @179-1E4D4E4E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->sale_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->hose_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ppu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sale_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pay_payment_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End config_values_ssf_addin_p Class @179-FCB6E20C

class clsconfig_values_ssf_addin_pDataSource extends clsDBConnection1 {  //config_values_ssf_addin_pDataSource Class @179-53129898

//DataSource Variables @179-F75425B1
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $sale_id;
    public $end_date;
    public $end_time;
    public $pump_id;
    public $hose_id;
    public $id;
    public $volume;
    public $ppu;
    public $money;
    public $sale_type;
    public $pay_payment_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @179-3963F6FF
    function clsconfig_values_ssf_addin_pDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid config_values_ssf_addin_p";
        $this->Initialize();
        $this->sale_id = new clsField("sale_id", ccsInteger, "");
        $this->end_date = new clsField("end_date", ccsText, "");
        $this->end_time = new clsField("end_time", ccsText, "");
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->hose_id = new clsField("hose_id", ccsInteger, "");
        $this->id = new clsField("id", ccsText, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->ppu = new clsField("ppu", ccsFloat, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->sale_type = new clsField("sale_type", ccsInteger, "");
        $this->pay_payment_type = new clsField("pay_payment_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @179-33933E2D
    function SetOrder($SorterName, $SorterDirection)
    {
    $this->Order = "sale_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_sale_id" => array("sale_id", ""), 
            "Sorter_end_date" => array("end_date", ""), 
            "Sorter_end_time" => array("end_time", ""), 
            "Sorter_pump_id" => array("pump_id", ""), 
            "Sorter_hose_id" => array("hose_id", ""), 
            "Sorter_id" => array("id", ""), 
            "Sorter_volume" => array("volume", ""), 
            "Sorter_ppu" => array("ppu", ""), 
            "Sorter_money" => array("money", ""), 
            "Sorter_sale_type" => array("sale_type", ""), 
            "Sorter_pay_payment_type" => array("pay_payment_type", "")));
    }
//End SetOrder Method

//Prepare Method @179-AB17932D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urlp_sale_start", ccsInteger, "", "", $this->Parameters["urlp_sale_start"], "", false);
        $this->wp->AddParameter("4", "urlp_sale_end", ccsInteger, "", "", $this->Parameters["urlp_sale_end"], "", false);
        $this->wp->AddParameter("5", "urls_grade_id", ccsInteger, "", "", $this->Parameters["urls_grade_id"], "", false);
        $this->wp->AddParameter("6", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], "", false);
        $this->wp->AddParameter("7", "urls_sale_type", ccsInteger, "", "", $this->Parameters["urls_sale_type"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "ssf_pump_sales.end_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.sale_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsInteger),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opLessThanOrEqual, "ssf_pump_sales.sale_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
        $this->wp->Criterion[5] = $this->wp->Operation(opEqual, "ssf_pump_sales.grade_id", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsInteger),false);
        $this->wp->Criterion[6] = $this->wp->Operation(opEqual, "ssf_pump_sales.pump_id", $this->wp->GetDBValue("6"), $this->ToSQL($this->wp->GetDBValue("6"), ccsInteger),false);
        $this->wp->Criterion[7] = $this->wp->Operation(opEqual, "ssf_pump_sales.sale_type", $this->wp->GetDBValue("7"), $this->ToSQL($this->wp->GetDBValue("7"), ccsInteger),false);
        $this->wp->Criterion[8] = "config_values.library = 'grade' ";
        $this->wp->Criterion[9] = "config_values.groupname = 'general'";
        $this->wp->Criterion[10] = "config_values.parameter = 'number'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
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
             $this->wp->Criterion[8]), 
             $this->wp->Criterion[9]), 
             $this->wp->Criterion[10]);
    }
//End Prepare Method

//Open Method @179-CAD03A97
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_addin_payments_data ON\n\n" .
        "ssf_pump_sales.sale_id = ssf_addin_payments_data.pay_sale_id) INNER JOIN config_values ON\n\n" .
        "ssf_pump_sales.grade_id = config_values.param_value";
        $this->SQL = "SELECT sale_id, end_date, end_time, pump_id, hose_id, grade_id, volume, money, ppu, sale_type, pay_payment_type, id \n\n" .
        "FROM (ssf_pump_sales INNER JOIN ssf_addin_payments_data ON\n\n" .
        "ssf_pump_sales.sale_id = ssf_addin_payments_data.pay_sale_id) INNER JOIN config_values ON\n\n" .
        "ssf_pump_sales.grade_id = config_values.param_value {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @179-E6F1C357
    function SetValues()
    {
        $this->sale_id->SetDBValue(trim($this->f("sale_id")));
        $this->end_date->SetDBValue($this->f("end_date"));
        $this->end_time->SetDBValue($this->f("end_time"));
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->hose_id->SetDBValue(trim($this->f("hose_id")));
        $this->id->SetDBValue($this->f("id"));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->ppu->SetDBValue(trim($this->f("ppu")));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->sale_type->SetDBValue(trim($this->f("sale_type")));
        $this->pay_payment_type->SetDBValue($this->f("pay_payment_type"));
    }
//End SetValues Method

} //End config_values_ssf_addin_pDataSource Class @179-FCB6E20C

//Initialize Page @1-73CEE6A1
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "SSFTransactionsReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-76C476FC
include("./SSFTransactionsReport_events.php");
//End Include events file

//Initialize Objects @1-B300F5C8
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;

// Controls
$SSFSpiritHeader = & new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_pump_salesSearch = & new clsRecordssf_pump_salesSearch("", $MainPage);
$lnkExcel = & new clsControl(ccsLink, "lnkExcel", "lnkExcel", ccsText, "", CCGetRequestParam("lnkExcel", ccsGet, NULL), $MainPage);
$lnkExcel->HTML = true;
$lnkExcel->Page = "SSFTransactionsReport.php";
$btnPrint = & new clsButton("btnPrint", ccsGet, $MainPage);
$config_values_ssf_addin_p = & new clsGridconfig_values_ssf_addin_p("", $MainPage);
$lblPrintTable = & new clsControl(ccsLabel, "lblPrintTable", "lblPrintTable", ccsText, "", CCGetRequestParam("lblPrintTable", ccsGet, NULL), $MainPage);
$lblPrintTable->HTML = true;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_pump_salesSearch = & $ssf_pump_salesSearch;
$MainPage->lnkExcel = & $lnkExcel;
$MainPage->btnPrint = & $btnPrint;
$MainPage->config_values_ssf_addin_p = & $config_values_ssf_addin_p;
$lnkExcel->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "export", "1");
$lnkExcel->Parameters = CCAddParam($lnkExcel->Parameters, "ViewMode", "Print");
$MainPage->lblPrintTable = & $lblPrintTable;
$config_values_ssf_addin_p->Initialize();

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

$Charset = $Charset ? $Charset : "windows-1252";
if ($Charset)
    header("Content-Type: text/html; charset=" . $Charset);
//End Initialize Objects

//Initialize HTML Template @1-BD9757D3
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
$Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
//End Initialize HTML Template

//Execute Components @1-635A0474
$SSFSpiritHeader->Operations();
$ssf_pump_salesSearch->Operation();
//End Execute Components

//Go to destination page @1-8EAA9ED3
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_pump_salesSearch);
    unset($config_values_ssf_addin_p);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-DFFC346C
$SSFSpiritHeader->Show();
$ssf_pump_salesSearch->Show();
$btnPrint->Show();
$config_values_ssf_addin_p->Show();
$lnkExcel->Show();
$lblPrintTable->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-342D1AA0
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_pump_salesSearch);
unset($config_values_ssf_addin_p);
unset($Tpl);
//End Unload Page


?>
