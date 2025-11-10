<?php
//Include Common Files @1-451D6433
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFDeliveryNotes.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tank_deliveries_ssf_t { //ssf_tank_deliveries_ssf_t Class @21-F93DA06C

//Variables @21-9E315808

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

//Class_Initialize Event @21-8411EF44
    function clsRecordssf_tank_deliveries_ssf_t($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tank_deliveries_ssf_t/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tank_deliveries_ssf_t";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_start_date = new clsControl(ccsTextBox, "s_start_date", "s_start_date", ccsText, "", CCGetRequestParam("s_start_date", $Method, NULL), $this);
            $this->DatePicker_s_start_date1 = new clsDatePicker("DatePicker_s_start_date1", "ssf_tank_deliveries_ssf_t", "s_start_date", $this);
            $this->s_end_date = new clsControl(ccsTextBox, "s_end_date", "s_end_date", ccsText, "", CCGetRequestParam("s_end_date", $Method, NULL), $this);
            $this->DatePicker_s_end_date1 = new clsDatePicker("DatePicker_s_end_date1", "ssf_tank_deliveries_ssf_t", "s_end_date", $this);
            $this->s_delivery_reference = new clsControl(ccsTextBox, "s_delivery_reference", "s_delivery_reference", ccsText, "", CCGetRequestParam("s_delivery_reference", $Method, NULL), $this);
            $this->s_prod_id = new clsControl(ccsListBox, "s_prod_id", "s_prod_id", ccsText, "", CCGetRequestParam("s_prod_id", $Method, NULL), $this);
            $this->s_prod_id->DSType = dsSQL;
            list($this->s_prod_id->BoundColumn, $this->s_prod_id->TextColumn, $this->s_prod_id->DBFormat) = array("prod_id", "prod_id", "");
            $this->s_prod_id->DataSource = new clsDBConnection1();
            $this->s_prod_id->ds = & $this->s_prod_id->DataSource;
            $this->s_prod_id->DataSource->SQL = "SELECT param_value AS prod_id \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'product' )\n" .
            "AND ( groupname = 'general' )\n" .
            "AND ( parameter = 'ID' )";
            $this->s_prod_id->DataSource->Order = "";
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Page = "SSFDeliveryNotes.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @21-D52BA5CE
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_start_date->Validate() && $Validation);
        $Validation = ($this->s_end_date->Validate() && $Validation);
        $Validation = ($this->s_delivery_reference->Validate() && $Validation);
        $Validation = ($this->s_prod_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_start_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_end_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_delivery_reference->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_prod_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @21-E4A3078A
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_start_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_start_date1->Errors->Count());
        $errors = ($errors || $this->s_end_date->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_end_date1->Errors->Count());
        $errors = ($errors || $this->s_delivery_reference->Errors->Count());
        $errors = ($errors || $this->s_prod_id->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @21-DCA78B7D
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
        $Redirect = "SSFDeliveryNotes.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFDeliveryNotes.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @21-A569AF1D
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_prod_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_start_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_start_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_end_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_s_end_date1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_delivery_reference->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_prod_id->Errors->ToString());
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

        $this->s_start_date->Show();
        $this->DatePicker_s_start_date1->Show();
        $this->s_end_date->Show();
        $this->DatePicker_s_end_date1->Show();
        $this->s_delivery_reference->Show();
        $this->s_prod_id->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tank_deliveries_ssf_t Class @21-FCB6E20C

//ssf_tank_delivery_note_he ReportGroup class @3-8BB55AD2
class clsReportGroupssf_tank_delivery_note_he {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $delivery_note_id, $delivery_note_idDup, $_delivery_note_idAttributes;
    public $delivery_reference, $delivery_referenceDup, $_delivery_referenceAttributes;
    public $delivery_date, $_delivery_dateAttributes;
    public $delivery_product_id, $_delivery_product_idAttributes;
    public $delivery_supplier_vol, $_delivery_supplier_volAttributes;
    public $delivery_product_vol, $_delivery_product_volAttributes;
    public $dif_vol, $_dif_volAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $delivery_note_idTotalIndex;
    public $delivery_referenceTotalIndex;

    function clsReportGroupssf_tank_delivery_note_he(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->delivery_note_id = $this->Parent->delivery_note_id->Value;
        $this->delivery_reference = $this->Parent->delivery_reference->Value;
        $this->delivery_date = $this->Parent->delivery_date->Value;
        $this->delivery_product_id = $this->Parent->delivery_product_id->Value;
        $this->delivery_supplier_vol = $this->Parent->delivery_supplier_vol->Value;
        $this->delivery_product_vol = $this->Parent->delivery_product_vol->Value;
        $this->dif_vol = $this->Parent->dif_vol->Value;
        if ($PrevGroup) {
            $this->delivery_note_idDup =  CCCompareValues($this->delivery_note_id, $PrevGroup->delivery_note_id, $this->Parent->delivery_note_id->DataType) == 0;
            $this->delivery_referenceDup =  CCCompareValues($this->delivery_reference, $PrevGroup->delivery_reference, $this->Parent->delivery_reference->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_delivery_dateAttributes = $this->Parent->Sorter_delivery_date->Attributes->GetAsArray();
        $this->_Sorter_delivery_product_idAttributes = $this->Parent->Sorter_delivery_product_id->Attributes->GetAsArray();
        $this->_Sorter_delivery_supplier_volAttributes = $this->Parent->Sorter_delivery_supplier_vol->Attributes->GetAsArray();
        $this->_Sorter_vol_totalAttributes = $this->Parent->Sorter_vol_total->Attributes->GetAsArray();
        $this->_delivery_note_idAttributes = $this->Parent->delivery_note_id->Attributes->GetAsArray();
        $this->_delivery_referenceAttributes = $this->Parent->delivery_reference->Attributes->GetAsArray();
        $this->_delivery_dateAttributes = $this->Parent->delivery_date->Attributes->GetAsArray();
        $this->_delivery_product_idAttributes = $this->Parent->delivery_product_id->Attributes->GetAsArray();
        $this->_delivery_supplier_volAttributes = $this->Parent->delivery_supplier_vol->Attributes->GetAsArray();
        $this->_delivery_product_volAttributes = $this->Parent->delivery_product_vol->Attributes->GetAsArray();
        $this->_dif_volAttributes = $this->Parent->dif_vol->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->delivery_note_id = $Header->delivery_note_id;
        $Header->_delivery_note_idAttributes = $this->_delivery_note_idAttributes;
        $this->Parent->delivery_note_id->Value = $Header->delivery_note_id;
        $this->Parent->delivery_note_id->Attributes->RestoreFromArray($Header->_delivery_note_idAttributes);
        $this->delivery_reference = $Header->delivery_reference;
        $Header->_delivery_referenceAttributes = $this->_delivery_referenceAttributes;
        $this->Parent->delivery_reference->Value = $Header->delivery_reference;
        $this->Parent->delivery_reference->Attributes->RestoreFromArray($Header->_delivery_referenceAttributes);
        $this->delivery_date = $Header->delivery_date;
        $Header->_delivery_dateAttributes = $this->_delivery_dateAttributes;
        $this->Parent->delivery_date->Value = $Header->delivery_date;
        $this->Parent->delivery_date->Attributes->RestoreFromArray($Header->_delivery_dateAttributes);
        $this->delivery_product_id = $Header->delivery_product_id;
        $Header->_delivery_product_idAttributes = $this->_delivery_product_idAttributes;
        $this->Parent->delivery_product_id->Value = $Header->delivery_product_id;
        $this->Parent->delivery_product_id->Attributes->RestoreFromArray($Header->_delivery_product_idAttributes);
        $this->delivery_supplier_vol = $Header->delivery_supplier_vol;
        $Header->_delivery_supplier_volAttributes = $this->_delivery_supplier_volAttributes;
        $this->Parent->delivery_supplier_vol->Value = $Header->delivery_supplier_vol;
        $this->Parent->delivery_supplier_vol->Attributes->RestoreFromArray($Header->_delivery_supplier_volAttributes);
        $this->delivery_product_vol = $Header->delivery_product_vol;
        $Header->_delivery_product_volAttributes = $this->_delivery_product_volAttributes;
        $this->Parent->delivery_product_vol->Value = $Header->delivery_product_vol;
        $this->Parent->delivery_product_vol->Attributes->RestoreFromArray($Header->_delivery_product_volAttributes);
        $this->dif_vol = $Header->dif_vol;
        $Header->_dif_volAttributes = $this->_dif_volAttributes;
        $this->Parent->dif_vol->Value = $Header->dif_vol;
        $this->Parent->dif_vol->Attributes->RestoreFromArray($Header->_dif_volAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_tank_delivery_note_he ReportGroup class

//ssf_tank_delivery_note_he GroupsCollection class @3-F4DD431C
class clsGroupsCollectionssf_tank_delivery_note_he {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mdelivery_note_idCurrentHeaderIndex;
    public $mdelivery_referenceCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tank_delivery_note_he(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mdelivery_note_idCurrentHeaderIndex = 1;
        $this->mdelivery_referenceCurrentHeaderIndex = 2;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tank_delivery_note_he($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->delivery_note_idTotalIndex = $this->mdelivery_note_idCurrentHeaderIndex;
        $group->delivery_referenceTotalIndex = $this->mdelivery_referenceCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->delivery_note_id->Value = $this->Parent->delivery_note_id->initialValue;
        $this->Parent->delivery_reference->Value = $this->Parent->delivery_reference->initialValue;
        $this->Parent->delivery_date->Value = $this->Parent->delivery_date->initialValue;
        $this->Parent->delivery_product_id->Value = $this->Parent->delivery_product_id->initialValue;
        $this->Parent->delivery_supplier_vol->Value = $this->Parent->delivery_supplier_vol->initialValue;
        $this->Parent->delivery_product_vol->Value = $this->Parent->delivery_product_vol->initialValue;
        $this->Parent->dif_vol->Value = $this->Parent->dif_vol->initialValue;
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
        if ($groupName == "delivery_note_id") {
            $Groupdelivery_note_id = & $this->InitGroup(true);
            $this->Parent->delivery_note_id_Header->CCSEventResult = CCGetEvent($this->Parent->delivery_note_id_Header->CCSEvents, "OnInitialize", $this->Parent->delivery_note_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->delivery_note_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->delivery_note_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->delivery_note_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->delivery_note_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->delivery_note_id_Header->Height;
                $Groupdelivery_note_id->SetTotalControls("GetNextValue");
            $this->Parent->delivery_note_id_Header->CCSEventResult = CCGetEvent($this->Parent->delivery_note_id_Header->CCSEvents, "OnCalculate", $this->Parent->delivery_note_id_Header);
            $Groupdelivery_note_id->SetControls();
            $Groupdelivery_note_id->Mode = 1;
            $OpenFlag = true;
            $Groupdelivery_note_id->GroupType = "delivery_note_id";
            $this->mdelivery_note_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupdelivery_note_id;
        }
        if ($groupName == "delivery_reference" or $OpenFlag) {
            $Groupdelivery_reference = & $this->InitGroup(true);
            $this->Parent->delivery_reference_Header->CCSEventResult = CCGetEvent($this->Parent->delivery_reference_Header->CCSEvents, "OnInitialize", $this->Parent->delivery_reference_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->delivery_reference_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->delivery_reference_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->delivery_reference_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->delivery_reference_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->delivery_reference_Header->Height;
                $Groupdelivery_reference->SetTotalControls("GetNextValue");
            $this->Parent->delivery_reference_Header->CCSEventResult = CCGetEvent($this->Parent->delivery_reference_Header->CCSEvents, "OnCalculate", $this->Parent->delivery_reference_Header);
            $Groupdelivery_reference->SetControls();
            $Groupdelivery_reference->Mode = 1;
            $Groupdelivery_reference->GroupType = "delivery_reference";
            $this->mdelivery_referenceCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupdelivery_reference;
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
        $Groupdelivery_reference = & $this->InitGroup(true);
        $this->Parent->delivery_reference_Footer->CCSEventResult = CCGetEvent($this->Parent->delivery_reference_Footer->CCSEvents, "OnInitialize", $this->Parent->delivery_reference_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->delivery_reference_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->delivery_reference_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->delivery_reference_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupdelivery_reference->SetTotalControls("GetPrevValue");
        $Groupdelivery_reference->SyncWithHeader($this->Groups[$this->mdelivery_referenceCurrentHeaderIndex]);
        if ($this->Parent->delivery_reference_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->delivery_reference_Footer->Height;
        $this->Parent->delivery_reference_Footer->CCSEventResult = CCGetEvent($this->Parent->delivery_reference_Footer->CCSEvents, "OnCalculate", $this->Parent->delivery_reference_Footer);
        $Groupdelivery_reference->SetControls();
        $this->RestoreValues();
        $Groupdelivery_reference->Mode = 2;
        $Groupdelivery_reference->GroupType ="delivery_reference";
        $this->Groups[] = & $Groupdelivery_reference;
        if ($groupName == "delivery_reference") return;
        $Groupdelivery_note_id = & $this->InitGroup(true);
        $this->Parent->delivery_note_id_Footer->CCSEventResult = CCGetEvent($this->Parent->delivery_note_id_Footer->CCSEvents, "OnInitialize", $this->Parent->delivery_note_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->delivery_note_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->delivery_note_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->delivery_note_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupdelivery_note_id->SetTotalControls("GetPrevValue");
        $Groupdelivery_note_id->SyncWithHeader($this->Groups[$this->mdelivery_note_idCurrentHeaderIndex]);
        if ($this->Parent->delivery_note_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->delivery_note_id_Footer->Height;
        $this->Parent->delivery_note_id_Footer->CCSEventResult = CCGetEvent($this->Parent->delivery_note_id_Footer->CCSEvents, "OnCalculate", $this->Parent->delivery_note_id_Footer);
        $Groupdelivery_note_id->SetControls();
        $this->RestoreValues();
        $Groupdelivery_note_id->Mode = 2;
        $Groupdelivery_note_id->GroupType ="delivery_note_id";
        $this->Groups[] = & $Groupdelivery_note_id;
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
//End ssf_tank_delivery_note_he GroupsCollection class

class clsReportssf_tank_delivery_note_he { //ssf_tank_delivery_note_he Class @3-4D136D9B

//ssf_tank_delivery_note_he Variables @3-C972325C

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
    public $delivery_note_id_HeaderBlock, $delivery_note_id_Header;
    public $delivery_note_id_FooterBlock, $delivery_note_id_Footer;
    public $delivery_reference_HeaderBlock, $delivery_reference_Header;
    public $delivery_reference_FooterBlock, $delivery_reference_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $delivery_note_id_HeaderControls, $delivery_note_id_FooterControls;
    public $delivery_reference_HeaderControls, $delivery_reference_FooterControls;
    public $Sorter_delivery_date;
    public $Sorter_delivery_product_id;
    public $Sorter_delivery_supplier_vol;
    public $Sorter_vol_total;
//End ssf_tank_delivery_note_he Variables

//Class_Initialize Event @3-9B009A06
    function clsReportssf_tank_delivery_note_he($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tank_delivery_note_he";
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
        $this->delivery_note_id_Footer = new clsSection($this);
        $this->delivery_note_id_Header = new clsSection($this);
        $this->delivery_reference_Footer = new clsSection($this);
        $this->delivery_reference_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tank_delivery_note_heDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tank_delivery_note_heOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tank_delivery_note_heDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_delivery_date = new clsSorter($this->ComponentName, "Sorter_delivery_date", $FileName, $this);
        $this->Sorter_delivery_product_id = new clsSorter($this->ComponentName, "Sorter_delivery_product_id", $FileName, $this);
        $this->Sorter_delivery_supplier_vol = new clsSorter($this->ComponentName, "Sorter_delivery_supplier_vol", $FileName, $this);
        $this->Sorter_vol_total = new clsSorter($this->ComponentName, "Sorter_vol_total", $FileName, $this);
        $this->delivery_note_id = new clsControl(ccsReportLabel, "delivery_note_id", "delivery_note_id", ccsInteger, "", "", $this);
        $this->delivery_note_id->HTML = true;
        $this->delivery_note_id->EmptyText = "&nbsp;";
        $this->delivery_reference = new clsControl(ccsReportLabel, "delivery_reference", "delivery_reference", ccsText, "", "", $this);
        $this->delivery_reference->HTML = true;
        $this->delivery_reference->EmptyText = "&nbsp;";
        $this->delivery_date = new clsControl(ccsReportLabel, "delivery_date", "delivery_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->delivery_date->EmptyText = "&nbsp;";
        $this->delivery_product_id = new clsControl(ccsReportLabel, "delivery_product_id", "delivery_product_id", ccsText, "", "", $this);
        $this->delivery_product_id->HTML = true;
        $this->delivery_product_id->EmptyText = "&nbsp;";
        $this->delivery_supplier_vol = new clsControl(ccsReportLabel, "delivery_supplier_vol", "delivery_supplier_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->delivery_supplier_vol->HTML = true;
        $this->delivery_supplier_vol->EmptyText = "&nbsp;";
        $this->delivery_product_vol = new clsControl(ccsReportLabel, "delivery_product_vol", "delivery_product_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->delivery_product_vol->HTML = true;
        $this->delivery_product_vol->EmptyText = "&nbsp;";
        $this->dif_vol = new clsControl(ccsReportLabel, "dif_vol", "dif_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
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

//CheckErrors Method @3-CB0E31FB
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->delivery_note_id->Errors->Count());
        $errors = ($errors || $this->delivery_reference->Errors->Count());
        $errors = ($errors || $this->delivery_date->Errors->Count());
        $errors = ($errors || $this->delivery_product_id->Errors->Count());
        $errors = ($errors || $this->delivery_supplier_vol->Errors->Count());
        $errors = ($errors || $this->delivery_product_vol->Errors->Count());
        $errors = ($errors || $this->dif_vol->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-03AA80DD
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_note_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_reference->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_product_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_supplier_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->delivery_product_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->dif_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-506715F0
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_start_date"] = CCGetFromGet("s_start_date", NULL);
        $this->DataSource->Parameters["urls_end_date"] = CCGetFromGet("s_end_date", NULL);
        $this->DataSource->Parameters["urls_delivery_reference"] = CCGetFromGet("s_delivery_reference", NULL);
        $this->DataSource->Parameters["urls_prod_id"] = CCGetFromGet("s_prod_id", NULL);
        $this->DataSource->Parameters["urls_delivery_note_id"] = CCGetFromGet("s_delivery_note_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $delivery_note_idKey = "";
        $delivery_referenceKey = "";
        $Groups = new clsGroupsCollectionssf_tank_delivery_note_he($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->delivery_note_id->SetValue($this->DataSource->delivery_note_id->GetValue());
            $this->delivery_reference->SetValue($this->DataSource->delivery_reference->GetValue());
            $this->delivery_date->SetValue($this->DataSource->delivery_date->GetValue());
            $this->delivery_product_id->SetValue($this->DataSource->delivery_product_id->GetValue());
            $this->delivery_supplier_vol->SetValue($this->DataSource->delivery_supplier_vol->GetValue());
            $this->delivery_product_vol->SetValue($this->DataSource->delivery_product_vol->GetValue());
            $this->dif_vol->SetValue($this->DataSource->dif_vol->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $delivery_note_idKey != $this->DataSource->f("delivery_note_id")) {
                $Groups->OpenGroup("delivery_note_id");
            } elseif ($delivery_referenceKey != $this->DataSource->f("delivery_reference")) {
                $Groups->OpenGroup("delivery_reference");
            }
            $Groups->AddItem();
            $delivery_note_idKey = $this->DataSource->f("delivery_note_id");
            $delivery_referenceKey = $this->DataSource->f("delivery_reference");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $delivery_note_idKey != $this->DataSource->f("delivery_note_id")) {
                $Groups->CloseGroup("delivery_note_id");
            } elseif ($delivery_referenceKey != $this->DataSource->f("delivery_reference")) {
                $Groups->CloseGroup("delivery_reference");
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
            $this->ControlsVisible["delivery_note_id"] = $this->delivery_note_id->Visible;
            $this->ControlsVisible["delivery_reference"] = $this->delivery_reference->Visible;
            $this->ControlsVisible["delivery_date"] = $this->delivery_date->Visible;
            $this->ControlsVisible["delivery_product_id"] = $this->delivery_product_id->Visible;
            $this->ControlsVisible["delivery_supplier_vol"] = $this->delivery_supplier_vol->Visible;
            $this->ControlsVisible["delivery_product_vol"] = $this->delivery_product_vol->Visible;
            $this->ControlsVisible["dif_vol"] = $this->dif_vol->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->delivery_note_id->Visible = $this->ControlsVisible["delivery_note_id"] && !$items[$i]->delivery_note_idDup;
                        $this->delivery_note_id->SetValue($items[$i]->delivery_note_id);
                        $this->delivery_note_id->Attributes->RestoreFromArray($items[$i]->_delivery_note_idAttributes);
                        $this->delivery_reference->Visible = $this->ControlsVisible["delivery_reference"] && !$items[$i]->delivery_referenceDup;
                        $this->delivery_reference->SetValue($items[$i]->delivery_reference);
                        $this->delivery_reference->Attributes->RestoreFromArray($items[$i]->_delivery_referenceAttributes);
                        $this->delivery_date->SetValue($items[$i]->delivery_date);
                        $this->delivery_date->Attributes->RestoreFromArray($items[$i]->_delivery_dateAttributes);
                        $this->delivery_product_id->SetValue($items[$i]->delivery_product_id);
                        $this->delivery_product_id->Attributes->RestoreFromArray($items[$i]->_delivery_product_idAttributes);
                        $this->delivery_supplier_vol->SetValue($items[$i]->delivery_supplier_vol);
                        $this->delivery_supplier_vol->Attributes->RestoreFromArray($items[$i]->_delivery_supplier_volAttributes);
                        $this->delivery_product_vol->SetValue($items[$i]->delivery_product_vol);
                        $this->delivery_product_vol->Attributes->RestoreFromArray($items[$i]->_delivery_product_volAttributes);
                        $this->dif_vol->SetValue($items[$i]->dif_vol);
                        $this->dif_vol->Attributes->RestoreFromArray($items[$i]->_dif_volAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->delivery_note_id->Show();
                        $this->delivery_reference->Show();
                        $this->delivery_date->Show();
                        $this->delivery_product_id->Show();
                        $this->delivery_supplier_vol->Show();
                        $this->delivery_product_vol->Show();
                        $this->dif_vol->Show();
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
                                $this->Sorter_delivery_date->Show();
                                $this->Sorter_delivery_product_id->Show();
                                $this->Sorter_delivery_supplier_vol->Show();
                                $this->Sorter_vol_total->Show();
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
                    case "delivery_note_id":
                        if ($items[$i]->Mode == 1) {
                            $this->delivery_note_id_Header->CCSEventResult = CCGetEvent($this->delivery_note_id_Header->CCSEvents, "BeforeShow", $this->delivery_note_id_Header);
                            if ($this->delivery_note_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section delivery_note_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section delivery_note_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->delivery_note_id_Footer->CCSEventResult = CCGetEvent($this->delivery_note_id_Footer->CCSEvents, "BeforeShow", $this->delivery_note_id_Footer);
                            if ($this->delivery_note_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section delivery_note_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section delivery_note_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "delivery_reference":
                        if ($items[$i]->Mode == 1) {
                            $this->delivery_reference_Header->CCSEventResult = CCGetEvent($this->delivery_reference_Header->CCSEvents, "BeforeShow", $this->delivery_reference_Header);
                            if ($this->delivery_reference_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section delivery_reference_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section delivery_reference_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->delivery_reference_Footer->CCSEventResult = CCGetEvent($this->delivery_reference_Footer->CCSEvents, "BeforeShow", $this->delivery_reference_Footer);
                            if ($this->delivery_reference_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section delivery_reference_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section delivery_reference_Footer", true, "Section Detail");
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

} //End ssf_tank_delivery_note_he Class @3-FCB6E20C

class clsssf_tank_delivery_note_heDataSource extends clsDBConnection1 {  //ssf_tank_delivery_note_heDataSource Class @3-D5A489E4

//DataSource Variables @3-3F0D75F5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $delivery_note_id;
    public $delivery_reference;
    public $delivery_date;
    public $delivery_product_id;
    public $delivery_supplier_vol;
    public $delivery_product_vol;
    public $dif_vol;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-4D957FC8
    function clsssf_tank_delivery_note_heDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tank_delivery_note_he";
        $this->Initialize();
        $this->delivery_note_id = new clsField("delivery_note_id", ccsInteger, "");
        $this->delivery_reference = new clsField("delivery_reference", ccsText, "");
        $this->delivery_date = new clsField("delivery_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->delivery_product_id = new clsField("delivery_product_id", ccsText, "");
        $this->delivery_supplier_vol = new clsField("delivery_supplier_vol", ccsFloat, "");
        $this->delivery_product_vol = new clsField("delivery_product_vol", ccsFloat, "");
        $this->dif_vol = new clsField("dif_vol", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-EBC61EFA
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_delivery_date" => array("delivery_date", ""), 
            "Sorter_delivery_product_id" => array("delivery_product_id", ""), 
            "Sorter_delivery_supplier_vol" => array("delivery_supplier_vol", ""), 
            "Sorter_vol_total" => array("vol_total", "")));
    }
//End SetOrder Method

//Prepare Method @3-15DEB65E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_start_date", ccsText, "", "", $this->Parameters["urls_start_date"], "", false);
        $this->wp->AddParameter("2", "urls_end_date", ccsText, "", "", $this->Parameters["urls_end_date"], "", false);
        $this->wp->AddParameter("3", "urls_delivery_reference", ccsText, "", "", $this->Parameters["urls_delivery_reference"], "", false);
        $this->wp->AddParameter("4", "urls_prod_id", ccsText, "", "", $this->Parameters["urls_prod_id"], "", false);
        $this->wp->AddParameter("5", "urls_delivery_note_id", ccsInteger, "", "", $this->Parameters["urls_delivery_note_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_tank_delivery_note_header.delivery_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "ssf_tank_delivery_note_header.delivery_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opContains, "ssf_tank_delivery_note_header.delivery_reference", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "ssf_tank_delivery_note_detail.delivery_product_id", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsText),false);
        $this->wp->Criterion[5] = $this->wp->Operation(opEqual, "ssf_tank_delivery_note_detail.delivery_note_id", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]), 
             $this->wp->Criterion[5]);
    }
//End Prepare Method

//Open Method @3-F21539E5
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tank_delivery_note_header.delivery_note_id AS delivery_note_id, delivery_reference, delivery_date, delivery_supplier_vol,\n\n" .
        "delivery_product_vol, (delivery_supplier_vol - delivery_product_vol) AS \"Dif_vol\", delivery_product_id \n\n" .
        "FROM ssf_tank_delivery_note_header INNER JOIN ssf_tank_delivery_note_detail ON\n\n" .
        "ssf_tank_delivery_note_header.delivery_note_id = ssf_tank_delivery_note_detail.delivery_note_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "ssf_tank_delivery_note_header.delivery_note_id asc,ssf_tank_delivery_note_header.delivery_reference asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-E2F5D0C5
    function SetValues()
    {
        $this->delivery_note_id->SetDBValue(trim($this->f("delivery_note_id")));
        $this->delivery_reference->SetDBValue($this->f("delivery_reference"));
        $this->delivery_date->SetDBValue(trim($this->f("delivery_date")));
        $this->delivery_product_id->SetDBValue($this->f("delivery_product_id"));
        $this->delivery_supplier_vol->SetDBValue(trim($this->f("delivery_supplier_vol")));
        $this->delivery_product_vol->SetDBValue(trim($this->f("delivery_product_vol")));
        $this->dif_vol->SetDBValue(trim($this->f("Dif_vol")));
    }
//End SetValues Method

} //End ssf_tank_delivery_note_heDataSource Class @3-FCB6E20C

//Initialize Page @1-2F630F89
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
$TemplateFileName = "SSFDeliveryNotes.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-C605623B
include("./SSFDeliveryNotes_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A84963B0
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tank_deliveries_ssf_t = new clsRecordssf_tank_deliveries_ssf_t("", $MainPage);
$btnPrint = new clsButton("btnPrint", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tank_delivery_note_he = new clsReportssf_tank_delivery_note_he("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tank_deliveries_ssf_t = & $ssf_tank_deliveries_ssf_t;
$MainPage->btnPrint = & $btnPrint;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tank_delivery_note_he = & $ssf_tank_delivery_note_he;
$ssf_tank_delivery_note_he->Initialize();

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

//Execute Components @1-B81AAA85
$SSFSpiritHeader->Operations();
$ssf_tank_deliveries_ssf_t->Operation();
//End Execute Components

//Go to destination page @1-9983E3BF
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tank_deliveries_ssf_t);
    unset($ssf_tank_delivery_note_he);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-7FE35EEF
$SSFSpiritHeader->Show();
$ssf_tank_deliveries_ssf_t->Show();
$btnPrint->Show();
$ssf_tank_delivery_note_he->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-1C1994D2
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tank_deliveries_ssf_t);
unset($ssf_tank_delivery_note_he);
unset($Tpl);
//End Unload Page


?>
