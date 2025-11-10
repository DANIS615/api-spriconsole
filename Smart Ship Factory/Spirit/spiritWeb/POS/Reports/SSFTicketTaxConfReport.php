<?php
//Include Common Files @1-2AC81DDD
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Reports/");
define("FileName", "SSFTicketTaxConfReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_taxes_ssf_tkt_tax { //ssf_tkt_taxes_ssf_tkt_tax Class @15-410AEC6A

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

//Class_Initialize Event @15-DB36CC41
    function clsRecordssf_tkt_taxes_ssf_tkt_tax($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_taxes_ssf_tkt_tax/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_taxes_ssf_tkt_tax";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tkt_tax_id = new clsControl(ccsTextBox, "s_tkt_tax_id", "s_tkt_tax_id", ccsText, "", CCGetRequestParam("s_tkt_tax_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopTaxList.php";
            $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", $Method, NULL), $this);
            $this->Link2->Page = "SSFTicketTaxConfReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @15-3FE84F8F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tkt_tax_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tkt_tax_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @15-16CE5E3E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tkt_tax_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Link2->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @15-F83ADCAF
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
        $Redirect = "SSFTicketTaxConfReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTicketTaxConfReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @15-49D496C9
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
            $Error = ComposeStrings($Error, $this->s_tkt_tax_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link2->Errors->ToString());
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

        $this->s_tkt_tax_id->Show();
        $this->Link1->Show();
        $this->Link2->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_taxes_ssf_tkt_tax Class @15-FCB6E20C

//ssf_tkt_taxes_ssf_tkt_tax1 ReportGroup class @3-7B1D59CD
class clsReportGroupssf_tkt_taxes_ssf_tkt_tax1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $tkt_tax_group_id, $tkt_tax_group_idDup, $_tkt_tax_group_idAttributes;
    public $tkt_tax_id, $_tkt_tax_idAttributes;
    public $tkt_tax_desc, $_tkt_tax_descAttributes;
    public $tkt_tax_value, $_tkt_tax_valueAttributes;
    public $tkt_tax_included, $_tkt_tax_includedAttributes;
    public $tkt_tax_type, $_tkt_tax_typeAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $tkt_tax_group_idTotalIndex;

    function clsReportGroupssf_tkt_taxes_ssf_tkt_tax1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->tkt_tax_group_id = $this->Parent->tkt_tax_group_id->Value;
        $this->tkt_tax_id = $this->Parent->tkt_tax_id->Value;
        $this->tkt_tax_desc = $this->Parent->tkt_tax_desc->Value;
        $this->tkt_tax_value = $this->Parent->tkt_tax_value->Value;
        $this->tkt_tax_included = $this->Parent->tkt_tax_included->Value;
        $this->tkt_tax_type = $this->Parent->tkt_tax_type->Value;
        if ($PrevGroup) {
            $this->tkt_tax_group_idDup =  CCCompareValues($this->tkt_tax_group_id, $PrevGroup->tkt_tax_group_id, $this->Parent->tkt_tax_group_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_idAttributes = $this->Parent->Sorter_tkt_tax_id->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_descAttributes = $this->Parent->Sorter_tkt_tax_desc->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_valueAttributes = $this->Parent->Sorter_tkt_tax_value->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_includedAttributes = $this->Parent->Sorter_tkt_tax_included->Attributes->GetAsArray();
        $this->_Sorter_tkt_tax_typeAttributes = $this->Parent->Sorter_tkt_tax_type->Attributes->GetAsArray();
        $this->_tkt_tax_group_idAttributes = $this->Parent->tkt_tax_group_id->Attributes->GetAsArray();
        $this->_tkt_tax_idAttributes = $this->Parent->tkt_tax_id->Attributes->GetAsArray();
        $this->_tkt_tax_descAttributes = $this->Parent->tkt_tax_desc->Attributes->GetAsArray();
        $this->_tkt_tax_valueAttributes = $this->Parent->tkt_tax_value->Attributes->GetAsArray();
        $this->_tkt_tax_includedAttributes = $this->Parent->tkt_tax_included->Attributes->GetAsArray();
        $this->_tkt_tax_typeAttributes = $this->Parent->tkt_tax_type->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $this->tkt_tax_group_id = $Header->tkt_tax_group_id;
        $Header->_tkt_tax_group_idAttributes = $this->_tkt_tax_group_idAttributes;
        $this->Parent->tkt_tax_group_id->Value = $Header->tkt_tax_group_id;
        $this->Parent->tkt_tax_group_id->Attributes->RestoreFromArray($Header->_tkt_tax_group_idAttributes);
        $this->tkt_tax_id = $Header->tkt_tax_id;
        $Header->_tkt_tax_idAttributes = $this->_tkt_tax_idAttributes;
        $this->Parent->tkt_tax_id->Value = $Header->tkt_tax_id;
        $this->Parent->tkt_tax_id->Attributes->RestoreFromArray($Header->_tkt_tax_idAttributes);
        $this->tkt_tax_desc = $Header->tkt_tax_desc;
        $Header->_tkt_tax_descAttributes = $this->_tkt_tax_descAttributes;
        $this->Parent->tkt_tax_desc->Value = $Header->tkt_tax_desc;
        $this->Parent->tkt_tax_desc->Attributes->RestoreFromArray($Header->_tkt_tax_descAttributes);
        $this->tkt_tax_value = $Header->tkt_tax_value;
        $Header->_tkt_tax_valueAttributes = $this->_tkt_tax_valueAttributes;
        $this->Parent->tkt_tax_value->Value = $Header->tkt_tax_value;
        $this->Parent->tkt_tax_value->Attributes->RestoreFromArray($Header->_tkt_tax_valueAttributes);
        $this->tkt_tax_included = $Header->tkt_tax_included;
        $Header->_tkt_tax_includedAttributes = $this->_tkt_tax_includedAttributes;
        $this->Parent->tkt_tax_included->Value = $Header->tkt_tax_included;
        $this->Parent->tkt_tax_included->Attributes->RestoreFromArray($Header->_tkt_tax_includedAttributes);
        $this->tkt_tax_type = $Header->tkt_tax_type;
        $Header->_tkt_tax_typeAttributes = $this->_tkt_tax_typeAttributes;
        $this->Parent->tkt_tax_type->Value = $Header->tkt_tax_type;
        $this->Parent->tkt_tax_type->Attributes->RestoreFromArray($Header->_tkt_tax_typeAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
    }
}
//End ssf_tkt_taxes_ssf_tkt_tax1 ReportGroup class

//ssf_tkt_taxes_ssf_tkt_tax1 GroupsCollection class @3-5C36B3EB
class clsGroupsCollectionssf_tkt_taxes_ssf_tkt_tax1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mtkt_tax_group_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_taxes_ssf_tkt_tax1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mtkt_tax_group_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_taxes_ssf_tkt_tax1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->tkt_tax_group_idTotalIndex = $this->mtkt_tax_group_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->tkt_tax_group_id->Value = $this->Parent->tkt_tax_group_id->initialValue;
        $this->Parent->tkt_tax_id->Value = $this->Parent->tkt_tax_id->initialValue;
        $this->Parent->tkt_tax_desc->Value = $this->Parent->tkt_tax_desc->initialValue;
        $this->Parent->tkt_tax_value->Value = $this->Parent->tkt_tax_value->initialValue;
        $this->Parent->tkt_tax_included->Value = $this->Parent->tkt_tax_included->initialValue;
        $this->Parent->tkt_tax_type->Value = $this->Parent->tkt_tax_type->initialValue;
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
        if ($groupName == "tkt_tax_group_id") {
            $Grouptkt_tax_group_id = & $this->InitGroup(true);
            $this->Parent->tkt_tax_group_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_tax_group_id_Header->CCSEvents, "OnInitialize", $this->Parent->tkt_tax_group_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->tkt_tax_group_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->tkt_tax_group_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->tkt_tax_group_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->tkt_tax_group_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_tax_group_id_Header->Height;
                $Grouptkt_tax_group_id->SetTotalControls("GetNextValue");
            $this->Parent->tkt_tax_group_id_Header->CCSEventResult = CCGetEvent($this->Parent->tkt_tax_group_id_Header->CCSEvents, "OnCalculate", $this->Parent->tkt_tax_group_id_Header);
            $Grouptkt_tax_group_id->SetControls();
            $Grouptkt_tax_group_id->Mode = 1;
            $Grouptkt_tax_group_id->GroupType = "tkt_tax_group_id";
            $this->mtkt_tax_group_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouptkt_tax_group_id;
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
        $Grouptkt_tax_group_id = & $this->InitGroup(true);
        $this->Parent->tkt_tax_group_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_tax_group_id_Footer->CCSEvents, "OnInitialize", $this->Parent->tkt_tax_group_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->tkt_tax_group_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->tkt_tax_group_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->tkt_tax_group_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouptkt_tax_group_id->SetTotalControls("GetPrevValue");
        $Grouptkt_tax_group_id->SyncWithHeader($this->Groups[$this->mtkt_tax_group_idCurrentHeaderIndex]);
        if ($this->Parent->tkt_tax_group_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->tkt_tax_group_id_Footer->Height;
        $this->Parent->tkt_tax_group_id_Footer->CCSEventResult = CCGetEvent($this->Parent->tkt_tax_group_id_Footer->CCSEvents, "OnCalculate", $this->Parent->tkt_tax_group_id_Footer);
        $Grouptkt_tax_group_id->SetControls();
        $this->RestoreValues();
        $Grouptkt_tax_group_id->Mode = 2;
        $Grouptkt_tax_group_id->GroupType ="tkt_tax_group_id";
        $this->Groups[] = & $Grouptkt_tax_group_id;
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
//End ssf_tkt_taxes_ssf_tkt_tax1 GroupsCollection class

class clsReportssf_tkt_taxes_ssf_tkt_tax1 { //ssf_tkt_taxes_ssf_tkt_tax1 Class @3-546C07AF

//ssf_tkt_taxes_ssf_tkt_tax1 Variables @3-1FBA51C5

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
    public $tkt_tax_group_id_HeaderBlock, $tkt_tax_group_id_Header;
    public $tkt_tax_group_id_FooterBlock, $tkt_tax_group_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $tkt_tax_group_id_HeaderControls, $tkt_tax_group_id_FooterControls;
    public $Sorter_tkt_tax_id;
    public $Sorter_tkt_tax_desc;
    public $Sorter_tkt_tax_value;
    public $Sorter_tkt_tax_included;
    public $Sorter_tkt_tax_type;
//End ssf_tkt_taxes_ssf_tkt_tax1 Variables

//Class_Initialize Event @3-DAF32A85
    function clsReportssf_tkt_taxes_ssf_tkt_tax1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_taxes_ssf_tkt_tax1";
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
        $this->tkt_tax_group_id_Footer = new clsSection($this);
        $this->tkt_tax_group_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_taxes_ssf_tkt_tax1DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_taxes_ssf_tkt_tax1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_taxes_ssf_tkt_tax1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_tkt_tax_id = new clsSorter($this->ComponentName, "Sorter_tkt_tax_id", $FileName, $this);
        $this->Sorter_tkt_tax_desc = new clsSorter($this->ComponentName, "Sorter_tkt_tax_desc", $FileName, $this);
        $this->Sorter_tkt_tax_value = new clsSorter($this->ComponentName, "Sorter_tkt_tax_value", $FileName, $this);
        $this->Sorter_tkt_tax_included = new clsSorter($this->ComponentName, "Sorter_tkt_tax_included", $FileName, $this);
        $this->Sorter_tkt_tax_type = new clsSorter($this->ComponentName, "Sorter_tkt_tax_type", $FileName, $this);
        $this->tkt_tax_group_id = new clsControl(ccsReportLabel, "tkt_tax_group_id", "tkt_tax_group_id", ccsText, "", "", $this);
        $this->tkt_tax_group_id->HTML = true;
        $this->tkt_tax_group_id->EmptyText = "&nbsp;";
        $this->tkt_tax_id = new clsControl(ccsReportLabel, "tkt_tax_id", "tkt_tax_id", ccsText, "", "", $this);
        $this->tkt_tax_id->HTML = true;
        $this->tkt_tax_id->EmptyText = "&nbsp;";
        $this->tkt_tax_desc = new clsControl(ccsReportLabel, "tkt_tax_desc", "tkt_tax_desc", ccsText, "", "", $this);
        $this->tkt_tax_desc->HTML = true;
        $this->tkt_tax_desc->EmptyText = "&nbsp;";
        $this->tkt_tax_value = new clsControl(ccsReportLabel, "tkt_tax_value", "tkt_tax_value", ccsFloat, "", "", $this);
        $this->tkt_tax_value->HTML = true;
        $this->tkt_tax_value->EmptyText = "&nbsp;";
        $this->tkt_tax_included = new clsControl(ccsCheckBox, "tkt_tax_included", "tkt_tax_included", ccsText, "", CCGetRequestParam("tkt_tax_included", ccsGet, NULL), $this);
        $this->tkt_tax_included->HTML = true;
        $this->tkt_tax_included->CheckedValue = $this->tkt_tax_included->GetParsedValue("Y");
        $this->tkt_tax_included->UncheckedValue = $this->tkt_tax_included->GetParsedValue("N");
        $this->tkt_tax_type = new clsControl(ccsReportLabel, "tkt_tax_type", "tkt_tax_type", ccsText, "", "", $this);
        $this->tkt_tax_type->HTML = true;
        $this->tkt_tax_type->EmptyText = "&nbsp;";
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

//CheckErrors Method @3-6AF4B75B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->tkt_tax_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_tax_id->Errors->Count());
        $errors = ($errors || $this->tkt_tax_desc->Errors->Count());
        $errors = ($errors || $this->tkt_tax_value->Errors->Count());
        $errors = ($errors || $this->tkt_tax_included->Errors->Count());
        $errors = ($errors || $this->tkt_tax_type->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @3-062C4A6D
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_group_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_included->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @3-E1FEEDA7
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_tkt_tax_id"] = CCGetFromGet("s_tkt_tax_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $tkt_tax_group_idKey = "";
        $Groups = new clsGroupsCollectionssf_tkt_taxes_ssf_tkt_tax1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->tkt_tax_group_id->SetValue($this->DataSource->tkt_tax_group_id->GetValue());
            $this->tkt_tax_id->SetValue($this->DataSource->tkt_tax_id->GetValue());
            $this->tkt_tax_desc->SetValue($this->DataSource->tkt_tax_desc->GetValue());
            $this->tkt_tax_value->SetValue($this->DataSource->tkt_tax_value->GetValue());
            $this->tkt_tax_included->SetValue($this->DataSource->tkt_tax_included->GetValue());
            $this->tkt_tax_type->SetValue($this->DataSource->tkt_tax_type->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $tkt_tax_group_idKey != $this->DataSource->f("tkt_tax_group_id")) {
                $Groups->OpenGroup("tkt_tax_group_id");
            }
            $Groups->AddItem();
            $tkt_tax_group_idKey = $this->DataSource->f("tkt_tax_group_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $tkt_tax_group_idKey != $this->DataSource->f("tkt_tax_group_id")) {
                $Groups->CloseGroup("tkt_tax_group_id");
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
            $this->ControlsVisible["tkt_tax_group_id"] = $this->tkt_tax_group_id->Visible;
            $this->ControlsVisible["tkt_tax_id"] = $this->tkt_tax_id->Visible;
            $this->ControlsVisible["tkt_tax_desc"] = $this->tkt_tax_desc->Visible;
            $this->ControlsVisible["tkt_tax_value"] = $this->tkt_tax_value->Visible;
            $this->ControlsVisible["tkt_tax_included"] = $this->tkt_tax_included->Visible;
            $this->ControlsVisible["tkt_tax_type"] = $this->tkt_tax_type->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->tkt_tax_group_id->Visible = $this->ControlsVisible["tkt_tax_group_id"] && !$items[$i]->tkt_tax_group_idDup;
                        $this->tkt_tax_group_id->SetValue($items[$i]->tkt_tax_group_id);
                        $this->tkt_tax_group_id->Attributes->RestoreFromArray($items[$i]->_tkt_tax_group_idAttributes);
                        $this->tkt_tax_id->SetValue($items[$i]->tkt_tax_id);
                        $this->tkt_tax_id->Attributes->RestoreFromArray($items[$i]->_tkt_tax_idAttributes);
                        $this->tkt_tax_desc->SetValue($items[$i]->tkt_tax_desc);
                        $this->tkt_tax_desc->Attributes->RestoreFromArray($items[$i]->_tkt_tax_descAttributes);
                        $this->tkt_tax_value->SetValue($items[$i]->tkt_tax_value);
                        $this->tkt_tax_value->Attributes->RestoreFromArray($items[$i]->_tkt_tax_valueAttributes);
                        $this->tkt_tax_included->SetValue($items[$i]->tkt_tax_included);
                        $this->tkt_tax_included->Attributes->RestoreFromArray($items[$i]->_tkt_tax_includedAttributes);
                        $this->tkt_tax_type->SetValue($items[$i]->tkt_tax_type);
                        $this->tkt_tax_type->Attributes->RestoreFromArray($items[$i]->_tkt_tax_typeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->tkt_tax_group_id->Show();
                        $this->tkt_tax_id->Show();
                        $this->tkt_tax_desc->Show();
                        $this->tkt_tax_value->Show();
                        $this->tkt_tax_included->Show();
                        $this->tkt_tax_type->Show();
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
                                $this->Sorter_tkt_tax_id->Show();
                                $this->Sorter_tkt_tax_desc->Show();
                                $this->Sorter_tkt_tax_value->Show();
                                $this->Sorter_tkt_tax_included->Show();
                                $this->Sorter_tkt_tax_type->Show();
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
                    case "tkt_tax_group_id":
                        if ($items[$i]->Mode == 1) {
                            $this->tkt_tax_group_id_Header->CCSEventResult = CCGetEvent($this->tkt_tax_group_id_Header->CCSEvents, "BeforeShow", $this->tkt_tax_group_id_Header);
                            if ($this->tkt_tax_group_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_tax_group_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_tax_group_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->tkt_tax_group_id_Footer->CCSEventResult = CCGetEvent($this->tkt_tax_group_id_Footer->CCSEvents, "BeforeShow", $this->tkt_tax_group_id_Footer);
                            if ($this->tkt_tax_group_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section tkt_tax_group_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section tkt_tax_group_id_Footer", true, "Section Detail");
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

} //End ssf_tkt_taxes_ssf_tkt_tax1 Class @3-FCB6E20C

class clsssf_tkt_taxes_ssf_tkt_tax1DataSource extends clsDBConnection1 {  //ssf_tkt_taxes_ssf_tkt_tax1DataSource Class @3-18C84BD3

//DataSource Variables @3-09EBB855
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $tkt_tax_group_id;
    public $tkt_tax_id;
    public $tkt_tax_desc;
    public $tkt_tax_value;
    public $tkt_tax_included;
    public $tkt_tax_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-9A2854AF
    function clsssf_tkt_taxes_ssf_tkt_tax1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_taxes_ssf_tkt_tax1";
        $this->Initialize();
        $this->tkt_tax_group_id = new clsField("tkt_tax_group_id", ccsText, "");
        $this->tkt_tax_id = new clsField("tkt_tax_id", ccsText, "");
        $this->tkt_tax_desc = new clsField("tkt_tax_desc", ccsText, "");
        $this->tkt_tax_value = new clsField("tkt_tax_value", ccsFloat, "");
        $this->tkt_tax_included = new clsField("tkt_tax_included", ccsText, "");
        $this->tkt_tax_type = new clsField("tkt_tax_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-1A4FC63F
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tax_id" => array("tkt_tax_id", ""), 
            "Sorter_tkt_tax_desc" => array("tkt_tax_desc", ""), 
            "Sorter_tkt_tax_value" => array("tkt_tax_value", ""), 
            "Sorter_tkt_tax_included" => array("tkt_tax_included", ""), 
            "Sorter_tkt_tax_type" => array("tkt_tax_type", "")));
    }
//End SetOrder Method

//Prepare Method @3-E7C0754F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tkt_tax_id", ccsText, "", "", $this->Parameters["urls_tkt_tax_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "ssf_tkt_taxes.tkt_tax_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = "ssf_tkt_catalog.tkt_catalog_id = 'tax_type'";
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @3-A45033F3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT tkt_tax_group_id, tkt_tax_order, tkt_tax_id, tkt_tax_desc, tkt_tax_type AS tkt_tax_type_code, tkt_tax_value, tkt_tax_included,\n\n" .
        "tkt_catalog_value AS tkt_tax_type \n\n" .
        "FROM (ssf_tkt_taxes INNER JOIN ssf_tkt_taxes_group ON\n\n" .
        "ssf_tkt_taxes.tkt_tax_id = ssf_tkt_taxes_group.tkt_tax_tax_id) INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_taxes.tkt_tax_type = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "ssf_tkt_taxes_group.tkt_tax_group_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-162D80F6
    function SetValues()
    {
        $this->tkt_tax_group_id->SetDBValue($this->f("tkt_tax_group_id"));
        $this->tkt_tax_id->SetDBValue($this->f("tkt_tax_id"));
        $this->tkt_tax_desc->SetDBValue($this->f("tkt_tax_desc"));
        $this->tkt_tax_value->SetDBValue(trim($this->f("tkt_tax_value")));
        $this->tkt_tax_included->SetDBValue($this->f("tkt_tax_included"));
        $this->tkt_tax_type->SetDBValue($this->f("tkt_tax_type"));
    }
//End SetValues Method

} //End ssf_tkt_taxes_ssf_tkt_tax1DataSource Class @3-FCB6E20C

//Initialize Page @1-6CEF8315
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
$TemplateFileName = "SSFTicketTaxConfReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-5FED5472
include("./SSFTicketTaxConfReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-4332A566
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_taxes_ssf_tkt_tax = new clsRecordssf_tkt_taxes_ssf_tkt_tax("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$ssf_tkt_taxes_ssf_tkt_tax1 = new clsReportssf_tkt_taxes_ssf_tkt_tax1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_taxes_ssf_tkt_tax = & $ssf_tkt_taxes_ssf_tkt_tax;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->ssf_tkt_taxes_ssf_tkt_tax1 = & $ssf_tkt_taxes_ssf_tkt_tax1;
$ssf_tkt_taxes_ssf_tkt_tax1->Initialize();

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

//Execute Components @1-B1E61A7B
$SSFSpiritHeader->Operations();
$ssf_tkt_taxes_ssf_tkt_tax->Operation();
//End Execute Components

//Go to destination page @1-08CC5751
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_taxes_ssf_tkt_tax);
    unset($ssf_tkt_taxes_ssf_tkt_tax1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-377A5BA4
$SSFSpiritHeader->Show();
$ssf_tkt_taxes_ssf_tkt_tax->Show();
$Button1->Show();
$ssf_tkt_taxes_ssf_tkt_tax1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-DB3AE2E5
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_taxes_ssf_tkt_tax);
unset($ssf_tkt_taxes_ssf_tkt_tax1);
unset($Tpl);
//End Unload Page


?>
