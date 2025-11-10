<?php
//Include Common Files @1-2A4955E7
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFSecurityReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_sec_users { //ssf_sec_users Class @3-F6BED34F

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

//Class_Initialize Event @3-EAF04A87
    function clsRecordssf_sec_users($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_sec_users/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_sec_users";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_user_id = new clsControl(ccsListBox, "s_user_id", "s_user_id", ccsText, "", CCGetRequestParam("s_user_id", $Method, NULL), $this);
            $this->s_user_id->DSType = dsTable;
            list($this->s_user_id->BoundColumn, $this->s_user_id->TextColumn, $this->s_user_id->DBFormat) = array("user_id", "user_id", "");
            $this->s_user_id->DataSource = new clsDBConnection1();
            $this->s_user_id->ds = & $this->s_user_id->DataSource;
            $this->s_user_id->DataSource->SQL = "SELECT user_id \n" .
"FROM ssf_sec_users {SQL_Where} {SQL_OrderBy}";
            $this->s_action_id = new clsControl(ccsListBox, "s_action_id", "s_action_id", ccsText, "", CCGetRequestParam("s_action_id", $Method, NULL), $this);
            $this->s_action_id->DSType = dsListOfValues;
            $this->s_action_id->Values = array(array("REQ", "REQ"), array("WEB", "WEB"));
            $this->s_role_id = new clsControl(ccsListBox, "s_role_id", "s_role_id", ccsText, "", CCGetRequestParam("s_role_id", $Method, NULL), $this);
            $this->s_role_id->DSType = dsTable;
            list($this->s_role_id->BoundColumn, $this->s_role_id->TextColumn, $this->s_role_id->DBFormat) = array("role_id", "role_desc", "");
            $this->s_role_id->DataSource = new clsDBConnection1();
            $this->s_role_id->ds = & $this->s_role_id->DataSource;
            $this->s_role_id->DataSource->SQL = "SELECT role_id, role_desc \n" .
"FROM ssf_sec_roles {SQL_Where} {SQL_OrderBy}";
            $this->s_role_option = new clsControl(ccsRadioButton, "s_role_option", "s_role_option", ccsText, "", CCGetRequestParam("s_role_option", $Method, NULL), $this);
            $this->s_role_option->DSType = dsListOfValues;
            $this->s_role_option->Values = array(array("0", $CCSLocales->GetText("ssf_include_user")), array("1", $CCSLocales->GetText("ssf_exclude_user")));
            $this->s_role_option->HTML = true;
            $this->ClearParameters = new clsControl(ccsLink, "ClearParameters", "ClearParameters", ccsText, "", CCGetRequestParam("ClearParameters", $Method, NULL), $this);
            $this->ClearParameters->Parameters = CCGetQueryString("QueryString", array("s_user_id", "ccsForm"));
            $this->ClearParameters->Page = "SSFSecurityReport.php";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @3-139F474F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_user_id->Validate() && $Validation);
        $Validation = ($this->s_action_id->Validate() && $Validation);
        $Validation = ($this->s_role_id->Validate() && $Validation);
        $Validation = ($this->s_role_option->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_user_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_action_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_role_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_role_option->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-379DBBC5
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_user_id->Errors->Count());
        $errors = ($errors || $this->s_action_id->Errors->Count());
        $errors = ($errors || $this->s_role_id->Errors->Count());
        $errors = ($errors || $this->s_role_option->Errors->Count());
        $errors = ($errors || $this->ClearParameters->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-70933434
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
        $Redirect = "SSFSecurityReport.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFSecurityReport.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-F0F1349C
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_user_id->Prepare();
        $this->s_action_id->Prepare();
        $this->s_role_id->Prepare();
        $this->s_role_option->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_user_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_action_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_role_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_role_option->Errors->ToString());
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

        $this->s_user_id->Show();
        $this->s_action_id->Show();
        $this->s_role_id->Show();
        $this->s_role_option->Show();
        $this->ClearParameters->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_sec_users Class @3-FCB6E20C

//Report1 ReportGroup class @9-EF763E53
class clsReportGroupReport1 {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $Report_TotalRecords, $_Report_TotalRecordsAttributes;
    public $user_id, $_user_idAttributes;
    public $Report_Row_Number, $_Report_Row_NumberAttributes;
    public $action_id, $_action_idAttributes;
    public $action_description, $_action_descriptionAttributes;
    public $rol, $_rolAttributes;
    public $rol_desc, $_rol_descAttributes;
    public $Report_CurrentDateTime, $_Report_CurrentDateTimeAttributes;
    public $Report_CurrentPage, $_Report_CurrentPageAttributes;
    public $Report_TotalPages, $_Report_TotalPagesAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $user_idTotalIndex;

    function clsReportGroupReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->user_id = $this->Parent->user_id->Value;
        $this->action_id = $this->Parent->action_id->Value;
        $this->action_description = $this->Parent->action_description->Value;
        $this->rol = $this->Parent->rol->Value;
        $this->rol_desc = $this->Parent->rol_desc->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetTotalValue($mode);
        $this->Report_Row_Number = $this->Parent->Report_Row_Number->GetTotalValue($mode);
        $this->_Report_TotalRecordsAttributes = $this->Parent->Report_TotalRecords->Attributes->GetAsArray();
        $this->_Sorter_action_idAttributes = $this->Parent->Sorter_action_id->Attributes->GetAsArray();
        $this->_user_idAttributes = $this->Parent->user_id->Attributes->GetAsArray();
        $this->_Report_Row_NumberAttributes = $this->Parent->Report_Row_Number->Attributes->GetAsArray();
        $this->_action_idAttributes = $this->Parent->action_id->Attributes->GetAsArray();
        $this->_action_descriptionAttributes = $this->Parent->action_description->Attributes->GetAsArray();
        $this->_rolAttributes = $this->Parent->rol->Attributes->GetAsArray();
        $this->_rol_descAttributes = $this->Parent->rol_desc->Attributes->GetAsArray();
        $this->_Report_CurrentDateTimeAttributes = $this->Parent->Report_CurrentDateTime->Attributes->GetAsArray();
        $this->_Report_CurrentPageAttributes = $this->Parent->Report_CurrentPage->Attributes->GetAsArray();
        $this->_Report_TotalPagesAttributes = $this->Parent->Report_TotalPages->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Report_TotalRecords = $this->Report_TotalRecords;
        $Header->_Report_TotalRecordsAttributes = $this->_Report_TotalRecordsAttributes;
        $Header->Report_Row_Number = $this->Report_Row_Number;
        $Header->_Report_Row_NumberAttributes = $this->_Report_Row_NumberAttributes;
        $this->user_id = $Header->user_id;
        $Header->_user_idAttributes = $this->_user_idAttributes;
        $this->Parent->user_id->Value = $Header->user_id;
        $this->Parent->user_id->Attributes->RestoreFromArray($Header->_user_idAttributes);
        $this->action_id = $Header->action_id;
        $Header->_action_idAttributes = $this->_action_idAttributes;
        $this->Parent->action_id->Value = $Header->action_id;
        $this->Parent->action_id->Attributes->RestoreFromArray($Header->_action_idAttributes);
        $this->action_description = $Header->action_description;
        $Header->_action_descriptionAttributes = $this->_action_descriptionAttributes;
        $this->Parent->action_description->Value = $Header->action_description;
        $this->Parent->action_description->Attributes->RestoreFromArray($Header->_action_descriptionAttributes);
        $this->rol = $Header->rol;
        $Header->_rolAttributes = $this->_rolAttributes;
        $this->Parent->rol->Value = $Header->rol;
        $this->Parent->rol->Attributes->RestoreFromArray($Header->_rolAttributes);
        $this->rol_desc = $Header->rol_desc;
        $Header->_rol_descAttributes = $this->_rol_descAttributes;
        $this->Parent->rol_desc->Value = $Header->rol_desc;
        $this->Parent->rol_desc->Attributes->RestoreFromArray($Header->_rol_descAttributes);
    }
    function ChangeTotalControls() {
        $this->Report_TotalRecords = $this->Parent->Report_TotalRecords->GetValue();
        $this->Report_Row_Number = $this->Parent->Report_Row_Number->GetValue();
    }
}
//End Report1 ReportGroup class

