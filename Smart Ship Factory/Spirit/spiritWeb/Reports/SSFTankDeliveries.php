<?php
//Include Common Files @1-0F04BE18
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTankDeliveries.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordtank_deliveries { //tank_deliveries Class @3-99840EEB

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

//Class_Initialize Event @3-46DAE500
    function clsRecordtank_deliveries($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record tank_deliveries/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "tank_deliveries";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tank_id = new clsControl(ccsListBox, "s_tank_id", "s_tank_id", ccsInteger, "", CCGetRequestParam("s_tank_id", $Method, NULL), $this);
            $this->s_tank_id->DSType = dsSQL;
            list($this->s_tank_id->BoundColumn, $this->s_tank_id->TextColumn, $this->s_tank_id->DBFormat) = array("tank_id", "tank_id", "");
            $this->s_tank_id->DataSource = new clsDBConnection1();
            $this->s_tank_id->ds = & $this->s_tank_id->DataSource;
            $this->s_tank_id->DataSource->SQL = "SELECT param_value AS tank_id \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'tank' )\n" .
            "AND ( groupname = 'general' )\n" .
            "AND ( parameter = 'ID' )";
            $this->s_tank_id->DataSource->Order = "";
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "tank_deliveries", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "tank_deliveries", "s_date_to", $this);
            $this->optDN = new clsControl(ccsRadioButton, "optDN", "optDN", ccsText, "", CCGetRequestParam("optDN", $Method, NULL), $this);
            $this->optDN->DSType = dsListOfValues;
            $this->optDN->Values = array(array("0", $CCSLocales->GetText("ssf_all")), array("1", $CCSLocales->GetText("ssf_no_delivery_note")), array("2", $CCSLocales->GetText("ssf_with_delivery_note")));
            $this->optDN->HTML = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "SSFTankDeliveries.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->optDN->Value) && !strlen($this->optDN->Value) && $this->optDN->Value !== false)
                    $this->optDN->SetText(0);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @3-7D019340
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tank_id->Validate() && $Validation);
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->optDN->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tank_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->optDN->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-C8204120
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tank_id->Errors->Count());
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->optDN->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-26CEC10C
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
        $Redirect = "SSFTankDeliveries.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTankDeliveries.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-91A3F81B
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tank_id->Prepare();
        $this->optDN->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tank_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_from1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->optDN->Errors->ToString());
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

        $this->s_tank_id->Show();
        $this->s_date_from->Show();
        $this->DatePicker_s_date_from1->Show();
        $this->s_date_to->Show();
        $this->DatePicker_s_date_to1->Show();
        $this->optDN->Show();
        $this->Link1->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End tank_deliveries Class @3-FCB6E20C

