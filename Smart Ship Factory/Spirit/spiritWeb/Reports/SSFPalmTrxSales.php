<?php
//Include Common Files @1-66414C22
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFPalmTrxSales.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

class clsRecordssf_pump_salesSearch { //ssf_pump_salesSearch Class @11-77E3522F

//Variables @11-9E315808

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

//Class_Initialize Event @11-BE050D03
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
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_date_from = new clsControl(ccsTextBox, "s_date_from", "s_date_from", ccsText, "", CCGetRequestParam("s_date_from", $Method, NULL), $this);
            $this->s_date_to = new clsControl(ccsTextBox, "s_date_to", "s_date_to", ccsText, "", CCGetRequestParam("s_date_to", $Method, NULL), $this);
            $this->cmdBuscar = new clsControl(ccsHidden, "cmdBuscar", "cmdBuscar", ccsText, "", CCGetRequestParam("cmdBuscar", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @11-FEC9ED5F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_date_from->Validate() && $Validation);
        $Validation = ($this->s_date_to->Validate() && $Validation);
        $Validation = ($this->cmdBuscar->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->cmdBuscar->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @11-A93C2AEF
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_date_from->Errors->Count());
        $errors = ($errors || $this->s_date_to->Errors->Count());
        $errors = ($errors || $this->cmdBuscar->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @11-C29F31E4
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
        $Redirect = "SSFPalmTrxSales.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFPalmTrxSales.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @11-A0C5C412
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->cmdBuscar->Errors->ToString());
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
        $this->s_date_to->Show();
        $this->cmdBuscar->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_pump_salesSearch Class @11-FCB6E20C

//ssf_pump_sales ReportGroup class @3-5E9F0C98
class clsReportGroupssf_pump_sales {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $pump_id, $pump_idDup, $_pump_idAttributes;
    public $grade_id, $grade_idDup, $_grade_idAttributes;
    public $money, $_moneyAttributes;
    public $volume, $_volumeAttributes;
    public $Sum_money, $_Sum_moneyAttributes;
    public $Sum_volume, $_Sum_volumeAttributes;
    public $TotalSum_money, $_TotalSum_moneyAttributes;
    public $TotalSum_volume, $_TotalSum_volumeAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $pump_idTotalIndex;
    public $grade_idTotalIndex;

    function clsReportGroupssf_pump_sales(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->pump_id = $this->Parent->pump_id->Value;
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->money = $this->Parent->money->Value;
        $this->volume = $this->Parent->volume->Value;
        if ($PrevGroup) {
            $this->pump_idDup =  CCCompareValues($this->pump_id, $PrevGroup->pump_id, $this->Parent->pump_id->DataType) == 0;
            $this->grade_idDup =  CCCompareValues($this->grade_id, $PrevGroup->grade_id, $this->Parent->grade_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Sum_money = $this->Parent->Sum_money->GetTotalValue($mode);
        $this->Sum_volume = $this->Parent->Sum_volume->GetTotalValue($mode);
        $this->TotalSum_money = $this->Parent->TotalSum_money->GetTotalValue($mode);
        $this->TotalSum_volume = $this->Parent->TotalSum_volume->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_moneyAttributes = $this->Parent->Sorter_money->Attributes->GetAsArray();
        $this->_Sorter_volumeAttributes = $this->Parent->Sorter_volume->Attributes->GetAsArray();
        $this->_pump_idAttributes = $this->Parent->pump_id->Attributes->GetAsArray();
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_moneyAttributes = $this->Parent->money->Attributes->GetAsArray();
        $this->_volumeAttributes = $this->Parent->volume->Attributes->GetAsArray();
        $this->_Sum_moneyAttributes = $this->Parent->Sum_money->Attributes->GetAsArray();
        $this->_Sum_volumeAttributes = $this->Parent->Sum_volume->Attributes->GetAsArray();
        $this->_TotalSum_moneyAttributes = $this->Parent->TotalSum_money->Attributes->GetAsArray();
        $this->_TotalSum_volumeAttributes = $this->Parent->TotalSum_volume->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
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
//End ssf_pump_sales ReportGroup class

//ssf_pump_sales GroupsCollection class @3-F13A252D
class clsGroupsCollectionssf_pump_sales {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mpump_idCurrentHeaderIndex;
    public $mgrade_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_pump_sales(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mpump_idCurrentHeaderIndex = 1;
        $this->mgrade_idCurrentHeaderIndex = 2;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_pump_sales($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->pump_idTotalIndex = $this->mpump_idCurrentHeaderIndex;
        $group->grade_idTotalIndex = $this->mgrade_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
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
        if ($groupName == "pump_id") {
            $Grouppump_id = & $this->InitGroup(true);
            $this->Parent->pump_id_Header->CCSEventResult = CCGetEvent($this->Parent->pump_id_Header->CCSEvents, "OnInitialize", $this->Parent->pump_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->pump_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->pump_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->pump_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->pump_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->pump_id_Header->Height;
                $Grouppump_id->SetTotalControls("GetNextValue");
            $this->Parent->pump_id_Header->CCSEventResult = CCGetEvent($this->Parent->pump_id_Header->CCSEvents, "OnCalculate", $this->Parent->pump_id_Header);
            $Grouppump_id->SetControls();
            $Grouppump_id->Mode = 1;
            $OpenFlag = true;
            $Grouppump_id->GroupType = "pump_id";
            $this->mpump_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouppump_id;
            $this->Parent->Sum_money->Reset();
            $this->Parent->Sum_volume->Reset();
        }
        if ($groupName == "grade_id" or $OpenFlag) {
            $Groupgrade_id = & $this->InitGroup(true);
            $this->Parent->grade_id_Header->CCSEventResult = CCGetEvent($this->Parent->grade_id_Header->CCSEvents, "OnInitialize", $this->Parent->grade_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->grade_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->grade_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->grade_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->grade_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->grade_id_Header->Height;
                $Groupgrade_id->SetTotalControls("GetNextValue");
            $this->Parent->grade_id_Header->CCSEventResult = CCGetEvent($this->Parent->grade_id_Header->CCSEvents, "OnCalculate", $this->Parent->grade_id_Header);
            $Groupgrade_id->SetControls();
            $Groupgrade_id->Mode = 1;
            $Groupgrade_id->GroupType = "grade_id";
            $this->mgrade_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupgrade_id;
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
        $Groupgrade_id = & $this->InitGroup(true);
        $this->Parent->grade_id_Footer->CCSEventResult = CCGetEvent($this->Parent->grade_id_Footer->CCSEvents, "OnInitialize", $this->Parent->grade_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->grade_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->grade_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->grade_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupgrade_id->SetTotalControls("GetPrevValue");
        $Groupgrade_id->SyncWithHeader($this->Groups[$this->mgrade_idCurrentHeaderIndex]);
        if ($this->Parent->grade_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->grade_id_Footer->Height;
        $this->Parent->grade_id_Footer->CCSEventResult = CCGetEvent($this->Parent->grade_id_Footer->CCSEvents, "OnCalculate", $this->Parent->grade_id_Footer);
        $Groupgrade_id->SetControls();
        $this->RestoreValues();
        $Groupgrade_id->Mode = 2;
        $Groupgrade_id->GroupType ="grade_id";
        $this->Groups[] = & $Groupgrade_id;
        if ($groupName == "grade_id") return;
        $Grouppump_id = & $this->InitGroup(true);
        $this->Parent->pump_id_Footer->CCSEventResult = CCGetEvent($this->Parent->pump_id_Footer->CCSEvents, "OnInitialize", $this->Parent->pump_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->pump_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->pump_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->pump_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouppump_id->SetTotalControls("GetPrevValue");
        $Grouppump_id->SyncWithHeader($this->Groups[$this->mpump_idCurrentHeaderIndex]);
        if ($this->Parent->pump_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->pump_id_Footer->Height;
        $this->Parent->pump_id_Footer->CCSEventResult = CCGetEvent($this->Parent->pump_id_Footer->CCSEvents, "OnCalculate", $this->Parent->pump_id_Footer);
        $Grouppump_id->SetControls();
        $this->Parent->Sum_money->Reset();
        $this->Parent->Sum_volume->Reset();
        $this->RestoreValues();
        $Grouppump_id->Mode = 2;
        $Grouppump_id->GroupType ="pump_id";
        $this->Groups[] = & $Grouppump_id;
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
//End ssf_pump_sales GroupsCollection class

class clsReportssf_pump_sales { //ssf_pump_sales Class @3-0D52DF23

//ssf_pump_sales Variables @3-44AF1FDB

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
    public $pump_id_HeaderBlock, $pump_id_Header;
    public $pump_id_FooterBlock, $pump_id_Footer;
    public $grade_id_HeaderBlock, $grade_id_Header;
    public $grade_id_FooterBlock, $grade_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $pump_id_HeaderControls, $pump_id_FooterControls;
    public $grade_id_HeaderControls, $grade_id_FooterControls;
    public $Sorter_money;
    public $Sorter_volume;
//End ssf_pump_sales Variables

//Class_Initialize Event @3-06E22CB9
    function clsReportssf_pump_sales($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_pump_sales";
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
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->pump_id_Footer = new clsSection($this);
        $this->pump_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->pump_id_Footer->Height);
        $this->pump_id_Header = new clsSection($this);
        $this->grade_id_Footer = new clsSection($this);
        $this->grade_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->grade_id_Footer->Height);
        $this->grade_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_pump_salesDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 10;
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
        $this->SorterName = CCGetParam("ssf_pump_salesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_pump_salesDir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_money = new clsSorter($this->ComponentName, "Sorter_money", $FileName, $this);
        $this->Sorter_volume = new clsSorter($this->ComponentName, "Sorter_volume", $FileName, $this);
        $this->pump_id = new clsControl(ccsReportLabel, "pump_id", "pump_id", ccsInteger, "", "", $this);
        $this->pump_id->HTML = true;
        $this->pump_id->EmptyText = "&nbsp;";
        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsInteger, "", "", $this);
        $this->grade_id->HTML = true;
        $this->grade_id->EmptyText = "&nbsp;";
        $this->money = new clsControl(ccsReportLabel, "money", "money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->money->HTML = true;
        $this->money->EmptyText = "&nbsp;";
        $this->volume = new clsControl(ccsReportLabel, "volume", "volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->volume->HTML = true;
        $this->volume->EmptyText = "&nbsp;";
        $this->Sum_money = new clsControl(ccsReportLabel, "Sum_money", "Sum_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_money->HTML = true;
        $this->Sum_money->TotalFunction = "Sum";
        $this->Sum_money->EmptyText = "&nbsp;";
        $this->Sum_volume = new clsControl(ccsReportLabel, "Sum_volume", "Sum_volume", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
        $this->Sum_volume->HTML = true;
        $this->Sum_volume->TotalFunction = "Sum";
        $this->Sum_volume->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_money = new clsControl(ccsReportLabel, "TotalSum_money", "TotalSum_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), "", $this);
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
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpSimple, $this);
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

//CheckErrors Method @3-0D52CB62
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->money->Errors->Count());
        $errors = ($errors || $this->volume->Errors->Count());
        $errors = ($errors || $this->Sum_money->Errors->Count());
        $errors = ($errors || $this->Sum_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_volume->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-BA4C239E
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-CBA7A929
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_date_from"] = CCGetFromGet("s_date_from", NULL);
        $this->DataSource->Parameters["urls_date_to"] = CCGetFromGet("s_date_to", NULL);
        $this->DataSource->Parameters["urls_pump_id"] = CCGetFromGet("s_pump_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $pump_idKey = "";
        $grade_idKey = "";
        $Groups = new clsGroupsCollectionssf_pump_sales($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
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
            if (count($Groups->Groups) == 2 or $pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->OpenGroup("pump_id");
            } elseif ($grade_idKey != $this->DataSource->f("grade_id")) {
                $Groups->OpenGroup("grade_id");
            }
            $Groups->AddItem();
            $pump_idKey = $this->DataSource->f("pump_id");
            $grade_idKey = $this->DataSource->f("grade_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->CloseGroup("pump_id");
            } elseif ($grade_idKey != $this->DataSource->f("grade_id")) {
                $Groups->CloseGroup("grade_id");
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
                        $this->pump_id->Visible = $this->ControlsVisible["pump_id"] && !$items[$i]->pump_idDup;
                        $this->pump_id->SetValue($items[$i]->pump_id);
                        $this->pump_id->Attributes->RestoreFromArray($items[$i]->_pump_idAttributes);
                        $this->grade_id->Visible = $this->ControlsVisible["grade_id"] && !$items[$i]->grade_idDup;
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->money->SetValue($items[$i]->money);
                        $this->money->Attributes->RestoreFromArray($items[$i]->_moneyAttributes);
                        $this->volume->SetValue($items[$i]->volume);
                        $this->volume->Attributes->RestoreFromArray($items[$i]->_volumeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
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
                            $this->TotalSum_money->SetText(CCFormatNumber($items[$i]->TotalSum_money, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
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
                                $this->Sorter_money->Show();
                                $this->Sorter_volume->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Report_CurrentDateTime->SetValue(CCFormatDate(CCGetDateArray(), $this->Report_CurrentDateTime->Format));
                            $this->Report_CurrentDateTime->Attributes->RestoreFromArray($items[$i]->_Report_CurrentDateTimeAttributes);
                            $this->Navigator->PageNumber = $items[$i]->PageNumber;
                            $this->Navigator->TotalPages = $Groups->TotalPages;
                            $this->Navigator->Visible = ("Print" != $this->ViewMode);
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Report_CurrentDateTime->Show();
                                $this->Navigator->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "pump_id":
                        if ($items[$i]->Mode == 1) {
                            $this->pump_id_Header->CCSEventResult = CCGetEvent($this->pump_id_Header->CCSEvents, "BeforeShow", $this->pump_id_Header);
                            if ($this->pump_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section pump_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section pump_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_money->SetText(CCFormatNumber($items[$i]->Sum_money, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_money->Attributes->RestoreFromArray($items[$i]->_Sum_moneyAttributes);
                            $this->Sum_volume->SetText(CCFormatNumber($items[$i]->Sum_volume, array(False, 2, Null, "", False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_volume->Attributes->RestoreFromArray($items[$i]->_Sum_volumeAttributes);
                            $this->pump_id_Footer->CCSEventResult = CCGetEvent($this->pump_id_Footer->CCSEvents, "BeforeShow", $this->pump_id_Footer);
                            if ($this->pump_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section pump_id_Footer";
                                $this->Sum_money->Show();
                                $this->Sum_volume->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section pump_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "grade_id":
                        if ($items[$i]->Mode == 1) {
                            $this->grade_id_Header->CCSEventResult = CCGetEvent($this->grade_id_Header->CCSEvents, "BeforeShow", $this->grade_id_Header);
                            if ($this->grade_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section grade_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section grade_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->grade_id_Footer->CCSEventResult = CCGetEvent($this->grade_id_Footer->CCSEvents, "BeforeShow", $this->grade_id_Footer);
                            if ($this->grade_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section grade_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section grade_id_Footer", true, "Section Detail");
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

} //End ssf_pump_sales Class @3-FCB6E20C

class clsssf_pump_salesDataSource extends clsDBConnection1 {  //ssf_pump_salesDataSource Class @3-A25FA17A

//DataSource Variables @3-B1BD37DB
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $pump_id;
    public $grade_id;
    public $money;
    public $volume;
    public $Sum_money;
    public $Sum_volume;
    public $TotalSum_money;
    public $TotalSum_volume;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-CEBBE194
    function clsssf_pump_salesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_pump_sales";
        $this->Initialize();
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->grade_id = new clsField("grade_id", ccsInteger, "");
        $this->money = new clsField("money", ccsFloat, "");
        $this->volume = new clsField("volume", ccsFloat, "");
        $this->Sum_money = new clsField("Sum_money", ccsFloat, "");
        $this->Sum_volume = new clsField("Sum_volume", ccsFloat, "");
        $this->TotalSum_money = new clsField("TotalSum_money", ccsFloat, "");
        $this->TotalSum_volume = new clsField("TotalSum_volume", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-B8EA8626
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_money" => array("money", ""), 
            "Sorter_volume" => array("volume", "")));
    }
//End SetOrder Method

//Prepare Method @3-E2CE32AB
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_date_from", ccsText, "", "", $this->Parameters["urls_date_from"], "", false);
        $this->wp->AddParameter("2", "urls_date_to", ccsText, "", "", $this->Parameters["urls_date_to"], "", false);
        $this->wp->AddParameter("3", "urls_pump_id", ccsInteger, "", "", $this->Parameters["urls_pump_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "end_date", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opLessThanOrEqual, "end_date", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "pump_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-CC14D576
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT pump_id, grade_id, Sum(volume) AS volume, Sum(money) AS money \n\n" .
        "FROM ssf_pump_sales {SQL_Where}\n\n" .
        "GROUP BY pump_id, grade_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "pump_id asc,grade_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-82F1BD7D
    function SetValues()
    {
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->grade_id->SetDBValue(trim($this->f("grade_id")));
        $this->money->SetDBValue(trim($this->f("money")));
        $this->volume->SetDBValue(trim($this->f("volume")));
        $this->Sum_money->SetDBValue(trim($this->f("money")));
        $this->Sum_volume->SetDBValue(trim($this->f("volume")));
        $this->TotalSum_money->SetDBValue(trim($this->f("money")));
        $this->TotalSum_volume->SetDBValue(trim($this->f("volume")));
    }
//End SetValues Method

} //End ssf_pump_salesDataSource Class @3-FCB6E20C

//Initialize Page @1-436D918C
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
$TemplateFileName = "SSFPalmTrxSales.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-B0EAAB8B
include("./SSFPalmTrxSales_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-F744880B
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Page = "../palm.php";
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Page = "SSFPalmTrxSales.php";
$ssf_pump_salesSearch = new clsRecordssf_pump_salesSearch("", $MainPage);
$ssf_pump_sales = new clsReportssf_pump_sales("", $MainPage);
$MainPage->Link1 = & $Link1;
$MainPage->Link2 = & $Link2;
$MainPage->ssf_pump_salesSearch = & $ssf_pump_salesSearch;
$MainPage->ssf_pump_sales = & $ssf_pump_sales;
$ssf_pump_sales->Initialize();

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

//Execute Components @1-F3B6146C
$ssf_pump_salesSearch->Operation();
//End Execute Components

//Go to destination page @1-00857E63
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($ssf_pump_salesSearch);
    unset($ssf_pump_sales);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-E9E5924C
$ssf_pump_salesSearch->Show();
$ssf_pump_sales->Show();
$Link1->Show();
$Link2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-7B6B16C0
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($ssf_pump_salesSearch);
unset($ssf_pump_sales);
unset($Tpl);
//End Unload Page


?>
