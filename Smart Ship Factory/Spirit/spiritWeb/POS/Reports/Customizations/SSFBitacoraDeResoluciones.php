<?php
//Include Common Files @1-4817801F
define("RelativePath", "../../..");
define("PathToCurrentPage", "/POS/Reports/Customizations/");
define("FileName", "SSFBitacoraDeResoluciones.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @27-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//Include Page implementation @29-001F6686
include_once(RelativePath . "/Reports/SSFReportSiteDataHeader.php");
//End Include Page implementation

class clsRecordssf_tkt_resolucion_sat1 { //ssf_tkt_resolucion_sat1 Class @30-8F07ED67

//Variables @30-9E315808

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

//Class_Initialize Event @30-5B0D1A6F
    function clsRecordssf_tkt_resolucion_sat1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_resolucion_sat1/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_resolucion_sat1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_ssf_sat_type = new clsControl(ccsListBox, "s_ssf_sat_type", "s_ssf_sat_type", ccsText, "", CCGetRequestParam("s_ssf_sat_type", $Method, NULL), $this);
            $this->s_ssf_sat_type->DSType = dsListOfValues;
            $this->s_ssf_sat_type->Values = array(array("FACT", "Facturas"), array("CRED", "Notas de Crédito"));
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @30-8328667C
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_ssf_sat_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_ssf_sat_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @30-CF2F3C1B
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_ssf_sat_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @30-4A4FFEBA
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
        $Redirect = "SSFBitacoraDeResoluciones.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFBitacoraDeResoluciones.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @30-B13B9272
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_ssf_sat_type->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_ssf_sat_type->Errors->ToString());
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

        $this->s_ssf_sat_type->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_tkt_resolucion_sat1 Class @30-FCB6E20C

//ssf_tkt_resolucion_sat ReportGroup class @2-371407FC
class clsReportGroupssf_tkt_resolucion_sat {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $ssf_sat_nro_resolucion, $_ssf_sat_nro_resolucionAttributes;
    public $ssf_sat_date, $_ssf_sat_dateAttributes;
    public $ssf_sat_group, $_ssf_sat_groupAttributes;
    public $ssf_sat_desde, $_ssf_sat_desdeAttributes;
    public $ssf_sat_hasta, $_ssf_sat_hastaAttributes;
    public $ssf_sat_date_resolucion, $_ssf_sat_date_resolucionAttributes;
    public $ssf_sat_type, $_ssf_sat_typeAttributes;
    public $Report_CurrentDate, $_Report_CurrentDateAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;

    function clsReportGroupssf_tkt_resolucion_sat(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->ssf_sat_nro_resolucion = $this->Parent->ssf_sat_nro_resolucion->Value;
        $this->ssf_sat_date = $this->Parent->ssf_sat_date->Value;
        $this->ssf_sat_group = $this->Parent->ssf_sat_group->Value;
        $this->ssf_sat_desde = $this->Parent->ssf_sat_desde->Value;
        $this->ssf_sat_hasta = $this->Parent->ssf_sat_hasta->Value;
        $this->ssf_sat_date_resolucion = $this->Parent->ssf_sat_date_resolucion->Value;
        $this->ssf_sat_type = $this->Parent->ssf_sat_type->Value;
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->_Sorter_ssf_sat_nro_resolucionAttributes = $this->Parent->Sorter_ssf_sat_nro_resolucion->Attributes->GetAsArray();
        $this->_Sorter_ssf_sat_dateAttributes = $this->Parent->Sorter_ssf_sat_date->Attributes->GetAsArray();
        $this->_Sorter_ssf_sat_groupAttributes = $this->Parent->Sorter_ssf_sat_group->Attributes->GetAsArray();
        $this->_Sorter_ssf_sat_desdeAttributes = $this->Parent->Sorter_ssf_sat_desde->Attributes->GetAsArray();
        $this->_Sorter_ssf_sat_hastaAttributes = $this->Parent->Sorter_ssf_sat_hasta->Attributes->GetAsArray();
        $this->_Sorter_ssf_sat_date_resolucionAttributes = $this->Parent->Sorter_ssf_sat_date_resolucion->Attributes->GetAsArray();
        $this->_Sorter1Attributes = $this->Parent->Sorter1->Attributes->GetAsArray();
        $this->_ssf_sat_nro_resolucionAttributes = $this->Parent->ssf_sat_nro_resolucion->Attributes->GetAsArray();
        $this->_ssf_sat_dateAttributes = $this->Parent->ssf_sat_date->Attributes->GetAsArray();
        $this->_ssf_sat_groupAttributes = $this->Parent->ssf_sat_group->Attributes->GetAsArray();
        $this->_ssf_sat_desdeAttributes = $this->Parent->ssf_sat_desde->Attributes->GetAsArray();
        $this->_ssf_sat_hastaAttributes = $this->Parent->ssf_sat_hasta->Attributes->GetAsArray();
        $this->_ssf_sat_date_resolucionAttributes = $this->Parent->ssf_sat_date_resolucion->Attributes->GetAsArray();
        $this->_ssf_sat_typeAttributes = $this->Parent->ssf_sat_type->Attributes->GetAsArray();
        $this->_Report_CurrentDateAttributes = $this->Parent->Report_CurrentDate->Attributes->GetAsArray();
        $this->_NavigatorAttributes = $this->Parent->Navigator->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $this->ssf_sat_nro_resolucion = $Header->ssf_sat_nro_resolucion;
        $Header->_ssf_sat_nro_resolucionAttributes = $this->_ssf_sat_nro_resolucionAttributes;
        $this->Parent->ssf_sat_nro_resolucion->Value = $Header->ssf_sat_nro_resolucion;
        $this->Parent->ssf_sat_nro_resolucion->Attributes->RestoreFromArray($Header->_ssf_sat_nro_resolucionAttributes);
        $this->ssf_sat_date = $Header->ssf_sat_date;
        $Header->_ssf_sat_dateAttributes = $this->_ssf_sat_dateAttributes;
        $this->Parent->ssf_sat_date->Value = $Header->ssf_sat_date;
        $this->Parent->ssf_sat_date->Attributes->RestoreFromArray($Header->_ssf_sat_dateAttributes);
        $this->ssf_sat_group = $Header->ssf_sat_group;
        $Header->_ssf_sat_groupAttributes = $this->_ssf_sat_groupAttributes;
        $this->Parent->ssf_sat_group->Value = $Header->ssf_sat_group;
        $this->Parent->ssf_sat_group->Attributes->RestoreFromArray($Header->_ssf_sat_groupAttributes);
        $this->ssf_sat_desde = $Header->ssf_sat_desde;
        $Header->_ssf_sat_desdeAttributes = $this->_ssf_sat_desdeAttributes;
        $this->Parent->ssf_sat_desde->Value = $Header->ssf_sat_desde;
        $this->Parent->ssf_sat_desde->Attributes->RestoreFromArray($Header->_ssf_sat_desdeAttributes);
        $this->ssf_sat_hasta = $Header->ssf_sat_hasta;
        $Header->_ssf_sat_hastaAttributes = $this->_ssf_sat_hastaAttributes;
        $this->Parent->ssf_sat_hasta->Value = $Header->ssf_sat_hasta;
        $this->Parent->ssf_sat_hasta->Attributes->RestoreFromArray($Header->_ssf_sat_hastaAttributes);
        $this->ssf_sat_date_resolucion = $Header->ssf_sat_date_resolucion;
        $Header->_ssf_sat_date_resolucionAttributes = $this->_ssf_sat_date_resolucionAttributes;
        $this->Parent->ssf_sat_date_resolucion->Value = $Header->ssf_sat_date_resolucion;
        $this->Parent->ssf_sat_date_resolucion->Attributes->RestoreFromArray($Header->_ssf_sat_date_resolucionAttributes);
        $this->ssf_sat_type = $Header->ssf_sat_type;
        $Header->_ssf_sat_typeAttributes = $this->_ssf_sat_typeAttributes;
        $this->Parent->ssf_sat_type->Value = $Header->ssf_sat_type;
        $this->Parent->ssf_sat_type->Attributes->RestoreFromArray($Header->_ssf_sat_typeAttributes);
    }
    function ChangeTotalControls() {
    }
}
//End ssf_tkt_resolucion_sat ReportGroup class

//ssf_tkt_resolucion_sat GroupsCollection class @2-302C82CC
class clsGroupsCollectionssf_tkt_resolucion_sat {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_tkt_resolucion_sat(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_tkt_resolucion_sat($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->ssf_sat_nro_resolucion->Value = $this->Parent->ssf_sat_nro_resolucion->initialValue;
        $this->Parent->ssf_sat_date->Value = $this->Parent->ssf_sat_date->initialValue;
        $this->Parent->ssf_sat_group->Value = $this->Parent->ssf_sat_group->initialValue;
        $this->Parent->ssf_sat_desde->Value = $this->Parent->ssf_sat_desde->initialValue;
        $this->Parent->ssf_sat_hasta->Value = $this->Parent->ssf_sat_hasta->initialValue;
        $this->Parent->ssf_sat_date_resolucion->Value = $this->Parent->ssf_sat_date_resolucion->initialValue;
        $this->Parent->ssf_sat_type->Value = $this->Parent->ssf_sat_type->initialValue;
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
//End ssf_tkt_resolucion_sat GroupsCollection class

class clsReportssf_tkt_resolucion_sat { //ssf_tkt_resolucion_sat Class @2-699BB9A4

//ssf_tkt_resolucion_sat Variables @2-A8BD7514

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
    public $Sorter_ssf_sat_nro_resolucion;
    public $Sorter_ssf_sat_date;
    public $Sorter_ssf_sat_group;
    public $Sorter_ssf_sat_desde;
    public $Sorter_ssf_sat_hasta;
    public $Sorter_ssf_sat_date_resolucion;
    public $Sorter1;
//End ssf_tkt_resolucion_sat Variables

//Class_Initialize Event @2-B29BD8C4
    function clsReportssf_tkt_resolucion_sat($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_resolucion_sat";
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
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 2;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_tkt_resolucion_satDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_resolucion_satOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_resolucion_satDir", "");

        $this->Sorter_ssf_sat_nro_resolucion = new clsSorter($this->ComponentName, "Sorter_ssf_sat_nro_resolucion", $FileName, $this);
        $this->Sorter_ssf_sat_date = new clsSorter($this->ComponentName, "Sorter_ssf_sat_date", $FileName, $this);
        $this->Sorter_ssf_sat_group = new clsSorter($this->ComponentName, "Sorter_ssf_sat_group", $FileName, $this);
        $this->Sorter_ssf_sat_desde = new clsSorter($this->ComponentName, "Sorter_ssf_sat_desde", $FileName, $this);
        $this->Sorter_ssf_sat_hasta = new clsSorter($this->ComponentName, "Sorter_ssf_sat_hasta", $FileName, $this);
        $this->Sorter_ssf_sat_date_resolucion = new clsSorter($this->ComponentName, "Sorter_ssf_sat_date_resolucion", $FileName, $this);
        $this->Sorter1 = new clsSorter($this->ComponentName, "Sorter1", $FileName, $this);
        $this->ssf_sat_nro_resolucion = new clsControl(ccsReportLabel, "ssf_sat_nro_resolucion", "ssf_sat_nro_resolucion", ccsText, "", "", $this);
        $this->ssf_sat_date = new clsControl(ccsReportLabel, "ssf_sat_date", "ssf_sat_date", ccsText, "", "", $this);
        $this->ssf_sat_group = new clsControl(ccsReportLabel, "ssf_sat_group", "ssf_sat_group", ccsText, "", "", $this);
        $this->ssf_sat_desde = new clsControl(ccsReportLabel, "ssf_sat_desde", "ssf_sat_desde", ccsInteger, "", "", $this);
        $this->ssf_sat_hasta = new clsControl(ccsReportLabel, "ssf_sat_hasta", "ssf_sat_hasta", ccsInteger, "", "", $this);
        $this->ssf_sat_date_resolucion = new clsControl(ccsReportLabel, "ssf_sat_date_resolucion", "ssf_sat_date_resolucion", ccsText, "", "", $this);
        $this->ssf_sat_type = new clsControl(ccsReportLabel, "ssf_sat_type", "ssf_sat_type", ccsText, "", "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
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

//CheckErrors Method @2-E690B9D1
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->ssf_sat_nro_resolucion->Errors->Count());
        $errors = ($errors || $this->ssf_sat_date->Errors->Count());
        $errors = ($errors || $this->ssf_sat_group->Errors->Count());
        $errors = ($errors || $this->ssf_sat_desde->Errors->Count());
        $errors = ($errors || $this->ssf_sat_hasta->Errors->Count());
        $errors = ($errors || $this->ssf_sat_date_resolucion->Errors->Count());
        $errors = ($errors || $this->ssf_sat_type->Errors->Count());
        $errors = ($errors || $this->Report_CurrentDate->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @2-D6393EB7
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->ssf_sat_nro_resolucion->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_desde->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_hasta->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_date_resolucion->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Report_CurrentDate->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @2-0C8F8799
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urls_ssf_sat_type"] = CCGetFromGet("s_ssf_sat_type", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $Groups = new clsGroupsCollectionssf_tkt_resolucion_sat($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->ssf_sat_nro_resolucion->SetValue($this->DataSource->ssf_sat_nro_resolucion->GetValue());
            $this->ssf_sat_date->SetValue($this->DataSource->ssf_sat_date->GetValue());
            $this->ssf_sat_group->SetValue($this->DataSource->ssf_sat_group->GetValue());
            $this->ssf_sat_desde->SetValue($this->DataSource->ssf_sat_desde->GetValue());
            $this->ssf_sat_hasta->SetValue($this->DataSource->ssf_sat_hasta->GetValue());
            $this->ssf_sat_date_resolucion->SetValue($this->DataSource->ssf_sat_date_resolucion->GetValue());
            $this->ssf_sat_type->SetValue($this->DataSource->ssf_sat_type->GetValue());
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
            $this->ControlsVisible["ssf_sat_nro_resolucion"] = $this->ssf_sat_nro_resolucion->Visible;
            $this->ControlsVisible["ssf_sat_date"] = $this->ssf_sat_date->Visible;
            $this->ControlsVisible["ssf_sat_group"] = $this->ssf_sat_group->Visible;
            $this->ControlsVisible["ssf_sat_desde"] = $this->ssf_sat_desde->Visible;
            $this->ControlsVisible["ssf_sat_hasta"] = $this->ssf_sat_hasta->Visible;
            $this->ControlsVisible["ssf_sat_date_resolucion"] = $this->ssf_sat_date_resolucion->Visible;
            $this->ControlsVisible["ssf_sat_type"] = $this->ssf_sat_type->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->ssf_sat_nro_resolucion->SetValue($items[$i]->ssf_sat_nro_resolucion);
                        $this->ssf_sat_nro_resolucion->Attributes->RestoreFromArray($items[$i]->_ssf_sat_nro_resolucionAttributes);
                        $this->ssf_sat_date->SetValue($items[$i]->ssf_sat_date);
                        $this->ssf_sat_date->Attributes->RestoreFromArray($items[$i]->_ssf_sat_dateAttributes);
                        $this->ssf_sat_group->SetValue($items[$i]->ssf_sat_group);
                        $this->ssf_sat_group->Attributes->RestoreFromArray($items[$i]->_ssf_sat_groupAttributes);
                        $this->ssf_sat_desde->SetValue($items[$i]->ssf_sat_desde);
                        $this->ssf_sat_desde->Attributes->RestoreFromArray($items[$i]->_ssf_sat_desdeAttributes);
                        $this->ssf_sat_hasta->SetValue($items[$i]->ssf_sat_hasta);
                        $this->ssf_sat_hasta->Attributes->RestoreFromArray($items[$i]->_ssf_sat_hastaAttributes);
                        $this->ssf_sat_date_resolucion->SetValue($items[$i]->ssf_sat_date_resolucion);
                        $this->ssf_sat_date_resolucion->Attributes->RestoreFromArray($items[$i]->_ssf_sat_date_resolucionAttributes);
                        $this->ssf_sat_type->SetValue($items[$i]->ssf_sat_type);
                        $this->ssf_sat_type->Attributes->RestoreFromArray($items[$i]->_ssf_sat_typeAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->ssf_sat_nro_resolucion->Show();
                        $this->ssf_sat_date->Show();
                        $this->ssf_sat_group->Show();
                        $this->ssf_sat_desde->Show();
                        $this->ssf_sat_hasta->Show();
                        $this->ssf_sat_date_resolucion->Show();
                        $this->ssf_sat_type->Show();
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
                                $this->Sorter_ssf_sat_nro_resolucion->Show();
                                $this->Sorter_ssf_sat_date->Show();
                                $this->Sorter_ssf_sat_group->Show();
                                $this->Sorter_ssf_sat_desde->Show();
                                $this->Sorter_ssf_sat_hasta->Show();
                                $this->Sorter_ssf_sat_date_resolucion->Show();
                                $this->Sorter1->Show();
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

} //End ssf_tkt_resolucion_sat Class @2-FCB6E20C

class clsssf_tkt_resolucion_satDataSource extends clsDBConnection1 {  //ssf_tkt_resolucion_satDataSource Class @2-41B965E0

//DataSource Variables @2-249E811F
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $ssf_sat_nro_resolucion;
    public $ssf_sat_date;
    public $ssf_sat_group;
    public $ssf_sat_desde;
    public $ssf_sat_hasta;
    public $ssf_sat_date_resolucion;
    public $ssf_sat_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-4385C158
    function clsssf_tkt_resolucion_satDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_tkt_resolucion_sat";
        $this->Initialize();
        $this->ssf_sat_nro_resolucion = new clsField("ssf_sat_nro_resolucion", ccsText, "");
        $this->ssf_sat_date = new clsField("ssf_sat_date", ccsText, "");
        $this->ssf_sat_group = new clsField("ssf_sat_group", ccsText, "");
        $this->ssf_sat_desde = new clsField("ssf_sat_desde", ccsInteger, "");
        $this->ssf_sat_hasta = new clsField("ssf_sat_hasta", ccsInteger, "");
        $this->ssf_sat_date_resolucion = new clsField("ssf_sat_date_resolucion", ccsText, "");
        $this->ssf_sat_type = new clsField("ssf_sat_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-1D0C4634
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_sat_group, ssf_sat_desde";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ssf_sat_nro_resolucion" => array("ssf_sat_nro_resolucion", ""), 
            "Sorter_ssf_sat_date" => array("ssf_sat_date", ""), 
            "Sorter_ssf_sat_group" => array("ssf_sat_group", ""), 
            "Sorter_ssf_sat_desde" => array("ssf_sat_desde", ""), 
            "Sorter_ssf_sat_hasta" => array("ssf_sat_hasta", ""), 
            "Sorter_ssf_sat_date_resolucion" => array("ssf_sat_date_resolucion", ""), 
            "Sorter1" => array("ssf_sat_type", "")));
    }
//End SetOrder Method

//Prepare Method @2-67CC8DDD
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_ssf_sat_type", ccsText, "", "", $this->Parameters["urls_ssf_sat_type"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "ssf_sat_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @2-54412BAB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_resolucion_sat {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, $this->Order));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-016EA056
    function SetValues()
    {
        $this->ssf_sat_nro_resolucion->SetDBValue($this->f("ssf_sat_nro_resolucion"));
        $this->ssf_sat_date->SetDBValue($this->f("ssf_sat_date"));
        $this->ssf_sat_group->SetDBValue($this->f("ssf_sat_group"));
        $this->ssf_sat_desde->SetDBValue(trim($this->f("ssf_sat_desde")));
        $this->ssf_sat_hasta->SetDBValue(trim($this->f("ssf_sat_hasta")));
        $this->ssf_sat_date_resolucion->SetDBValue($this->f("ssf_sat_date_resolucion"));
        $this->ssf_sat_type->SetDBValue($this->f("ssf_sat_type"));
    }
//End SetValues Method

} //End ssf_tkt_resolucion_satDataSource Class @2-FCB6E20C

//Initialize Page @1-5FBC85AC
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
$TemplateFileName = "SSFBitacoraDeResoluciones.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../../";
//End Initialize Page

//Authenticate User @1-7B750A97
CCSecurityRedirect("", "../../../Security/Login.php");
//End Authenticate User

//Include events file @1-69E98DD8
include("./SSFBitacoraDeResoluciones_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C317C18E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$SSFReportSiteDataHeader = new clsSSFReportSiteDataHeader("../../../Reports/", "SSFReportSiteDataHeader", $MainPage);
$SSFReportSiteDataHeader->Initialize();
$ssf_tkt_resolucion_sat1 = new clsRecordssf_tkt_resolucion_sat1("", $MainPage);
$Report_Print = new clsControl(ccsLink, "Report_Print", "Report_Print", ccsText, "", CCGetRequestParam("Report_Print", ccsGet, NULL), $MainPage);
$Report_Print->Page = "SSFBitacoraDeResoluciones.php";
$ssf_tkt_resolucion_sat = new clsReportssf_tkt_resolucion_sat("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->SSFReportSiteDataHeader = & $SSFReportSiteDataHeader;
$MainPage->ssf_tkt_resolucion_sat1 = & $ssf_tkt_resolucion_sat1;
$MainPage->Report_Print = & $Report_Print;
$MainPage->ssf_tkt_resolucion_sat = & $ssf_tkt_resolucion_sat;
$Report_Print->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Report_Print->Parameters = CCAddParam($Report_Print->Parameters, "ViewMode", "Print");
$ssf_tkt_resolucion_sat->Initialize();

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

//Execute Components @1-99E80E24
$SSFSpiritHeader->Operations();
$SSFReportSiteDataHeader->Operations();
$ssf_tkt_resolucion_sat1->Operation();
//End Execute Components

//Go to destination page @1-3F0057D4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    $SSFReportSiteDataHeader->Class_Terminate();
    unset($SSFReportSiteDataHeader);
    unset($ssf_tkt_resolucion_sat1);
    unset($ssf_tkt_resolucion_sat);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-38038E2B
$SSFSpiritHeader->Show();
$SSFReportSiteDataHeader->Show();
$ssf_tkt_resolucion_sat1->Show();
$ssf_tkt_resolucion_sat->Show();
$Report_Print->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-3A7E120E
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
$SSFReportSiteDataHeader->Class_Terminate();
unset($SSFReportSiteDataHeader);
unset($ssf_tkt_resolucion_sat1);
unset($ssf_tkt_resolucion_sat);
unset($Tpl);
//End Unload Page


?>