//Report1 GroupsCollection class @9-EC77C636
class clsGroupsCollectionReport1 {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $muser_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionReport1(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->muser_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupReport1($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->user_idTotalIndex = $this->muser_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->Report_TotalRecords->Value = $this->Parent->Report_TotalRecords->initialValue;
        $this->Parent->user_id->Value = $this->Parent->user_id->initialValue;
        $this->Parent->Report_Row_Number->Value = $this->Parent->Report_Row_Number->initialValue;
        $this->Parent->action_id->Value = $this->Parent->action_id->initialValue;
        $this->Parent->action_description->Value = $this->Parent->action_description->initialValue;
        $this->Parent->rol->Value = $this->Parent->rol->initialValue;
        $this->Parent->rol_desc->Value = $this->Parent->rol_desc->initialValue;
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
        if ($groupName == "user_id") {
            $Groupuser_id = & $this->InitGroup(true);
            $this->Parent->user_id_Header->CCSEventResult = CCGetEvent($this->Parent->user_id_Header->CCSEvents, "OnInitialize", $this->Parent->user_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->user_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->user_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->user_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->user_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->user_id_Header->Height;
                $Groupuser_id->SetTotalControls("GetNextValue");
            $this->Parent->user_id_Header->CCSEventResult = CCGetEvent($this->Parent->user_id_Header->CCSEvents, "OnCalculate", $this->Parent->user_id_Header);
            $Groupuser_id->SetControls();
            $Groupuser_id->Mode = 1;
            $Groupuser_id->GroupType = "user_id";
            $this->muser_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupuser_id;
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
        $Groupuser_id = & $this->InitGroup(true);
        $this->Parent->user_id_Footer->CCSEventResult = CCGetEvent($this->Parent->user_id_Footer->CCSEvents, "OnInitialize", $this->Parent->user_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->user_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->user_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->user_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupuser_id->SetTotalControls("GetPrevValue");
        $Groupuser_id->SyncWithHeader($this->Groups[$this->muser_idCurrentHeaderIndex]);
        if ($this->Parent->user_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->user_id_Footer->Height;
        $this->Parent->user_id_Footer->CCSEventResult = CCGetEvent($this->Parent->user_id_Footer->CCSEvents, "OnCalculate", $this->Parent->user_id_Footer);
        $Groupuser_id->SetControls();
        $this->RestoreValues();
        $Groupuser_id->Mode = 2;
        $Groupuser_id->GroupType ="user_id";
        $this->Groups[] = & $Groupuser_id;
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
//End Report1 GroupsCollection class

class clsReportReport1 { //Report1 Class @9-BC2FB08C

//Report1 Variables @9-E3882B93

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
    public $user_id_HeaderBlock, $user_id_Header;
    public $user_id_FooterBlock, $user_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $user_id_HeaderControls, $user_id_FooterControls;
    public $Sorter_action_id;
//End Report1 Variables

//Class_Initialize Event @9-5C45727E
    function clsReportReport1($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Report1";
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
        $this->user_id_Footer = new clsSection($this);
        $this->user_id_Header = new clsSection($this);
        $this->user_id_Header->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->user_id_Header->Height);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsReport1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->ViewMode = CCGetParam("ViewMode", "Web");
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else if($this->ViewMode == "Print") {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 40;
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
        $this->SorterName = CCGetParam("Report1Order", "");
        $this->SorterDirection = CCGetParam("Report1Dir", "");

        $this->Report_TotalRecords = new clsControl(ccsReportLabel, "Report_TotalRecords", "Report_TotalRecords", ccsText, "", 0, $this);
        $this->Report_TotalRecords->TotalFunction = "Count";
        $this->Report_TotalRecords->IsEmptySource = true;
        $this->Sorter_action_id = new clsSorter($this->ComponentName, "Sorter_action_id", $FileName, $this);
        $this->user_id = new clsControl(ccsReportLabel, "user_id", "user_id", ccsText, "", "", $this);
        $this->user_id->HTML = true;
        $this->user_id->EmptyText = "&nbsp;";
        $this->Report_Row_Number = new clsControl(ccsReportLabel, "Report_Row_Number", "Report_Row_Number", ccsInteger, "", 0, $this);
        $this->Report_Row_Number->HTML = true;
        $this->Report_Row_Number->TotalFunction = "Count";
        $this->Report_Row_Number->IsEmptySource = true;
        $this->Report_Row_Number->EmptyText = "&nbsp;";
        $this->action_id = new clsControl(ccsReportLabel, "action_id", "action_id", ccsText, "", "", $this);
        $this->action_id->HTML = true;
        $this->action_id->EmptyText = "&nbsp;";
        $this->action_description = new clsControl(ccsReportLabel, "action_description", "action_description", ccsMemo, "", "", $this);
        $this->action_description->HTML = true;
        $this->action_description->EmptyText = "&nbsp;";
        $this->rol = new clsControl(ccsReportLabel, "rol", "rol", ccsMemo, "", "", $this);
        $this->rol->HTML = true;
        $this->rol->EmptyText = "&nbsp;";
        $this->rol_desc = new clsControl(ccsReportLabel, "rol_desc", "rol_desc", ccsMemo, "", "", $this);
        $this->rol_desc->HTML = true;
        $this->rol_desc->EmptyText = "&nbsp;";
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

//Initialize Method @9-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @9-E0ABCAEB
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Report_TotalRecords->Errors->Count());
        $errors = ($errors || $this->user_id->Errors->Count());
        $errors = ($errors || $this->Report_Row_Number->Errors->Count());
        $errors = ($errors || $this->action_id->Errors->Count());
        $errors = ($errors || $this->action_description->Errors->Count());
        $errors = ($errors || $this->rol->Errors->Count());
        $errors = ($errors || $this->rol_desc->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDateTime->Errors->Count());
        $errors = ($errors || $this->Report_CurrentPage->Errors->Count());
        $errors = ($errors || $this->Report_TotalPages->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @9-DB87F738
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->Report_TotalRecords->Errors->ToString());
        $errors = ComposeStrings($errors, $this->user_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_Row_Number->Errors->ToString());
        $errors = ComposeStrings($errors, $this->action_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->action_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->rol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->rol_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDateTime->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentPage->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_TotalPages->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @9-755A3A19
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_user_id"] = CCGetFromGet("s_user_id", NULL);
        $this->DataSource->Parameters["urls_action_id"] = CCGetFromGet("s_action_id", NULL);
        $this->DataSource->Parameters["urls_role_id"] = CCGetFromGet("s_role_id", NULL);
        $this->DataSource->Parameters["urls_role_option"] = CCGetFromGet("s_role_option", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $user_idKey = "";
        $Groups = new clsGroupsCollectionReport1($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->user_id->SetValue($this->DataSource->user_id->GetValue());
            $this->action_id->SetValue($this->DataSource->action_id->GetValue());
            $this->action_description->SetValue($this->DataSource->action_description->GetValue());
            $this->rol->SetValue($this->DataSource->rol->GetValue());
            $this->rol_desc->SetValue($this->DataSource->rol_desc->GetValue());
            $this->Report_TotalRecords->SetValue(1);
            $this->Report_Row_Number->SetValue(1);
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $user_idKey != $this->DataSource->f("user_id")) {
                $Groups->OpenGroup("user_id");
            }
            $Groups->AddItem();
            $user_idKey = $this->DataSource->f("user_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $user_idKey != $this->DataSource->f("user_id")) {
                $Groups->CloseGroup("user_id");
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
            $this->ControlsVisible["user_id"] = $this->user_id->Visible;
            $this->ControlsVisible["Report_Row_Number"] = $this->Report_Row_Number->Visible;
            $this->ControlsVisible["action_id"] = $this->action_id->Visible;
            $this->ControlsVisible["action_description"] = $this->action_description->Visible;
            $this->ControlsVisible["rol"] = $this->rol->Visible;
            $this->ControlsVisible["rol_desc"] = $this->rol_desc->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->Report_Row_Number->SetValue($items[$i]->Report_Row_Number);
                        $this->Report_Row_Number->Attributes->RestoreFromArray($items[$i]->_Report_Row_NumberAttributes);
                        $this->action_id->SetValue($items[$i]->action_id);
                        $this->action_id->Attributes->RestoreFromArray($items[$i]->_action_idAttributes);
                        $this->action_description->SetValue($items[$i]->action_description);
                        $this->action_description->Attributes->RestoreFromArray($items[$i]->_action_descriptionAttributes);
                        $this->rol->SetValue($items[$i]->rol);
                        $this->rol->Attributes->RestoreFromArray($items[$i]->_rolAttributes);
                        $this->rol_desc->SetValue($items[$i]->rol_desc);
                        $this->rol_desc->Attributes->RestoreFromArray($items[$i]->_rol_descAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->Report_Row_Number->Show();
                        $this->action_id->Show();
                        $this->action_description->Show();
                        $this->rol->Show();
                        $this->rol_desc->Show();
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
                                $this->Sorter_action_id->Show();
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
                    case "user_id":
                        if ($items[$i]->Mode == 1) {
                            $this->user_id->SetValue($items[$i]->user_id);
                            $this->user_id->Attributes->RestoreFromArray($items[$i]->_user_idAttributes);
                            $this->user_id_Header->CCSEventResult = CCGetEvent($this->user_id_Header->CCSEvents, "BeforeShow", $this->user_id_Header);
                            if ($this->user_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section user_id_Header";
                                $this->Attributes->Show();
                                $this->user_id->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section user_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->user_id_Footer->CCSEventResult = CCGetEvent($this->user_id_Footer->CCSEvents, "BeforeShow", $this->user_id_Footer);
                            if ($this->user_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section user_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section user_id_Footer", true, "Section Detail");
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

} //End Report1 Class @9-FCB6E20C

class clsReport1DataSource extends clsDBConnection1 {  //Report1DataSource Class @9-20EE0F53

//DataSource Variables @9-2F5A8AE2
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $user_id;
    public $action_id;
    public $action_description;
    public $rol;
    public $rol_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @9-5143803D
    function clsReport1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report Report1";
        $this->Initialize();
        $this->user_id = new clsField("user_id", ccsText, "");
        $this->action_id = new clsField("action_id", ccsText, "");
        $this->action_description = new clsField("action_description", ccsMemo, "");
        $this->rol = new clsField("rol", ccsMemo, "");
        $this->rol_desc = new clsField("rol_desc", ccsMemo, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @9-18446EEC
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = " rol";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_action_id" => array("action_id", "")));
    }
//End SetOrder Method

//Prepare Method @9-AC175D0C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_user_id", ccsText, "", "", $this->Parameters["urls_user_id"], "", false);
        $this->wp->AddParameter("2", "urls_action_id", ccsText, "", "", $this->Parameters["urls_action_id"], "", false);
        $this->wp->AddParameter("3", "urls_role_id", ccsText, "", "", $this->Parameters["urls_role_id"], "", false);
        $this->wp->AddParameter("4", "urls_role_option", ccsInteger, "", "", $this->Parameters["urls_role_option"], 0, false);
    }
//End Prepare Method

//Open Method @9-E8BFF816
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "Select user_id, action_id, action_description, rol, rol_desc from \n" .
        "(select a.user_id, a.action_id as action_id, b.action_description , '' as rol, '' as rol_desc\n" .
        "from ssf_sec_user_access a, ssf_sec_actions b \n" .
        "where a.user_id like '%" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "%' and a.action_id like '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "%' and  a.user_rights = 1 \n" .
        "and a.action_id = b.action_id and " . $this->SQLValue($this->wp->GetDBValue("4"), ccsInteger) . " = 0\n" .
        "union\n" .
        "select b.user_id, a.action_id as action_id, c.action_description , a.role_id as rol, d.role_desc as rol_desc\n" .
        "from ssf_sec_role_access a, ssf_sec_user_roles b, ssf_sec_actions c, ssf_sec_roles d\n" .
        "where a.role_id = b.user_role \n" .
        "and b.user_id like '%" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "%' and  a.action_id like '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsText) . "%' and a.role_rights = 1 \n" .
        "and d.role_id like '%" . $this->SQLValue($this->wp->GetDBValue("3"), ccsText) . "%'\n" .
        "and a.action_id = c.action_id and b.user_role = d.role_id ) sqry {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "user_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @9-5CED3B92
    function SetValues()
    {
        $this->user_id->SetDBValue($this->f("user_id"));
        $this->action_id->SetDBValue($this->f("action_id"));
        $this->action_description->SetDBValue($this->f("action_description"));
        $this->rol->SetDBValue($this->f("rol"));
        $this->rol_desc->SetDBValue($this->f("rol_desc"));
    }
//End SetValues Method

} //End Report1DataSource Class @9-FCB6E20C



//Initialize Page @1-E25E4E6C
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
$TemplateFileName = "SSFSecurityReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-30EC2A62
include("./SSFSecurityReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-FE371EDD
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_sec_users = new clsRecordssf_sec_users("", $MainPage);
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$Report1 = new clsReportReport1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_sec_users = & $ssf_sec_users;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->Report1 = & $Report1;
$Report1->Initialize();

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

//Execute Components @1-50438912
$SSFSpiritHeader->Operations();
$ssf_sec_users->Operation();
//End Execute Components

//Go to destination page @1-CDBCC2F4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_sec_users);
    unset($Report1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-2A2B82BD
$SSFSpiritHeader->Show();
$ssf_sec_users->Show();
$Button1->Show();
$Report1->Show();
$ViewMode->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-03F7597F
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_sec_users);
unset($Report1);
unset($Tpl);
//End Unload Page


?>