//ssf_tank_deliveries ReportGroup class @11-83A0C774
class clsReportGroupssf_tank_deliveries {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $date_end, $_date_endAttributes;
    public $tank_id, $_tank_idAttributes;
    public $vol_start, $_vol_startAttributes;
    public $vol_end, $_vol_endAttributes;
    public $transactions_volume, $_transactions_volumeAttributes;
    public $vol_total, $_vol_totalAttributes;
    public $delivery_id, $_delivery_idAttributes;
    public $delivery_reference, $_delivery_referencePage, $_delivery_referenceParameters, $_delivery_referenceAttributes;
    public $TotalSum_vol_total, $_TotalSum_vol_totalAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tank_deliveries(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->date_end = $this->Parent->date_end->Value;
        $this->tank_id = $this->Parent->tank_id->Value;
        $this->vol_start = $this->Parent->vol_start->Value;
        $this->vol_end = $this->Parent->vol_end->Value;
        $this->transactions_volume = $this->Parent->transactions_volume->Value;
        $this->vol_total = $this->Parent->vol_total->Value;
        $this->delivery_id = $this->Parent->delivery_id->Value;
        $this->delivery_reference = $this->Parent->delivery_reference->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_vol_total = $this->Parent->TotalSum_vol_total->GetTotalValue($mode);
        $this->_delivery_referencePage = $this->Parent->delivery_reference->Page;
        $this->_delivery_referenceParameters = $this->Parent->delivery_reference->Parameters;
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_date_endAttributes = $this->Parent->Sorter_date_end->Attributes->GetAsArray();
        $this->_Sorter_tank_idAttributes = $this->Parent->Sorter_tank_id->Attributes->GetAsArray();
        $this->_Sorter_vol_startAttributes = $this->Parent->Sorter_vol_start->Attributes->GetAsArray();
        $this->_Sorter_vol_endAttributes = $this->Parent->Sorter_vol_end->Attributes->GetAsArray();
        $this->_Sorter_transactions_volumeAttributes = $this->Parent->Sorter_transactions_volume->Attributes->GetAsArray();
        $this->_Sorter_vol_totalAttributes = $this->Parent->Sorter_vol_total->Attributes->GetAsArray();
        $this->_Sorter_delivery_idAttributes = $this->Parent->Sorter_delivery_id->Attributes->GetAsArray();
        $this->_Sorter_delivery_note_idAttributes = $this->Parent->Sorter_delivery_note_id->Attributes->GetAsArray();
        $this->_date_endAttributes = $this->Parent->date_end->Attributes->GetAsArray();
        $this->_tank_idAttributes = $this->Parent->tank_id->Attributes->GetAsArray();
        $this->_vol_startAttributes = $this->Parent->vol_start->Attributes->GetAsArray();
        $this->_vol_endAttributes = $this->Parent->vol_end->Attributes->GetAsArray();
        $this->_transactions_volumeAttributes = $this->Parent->transactions_volume->Attributes->GetAsArray();
        $this->_vol_totalAttributes = $this->Parent->vol_total->Attributes->GetAsArray();
        $this->_delivery_idAttributes = $this->Parent->delivery_id->Attributes->GetAsArray();
        $this->_delivery_referenceAttributes = $this->Parent->delivery_reference->Attributes->GetAsArray();
        $this->_TotalSum_vol_totalAttributes = $this->Parent->TotalSum_vol_total->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_vol_total = $this->TotalSum_vol_total;
        $Header->_TotalSum_vol_totalAttributes = $this->_TotalSum_vol_totalAttributes;
        $this->date_end = $Header->date_end;
        $Header->_date_endAttributes = $this->_date_endAttributes;
        $this->Parent->date_end->Value = $Header->date_end;
        $this->Parent->date_end->Attributes->RestoreFromArray($Header->_date_endAttributes);
        $this->tank_id = $Header->tank_id;
        $Header->_tank_idAttributes = $this->_tank_idAttributes;
        $this->Parent->tank_id->Value = $Header->tank_id;
        $this->Parent->tank_id->Attributes->RestoreFromArray($Header->_tank_idAttributes);
        $this->vol_start = $Header->vol_start;
        $Header->_vol_startAttributes = $this->_vol_startAttributes;
        $this->Parent->vol_start->Value = $Header->vol_start;
        $this->Parent->vol_start->Attributes->RestoreFromArray($Header->_vol_startAttributes);
        $this->vol_end = $Header->vol_end;
        $Header->_vol_endAttributes = $this->_vol_endAttributes;
        $this->Parent->vol_end->Value = $Header->vol_end;
        $this->Parent->vol_end->Attributes->RestoreFromArray($Header->_vol_endAttributes);
        $this->transactions_volume = $Header->transactions_volume;
        $Header->_transactions_volumeAttributes = $this->_transactions_volumeAttributes;
        $this->Parent->transactions_volume->Value = $Header->transactions_volume;
        $this->Parent->transactions_volume->Attributes->RestoreFromArray($Header->_transactions_volumeAttributes);
        $this->vol_total = $Header->vol_total;
        $Header->_vol_totalAttributes = $this->_vol_totalAttributes;
        $this->Parent->vol_total->Value = $Header->vol_total;
        $this->Parent->vol_total->Attributes->RestoreFromArray($Header->_vol_totalAttributes);
        $this->delivery_id = $Header->delivery_id;
        $Header->_delivery_idAttributes = $this->_delivery_idAttributes;
        $this->Parent->delivery_id->Value = $Header->delivery_id;
        $this->Parent->delivery_id->Attributes->RestoreFromArray($Header->_delivery_idAttributes);
        $this->delivery_reference = $Header->delivery_reference;
        $this->_delivery_referencePage = $Header->_delivery_referencePage;
        $this->_delivery_referenceParameters = $Header->_delivery_referenceParameters;
        $Header->_delivery_referenceAttributes = $this->_delivery_referenceAttributes;
        $this->Parent->delivery_reference->Value = $Header->delivery_reference;
        $this->Parent->delivery_reference->Attributes->RestoreFromArray($Header->_delivery_referenceAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_vol_total = $this->Parent->TotalSum_vol_total->GetValue();
    }
}
//End ssf_tank_deliveries ReportGroup class

//ssf_tank_deliveries GroupsCollection class @11-66E2B5D9
class clsGroupsCollectionssf_tank_deliveries {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tank_deliveries(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tank_deliveries($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->date_end->Value = $this->Parent->date_end->initialValue;
        $this->Parent->tank_id->Value = $this->Parent->tank_id->initialValue;
        $this->Parent->vol_start->Value = $this->Parent->vol_start->initialValue;
        $this->Parent->vol_end->Value = $this->Parent->vol_end->initialValue;
        $this->Parent->transactions_volume->Value = $this->Parent->transactions_volume->initialValue;
        $this->Parent->vol_total->Value = $this->Parent->vol_total->initialValue;
        $this->Parent->delivery_id->Value = $this->Parent->delivery_id->initialValue;
        $this->Parent->delivery_reference->Value = $this->Parent->delivery_reference->initialValue;
        $this->Parent->TotalSum_vol_total->Value = $this->Parent->TotalSum_vol_total->initialValue;
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
//End ssf_tank_deliveries GroupsCollection class

class clsReportssf_tank_deliveries { //ssf_tank_deliveries Class @11-2BEAADC1

//ssf_tank_deliveries Variables @11-AAFB8EBA

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
    public $Sorter_date_end;
    public $Sorter_tank_id;
    public $Sorter_vol_start;
    public $Sorter_vol_end;
    public $Sorter_transactions_volume;
    public $Sorter_vol_total;
    public $Sorter_delivery_id;
    public $Sorter_delivery_note_id;
//End ssf_tank_deliveries Variables

//Class_Initialize Event @11-8CFD96BD
    function clsReportssf_tank_deliveries($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tank_deliveries";
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
        $this->DataSource = new clsssf_tank_deliveriesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tank_deliveriesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tank_deliveriesDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_date_end = new clsSorter($this->ComponentName, "Sorter_date_end", $FileName, $this);
        $this->Sorter_tank_id = new clsSorter($this->ComponentName, "Sorter_tank_id", $FileName, $this);
        $this->Sorter_vol_start = new clsSorter($this->ComponentName, "Sorter_vol_start", $FileName, $this);
        $this->Sorter_vol_end = new clsSorter($this->ComponentName, "Sorter_vol_end", $FileName, $this);
        $this->Sorter_transactions_volume = new clsSorter($this->ComponentName, "Sorter_transactions_volume", $FileName, $this);
        $this->Sorter_vol_total = new clsSorter($this->ComponentName, "Sorter_vol_total", $FileName, $this);
        $this->Sorter_delivery_id = new clsSorter($this->ComponentName, "Sorter_delivery_id", $FileName, $this);
        $this->Sorter_delivery_note_id = new clsSorter($this->ComponentName, "Sorter_delivery_note_id", $FileName, $this);
        $this->date_end = new clsControl(ccsReportLabel, "date_end", "date_end", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->date_end->HTML = true;
        $this->date_end->EmptyText = "&nbsp;";
        $this->tank_id = new clsControl(ccsReportLabel, "tank_id", "tank_id", ccsInteger, "", "", $this);
        $this->tank_id->HTML = true;
        $this->tank_id->EmptyText = "&nbsp;";
        $this->vol_start = new clsControl(ccsReportLabel, "vol_start", "vol_start", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->vol_start->HTML = true;
        $this->vol_start->EmptyText = "&nbsp;";
        $this->vol_end = new clsControl(ccsReportLabel, "vol_end", "vol_end", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->vol_end->HTML = true;
        $this->vol_end->EmptyText = "&nbsp;";
        $this->transactions_volume = new clsControl(ccsReportLabel, "transactions_volume", "transactions_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->transactions_volume->HTML = true;
        $this->transactions_volume->EmptyText = "&nbsp;";
        $this->vol_total = new clsControl(ccsReportLabel, "vol_total", "vol_total", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->vol_total->HTML = true;
        $this->vol_total->EmptyText = "&nbsp;";
        $this->delivery_id = new clsControl(ccsReportLabel, "delivery_id", "delivery_id", ccsInteger, "", "", $this);
        $this->delivery_id->HTML = true;
        $this->delivery_id->EmptyText = "&nbsp;";
        $this->delivery_reference = new clsControl(ccsLink, "delivery_reference", "delivery_reference", ccsText, "", CCGetRequestParam("delivery_reference", ccsGet, NULL), $this);
        $this->delivery_reference->HTML = true;
        $this->delivery_reference->Page = "SSFDeliveryNotes.php";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_vol_total = new clsControl(ccsReportLabel, "TotalSum_vol_total", "TotalSum_vol_total", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_vol_total->HTML = true;
        $this->TotalSum_vol_total->TotalFunction = "Sum";
        $this->TotalSum_vol_total->EmptyText = "&nbsp;";
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

//Initialize Method @11-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @11-6D196E5E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->date_end->Errors->Count());
        $errors = ($errors || $this->tank_id->Errors->Count());
        $errors = ($errors || $this->vol_start->Errors->Count());
        $errors = ($errors || $this->vol_end->Errors->Count());
        $errors = ($errors || $this->transactions_volume->Errors->Count());
        $errors = ($errors || $this->vol_total->Errors->Count());
        $errors = ($errors || $this->delivery_id->Errors->Count());
        $errors = ($errors || $this->delivery_reference->Errors->Count());
        $errors = ($errors || $this->TotalSum_vol_total->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @11-AD6B08D9
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->date_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->vol_start->Errors->ToString());
        $errors = ComposeStrings($errors, $this->vol_end->Errors->ToString());
        $errors = ComposeStrings($errors, $this->transactions_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->vol_total->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_reference->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_vol_total->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @11-D50E96FF
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tank_id"] = CCGetFromGet("s_tank_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urloptDN"] = CCGetFromGet("optDN", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tank_deliveries($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->date_end->SetValue($this->DataSource->date_end->GetValue());
            $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
            $this->vol_start->SetValue($this->DataSource->vol_start->GetValue());
            $this->vol_end->SetValue($this->DataSource->vol_end->GetValue());
            $this->transactions_volume->SetValue($this->DataSource->transactions_volume->GetValue());
            $this->vol_total->SetValue($this->DataSource->vol_total->GetValue());
            $this->delivery_id->SetValue($this->DataSource->delivery_id->GetValue());
            $this->delivery_reference->SetValue($this->DataSource->delivery_reference->GetValue());
            $this->TotalSum_vol_total->SetValue($this->DataSource->TotalSum_vol_total->GetValue());
            $this->delivery_reference->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
            $this->delivery_reference->Parameters = CCAddParam($this->delivery_reference->Parameters, "s_delivery_reference", $this->DataSource->f("delivery_reference"));
            $this->delivery_reference->Parameters = CCAddParam($this->delivery_reference->Parameters, "s_delivery_note_id", $this->DataSource->f("delivery_note_id"));
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
            $this->ControlsVisible["date_end"] = $this->date_end->Visible;
            $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
            $this->ControlsVisible["vol_start"] = $this->vol_start->Visible;
            $this->ControlsVisible["vol_end"] = $this->vol_end->Visible;
            $this->ControlsVisible["transactions_volume"] = $this->transactions_volume->Visible;
            $this->ControlsVisible["vol_total"] = $this->vol_total->Visible;
            $this->ControlsVisible["delivery_id"] = $this->delivery_id->Visible;
            $this->ControlsVisible["delivery_reference"] = $this->delivery_reference->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->date_end->SetValue($items[$i]->date_end);
                        $this->date_end->Attributes->RestoreFromArray($items[$i]->_date_endAttributes);
                        $this->tank_id->SetValue($items[$i]->tank_id);
                        $this->tank_id->Attributes->RestoreFromArray($items[$i]->_tank_idAttributes);
                        $this->vol_start->SetValue($items[$i]->vol_start);
                        $this->vol_start->Attributes->RestoreFromArray($items[$i]->_vol_startAttributes);
                        $this->vol_end->SetValue($items[$i]->vol_end);
                        $this->vol_end->Attributes->RestoreFromArray($items[$i]->_vol_endAttributes);
                        $this->transactions_volume->SetValue($items[$i]->transactions_volume);
                        $this->transactions_volume->Attributes->RestoreFromArray($items[$i]->_transactions_volumeAttributes);
                        $this->vol_total->SetValue($items[$i]->vol_total);
                        $this->vol_total->Attributes->RestoreFromArray($items[$i]->_vol_totalAttributes);
                        $this->delivery_id->SetValue($items[$i]->delivery_id);
                        $this->delivery_id->Attributes->RestoreFromArray($items[$i]->_delivery_idAttributes);
                        $this->delivery_reference->SetValue($items[$i]->delivery_reference);
                        $this->delivery_reference->Page = $items[$i]->_delivery_referencePage;
                        $this->delivery_reference->Parameters = $items[$i]->_delivery_referenceParameters;
                        $this->delivery_reference->Attributes->RestoreFromArray($items[$i]->_delivery_referenceAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->date_end->Show();
                        $this->tank_id->Show();
                        $this->vol_start->Show();
                        $this->vol_end->Show();
                        $this->transactions_volume->Show();
                        $this->vol_total->Show();
                        $this->delivery_id->Show();
                        $this->delivery_reference->Show();
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
                            $this->TotalSum_vol_total->SetText(CCFormatNumber($items[$i]->TotalSum_vol_total, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_vol_total->Attributes->RestoreFromArray($items[$i]->_TotalSum_vol_totalAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_vol_total->Show();
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
                                $this->Sorter_date_end->Show();
                                $this->Sorter_tank_id->Show();
                                $this->Sorter_vol_start->Show();
                                $this->Sorter_vol_end->Show();
                                $this->Sorter_transactions_volume->Show();
                                $this->Sorter_vol_total->Show();
                                $this->Sorter_delivery_id->Show();
                                $this->Sorter_delivery_note_id->Show();
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

} //End ssf_tank_deliveries Class @11-FCB6E20C

class clsssf_tank_deliveriesDataSource extends clsDBConnection1 {  //ssf_tank_deliveriesDataSource Class @11-4E689C92

//DataSource Variables @11-85CECCD4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $date_end;
    public $tank_id;
    public $vol_start;
    public $vol_end;
    public $transactions_volume;
    public $vol_total;
    public $delivery_id;
    public $delivery_reference;
    public $TotalSum_vol_total;
//End DataSource Variables

//DataSourceClass_Initialize Event @11-68B24D3B
    function clsssf_tank_deliveriesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tank_deliveries";
        $this->Initialize();
        $this->date_end = new clsField("date_end", ccsDate, array("yyyy", "mm", "dd"));
        $this->tank_id = new clsField("tank_id", ccsInteger, "");
        $this->vol_start = new clsField("vol_start", ccsFloat, "");
        $this->vol_end = new clsField("vol_end", ccsFloat, "");
        $this->transactions_volume = new clsField("transactions_volume", ccsFloat, "");
        $this->vol_total = new clsField("vol_total", ccsFloat, "");
        $this->delivery_id = new clsField("delivery_id", ccsInteger, "");
        $this->delivery_reference = new clsField("delivery_reference", ccsText, "");
        $this->TotalSum_vol_total = new clsField("TotalSum_vol_total", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @11-8098E4D9
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "date_end desc, tank_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_date_end" => array("date_end", ""), 
            "Sorter_tank_id" => array("tank_id", ""), 
            "Sorter_vol_start" => array("vol_start", ""), 
            "Sorter_vol_end" => array("vol_end", ""), 
            "Sorter_transactions_volume" => array("transactions_volume", ""), 
            "Sorter_vol_total" => array("vol_total", ""), 
            "Sorter_delivery_id" => array("delivery_id", ""), 
            "Sorter_delivery_note_id" => array("delivery_note_id", "")));
    }
//End SetOrder Method

//Prepare Method @11-CA95E3A7
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tank_id", ccsInteger, "", "", $this->Parameters["urls_tank_id"], 0, false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("4", "urloptDN", ccsInteger, "", "", $this->Parameters["urloptDN"], 0, false);
    }
//End Prepare Method

//Open Method @11-8107D5D1
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n" .
        "FROM ssf_tank_deliveries LEFT JOIN ssf_tank_delivery_note_header ON ssf_tank_deliveries.delivery_note_id = ssf_tank_delivery_note_header.delivery_note_id\n" .
        "WHERE ( tank_id = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " = 0 )\n" .
        "AND ( date_end >= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "' = '' )\n" .
        "AND ( date_end <= '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' or '" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "' = '' )\n" .
        "AND ( ( ssf_tank_deliveries.delivery_note_id > 0 and " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 2 )\n" .
        "OR ( ssf_tank_deliveries.delivery_note_id is null and " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 1 )\n" .
        "OR ( " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 0 ) )  {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @11-E74A7659
    function SetValues()
    {
        $this->date_end->SetDBValue(trim($this->f("date_end")));
        $this->tank_id->SetDBValue(trim($this->f("tank_id")));
        $this->vol_start->SetDBValue(trim($this->f("vol_start")));
        $this->vol_end->SetDBValue(trim($this->f("vol_end")));
        $this->transactions_volume->SetDBValue(trim($this->f("transactions_volume")));
        $this->vol_total->SetDBValue(trim($this->f("vol_total")));
        $this->delivery_id->SetDBValue(trim($this->f("delivery_id")));
        $this->delivery_reference->SetDBValue($this->f("delivery_reference"));
        $this->TotalSum_vol_total->SetDBValue(trim($this->f("vol_total")));
    }
//End SetValues Method

} //End ssf_tank_deliveriesDataSource Class @11-FCB6E20C

//Initialize Page @1-7BDC121B
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
$TemplateFileName = "SSFTankDeliveries.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-CED896D9
include("./SSFTankDeliveries_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-B4ED6CAD
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$tank_deliveries = new clsRecordtank_deliveries("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tank_deliveries = new clsReportssf_tank_deliveries("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->tank_deliveries = & $tank_deliveries;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tank_deliveries = & $ssf_tank_deliveries;
$ssf_tank_deliveries->Initialize();

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

//Execute Components @1-D62A75C5
$SSFSpiritHeader->Operations();
$tank_deliveries->Operation();
//End Execute Components

//Go to destination page @1-C6B47729
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($tank_deliveries);
    unset($ssf_tank_deliveries);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-CB3E2052
$SSFSpiritHeader->Show();
$tank_deliveries->Show();
$Button1->Show();
$ssf_tank_deliveries->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-5EE3CC2B
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($tank_deliveries);
unset($ssf_tank_deliveries);
unset($Tpl);
//End Unload Page


?>
