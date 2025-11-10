<?php
//Include Common Files @1-6ABB096B
define("RelativePath", "../../..");
define("PathToCurrentPage", "/POS/Reports/Customizations/");
define("FileName", "SSFBitacoraDeTransacciones.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @36-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//Include Page implementation @38-001F6686
include_once(RelativePath . "/Reports/SSFReportSiteDataHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_trx_headerSearch { //ssf_tkt_trx_headerSearch Class @3-E9DE5305

//Variables @3-9E315808

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

//Class_Initialize Event @3-C635460F
    function clsRecordssf_tkt_trx_headerSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_trx_headerSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_trx_headerSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_date = new clsControl(ccsTextBox, "s_tkt_date", "s_tkt_date", ccsText, "", CCGetRequestParam("s_tkt_date", $Method, NULL), $this);
            $this->DatePicker_s_tkt_date1 = new clsDatePicker("DatePicker_s_tkt_date1", "ssf_tkt_trx_headerSearch", "s_tkt_date", $this);
            $this->s_tkt_date_to = new clsControl(ccsTextBox, "s_tkt_date_to", "s_tkt_date_to", ccsText, "", CCGetRequestParam("s_tkt_date_to", $Method, NULL), $this);
            $this->DatePicker_s_tkt_date_to1 = new clsDatePicker("DatePicker_s_tkt_date_to1", "ssf_tkt_trx_headerSearch", "s_tkt_date_to", $this);
            $this->s_tkt_receipt_group = new clsControl(ccsListBox, "s_tkt_receipt_group", "s_tkt_receipt_group", ccsText, "", CCGetRequestParam("s_tkt_receipt_group", $Method, NULL), $this);
            $this->s_tkt_receipt_group->DSType = dsTable;
            list($this->s_tkt_receipt_group->BoundColumn, $this->s_tkt_receipt_group->TextColumn, $this->s_tkt_receipt_group->DBFormat) = array("tkt_receipt_group", "tkt_receipt_group", "");
            $this->s_tkt_receipt_group->DataSource = new clsDBConnection1();
            $this->s_tkt_receipt_group->ds = & $this->s_tkt_receipt_group->DataSource;
            $this->s_tkt_receipt_group->DataSource->SQL = "SELECT distinct tkt_receipt_group AS tkt_receipt_group \n" .
"FROM ssf_tkt_trx_header {SQL_Where} {SQL_OrderBy}";
            $this->s_tkt_type = new clsControl(ccsListBox, "s_tkt_type", "s_tkt_type", ccsText, "", CCGetRequestParam("s_tkt_type", $Method, NULL), $this);
            $this->s_tkt_type->DSType = dsListOfValues;
            $this->s_tkt_type->Values = array(array("INVOICE", "Facturas"), array("CREDIT", "Notas de Crédito"));
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @3-89A9BC44
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_date->Validate() && $Validation);
        $Validation = ($this->s_tkt_date_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_receipt_group->Validate() && $Validation);
        $Validation = ($this->s_tkt_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_receipt_group->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-C78227DD
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_tkt_date1->Errors->Count());
        $errors = ($errors || $this->s_tkt_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_tkt_date_to1->Errors->Count());
        $errors = ($errors || $this->s_tkt_receipt_group->Errors->Count());
        $errors = ($errors || $this->s_tkt_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-6A933AB5
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
        $Redirect = "SSFBitacoraDeTransacciones.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFBitacoraDeTransacciones.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-3CB8E994
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tkt_receipt_group->Prepare();
        $this->s_tkt_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tkt_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_tkt_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_tkt_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_receipt_group->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tkt_type->Errors->ToString());
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

        $this->s_tkt_date->Show();
        $this->DatePicker_s_tkt_date1->Show();
        $this->s_tkt_date_to->Show();
        $this->DatePicker_s_tkt_date_to1->Show();
        $this->s_tkt_receipt_group->Show();
        $this->s_tkt_type->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_trx_headerSearch Class @3-FCB6E20C

//ssf_tkt_trx_header ReportGroup class @2-CA1F5403
class clsReportGroupssf_tkt_trx_header {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $tkt_receipt_group, $_tkt_receipt_groupAttributes;
    public $tkt_receipt_number, $_tkt_receipt_numberAttributes;
    public $tkt_date, $_tkt_dateAttributes;
    public $tkt_total_amount, $_tkt_total_amountAttributes;
    public $tkt_type, $_tkt_typeAttributes;
    public $tkt_refunded, $_tkt_refundedAttributes;
    public $TotalSum_tkt_total_amount, $_TotalSum_tkt_total_amountAttributes;
    public $Report_CurrentDate, $_Report_CurrentDateAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_trx_header(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_receipt_group = $this->Parent->tkt_receipt_group->Value;
        $this->tkt_receipt_number = $this->Parent->tkt_receipt_number->Value;
        $this->tkt_date = $this->Parent->tkt_date->Value;
        $this->tkt_total_amount = $this->Parent->tkt_total_amount->Value;
        $this->tkt_type = $this->Parent->tkt_type->Value;
        $this->tkt_refunded = $this->Parent->tkt_refunded->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetTotalValue($mode);
        $this->_Sorter_tkt_receipt_groupAttributes = $this->Parent->Sorter_tkt_receipt_group->Attributes->GetAsArray();
        $this->_Sorter_tkt_receipt_numberAttributes = $this->Parent->Sorter_tkt_receipt_number->Attributes->GetAsArray();
        $this->_Sorter_tkt_dateAttributes = $this->Parent->Sorter_tkt_date->Attributes->GetAsArray();
        $this->_Sorter_tkt_total_amountAttributes = $this->Parent->Sorter_tkt_total_amount->Attributes->GetAsArray();
        $this->_Sorter1Attributes = $this->Parent->Sorter1->Attributes->GetAsArray();
        $this->_Sorter_tkt_refundedAttributes = $this->Parent->Sorter_tkt_refunded->Attributes->GetAsArray();
        $this->_tkt_receipt_groupAttributes = $this->Parent->tkt_receipt_group->Attributes->GetAsArray();
        $this->_tkt_receipt_numberAttributes = $this->Parent->tkt_receipt_number->Attributes->GetAsArray();
        $this->_tkt_dateAttributes = $this->Parent->tkt_date->Attributes->GetAsArray();
        $this->_tkt_total_amountAttributes = $this->Parent->tkt_total_amount->Attributes->GetAsArray();
        $this->_tkt_typeAttributes = $this->Parent->tkt_type->Attributes->GetAsArray();
        $this->_tkt_refundedAttributes = $this->Parent->tkt_refunded->Attributes->GetAsArray();
        $this->_TotalSum_tkt_total_amountAttributes = $this->Parent->TotalSum_tkt_total_amount->Attributes->GetAsArray();
        $this->_Report_CurrentDateAttributes = $this->Parent->Report_CurrentDate->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_tkt_total_amount = $this->TotalSum_tkt_total_amount;
        $Header->_TotalSum_tkt_total_amountAttributes = $this->_TotalSum_tkt_total_amountAttributes;
        $this->tkt_receipt_group = $Header->tkt_receipt_group;
        $Header->_tkt_receipt_groupAttributes = $this->_tkt_receipt_groupAttributes;
        $this->Parent->tkt_receipt_group->Value = $Header->tkt_receipt_group;
        $this->Parent->tkt_receipt_group->Attributes->RestoreFromArray($Header->_tkt_receipt_groupAttributes);
        $this->tkt_receipt_number = $Header->tkt_receipt_number;
        $Header->_tkt_receipt_numberAttributes = $this->_tkt_receipt_numberAttributes;
        $this->Parent->tkt_receipt_number->Value = $Header->tkt_receipt_number;
        $this->Parent->tkt_receipt_number->Attributes->RestoreFromArray($Header->_tkt_receipt_numberAttributes);
        $this->tkt_date = $Header->tkt_date;
        $Header->_tkt_dateAttributes = $this->_tkt_dateAttributes;
        $this->Parent->tkt_date->Value = $Header->tkt_date;
        $this->Parent->tkt_date->Attributes->RestoreFromArray($Header->_tkt_dateAttributes);
        $this->tkt_total_amount = $Header->tkt_total_amount;
        $Header->_tkt_total_amountAttributes = $this->_tkt_total_amountAttributes;
        $this->Parent->tkt_total_amount->Value = $Header->tkt_total_amount;
        $this->Parent->tkt_total_amount->Attributes->RestoreFromArray($Header->_tkt_total_amountAttributes);
        $this->tkt_type = $Header->tkt_type;
        $Header->_tkt_typeAttributes = $this->_tkt_typeAttributes;
        $this->Parent->tkt_type->Value = $Header->tkt_type;
        $this->Parent->tkt_type->Attributes->RestoreFromArray($Header->_tkt_typeAttributes);
        $this->tkt_refunded = $Header->tkt_refunded;
        $Header->_tkt_refundedAttributes = $this->_tkt_refundedAttributes;
        $this->Parent->tkt_refunded->Value = $Header->tkt_refunded;
        $this->Parent->tkt_refunded->Attributes->RestoreFromArray($Header->_tkt_refundedAttributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_tkt_total_amount = $this->Parent->TotalSum_tkt_total_amount->GetValue();
    }
}
//End ssf_tkt_trx_header ReportGroup class

//ssf_tkt_trx_header GroupsCollection class @2-F4787448
class clsGroupsCollectionssf_tkt_trx_header {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_trx_header(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_trx_header($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->tkt_receipt_group->Value = $this->Parent->tkt_receipt_group->initialValue;
        $this->Parent->tkt_receipt_number->Value = $this->Parent->tkt_receipt_number->initialValue;
        $this->Parent->tkt_date->Value = $this->Parent->tkt_date->initialValue;
        $this->Parent->tkt_total_amount->Value = $this->Parent->tkt_total_amount->initialValue;
        $this->Parent->tkt_type->Value = $this->Parent->tkt_type->initialValue;
        $this->Parent->tkt_refunded->Value = $this->Parent->tkt_refunded->initialValue;
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
//End ssf_tkt_trx_header GroupsCollection class

class clsReportssf_tkt_trx_header { //ssf_tkt_trx_header Class @2-62981CBD

//ssf_tkt_trx_header Variables @2-B73A806A

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
    public $Sorter_tkt_receipt_group;
    public $Sorter_tkt_receipt_number;
    public $Sorter_tkt_date;
    public $Sorter_tkt_total_amount;
    public $Sorter1;
    public $Sorter_tkt_refunded;
//End ssf_tkt_trx_header Variables

//Class_Initialize Event @2-907352C4
    function clsReportssf_tkt_trx_header($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_trx_header";
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
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_trx_headerDataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 0;
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
        $this->SorterName = CCGetParam("ssf_tkt_trx_headerOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_trx_headerDir", "");

        $this->Sorter_tkt_receipt_group = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_group", $FileName, $this);
        $this->Sorter_tkt_receipt_number = new clsSorter($this->ComponentName, "Sorter_tkt_receipt_number", $FileName, $this);
        $this->Sorter_tkt_date = new clsSorter($this->ComponentName, "Sorter_tkt_date", $FileName, $this);
        $this->Sorter_tkt_total_amount = new clsSorter($this->ComponentName, "Sorter_tkt_total_amount", $FileName, $this);
        $this->Sorter1 = new clsSorter($this->ComponentName, "Sorter1", $FileName, $this);
        $this->Sorter_tkt_refunded = new clsSorter($this->ComponentName, "Sorter_tkt_refunded", $FileName, $this);
        $this->tkt_receipt_group = new clsControl(ccsReportLabel, "tkt_receipt_group", "tkt_receipt_group", ccsText, "", "", $this);
        $this->tkt_receipt_number = new clsControl(ccsReportLabel, "tkt_receipt_number", "tkt_receipt_number", ccsInteger, "", "", $this);
        $this->tkt_date = new clsControl(ccsReportLabel, "tkt_date", "tkt_date", ccsText, "", "", $this);
        $this->tkt_total_amount = new clsControl(ccsReportLabel, "tkt_total_amount", "tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "Q", "", 1, True, ""), "", $this);
        $this->tkt_type = new clsControl(ccsReportLabel, "tkt_type", "tkt_type", ccsText, "", "", $this);
        $this->tkt_refunded = new clsControl(ccsReportLabel, "tkt_refunded", "tkt_refunded", ccsText, "", "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_tkt_total_amount = new clsControl(ccsReportLabel, "TotalSum_tkt_total_amount", "TotalSum_tkt_total_amount", ccsFloat, array(False, 2, Null, "", False, "Q", "", 1, True, ""), "", $this);
        $this->TotalSum_tkt_total_amount->TotalFunction = "Sum";
        $this->Report_CurrentDate = new clsControl(ccsReportLabel, "Report_CurrentDate", "Report_CurrentDate", ccsText, array('ShortDate'), "", $this);
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

//CheckErrors Method @2-41855FED
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_receipt_group->Errors->Count());
        $errors = ($errors || $this->tkt_receipt_number->Errors->Count());
        $errors = ($errors || $this->tkt_date->Errors->Count());
        $errors = ($errors || $this->tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->tkt_type->Errors->Count());
        $errors = ($errors || $this->tkt_refunded->Errors->Count());
        $errors = ($errors || $this->TotalSum_tkt_total_amount->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDate->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @2-5B417B73
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_receipt_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_receipt_number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_refunded->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_tkt_total_amount->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDate->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @2-3861B30E
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tkt_date"] = CCGetFromGet("s_tkt_date", NULL);
        $this->DataSource->Parameters["urls_tkt_date_to"] = CCGetFromGet("s_tkt_date_to", NULL);
        $this->DataSource->Parameters["urls_tkt_receipt_group"] = CCGetFromGet("s_tkt_receipt_group", NULL);
        $this->DataSource->Parameters["urls_tkt_type"] = CCGetFromGet("s_tkt_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_trx_header($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_receipt_group->SetValue($this->DataSource->tkt_receipt_group->GetValue());
            $this->tkt_receipt_number->SetValue($this->DataSource->tkt_receipt_number->GetValue());
            $this->tkt_date->SetValue($this->DataSource->tkt_date->GetValue());
            $this->tkt_total_amount->SetValue($this->DataSource->tkt_total_amount->GetValue());
            $this->tkt_type->SetValue($this->DataSource->tkt_type->GetValue());
            $this->tkt_refunded->SetValue($this->DataSource->tkt_refunded->GetValue());
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
            $this->ControlsVisible["tkt_receipt_group"] = $this->tkt_receipt_group->Visible;
            $this->ControlsVisible["tkt_receipt_number"] = $this->tkt_receipt_number->Visible;
            $this->ControlsVisible["tkt_date"] = $this->tkt_date->Visible;
            $this->ControlsVisible["tkt_total_amount"] = $this->tkt_total_amount->Visible;
            $this->ControlsVisible["tkt_type"] = $this->tkt_type->Visible;
            $this->ControlsVisible["tkt_refunded"] = $this->tkt_refunded->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_receipt_group->SetValue($items[$i]->tkt_receipt_group);
                        $this->tkt_receipt_group->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_groupAttributes);
                        $this->tkt_receipt_number->SetValue($items[$i]->tkt_receipt_number);
                        $this->tkt_receipt_number->Attributes->RestoreFromArray($items[$i]->_tkt_receipt_numberAttributes);
                        $this->tkt_date->SetValue($items[$i]->tkt_date);
                        $this->tkt_date->Attributes->RestoreFromArray($items[$i]->_tkt_dateAttributes);
                        $this->tkt_total_amount->SetValue($items[$i]->tkt_total_amount);
                        $this->tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_tkt_total_amountAttributes);
                        $this->tkt_type->SetValue($items[$i]->tkt_type);
                        $this->tkt_type->Attributes->RestoreFromArray($items[$i]->_tkt_typeAttributes);
                        $this->tkt_refunded->SetValue($items[$i]->tkt_refunded);
                        $this->tkt_refunded->Attributes->RestoreFromArray($items[$i]->_tkt_refundedAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_receipt_group->Show();
                        $this->tkt_receipt_number->Show();
                        $this->tkt_date->Show();
                        $this->tkt_total_amount->Show();
                        $this->tkt_type->Show();
                        $this->tkt_refunded->Show();
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
                            $this->TotalSum_tkt_total_amount->SetText(CCFormatNumber($items[$i]->TotalSum_tkt_total_amount, array(False, 2, Null, "", False, "Q", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_tkt_total_amount->Attributes->RestoreFromArray($items[$i]->_TotalSum_tkt_total_amountAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
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
                                $this->Sorter_tkt_receipt_group->Show();
                                $this->Sorter_tkt_receipt_number->Show();
                                $this->Sorter_tkt_date->Show();
                                $this->Sorter_tkt_total_amount->Show();
                                $this->Sorter1->Show();
                                $this->Sorter_tkt_refunded->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->PageBreak->Visible = (($i < count($items) - 1) && ($this->ViewMode == "Print"));
                            $this->Report_CurrentDate->SetValue(CCFormatDate(CCGetDateArray(), $this->Report_CurrentDate->Format));
                            $this->Report_CurrentDate->Attributes->RestoreFromArray($items[$i]->_Report_CurrentDateAttributes);
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Report_CurrentDate->Show();
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

} //End ssf_tkt_trx_header Class @2-FCB6E20C

class clsssf_tkt_trx_headerDataSource extends clsDBConnection1 {  //ssf_tkt_trx_headerDataSource Class @2-F9A23E5F

//DataSource Variables @2-F8F3B2C9
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_receipt_group;
    public $tkt_receipt_number;
    public $tkt_date;
    public $tkt_total_amount;
    public $tkt_type;
    public $tkt_refunded;
    public $TotalSum_tkt_total_amount;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-E108F9B4
    function clsssf_tkt_trx_headerDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_trx_header";
        $this->Initialize();
        $this->tkt_receipt_group = new clsField("tkt_receipt_group", ccsText, "");
        $this->tkt_receipt_number = new clsField("tkt_receipt_number", ccsInteger, "");
        $this->tkt_date = new clsField("tkt_date", ccsText, "");
        $this->tkt_total_amount = new clsField("tkt_total_amount", ccsFloat, "");
        $this->tkt_type = new clsField("tkt_type", ccsText, "");
        $this->tkt_refunded = new clsField("tkt_refunded", ccsText, "");
        $this->TotalSum_tkt_total_amount = new clsField("TotalSum_tkt_total_amount", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-F5A85AE8
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_receipt_group, tkt_receipt_number";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_receipt_group" => array("tkt_receipt_group", ""), 
            "Sorter_tkt_receipt_number" => array("tkt_receipt_number", ""), 
            "Sorter_tkt_date" => array("tkt_date", ""), 
            "Sorter_tkt_total_amount" => array("tkt_total_amount", ""), 
            "Sorter1" => array("tkt_type", ""), 
            "Sorter_tkt_refunded" => array("tkt_refunded", "")));
    }
//End SetOrder Method

//Prepare Method @2-98BDA245
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_date", ccsText, "", "", $this->Parameters["urls_tkt_date"], "", false);
        $this->wp->AddParameter("2", "urls_tkt_date_to", ccsText, "", "", $this->Parameters["urls_tkt_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_receipt_group", ccsText, "", "", $this->Parameters["urls_tkt_receipt_group"], "", false);
        $this->wp->AddParameter("4", "urls_tkt_type", ccsText, "", "", $this->Parameters["urls_tkt_type"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "tkt_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "tkt_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "tkt_receipt_group", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opContains, "tkt_type", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]);
    }
//End Prepare Method

//Open Method @2-D66AEE7A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_trx_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-31AC8FBA
    function SetValues()
    {
        $this->tkt_receipt_group->SetDBValue($this->f("tkt_receipt_group"));
        $this->tkt_receipt_number->SetDBValue(trim($this->f("tkt_receipt_number")));
        $this->tkt_date->SetDBValue($this->f("tkt_date"));
        $this->tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
        $this->tkt_type->SetDBValue($this->f("tkt_type"));
        $this->tkt_refunded->SetDBValue($this->f("tkt_refunded"));
        $this->TotalSum_tkt_total_amount->SetDBValue(trim($this->f("tkt_total_amount")));
    }
//End SetValues Method

} //End ssf_tkt_trx_headerDataSource Class @2-FCB6E20C

//Initialize Page @1-2433D6BD
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
$TemplateFileName = "SSFBitacoraDeTransacciones.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../../";
//End Initialize Page

//Authenticate User @1-7B750A97
CCSecurityRedirect("", "../../../Security/Login.php");
//End Authenticate User

//Include events file @1-6D5801D4
include("./SSFBitacoraDeTransacciones_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-1E318F93
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$SSFReportSiteDataHeader = new clsSSFReportSiteDataHeader("../../../Reports/", "SSFReportSiteDataHeader", $MainPage);
$SSFReportSiteDataHeader->Initialize();
$ssf_tkt_trx_headerSearch = new clsRecordssf_tkt_trx_headerSearch("", $MainPage);
$Report_Print = new clsControl(ccsLink, "Report_Print", "Report_Print", ccsText, "", CCGetRequestParam("Report_Print", ccsGet, NULL), $MainPage);
$Report_Print->Page = "SSFBitacoraDeTransacciones.php";
$ssf_tkt_trx_header = new clsReportssf_tkt_trx_header("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->SSFReportSiteDataHeader = & $SSFReportSiteDataHeader;
$MainPage->ssf_tkt_trx_headerSearch = & $ssf_tkt_trx_headerSearch;
$MainPage->Report_Print = & $Report_Print;
$MainPage->ssf_tkt_trx_header = & $ssf_tkt_trx_header;
$Report_Print->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Report_Print->Parameters = CCAddParam($Report_Print->Parameters, "ViewMode", "Print");
$ssf_tkt_trx_header->Initialize();

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

//Execute Components @1-52E84D3C
$SSFSpiritHeader->Operations();
$SSFReportSiteDataHeader->Operations();
$ssf_tkt_trx_headerSearch->Operation();
//End Execute Components

//Go to destination page @1-AD7AC9AC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    $SSFReportSiteDataHeader->Class_Terminate();
    unset($SSFReportSiteDataHeader);
    unset($ssf_tkt_trx_headerSearch);
    unset($ssf_tkt_trx_header);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-0131BE4F
$SSFSpiritHeader->Show();
$SSFReportSiteDataHeader->Show();
$ssf_tkt_trx_headerSearch->Show();
$ssf_tkt_trx_header->Show();
$Report_Print->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-AC979E54
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
$SSFReportSiteDataHeader->Class_Terminate();
unset($SSFReportSiteDataHeader);
unset($ssf_tkt_trx_headerSearch);
unset($ssf_tkt_trx_header);
unset($Tpl);
//End Unload Page


?>
