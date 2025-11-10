<?php
//Include Common Files @1-D6F7A7D3
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketPricesReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_pricesSearch { //ssf_tkt_pricesSearch Class @5-2FCD91BC

//Variables @5-9E315808

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

//Class_Initialize Event @5-B63D7CB9
    function clsRecordssf_tkt_pricesSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_pricesSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_pricesSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "ssf_tkt_pricesSearch", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_tkt_pricesSearch", "s_date_to", $this);
            $this->s_tkt_price_plu_id = new clsControl(ccsTextBox, "s_tkt_price_plu_id", "s_tkt_price_plu_id", ccsText, "", CCGetRequestParam("s_tkt_price_plu_id", $Method, NULL), $this);
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "../SSFPopProductsList.php";
            $this->s_plu_type = new clsControl(ccsListBox, "s_plu_type", "s_plu_type", ccsText, "", CCGetRequestParam("s_plu_type", $Method, NULL), $this);
            $this->s_plu_type->DSType = dsTable;
            list($this->s_plu_type->BoundColumn, $this->s_plu_type->TextColumn, $this->s_plu_type->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->s_plu_type->DataSource = new clsDBConnection1();
            $this->s_plu_type->ds = & $this->s_plu_type->DataSource;
            $this->s_plu_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->s_plu_type->DataSource->Order = "tkt_catalog_value";
            $this->s_plu_type->DataSource->wp = new clsSQLParameters();
            $this->s_plu_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'product_type'";
            $this->s_plu_type->DataSource->wp->Criterion[2] = "tkt_catalog_code not in ('F')";
            $this->s_plu_type->DataSource->Where = $this->s_plu_type->DataSource->wp->opAND(
                 false, 
                 $this->s_plu_type->DataSource->wp->Criterion[1], 
                 $this->s_plu_type->DataSource->wp->Criterion[2]);
            $this->s_plu_type->DataSource->Order = "tkt_catalog_value";
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTicketPricesReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @5-A05FABB1
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->s_tkt_price_plu_id->Validate() && $Validation);
        $Validation = ($this->s_plu_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tkt_price_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_plu_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @5-14ED6F22
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->s_tkt_price_plu_id->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->s_plu_type->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @5-A67D89E9
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
        $Redirect = "SSFTicketPricesReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketPricesReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @5-DA249817
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_plu_type->Prepare();

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
            $Error = ComposeStrings($Error, $this->s_tkt_price_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_plu_type->Errors->ToString());
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
        $this->s_tkt_price_plu_id->Show();
        $this->Link2->Show();
        $this->s_plu_type->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_pricesSearch Class @5-FCB6E20C

//ssf_tkt_prices ReportGroup class @3-61C53E9D
class clsReportGroupssf_tkt_prices {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_price_plu_id, $_tkt_price_plu_idAttributes;
    public $tkt_plu_long_desc, $_tkt_plu_long_descAttributes;
    public $tkt_price_date, $_tkt_price_dateAttributes;
    public $tkt_price_time, $_tkt_price_timeAttributes;
    public $tkt_price_price, $_tkt_price_priceAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_prices(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_price_plu_id = $this->Parent->tkt_price_plu_id->Value;
        $this->tkt_plu_long_desc = $this->Parent->tkt_plu_long_desc->Value;
        $this->tkt_price_date = $this->Parent->tkt_price_date->Value;
        $this->tkt_price_time = $this->Parent->tkt_price_time->Value;
        $this->tkt_price_price = $this->Parent->tkt_price_price->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_price_plu_idAttributes = $this->Parent->Sorter_tkt_price_plu_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_plu_long_descAttributes = $this->Parent->Sorter_tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_Sorter_tkt_price_dateAttributes = $this->Parent->Sorter_tkt_price_date->Attributes->GetAsArray();
        $this->_Sorter_tkt_price_timeAttributes = $this->Parent->Sorter_tkt_price_time->Attributes->GetAsArray();
        $this->_Sorter_tkt_price_priceAttributes = $this->Parent->Sorter_tkt_price_price->Attributes->GetAsArray();
        $this->_tkt_price_plu_idAttributes = $this->Parent->tkt_price_plu_id->Attributes->GetAsArray();
        $this->_tkt_plu_long_descAttributes = $this->Parent->tkt_plu_long_desc->Attributes->GetAsArray();
        $this->_tkt_price_dateAttributes = $this->Parent->tkt_price_date->Attributes->GetAsArray();
        $this->_tkt_price_timeAttributes = $this->Parent->tkt_price_time->Attributes->GetAsArray();
        $this->_tkt_price_priceAttributes = $this->Parent->tkt_price_price->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->tkt_price_plu_id = $Header->tkt_price_plu_id;
        $Header->_tkt_price_plu_idAttributes = $this->_tkt_price_plu_idAttributes;
        $this->Parent->tkt_price_plu_id->Value = $Header->tkt_price_plu_id;
        $this->Parent->tkt_price_plu_id->Attributes->RestoreFromArray($Header->_tkt_price_plu_idAttributes);
        $this->tkt_plu_long_desc = $Header->tkt_plu_long_desc;
        $Header->_tkt_plu_long_descAttributes = $this->_tkt_plu_long_descAttributes;
        $this->Parent->tkt_plu_long_desc->Value = $Header->tkt_plu_long_desc;
        $this->Parent->tkt_plu_long_desc->Attributes->RestoreFromArray($Header->_tkt_plu_long_descAttributes);
        $this->tkt_price_date = $Header->tkt_price_date;
        $Header->_tkt_price_dateAttributes = $this->_tkt_price_dateAttributes;
        $this->Parent->tkt_price_date->Value = $Header->tkt_price_date;
        $this->Parent->tkt_price_date->Attributes->RestoreFromArray($Header->_tkt_price_dateAttributes);
        $this->tkt_price_time = $Header->tkt_price_time;
        $Header->_tkt_price_timeAttributes = $this->_tkt_price_timeAttributes;
        $this->Parent->tkt_price_time->Value = $Header->tkt_price_time;
        $this->Parent->tkt_price_time->Attributes->RestoreFromArray($Header->_tkt_price_timeAttributes);
        $this->tkt_price_price = $Header->tkt_price_price;
        $Header->_tkt_price_priceAttributes = $this->_tkt_price_priceAttributes;
        $this->Parent->tkt_price_price->Value = $Header->tkt_price_price;
        $this->Parent->tkt_price_price->Attributes->RestoreFromArray($Header->_tkt_price_priceAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_tkt_prices ReportGroup class

//ssf_tkt_prices GroupsCollection class @3-7D1E0735
class clsGroupsCollectionssf_tkt_prices {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_prices(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_prices($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_price_plu_id->Value = $this->Parent->tkt_price_plu_id->initialValue;
        $this->Parent->tkt_plu_long_desc->Value = $this->Parent->tkt_plu_long_desc->initialValue;
        $this->Parent->tkt_price_date->Value = $this->Parent->tkt_price_date->initialValue;
        $this->Parent->tkt_price_time->Value = $this->Parent->tkt_price_time->initialValue;
        $this->Parent->tkt_price_price->Value = $this->Parent->tkt_price_price->initialValue;
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
//End ssf_tkt_prices GroupsCollection class

class clsReportssf_tkt_prices { //ssf_tkt_prices Class @3-3E63586D

//ssf_tkt_prices Variables @3-68A90B48

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
    public $Sorter_tkt_price_plu_id;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter_tkt_price_date;
    public $Sorter_tkt_price_time;
    public $Sorter_tkt_price_price;
//End ssf_tkt_prices Variables

//Class_Initialize Event @3-6262031D
    function clsReportssf_tkt_prices($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_prices";
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
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_pricesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_pricesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_pricesDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_price_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_price_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter_tkt_price_date = new clsSorter($this->ComponentName, "Sorter_tkt_price_date", $FileName, $this);
        $this->Sorter_tkt_price_time = new clsSorter($this->ComponentName, "Sorter_tkt_price_time", $FileName, $this);
        $this->Sorter_tkt_price_price = new clsSorter($this->ComponentName, "Sorter_tkt_price_price", $FileName, $this);
        $this->tkt_price_plu_id = new clsControl(ccsReportLabel, "tkt_price_plu_id", "tkt_price_plu_id", ccsText, "", "", $this);
        $this->tkt_price_plu_id->HTML = true;
        $this->tkt_price_plu_id->EmptyText = "&nbsp;";
        $this->tkt_plu_long_desc = new clsControl(ccsReportLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", "", $this);
        $this->tkt_price_date = new clsControl(ccsReportLabel, "tkt_price_date", "tkt_price_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->tkt_price_date->HTML = true;
        $this->tkt_price_date->EmptyText = "&nbsp;";
        $this->tkt_price_time = new clsControl(ccsReportLabel, "tkt_price_time", "tkt_price_time", ccsDate, array("HH", ":", "nn", ":", "ss"), "", $this);
        $this->tkt_price_time->HTML = true;
        $this->tkt_price_time->EmptyText = "&nbsp;";
        $this->tkt_price_price = new clsControl(ccsReportLabel, "tkt_price_price", "tkt_price_price", ccsFloat, array(False, 2, Null, "", False, "\$ ", "", 1, True, ""), "", $this);
        $this->tkt_price_price->HTML = true;
        $this->tkt_price_price->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-BAD586AE
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_price_plu_id->Errors->Count());
        $errors = ($errors || $this->tkt_plu_long_desc->Errors->Count());
        $errors = ($errors || $this->tkt_price_date->Errors->Count());
        $errors = ($errors || $this->tkt_price_time->Errors->Count());
        $errors = ($errors || $this->tkt_price_price->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-F4491173
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_price_price->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-EFDD630A
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_tkt_price_plu_id"] = CCGetFromGet("s_tkt_price_plu_id", NULL);
        $this->DataSource->Parameters["urls_plu_type"] = CCGetFromGet("s_plu_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_prices($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_price_plu_id->SetValue($this->DataSource->tkt_price_plu_id->GetValue());
            $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
            $this->tkt_price_date->SetValue($this->DataSource->tkt_price_date->GetValue());
            $this->tkt_price_time->SetValue($this->DataSource->tkt_price_time->GetValue());
            $this->tkt_price_price->SetValue($this->DataSource->tkt_price_price->GetValue());
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
            $this->ControlsVisible["tkt_price_plu_id"] = $this->tkt_price_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["tkt_price_date"] = $this->tkt_price_date->Visible;
            $this->ControlsVisible["tkt_price_time"] = $this->tkt_price_time->Visible;
            $this->ControlsVisible["tkt_price_price"] = $this->tkt_price_price->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_price_plu_id->SetValue($items[$i]->tkt_price_plu_id);
                        $this->tkt_price_plu_id->Attributes->RestoreFromArray($items[$i]->_tkt_price_plu_idAttributes);
                        $this->tkt_plu_long_desc->SetValue($items[$i]->tkt_plu_long_desc);
                        $this->tkt_plu_long_desc->Attributes->RestoreFromArray($items[$i]->_tkt_plu_long_descAttributes);
                        $this->tkt_price_date->SetValue($items[$i]->tkt_price_date);
                        $this->tkt_price_date->Attributes->RestoreFromArray($items[$i]->_tkt_price_dateAttributes);
                        $this->tkt_price_time->SetValue($items[$i]->tkt_price_time);
                        $this->tkt_price_time->Attributes->RestoreFromArray($items[$i]->_tkt_price_timeAttributes);
                        $this->tkt_price_price->SetValue($items[$i]->tkt_price_price);
                        $this->tkt_price_price->Attributes->RestoreFromArray($items[$i]->_tkt_price_priceAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_price_plu_id->Show();
                        $this->tkt_plu_long_desc->Show();
                        $this->tkt_price_date->Show();
                        $this->tkt_price_time->Show();
                        $this->tkt_price_price->Show();
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
                                $this->Sorter_tkt_price_plu_id->Show();
                                $this->Sorter_tkt_plu_long_desc->Show();
                                $this->Sorter_tkt_price_date->Show();
                                $this->Sorter_tkt_price_time->Show();
                                $this->Sorter_tkt_price_price->Show();
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

} //End ssf_tkt_prices Class @3-FCB6E20C

class clsssf_tkt_pricesDataSource extends clsDBConnection1 {  //ssf_tkt_pricesDataSource Class @3-C9853DA0

//DataSource Variables @3-E0F7238E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_price_plu_id;
    public $tkt_plu_long_desc;
    public $tkt_price_date;
    public $tkt_price_time;
    public $tkt_price_price;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-3F20F2E2
    function clsssf_tkt_pricesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_prices";
        $this->Initialize();
        $this->tkt_price_plu_id = new clsField("tkt_price_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_price_date = new clsField("tkt_price_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_price_time = new clsField("tkt_price_time", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_price_price = new clsField("tkt_price_price", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-ED803BFE
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_prices.tkt_price_plu_id desc, ssf_tkt_prices.tkt_price_date desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_price_plu_id" => array("tkt_price_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_price_date" => array("tkt_price_date", ""), 
            "Sorter_tkt_price_time" => array("tkt_price_time", ""), 
            "Sorter_tkt_price_price" => array("tkt_price_price", "")));
    }
//End SetOrder Method

//Prepare Method @3-EDA7513A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_tkt_price_plu_id", ccsText, "", "", $this->Parameters["urls_tkt_price_plu_id"], "", false);
        $this->wp->AddParameter("4", "urls_plu_type", ccsText, "", "", $this->Parameters["urls_plu_type"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_tkt_prices.tkt_price_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "ssf_tkt_prices.tkt_price_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "ssf_tkt_prices.tkt_price_plu_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "ssf_tkt_plu.tkt_plu_type", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsText),false);
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

//Open Method @3-E475BA5C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tkt_prices.*, tkt_plu_long_desc \n\n" .
        "FROM ssf_tkt_prices INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_prices.tkt_price_plu_id = ssf_tkt_plu.tkt_plu_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-AB2E63FA
    function SetValues()
    {
        $this->tkt_price_plu_id->SetDBValue($this->f("tkt_price_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_price_date->SetDBValue(trim($this->f("tkt_price_date")));
        $this->tkt_price_time->SetDBValue(trim($this->f("tkt_price_time")));
        $this->tkt_price_price->SetDBValue(trim($this->f("tkt_price_price")));
    }
//End SetValues Method

} //End ssf_tkt_pricesDataSource Class @3-FCB6E20C

//Initialize Page @1-1FFDF9F2
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
$TemplateFileName = "SSFTicketPricesReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-C38AFE5F
include("./SSFTicketPricesReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-EF16FC29
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_pricesSearch = new clsRecordssf_tkt_pricesSearch("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tkt_prices = new clsReportssf_tkt_prices("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_pricesSearch = & $ssf_tkt_pricesSearch;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tkt_prices = & $ssf_tkt_prices;
$ssf_tkt_prices->Initialize();

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

//Execute Components @1-93EE83FA
$SSFSpiritHeader->Operations();
$ssf_tkt_pricesSearch->Operation();
//End Execute Components

//Go to destination page @1-6959F82B
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_pricesSearch);
    unset($ssf_tkt_prices);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-F1BB750D
$SSFSpiritHeader->Show();
$ssf_tkt_pricesSearch->Show();
$Button1->Show();
$ssf_tkt_prices->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-0A320CF1
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_pricesSearch);
unset($ssf_tkt_prices);
unset($Tpl);
//End Unload Page


?>
