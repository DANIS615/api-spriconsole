<?php
//Include Common Files @1-AAC7535B
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFTanksManualReadings.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tank_manual_readingsSearch { //ssf_tank_manual_readingsSearch Class @17-71C28B6A

//Variables @17-9E315808

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

//Class_Initialize Event @17-57F2775B
    function clsRecordssf_tank_manual_readingsSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tank_manual_readingsSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tank_manual_readingsSearch";
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
            $this->DatePicker_s_date_from1 = new clsDatePicker("DatePicker_s_date_from1", "ssf_tank_manual_readingsSearch", "s_date_from", $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->DatePicker_s_date_to1 = new clsDatePicker("DatePicker_s_date_to1", "ssf_tank_manual_readingsSearch", "s_date_to", $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @17-FC7C6329
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tank_id->Validate() && $Validation);
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tank_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @17-3FBB8B3F
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tank_id->Errors->Count());
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_from1->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_s_date_to1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @17-B89FBA09
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
        $Redirect = "SSFTanksManualReadings.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTanksManualReadings.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @17-05702C33
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
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tank_manual_readingsSearch Class @17-FCB6E20C

//ssf_tank_manual_readings ReportGroup class @3-95758AFD
class clsReportGroupssf_tank_manual_readings {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $date_read, $_date_readAttributes;
    public $time_read, $_time_readAttributes;
    public $tank_id, $_tank_idAttributes;
    public $product, $_productAttributes;
    public $prod_vol, $_prod_volAttributes;
    public $prod_height, $_prod_heightAttributes;
    public $water_vol, $_water_volAttributes;
    public $water_height, $_water_heightAttributes;
    public $prod_diff, $_prod_diffAttributes;
    public $TotalSum_prod_diff, $_TotalSum_prod_diffAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tank_manual_readings(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->date_read = $this->Parent->date_read->Value;
        $this->time_read = $this->Parent->time_read->Value;
        $this->tank_id = $this->Parent->tank_id->Value;
        $this->product = $this->Parent->product->Value;
        $this->prod_vol = $this->Parent->prod_vol->Value;
        $this->prod_height = $this->Parent->prod_height->Value;
        $this->water_vol = $this->Parent->water_vol->Value;
        $this->water_height = $this->Parent->water_height->Value;
        $this->prod_diff = $this->Parent->prod_diff->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->TotalSum_prod_diff = $this->Parent->TotalSum_prod_diff->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_date_readAttributes = $this->Parent->Sorter_date_read->Attributes->GetAsArray();
        $this->_Sorter_time_readAttributes = $this->Parent->Sorter_time_read->Attributes->GetAsArray();
        $this->_Sorter_tank_idAttributes = $this->Parent->Sorter_tank_id->Attributes->GetAsArray();
        $this->_Sorter_prod_volAttributes = $this->Parent->Sorter_prod_vol->Attributes->GetAsArray();
        $this->_Sorter_prod_heightAttributes = $this->Parent->Sorter_prod_height->Attributes->GetAsArray();
        $this->_Sorter_water_volAttributes = $this->Parent->Sorter_water_vol->Attributes->GetAsArray();
        $this->_Sorter_water_heightAttributes = $this->Parent->Sorter_water_height->Attributes->GetAsArray();
        $this->_Sorter_prod_diffAttributes = $this->Parent->Sorter_prod_diff->Attributes->GetAsArray();
        $this->_date_readAttributes = $this->Parent->date_read->Attributes->GetAsArray();
        $this->_time_readAttributes = $this->Parent->time_read->Attributes->GetAsArray();
        $this->_tank_idAttributes = $this->Parent->tank_id->Attributes->GetAsArray();
        $this->_productAttributes = $this->Parent->product->Attributes->GetAsArray();
        $this->_prod_volAttributes = $this->Parent->prod_vol->Attributes->GetAsArray();
        $this->_prod_heightAttributes = $this->Parent->prod_height->Attributes->GetAsArray();
        $this->_water_volAttributes = $this->Parent->water_vol->Attributes->GetAsArray();
        $this->_water_heightAttributes = $this->Parent->water_height->Attributes->GetAsArray();
        $this->_prod_diffAttributes = $this->Parent->prod_diff->Attributes->GetAsArray();
        $this->_TotalSum_prod_diffAttributes = $this->Parent->TotalSum_prod_diff->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->TotalSum_prod_diff = $this->TotalSum_prod_diff;
        $Header->_TotalSum_prod_diffAttributes = $this->_TotalSum_prod_diffAttributes;
        $this->date_read = $Header->date_read;
        $Header->_date_readAttributes = $this->_date_readAttributes;
        $this->Parent->date_read->Value = $Header->date_read;
        $this->Parent->date_read->Attributes->RestoreFromArray($Header->_date_readAttributes);
        $this->time_read = $Header->time_read;
        $Header->_time_readAttributes = $this->_time_readAttributes;
        $this->Parent->time_read->Value = $Header->time_read;
        $this->Parent->time_read->Attributes->RestoreFromArray($Header->_time_readAttributes);
        $this->tank_id = $Header->tank_id;
        $Header->_tank_idAttributes = $this->_tank_idAttributes;
        $this->Parent->tank_id->Value = $Header->tank_id;
        $this->Parent->tank_id->Attributes->RestoreFromArray($Header->_tank_idAttributes);
        $this->product = $Header->product;
        $Header->_productAttributes = $this->_productAttributes;
        $this->Parent->product->Value = $Header->product;
        $this->Parent->product->Attributes->RestoreFromArray($Header->_productAttributes);
        $this->prod_vol = $Header->prod_vol;
        $Header->_prod_volAttributes = $this->_prod_volAttributes;
        $this->Parent->prod_vol->Value = $Header->prod_vol;
        $this->Parent->prod_vol->Attributes->RestoreFromArray($Header->_prod_volAttributes);
        $this->prod_height = $Header->prod_height;
        $Header->_prod_heightAttributes = $this->_prod_heightAttributes;
        $this->Parent->prod_height->Value = $Header->prod_height;
        $this->Parent->prod_height->Attributes->RestoreFromArray($Header->_prod_heightAttributes);
        $this->water_vol = $Header->water_vol;
        $Header->_water_volAttributes = $this->_water_volAttributes;
        $this->Parent->water_vol->Value = $Header->water_vol;
        $this->Parent->water_vol->Attributes->RestoreFromArray($Header->_water_volAttributes);
        $this->water_height = $Header->water_height;
        $Header->_water_heightAttributes = $this->_water_heightAttributes;
        $this->Parent->water_height->Value = $Header->water_height;
        $this->Parent->water_height->Attributes->RestoreFromArray($Header->_water_heightAttributes);
        $this->prod_diff = $Header->prod_diff;
        $Header->_prod_diffAttributes = $this->_prod_diffAttributes;
        $this->Parent->prod_diff->Value = $Header->prod_diff;
        $this->Parent->prod_diff->Attributes->RestoreFromArray($Header->_prod_diffAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->TotalSum_prod_diff = $this->Parent->TotalSum_prod_diff->GetValue();
    }
}
//End ssf_tank_manual_readings ReportGroup class

//ssf_tank_manual_readings GroupsCollection class @3-2CEED8A7
class clsGroupsCollectionssf_tank_manual_readings {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tank_manual_readings(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tank_manual_readings($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->date_read->Value = $this->Parent->date_read->initialValue;
        $this->Parent->time_read->Value = $this->Parent->time_read->initialValue;
        $this->Parent->tank_id->Value = $this->Parent->tank_id->initialValue;
        $this->Parent->product->Value = $this->Parent->product->initialValue;
        $this->Parent->prod_vol->Value = $this->Parent->prod_vol->initialValue;
        $this->Parent->prod_height->Value = $this->Parent->prod_height->initialValue;
        $this->Parent->water_vol->Value = $this->Parent->water_vol->initialValue;
        $this->Parent->water_height->Value = $this->Parent->water_height->initialValue;
        $this->Parent->prod_diff->Value = $this->Parent->prod_diff->initialValue;
        $this->Parent->TotalSum_prod_diff->Value = $this->Parent->TotalSum_prod_diff->initialValue;
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
//End ssf_tank_manual_readings GroupsCollection class

class clsReportssf_tank_manual_readings { //ssf_tank_manual_readings Class @3-B33B763B

//ssf_tank_manual_readings Variables @3-A9CCB517

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
    public $Sorter_date_read;
    public $Sorter_time_read;
    public $Sorter_tank_id;
    public $Sorter_prod_vol;
    public $Sorter_prod_height;
    public $Sorter_water_vol;
    public $Sorter_water_height;
    public $Sorter_prod_diff;
//End ssf_tank_manual_readings Variables

//Class_Initialize Event @3-DBF65DCF
    function clsReportssf_tank_manual_readings($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tank_manual_readings";
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
        $this->DataSource = new clsssf_tank_manual_readingsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tank_manual_readingsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tank_manual_readingsDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_date_read = new clsSorter($this->ComponentName, "Sorter_date_read", $FileName, $this);
        $this->Sorter_time_read = new clsSorter($this->ComponentName, "Sorter_time_read", $FileName, $this);
        $this->Sorter_tank_id = new clsSorter($this->ComponentName, "Sorter_tank_id", $FileName, $this);
        $this->Sorter_prod_vol = new clsSorter($this->ComponentName, "Sorter_prod_vol", $FileName, $this);
        $this->Sorter_prod_height = new clsSorter($this->ComponentName, "Sorter_prod_height", $FileName, $this);
        $this->Sorter_water_vol = new clsSorter($this->ComponentName, "Sorter_water_vol", $FileName, $this);
        $this->Sorter_water_height = new clsSorter($this->ComponentName, "Sorter_water_height", $FileName, $this);
        $this->Sorter_prod_diff = new clsSorter($this->ComponentName, "Sorter_prod_diff", $FileName, $this);
        $this->date_read = new clsControl(ccsReportLabel, "date_read", "date_read", ccsDate, array("dd", "/", "mm", "/", "yyyy"), "", $this);
        $this->date_read->HTML = true;
        $this->date_read->EmptyText = "&nbsp;";
        $this->time_read = new clsControl(ccsReportLabel, "time_read", "time_read", ccsDate, array("H", ":", "nn", ":", "ss"), "", $this);
        $this->time_read->HTML = true;
        $this->time_read->EmptyText = "&nbsp;";
        $this->tank_id = new clsControl(ccsReportLabel, "tank_id", "tank_id", ccsInteger, "", "", $this);
        $this->tank_id->HTML = true;
        $this->tank_id->EmptyText = "&nbsp;";
        $this->product = new clsControl(ccsReportLabel, "product", "product", ccsText, "", "", $this);
        $this->prod_vol = new clsControl(ccsReportLabel, "prod_vol", "prod_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->prod_vol->HTML = true;
        $this->prod_vol->EmptyText = "&nbsp;";
        $this->prod_height = new clsControl(ccsReportLabel, "prod_height", "prod_height", ccsFloat, "", "", $this);
        $this->prod_height->HTML = true;
        $this->prod_height->EmptyText = "&nbsp;";
        $this->water_vol = new clsControl(ccsReportLabel, "water_vol", "water_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->water_vol->HTML = true;
        $this->water_vol->EmptyText = "&nbsp;";
        $this->water_height = new clsControl(ccsReportLabel, "water_height", "water_height", ccsFloat, "", "", $this);
        $this->water_height->HTML = true;
        $this->water_height->EmptyText = "&nbsp;";
        $this->prod_diff = new clsControl(ccsReportLabel, "prod_diff", "prod_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->prod_diff->HTML = true;
        $this->prod_diff->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_prod_diff = new clsControl(ccsReportLabel, "TotalSum_prod_diff", "TotalSum_prod_diff", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_prod_diff->HTML = true;
        $this->TotalSum_prod_diff->TotalFunction = "Sum";
        $this->TotalSum_prod_diff->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-08EFADF7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->date_read->Errors->Count());
        $errors = ($errors || $this->time_read->Errors->Count());
        $errors = ($errors || $this->tank_id->Errors->Count());
        $errors = ($errors || $this->product->Errors->Count());
        $errors = ($errors || $this->prod_vol->Errors->Count());
        $errors = ($errors || $this->prod_height->Errors->Count());
        $errors = ($errors || $this->water_vol->Errors->Count());
        $errors = ($errors || $this->water_height->Errors->Count());
        $errors = ($errors || $this->prod_diff->Errors->Count());
        $errors = ($errors || $this->TotalSum_prod_diff->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-C05F9E2B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->date_read->Errors->ToString());
        $errors = ComposeStrings($errors, $this->time_read->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->product->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_height->Errors->ToString());
        $errors = ComposeStrings($errors, $this->water_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->water_height->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_prod_diff->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-264AD08E
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tank_id"] = CCGetFromGet("s_tank_id", NULL);
        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tank_manual_readings($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->date_read->SetValue($this->DataSource->date_read->GetValue());
            $this->time_read->SetValue($this->DataSource->time_read->GetValue());
            $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
            $this->product->SetValue($this->DataSource->product->GetValue());
            $this->prod_vol->SetValue($this->DataSource->prod_vol->GetValue());
            $this->prod_height->SetValue($this->DataSource->prod_height->GetValue());
            $this->water_vol->SetValue($this->DataSource->water_vol->GetValue());
            $this->water_height->SetValue($this->DataSource->water_height->GetValue());
            $this->prod_diff->SetValue($this->DataSource->prod_diff->GetValue());
            $this->TotalSum_prod_diff->SetValue($this->DataSource->TotalSum_prod_diff->GetValue());
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
            $this->ControlsVisible["date_read"] = $this->date_read->Visible;
            $this->ControlsVisible["time_read"] = $this->time_read->Visible;
            $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
            $this->ControlsVisible["product"] = $this->product->Visible;
            $this->ControlsVisible["prod_vol"] = $this->prod_vol->Visible;
            $this->ControlsVisible["prod_height"] = $this->prod_height->Visible;
            $this->ControlsVisible["water_vol"] = $this->water_vol->Visible;
            $this->ControlsVisible["water_height"] = $this->water_height->Visible;
            $this->ControlsVisible["prod_diff"] = $this->prod_diff->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->date_read->SetValue($items[$i]->date_read);
                        $this->date_read->Attributes->RestoreFromArray($items[$i]->_date_readAttributes);
                        $this->time_read->SetValue($items[$i]->time_read);
                        $this->time_read->Attributes->RestoreFromArray($items[$i]->_time_readAttributes);
                        $this->tank_id->SetValue($items[$i]->tank_id);
                        $this->tank_id->Attributes->RestoreFromArray($items[$i]->_tank_idAttributes);
                        $this->product->SetValue($items[$i]->product);
                        $this->product->Attributes->RestoreFromArray($items[$i]->_productAttributes);
                        $this->prod_vol->SetValue($items[$i]->prod_vol);
                        $this->prod_vol->Attributes->RestoreFromArray($items[$i]->_prod_volAttributes);
                        $this->prod_height->SetValue($items[$i]->prod_height);
                        $this->prod_height->Attributes->RestoreFromArray($items[$i]->_prod_heightAttributes);
                        $this->water_vol->SetValue($items[$i]->water_vol);
                        $this->water_vol->Attributes->RestoreFromArray($items[$i]->_water_volAttributes);
                        $this->water_height->SetValue($items[$i]->water_height);
                        $this->water_height->Attributes->RestoreFromArray($items[$i]->_water_heightAttributes);
                        $this->prod_diff->SetValue($items[$i]->prod_diff);
                        $this->prod_diff->Attributes->RestoreFromArray($items[$i]->_prod_diffAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->date_read->Show();
                        $this->time_read->Show();
                        $this->tank_id->Show();
                        $this->product->Show();
                        $this->prod_vol->Show();
                        $this->prod_height->Show();
                        $this->water_vol->Show();
                        $this->water_height->Show();
                        $this->prod_diff->Show();
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
                            $this->TotalSum_prod_diff->SetText(CCFormatNumber($items[$i]->TotalSum_prod_diff, array(False, 3, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_prod_diff->Attributes->RestoreFromArray($items[$i]->_TotalSum_prod_diffAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_prod_diff->Show();
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
                                $this->Sorter_date_read->Show();
                                $this->Sorter_time_read->Show();
                                $this->Sorter_tank_id->Show();
                                $this->Sorter_prod_vol->Show();
                                $this->Sorter_prod_height->Show();
                                $this->Sorter_water_vol->Show();
                                $this->Sorter_water_height->Show();
                                $this->Sorter_prod_diff->Show();
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

} //End ssf_tank_manual_readings Class @3-FCB6E20C

class clsssf_tank_manual_readingsDataSource extends clsDBConnection1 {  //ssf_tank_manual_readingsDataSource Class @3-4B7EA28B

//DataSource Variables @3-2CE39374
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $date_read;
    public $time_read;
    public $tank_id;
    public $product;
    public $prod_vol;
    public $prod_height;
    public $water_vol;
    public $water_height;
    public $prod_diff;
    public $TotalSum_prod_diff;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-8F56ED5F
    function clsssf_tank_manual_readingsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tank_manual_readings";
        $this->Initialize();
        $this->date_read = new clsField("date_read", ccsDate, array("yyyy", "mm", "dd"));
        $this->time_read = new clsField("time_read", ccsDate, array("HH", "nn", "ss"));
        $this->tank_id = new clsField("tank_id", ccsInteger, "");
        $this->product = new clsField("product", ccsText, "");
        $this->prod_vol = new clsField("prod_vol", ccsFloat, "");
        $this->prod_height = new clsField("prod_height", ccsFloat, "");
        $this->water_vol = new clsField("water_vol", ccsFloat, "");
        $this->water_height = new clsField("water_height", ccsFloat, "");
        $this->prod_diff = new clsField("prod_diff", ccsFloat, "");
        $this->TotalSum_prod_diff = new clsField("TotalSum_prod_diff", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-9B737EC7
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tank_manual_readings.date_read desc, ssf_tank_manual_readings.tank_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_date_read" => array("date_read", ""), 
            "Sorter_time_read" => array("time_read", ""), 
            "Sorter_tank_id" => array("tank_id", ""), 
            "Sorter_prod_vol" => array("prod_vol", ""), 
            "Sorter_prod_height" => array("prod_height", ""), 
            "Sorter_water_vol" => array("water_vol", ""), 
            "Sorter_water_height" => array("water_height", ""), 
            "Sorter_prod_diff" => array("prod_diff", "")));
    }
//End SetOrder Method

//Prepare Method @3-2E334018
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tank_id", ccsInteger, "", "", $this->Parameters["urls_tank_id"], "", false);
        $this->wp->AddParameter("2", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("3", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tank_manual_readings.tank_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_tank_manual_readings.date_read", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opLessThanOrEqual, "ssf_tank_manual_readings.date_read", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = "config_values.library = 'tank'";
        $this->wp->Criterion[5] = "config_values.groupname = 'general'";
        $this->wp->Criterion[6] = "config_values.parameter = 'product'";
        $this->Where = $this->wp->opAND(
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
             $this->wp->Criterion[6]);
    }
//End Prepare Method

//Open Method @3-5DC79339
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT ssf_tank_manual_readings.*, param_value AS product \n\n" .
        "FROM ssf_tank_manual_readings INNER JOIN config_values ON\n\n" .
        "ssf_tank_manual_readings.tank_id = config_values.id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-3B50092B
    function SetValues()
    {
        $this->date_read->SetDBValue(trim($this->f("date_read")));
        $this->time_read->SetDBValue(trim($this->f("time_read")));
        $this->tank_id->SetDBValue(trim($this->f("tank_id")));
        $this->product->SetDBValue($this->f("product"));
        $this->prod_vol->SetDBValue(trim($this->f("prod_vol")));
        $this->prod_height->SetDBValue(trim($this->f("prod_height")));
        $this->water_vol->SetDBValue(trim($this->f("water_vol")));
        $this->water_height->SetDBValue(trim($this->f("water_height")));
        $this->prod_diff->SetDBValue(trim($this->f("prod_diff")));
        $this->TotalSum_prod_diff->SetDBValue(trim($this->f("prod_diff")));
    }
//End SetValues Method

} //End ssf_tank_manual_readingsDataSource Class @3-FCB6E20C

//Initialize Page @1-047A3AAC
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
$TemplateFileName = "SSFTanksManualReadings.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-E0FE74B0
include("./SSFTanksManualReadings_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-D82B4DF8
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tank_manual_readingsSearch = new clsRecordssf_tank_manual_readingsSearch("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Parameters = CCAddParam($Link1->Parameters, "s_date_from", CCGetFromGet("s_date_from", NULL));
$Link1->Parameters = CCAddParam($Link1->Parameters, "s_date_to", CCGetFromGet("s_date_to", NULL));
$Link1->Parameters = CCAddParam($Link1->Parameters, "s_tank_id", CCGetFromGet("s_tank_id", NULL));
$Link1->Page = "Graphics/SSFTankDeepReadingDiff.php";
$ssf_tank_manual_readings = new clsReportssf_tank_manual_readings("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tank_manual_readingsSearch = & $ssf_tank_manual_readingsSearch;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Link1 = & $Link1;
$MainPage->ssf_tank_manual_readings = & $ssf_tank_manual_readings;
$ssf_tank_manual_readings->Initialize();

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

//Execute Components @1-19DE5595
$SSFSpiritHeader->Operations();
$ssf_tank_manual_readingsSearch->Operation();
//End Execute Components

//Go to destination page @1-B55C8210
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tank_manual_readingsSearch);
    unset($ssf_tank_manual_readings);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-8D019900
$SSFSpiritHeader->Show();
$ssf_tank_manual_readingsSearch->Show();
$Button1->Show();
$ssf_tank_manual_readings->Show();
$ViewMode->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-E13F66E8
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tank_manual_readingsSearch);
unset($ssf_tank_manual_readings);
unset($Tpl);
//End Unload Page


?>
