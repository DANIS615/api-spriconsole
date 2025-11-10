<?php
//Include Common Files @1-B73C98EB
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFShiftReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @188-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridShiftReport_Header { //ShiftReport_Header class @155-179D8C11

//Variables @155-6E51DF5A

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
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
//End Variables

//Class_Initialize Event @155-C2D45EFE
    function clsGridShiftReport_Header($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ShiftReport_Header";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ShiftReport_Header";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsShiftReport_HeaderDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 1;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->period_type = new clsControl(ccsLabel, "period_type", "period_type", ccsText, "", CCGetRequestParam("period_type", ccsGet, NULL), $this);
        $this->period_id = new clsControl(ccsLabel, "period_id", "period_id", ccsInteger, "", CCGetRequestParam("period_id", ccsGet, NULL), $this);
        $this->period_start_date = new clsControl(ccsLabel, "period_start_date", "period_start_date", ccsText, "", CCGetRequestParam("period_start_date", ccsGet, NULL), $this);
        $this->period_start_time = new clsControl(ccsLabel, "period_start_time", "period_start_time", ccsText, "", CCGetRequestParam("period_start_time", ccsGet, NULL), $this);
        $this->period_end_date = new clsControl(ccsLabel, "period_end_date", "period_end_date", ccsText, "", CCGetRequestParam("period_end_date", ccsGet, NULL), $this);
        $this->period_end_time = new clsControl(ccsLabel, "period_end_time", "period_end_time", ccsText, "", CCGetRequestParam("period_end_time", ccsGet, NULL), $this);
        $this->period_start_trans_id = new clsControl(ccsLabel, "period_start_trans_id", "period_start_trans_id", ccsInteger, "", CCGetRequestParam("period_start_trans_id", ccsGet, NULL), $this);
        $this->period_end_trans_id = new clsControl(ccsLabel, "period_end_trans_id", "period_end_trans_id", ccsText, "", CCGetRequestParam("period_end_trans_id", ccsGet, NULL), $this);
        $this->period_parent_cons_id = new clsControl(ccsLabel, "period_parent_cons_id", "period_parent_cons_id", ccsInteger, "", CCGetRequestParam("period_parent_cons_id", ccsGet, NULL), $this);
        $this->lblTotalofTransactions = new clsControl(ccsLabel, "lblTotalofTransactions", "lblTotalofTransactions", ccsInteger, "", CCGetRequestParam("lblTotalofTransactions", ccsGet, NULL), $this);
        $this->lblTotalofTransactions->HTML = true;
        $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $this);
        $this->Link1->Page = "SSFTransactionsReport.php";
    }
//End Class_Initialize Event

//Initialize Method @155-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @155-1099F56A
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlp_period_type"] = CCGetFromGet("p_period_type", NULL);
        $this->DataSource->Parameters["urlp_period_id"] = CCGetFromGet("p_period_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["period_type"] = $this->period_type->Visible;
            $this->ControlsVisible["period_id"] = $this->period_id->Visible;
            $this->ControlsVisible["period_start_date"] = $this->period_start_date->Visible;
            $this->ControlsVisible["period_start_time"] = $this->period_start_time->Visible;
            $this->ControlsVisible["period_end_date"] = $this->period_end_date->Visible;
            $this->ControlsVisible["period_end_time"] = $this->period_end_time->Visible;
            $this->ControlsVisible["period_start_trans_id"] = $this->period_start_trans_id->Visible;
            $this->ControlsVisible["period_end_trans_id"] = $this->period_end_trans_id->Visible;
            $this->ControlsVisible["period_parent_cons_id"] = $this->period_parent_cons_id->Visible;
            $this->ControlsVisible["lblTotalofTransactions"] = $this->lblTotalofTransactions->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->period_type->SetValue($this->DataSource->period_type->GetValue());
                $this->period_id->SetValue($this->DataSource->period_id->GetValue());
                $this->period_start_date->SetValue($this->DataSource->period_start_date->GetValue());
                $this->period_start_time->SetValue($this->DataSource->period_start_time->GetValue());
                $this->period_end_date->SetValue($this->DataSource->period_end_date->GetValue());
                $this->period_end_time->SetValue($this->DataSource->period_end_time->GetValue());
                $this->period_start_trans_id->SetValue($this->DataSource->period_start_trans_id->GetValue());
                $this->period_end_trans_id->SetValue($this->DataSource->period_end_trans_id->GetValue());
                $this->period_parent_cons_id->SetValue($this->DataSource->period_parent_cons_id->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->period_type->Show();
                $this->period_id->Show();
                $this->period_start_date->Show();
                $this->period_start_time->Show();
                $this->period_end_date->Show();
                $this->period_end_time->Show();
                $this->period_start_trans_id->Show();
                $this->period_end_trans_id->Show();
                $this->period_parent_cons_id->Show();
                $this->lblTotalofTransactions->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }
        else { // Show NoRecords block if no records are found
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $this->Link1->Parameters = "";
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "p_sale_start", $this->DataSource->f("period_start_trans_id"));
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "p_sale_end", $this->DataSource->f("period_end_trans_id"));
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_date_from", $this->DataSource->f("period_start_date"));
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_date_to", $this->DataSource->f("period_end_date"));
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_time_from", $this->DataSource->f("period_start_time"));
        $this->Link1->Parameters = CCAddParam($this->Link1->Parameters, "s_time_to", $this->DataSource->f("period_end_time"));
        $this->Link1->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @155-D979167F
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->period_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_start_trans_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_end_trans_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->period_parent_cons_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblTotalofTransactions->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ShiftReport_Header Class @155-FCB6E20C

class clsShiftReport_HeaderDataSource extends clsDBConnection1 {  //ShiftReport_HeaderDataSource Class @155-15D9D958

//DataSource Variables @155-6E907502
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $period_type;
    public $period_id;
    public $period_start_date;
    public $period_start_time;
    public $period_end_date;
    public $period_end_time;
    public $period_start_trans_id;
    public $period_end_trans_id;
    public $period_parent_cons_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @155-E62D3684
    function clsShiftReport_HeaderDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ShiftReport_Header";
        $this->Initialize();
        $this->period_type = new clsField("period_type", ccsText, "");
        $this->period_id = new clsField("period_id", ccsInteger, "");
        $this->period_start_date = new clsField("period_start_date", ccsText, "");
        $this->period_start_time = new clsField("period_start_time", ccsText, "");
        $this->period_end_date = new clsField("period_end_date", ccsText, "");
        $this->period_end_time = new clsField("period_end_time", ccsText, "");
        $this->period_start_trans_id = new clsField("period_start_trans_id", ccsInteger, "");
        $this->period_end_trans_id = new clsField("period_end_trans_id", ccsText, "");
        $this->period_parent_cons_id = new clsField("period_parent_cons_id", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @155-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @155-67E93D67
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_period_type", ccsText, "", "", $this->Parameters["urlp_period_type"], S, false);
        $this->wp->AddParameter("2", "urlp_period_id", ccsInteger, "", "", $this->Parameters["urlp_period_id"], 1, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "period_type", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "period_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @155-9CE45B49
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_shifts_data";
        $this->SQL = "SELECT period_type, period_id, period_start_date, period_start_time, period_end_date, period_end_time, period_start_trans_id, period_end_trans_id,\n\n" .
        "period_parent_cons_id \n\n" .
        "FROM ssf_addin_shifts_data {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @155-EE107D09
    function SetValues()
    {
        $this->period_type->SetDBValue($this->f("period_type"));
        $this->period_id->SetDBValue(trim($this->f("period_id")));
        $this->period_start_date->SetDBValue($this->f("period_start_date"));
        $this->period_start_time->SetDBValue($this->f("period_start_time"));
        $this->period_end_date->SetDBValue($this->f("period_end_date"));
        $this->period_end_time->SetDBValue($this->f("period_end_time"));
        $this->period_start_trans_id->SetDBValue(trim($this->f("period_start_trans_id")));
        $this->period_end_trans_id->SetDBValue($this->f("period_end_trans_id"));
        $this->period_parent_cons_id->SetDBValue(trim($this->f("period_parent_cons_id")));
    }
//End SetValues Method

} //End ShiftReport_HeaderDataSource Class @155-FCB6E20C

//ShiftReport_ByType ReportGroup class @61-B9E34CC2
class clsReportGroupShiftReport_ByType {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $sale_type, $sale_typeDup, $_sale_typeAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $Sum_total_volume, $_Sum_total_volumeAttributes;
    public $Sum_total_money, $_Sum_total_moneyAttributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $sale_typeTotalIndex;

    function clsReportGroupShiftReport_ByType(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->sale_type = $this->Parent->sale_type->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        if ($PrevGroup) {
            $this->sale_typeDup =  CCCompareValues($this->sale_type, $PrevGroup->sale_type, $this->Parent->sale_type->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetTotalValue($mode);
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetTotalValue($mode);
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->_sale_typeAttributes = $this->Parent->sale_type->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_Sum_total_volumeAttributes = $this->Parent->Sum_total_volume->Attributes->GetAsArray();
        $this->_Sum_total_moneyAttributes = $this->Parent->Sum_total_money->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_total_volume = $this->Sum_total_volume;
        $Header->_Sum_total_volumeAttributes = $this->_Sum_total_volumeAttributes;
        $Header->Sum_total_money = $this->Sum_total_money;
        $Header->_Sum_total_moneyAttributes = $this->_Sum_total_moneyAttributes;
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $this->sale_type = $Header->sale_type;
        $Header->_sale_typeAttributes = $this->_sale_typeAttributes;
        $this->Parent->sale_type->Value = $Header->sale_type;
        $this->Parent->sale_type->Attributes->RestoreFromArray($Header->_sale_typeAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
    }
    function ChangeTotalControls() {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetValue();
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetValue();
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
    }
}
//End ShiftReport_ByType ReportGroup class

//ShiftReport_ByType GroupsCollection class @61-C742E26B
class clsGroupsCollectionShiftReport_ByType {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $msale_typeCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionShiftReport_ByType(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->msale_typeCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupShiftReport_ByType($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->sale_typeTotalIndex = $this->msale_typeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->sale_type->Value = $this->Parent->sale_type->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->Sum_total_volume->Value = $this->Parent->Sum_total_volume->initialValue;
        $this->Parent->Sum_total_money->Value = $this->Parent->Sum_total_money->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
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
        if ($groupName == "sale_type") {
            $Groupsale_type = & $this->InitGroup(true);
            $this->Parent->sale_type_Header->CCSEventResult = CCGetEvent($this->Parent->sale_type_Header->CCSEvents, "OnInitialize", $this->Parent->sale_type_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->sale_type_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->sale_type_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->sale_type_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->sale_type_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->sale_type_Header->Height;
                $Groupsale_type->SetTotalControls("GetNextValue");
            $this->Parent->sale_type_Header->CCSEventResult = CCGetEvent($this->Parent->sale_type_Header->CCSEvents, "OnCalculate", $this->Parent->sale_type_Header);
            $Groupsale_type->SetControls();
            $Groupsale_type->Mode = 1;
            $Groupsale_type->GroupType = "sale_type";
            $this->msale_typeCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupsale_type;
            $this->Parent->Sum_total_volume->Reset();
            $this->Parent->Sum_total_money->Reset();
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
        $Groupsale_type = & $this->InitGroup(true);
        $this->Parent->sale_type_Footer->CCSEventResult = CCGetEvent($this->Parent->sale_type_Footer->CCSEvents, "OnInitialize", $this->Parent->sale_type_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->sale_type_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->sale_type_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->sale_type_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupsale_type->SetTotalControls("GetPrevValue");
        $Groupsale_type->SyncWithHeader($this->Groups[$this->msale_typeCurrentHeaderIndex]);
        if ($this->Parent->sale_type_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->sale_type_Footer->Height;
        $this->Parent->sale_type_Footer->CCSEventResult = CCGetEvent($this->Parent->sale_type_Footer->CCSEvents, "OnCalculate", $this->Parent->sale_type_Footer);
        $Groupsale_type->SetControls();
        $this->Parent->Sum_total_volume->Reset();
        $this->Parent->Sum_total_money->Reset();
        $this->RestoreValues();
        $Groupsale_type->Mode = 2;
        $Groupsale_type->GroupType ="sale_type";
        $this->Groups[] = & $Groupsale_type;
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
//End ShiftReport_ByType GroupsCollection class

class clsReportShiftReport_ByType { //ShiftReport_ByType Class @61-DBDBF405

//ShiftReport_ByType Variables @61-3CF23065

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
    public $sale_type_HeaderBlock, $sale_type_Header;
    public $sale_type_FooterBlock, $sale_type_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $sale_type_HeaderControls, $sale_type_FooterControls;
//End ShiftReport_ByType Variables

//Class_Initialize Event @61-6187A562
    function clsReportShiftReport_ByType($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ShiftReport_ByType";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->sale_type_Footer = new clsSection($this);
        $this->sale_type_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->sale_type_Footer->Height);
        $this->sale_type_Footer->Visible = false;
        $this->sale_type_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsShiftReport_ByTypeDataSource($this);
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

        $this->sale_type = new clsControl(ccsReportLabel, "sale_type", "sale_type", ccsInteger, "", "", $this);
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_volume = new clsControl(ccsReportLabel, "Sum_total_volume", "Sum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume->TotalFunction = "Sum";
        $this->Sum_total_money = new clsControl(ccsReportLabel, "Sum_total_money", "Sum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money->TotalFunction = "Sum";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->TotalFunction = "Sum";
    }
//End Class_Initialize Event

//Initialize Method @61-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @61-296BB419
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->sale_type->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume->Errors->Count());
        $errors = ($errors || $this->Sum_total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @61-B062C845
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->sale_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @61-378CE5C6
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urlp_start_id"] = CCGetFromGet("p_start_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $sale_typeKey = "";
        $Groups = new clsGroupsCollectionShiftReport_ByType($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->sale_type->SetValue($this->DataSource->sale_type->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->Sum_total_volume->SetValue($this->DataSource->Sum_total_volume->GetValue());
            $this->Sum_total_money->SetValue($this->DataSource->Sum_total_money->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $sale_typeKey != $this->DataSource->f("sale_type")) {
                $Groups->OpenGroup("sale_type");
            }
            $Groups->AddItem();
            $sale_typeKey = $this->DataSource->f("sale_type");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $sale_typeKey != $this->DataSource->f("sale_type")) {
                $Groups->CloseGroup("sale_type");
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
            $this->ControlsVisible["sale_type"] = $this->sale_type->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            $this->ControlsVisible["Sum_total_volume"] = $this->Sum_total_volume->Visible;
            $this->ControlsVisible["Sum_total_money"] = $this->Sum_total_money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->sale_type->Visible = $this->ControlsVisible["sale_type"] && !$items[$i]->sale_typeDup;
                        $this->sale_type->SetValue($items[$i]->sale_type);
                        $this->sale_type->Attributes->RestoreFromArray($items[$i]->_sale_typeAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->sale_type->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "sale_type":
                        if ($items[$i]->Mode == 1) {
                            $this->sale_type_Header->CCSEventResult = CCGetEvent($this->sale_type_Header->CCSEvents, "BeforeShow", $this->sale_type_Header);
                            if ($this->sale_type_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section sale_type_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section sale_type_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_total_volume->SetText(CCFormatNumber($items[$i]->Sum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume->Attributes->RestoreFromArray($items[$i]->_Sum_total_volumeAttributes);
                            $this->Sum_total_money->SetText(CCFormatNumber($items[$i]->Sum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money->Attributes->RestoreFromArray($items[$i]->_Sum_total_moneyAttributes);
                            $this->sale_type_Footer->CCSEventResult = CCGetEvent($this->sale_type_Footer->CCSEvents, "BeforeShow", $this->sale_type_Footer);
                            if ($this->sale_type_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section sale_type_Footer";
                                $this->Sum_total_volume->Show();
                                $this->Sum_total_money->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section sale_type_Footer", true, "Section Detail");
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

} //End ShiftReport_ByType Class @61-FCB6E20C

class clsShiftReport_ByTypeDataSource extends clsDBConnection1 {  //ShiftReport_ByTypeDataSource Class @61-A21FCE82

//DataSource Variables @61-0B4750F1
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $sale_type;
    public $total_volume;
    public $total_money;
    public $Sum_total_volume;
    public $Sum_total_money;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @61-437C3CAB
    function clsShiftReport_ByTypeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ShiftReport_ByType";
        $this->Initialize();
        $this->sale_type = new clsField("sale_type", ccsInteger, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->total_money = new clsField("total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_volume = new clsField("Sum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_money = new clsField("Sum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @61-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @61-17CEB0F0
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_start_id", ccsInteger, "", "", $this->Parameters["urlp_start_id"], 2000, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @61-573C9607
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT sum(volume) AS total_volume, sum(money) AS total_money, sale_type \n\n" .
        "FROM ssf_pump_sales {SQL_Where}\n\n" .
        "GROUP BY sale_type {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "sale_type asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @61-F687A0EC
    function SetValues()
    {
        $this->sale_type->SetDBValue(trim($this->f("sale_type")));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->Sum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
    }
//End SetValues Method

} //End ShiftReport_ByTypeDataSource Class @61-FCB6E20C

//ShiftReport_ByPayment ReportGroup class @86-EAE433EF
class clsReportGroupShiftReport_ByPayment {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $pay_payment_type, $pay_payment_typeDup, $_pay_payment_typeAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $Sum_total_volume, $_Sum_total_volumeAttributes;
    public $Sum_total_money, $_Sum_total_moneyAttributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $pay_payment_typeTotalIndex;

    function clsReportGroupShiftReport_ByPayment(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->pay_payment_type = $this->Parent->pay_payment_type->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        if ($PrevGroup) {
            $this->pay_payment_typeDup =  CCCompareValues($this->pay_payment_type, $PrevGroup->pay_payment_type, $this->Parent->pay_payment_type->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetTotalValue($mode);
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetTotalValue($mode);
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->_pay_payment_typeAttributes = $this->Parent->pay_payment_type->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_Sum_total_volumeAttributes = $this->Parent->Sum_total_volume->Attributes->GetAsArray();
        $this->_Sum_total_moneyAttributes = $this->Parent->Sum_total_money->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_total_volume = $this->Sum_total_volume;
        $Header->_Sum_total_volumeAttributes = $this->_Sum_total_volumeAttributes;
        $Header->Sum_total_money = $this->Sum_total_money;
        $Header->_Sum_total_moneyAttributes = $this->_Sum_total_moneyAttributes;
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $this->pay_payment_type = $Header->pay_payment_type;
        $Header->_pay_payment_typeAttributes = $this->_pay_payment_typeAttributes;
        $this->Parent->pay_payment_type->Value = $Header->pay_payment_type;
        $this->Parent->pay_payment_type->Attributes->RestoreFromArray($Header->_pay_payment_typeAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
    }
    function ChangeTotalControls() {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetValue();
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetValue();
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
    }
}
//End ShiftReport_ByPayment ReportGroup class

//ShiftReport_ByPayment GroupsCollection class @86-4B05CD06
class clsGroupsCollectionShiftReport_ByPayment {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mpay_payment_typeCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionShiftReport_ByPayment(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mpay_payment_typeCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupShiftReport_ByPayment($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->pay_payment_typeTotalIndex = $this->mpay_payment_typeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->pay_payment_type->Value = $this->Parent->pay_payment_type->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->Sum_total_volume->Value = $this->Parent->Sum_total_volume->initialValue;
        $this->Parent->Sum_total_money->Value = $this->Parent->Sum_total_money->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
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
        if ($groupName == "pay_payment_type") {
            $Grouppay_payment_type = & $this->InitGroup(true);
            $this->Parent->pay_payment_type_Header->CCSEventResult = CCGetEvent($this->Parent->pay_payment_type_Header->CCSEvents, "OnInitialize", $this->Parent->pay_payment_type_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->pay_payment_type_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->pay_payment_type_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->pay_payment_type_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->pay_payment_type_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->pay_payment_type_Header->Height;
                $Grouppay_payment_type->SetTotalControls("GetNextValue");
            $this->Parent->pay_payment_type_Header->CCSEventResult = CCGetEvent($this->Parent->pay_payment_type_Header->CCSEvents, "OnCalculate", $this->Parent->pay_payment_type_Header);
            $Grouppay_payment_type->SetControls();
            $Grouppay_payment_type->Mode = 1;
            $Grouppay_payment_type->GroupType = "pay_payment_type";
            $this->mpay_payment_typeCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouppay_payment_type;
            $this->Parent->Sum_total_volume->Reset();
            $this->Parent->Sum_total_money->Reset();
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
        $Grouppay_payment_type = & $this->InitGroup(true);
        $this->Parent->pay_payment_type_Footer->CCSEventResult = CCGetEvent($this->Parent->pay_payment_type_Footer->CCSEvents, "OnInitialize", $this->Parent->pay_payment_type_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->pay_payment_type_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->pay_payment_type_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->pay_payment_type_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouppay_payment_type->SetTotalControls("GetPrevValue");
        $Grouppay_payment_type->SyncWithHeader($this->Groups[$this->mpay_payment_typeCurrentHeaderIndex]);
        if ($this->Parent->pay_payment_type_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->pay_payment_type_Footer->Height;
        $this->Parent->pay_payment_type_Footer->CCSEventResult = CCGetEvent($this->Parent->pay_payment_type_Footer->CCSEvents, "OnCalculate", $this->Parent->pay_payment_type_Footer);
        $Grouppay_payment_type->SetControls();
        $this->Parent->Sum_total_volume->Reset();
        $this->Parent->Sum_total_money->Reset();
        $this->RestoreValues();
        $Grouppay_payment_type->Mode = 2;
        $Grouppay_payment_type->GroupType ="pay_payment_type";
        $this->Groups[] = & $Grouppay_payment_type;
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
//End ShiftReport_ByPayment GroupsCollection class

class clsReportShiftReport_ByPayment { //ShiftReport_ByPayment Class @86-2154205D

//ShiftReport_ByPayment Variables @86-C1F17958

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
    public $pay_payment_type_HeaderBlock, $pay_payment_type_Header;
    public $pay_payment_type_FooterBlock, $pay_payment_type_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $pay_payment_type_HeaderControls, $pay_payment_type_FooterControls;
//End ShiftReport_ByPayment Variables

//Class_Initialize Event @86-CA5268AC
    function clsReportShiftReport_ByPayment($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ShiftReport_ByPayment";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->pay_payment_type_Footer = new clsSection($this);
        $this->pay_payment_type_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->pay_payment_type_Footer->Height);
        $this->pay_payment_type_Footer->Visible = false;
        $this->pay_payment_type_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsShiftReport_ByPaymentDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
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

        $this->pay_payment_type = new clsControl(ccsReportLabel, "pay_payment_type", "pay_payment_type", ccsText, "", "", $this);
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_volume = new clsControl(ccsReportLabel, "Sum_total_volume", "Sum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume->TotalFunction = "Sum";
        $this->Sum_total_money = new clsControl(ccsReportLabel, "Sum_total_money", "Sum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money->TotalFunction = "Sum";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->TotalFunction = "Sum";
    }
//End Class_Initialize Event

//Initialize Method @86-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @86-76E28939
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pay_payment_type->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume->Errors->Count());
        $errors = ($errors || $this->Sum_total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @86-97A65EE2
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pay_payment_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @86-105A262E
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urlp_start_id"] = CCGetFromGet("p_start_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $pay_payment_typeKey = "";
        $Groups = new clsGroupsCollectionShiftReport_ByPayment($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->pay_payment_type->SetValue($this->DataSource->pay_payment_type->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->Sum_total_volume->SetValue($this->DataSource->Sum_total_volume->GetValue());
            $this->Sum_total_money->SetValue($this->DataSource->Sum_total_money->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $pay_payment_typeKey != $this->DataSource->f("pay_payment_type")) {
                $Groups->OpenGroup("pay_payment_type");
            }
            $Groups->AddItem();
            $pay_payment_typeKey = $this->DataSource->f("pay_payment_type");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $pay_payment_typeKey != $this->DataSource->f("pay_payment_type")) {
                $Groups->CloseGroup("pay_payment_type");
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
            $this->ControlsVisible["pay_payment_type"] = $this->pay_payment_type->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            $this->ControlsVisible["Sum_total_volume"] = $this->Sum_total_volume->Visible;
            $this->ControlsVisible["Sum_total_money"] = $this->Sum_total_money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->pay_payment_type->Visible = $this->ControlsVisible["pay_payment_type"] && !$items[$i]->pay_payment_typeDup;
                        $this->pay_payment_type->SetValue($items[$i]->pay_payment_type);
                        $this->pay_payment_type->Attributes->RestoreFromArray($items[$i]->_pay_payment_typeAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->pay_payment_type->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "pay_payment_type":
                        if ($items[$i]->Mode == 1) {
                            $this->pay_payment_type_Header->CCSEventResult = CCGetEvent($this->pay_payment_type_Header->CCSEvents, "BeforeShow", $this->pay_payment_type_Header);
                            if ($this->pay_payment_type_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section pay_payment_type_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section pay_payment_type_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_total_volume->SetText(CCFormatNumber($items[$i]->Sum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume->Attributes->RestoreFromArray($items[$i]->_Sum_total_volumeAttributes);
                            $this->Sum_total_money->SetText(CCFormatNumber($items[$i]->Sum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money->Attributes->RestoreFromArray($items[$i]->_Sum_total_moneyAttributes);
                            $this->pay_payment_type_Footer->CCSEventResult = CCGetEvent($this->pay_payment_type_Footer->CCSEvents, "BeforeShow", $this->pay_payment_type_Footer);
                            if ($this->pay_payment_type_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section pay_payment_type_Footer";
                                $this->Sum_total_volume->Show();
                                $this->Sum_total_money->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section pay_payment_type_Footer", true, "Section Detail");
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

} //End ShiftReport_ByPayment Class @86-FCB6E20C

class clsShiftReport_ByPaymentDataSource extends clsDBConnection1 {  //ShiftReport_ByPaymentDataSource Class @86-42B61148

//DataSource Variables @86-DEDAC876
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $pay_payment_type;
    public $total_volume;
    public $total_money;
    public $Sum_total_volume;
    public $Sum_total_money;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @86-C809B30C
    function clsShiftReport_ByPaymentDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ShiftReport_ByPayment";
        $this->Initialize();
        $this->pay_payment_type = new clsField("pay_payment_type", ccsText, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->total_money = new clsField("total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_volume = new clsField("Sum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_money = new clsField("Sum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @86-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @86-93823303
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_start_id", ccsInteger, "", "", $this->Parameters["urlp_start_id"], 2000, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @86-6FAADFB0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT sum(volume) AS total_volume, sum(money) AS total_money, pay_payment_type \n\n" .
        "FROM ssf_addin_payments_data INNER JOIN ssf_pump_sales ON\n\n" .
        "ssf_addin_payments_data.pay_sale_id = ssf_pump_sales.sale_id {SQL_Where}\n\n" .
        "GROUP BY pay_payment_type {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "ssf_addin_payments_data.pay_payment_type asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @86-55CEC179
    function SetValues()
    {
        $this->pay_payment_type->SetDBValue($this->f("pay_payment_type"));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->Sum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
    }
//End SetValues Method

} //End ShiftReport_ByPaymentDataSource Class @86-FCB6E20C

//ShiftReport_ByGrade ReportGroup class @38-F5E537CD
class clsReportGroupShiftReport_ByGrade {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $grade_id, $grade_idDup, $_grade_idAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $grade_idTotalIndex;

    function clsReportGroupShiftReport_ByGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->grade_id = $this->Parent->grade_id->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        if ($PrevGroup) {
            $this->grade_idDup =  CCCompareValues($this->grade_id, $PrevGroup->grade_id, $this->Parent->grade_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->_grade_idAttributes = $this->Parent->grade_id->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $this->grade_id = $Header->grade_id;
        $Header->_grade_idAttributes = $this->_grade_idAttributes;
        $this->Parent->grade_id->Value = $Header->grade_id;
        $this->Parent->grade_id->Attributes->RestoreFromArray($Header->_grade_idAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
    }
    function ChangeTotalControls() {
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
    }
}
//End ShiftReport_ByGrade ReportGroup class

//ShiftReport_ByGrade GroupsCollection class @38-F0558D52
class clsGroupsCollectionShiftReport_ByGrade {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mgrade_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionShiftReport_ByGrade(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mgrade_idCurrentHeaderIndex = 1;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupShiftReport_ByGrade($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->grade_idTotalIndex = $this->mgrade_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->grade_id->Value = $this->Parent->grade_id->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
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
        if ($groupName == "grade_id") {
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
//End ShiftReport_ByGrade GroupsCollection class

class clsReportShiftReport_ByGrade { //ShiftReport_ByGrade Class @38-AAD04C74

//ShiftReport_ByGrade Variables @38-549B07AB

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
    public $grade_id_HeaderBlock, $grade_id_Header;
    public $grade_id_FooterBlock, $grade_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $grade_id_HeaderControls, $grade_id_FooterControls;
//End ShiftReport_ByGrade Variables

//Class_Initialize Event @38-8E8C1984
    function clsReportShiftReport_ByGrade($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ShiftReport_ByGrade";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->grade_id_Footer = new clsSection($this);
        $this->grade_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->grade_id_Footer->Height);
        $this->grade_id_Footer->Visible = false;
        $this->grade_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsShiftReport_ByGradeDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 20;
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

        $this->grade_id = new clsControl(ccsReportLabel, "grade_id", "grade_id", ccsText, "", "", $this);
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->TotalFunction = "Sum";
    }
//End Class_Initialize Event

//Initialize Method @38-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @38-3E7D2809
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->grade_id->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @38-AF5C7402
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @38-562E0D95
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urlp_start_id"] = CCGetFromGet("p_start_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $grade_idKey = "";
        $Groups = new clsGroupsCollectionShiftReport_ByGrade($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->grade_id->SetValue($this->DataSource->grade_id->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $grade_idKey != $this->DataSource->f("grade_id")) {
                $Groups->OpenGroup("grade_id");
            }
            $Groups->AddItem();
            $grade_idKey = $this->DataSource->f("grade_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $grade_idKey != $this->DataSource->f("grade_id")) {
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
            $this->ControlsVisible["grade_id"] = $this->grade_id->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->grade_id->Visible = $this->ControlsVisible["grade_id"] && !$items[$i]->grade_idDup;
                        $this->grade_id->SetValue($items[$i]->grade_id);
                        $this->grade_id->Attributes->RestoreFromArray($items[$i]->_grade_idAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->grade_id->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
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

} //End ShiftReport_ByGrade Class @38-FCB6E20C

class clsShiftReport_ByGradeDataSource extends clsDBConnection1 {  //ShiftReport_ByGradeDataSource Class @38-B0B652BA

//DataSource Variables @38-480F01A9
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $grade_id;
    public $total_volume;
    public $total_money;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @38-C7A4FD49
    function clsShiftReport_ByGradeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ShiftReport_ByGrade";
        $this->Initialize();
        $this->grade_id = new clsField("grade_id", ccsText, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->total_money = new clsField("total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @38-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @38-17CEB0F0
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_start_id", ccsInteger, "", "", $this->Parameters["urlp_start_id"], 2000, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @38-646CE50A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT sum(volume) AS total_volume, sum(money) AS total_money, grade_id \n\n" .
        "FROM ssf_pump_sales {SQL_Where}\n\n" .
        "GROUP BY grade_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "grade_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @38-65310FD4
    function SetValues()
    {
        $this->grade_id->SetDBValue($this->f("grade_id"));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
    }
//End SetValues Method

} //End ShiftReport_ByGradeDataSource Class @38-FCB6E20C

//ShiftReport_ByPump ReportGroup class @114-71004886
class clsReportGroupShiftReport_ByPump {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $pump_id, $pump_idDup, $_pump_idAttributes;
    public $hose_id, $_hose_idAttributes;
    public $sale_type, $_sale_typeAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $Sum_total_volume2, $_Sum_total_volume2Attributes;
    public $Sum_total_money2, $_Sum_total_money2Attributes;
    public $Sum_total_volume1, $_Sum_total_volume1Attributes;
    public $Sum_total_money1, $_Sum_total_money1Attributes;
    public $Sum_total_volume, $_Sum_total_volumeAttributes;
    public $Sum_total_money, $_Sum_total_moneyAttributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $pump_idTotalIndex;
    public $hose_idTotalIndex;
    public $sale_typeTotalIndex;

    function clsReportGroupShiftReport_ByPump(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->pump_id = $this->Parent->pump_id->Value;
        $this->hose_id = $this->Parent->hose_id->Value;
        $this->sale_type = $this->Parent->sale_type->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        if ($PrevGroup) {
            $this->pump_idDup =  CCCompareValues($this->pump_id, $PrevGroup->pump_id, $this->Parent->pump_id->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_total_volume2 = $this->Parent->Sum_total_volume2->GetTotalValue($mode);
        $this->Sum_total_money2 = $this->Parent->Sum_total_money2->GetTotalValue($mode);
        $this->Sum_total_volume1 = $this->Parent->Sum_total_volume1->GetTotalValue($mode);
        $this->Sum_total_money1 = $this->Parent->Sum_total_money1->GetTotalValue($mode);
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetTotalValue($mode);
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetTotalValue($mode);
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->_pump_idAttributes = $this->Parent->pump_id->Attributes->GetAsArray();
        $this->_hose_idAttributes = $this->Parent->hose_id->Attributes->GetAsArray();
        $this->_sale_typeAttributes = $this->Parent->sale_type->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_Sum_total_volume2Attributes = $this->Parent->Sum_total_volume2->Attributes->GetAsArray();
        $this->_Sum_total_money2Attributes = $this->Parent->Sum_total_money2->Attributes->GetAsArray();
        $this->_Sum_total_volume1Attributes = $this->Parent->Sum_total_volume1->Attributes->GetAsArray();
        $this->_Sum_total_money1Attributes = $this->Parent->Sum_total_money1->Attributes->GetAsArray();
        $this->_Sum_total_volumeAttributes = $this->Parent->Sum_total_volume->Attributes->GetAsArray();
        $this->_Sum_total_moneyAttributes = $this->Parent->Sum_total_money->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_total_volume2 = $this->Sum_total_volume2;
        $Header->_Sum_total_volume2Attributes = $this->_Sum_total_volume2Attributes;
        $Header->Sum_total_money2 = $this->Sum_total_money2;
        $Header->_Sum_total_money2Attributes = $this->_Sum_total_money2Attributes;
        $Header->Sum_total_volume1 = $this->Sum_total_volume1;
        $Header->_Sum_total_volume1Attributes = $this->_Sum_total_volume1Attributes;
        $Header->Sum_total_money1 = $this->Sum_total_money1;
        $Header->_Sum_total_money1Attributes = $this->_Sum_total_money1Attributes;
        $Header->Sum_total_volume = $this->Sum_total_volume;
        $Header->_Sum_total_volumeAttributes = $this->_Sum_total_volumeAttributes;
        $Header->Sum_total_money = $this->Sum_total_money;
        $Header->_Sum_total_moneyAttributes = $this->_Sum_total_moneyAttributes;
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $this->pump_id = $Header->pump_id;
        $Header->_pump_idAttributes = $this->_pump_idAttributes;
        $this->Parent->pump_id->Value = $Header->pump_id;
        $this->Parent->pump_id->Attributes->RestoreFromArray($Header->_pump_idAttributes);
        $this->hose_id = $Header->hose_id;
        $Header->_hose_idAttributes = $this->_hose_idAttributes;
        $this->Parent->hose_id->Value = $Header->hose_id;
        $this->Parent->hose_id->Attributes->RestoreFromArray($Header->_hose_idAttributes);
        $this->sale_type = $Header->sale_type;
        $Header->_sale_typeAttributes = $this->_sale_typeAttributes;
        $this->Parent->sale_type->Value = $Header->sale_type;
        $this->Parent->sale_type->Attributes->RestoreFromArray($Header->_sale_typeAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
    }
    function ChangeTotalControls() {
        $this->Sum_total_volume2 = $this->Parent->Sum_total_volume2->GetValue();
        $this->Sum_total_money2 = $this->Parent->Sum_total_money2->GetValue();
        $this->Sum_total_volume1 = $this->Parent->Sum_total_volume1->GetValue();
        $this->Sum_total_money1 = $this->Parent->Sum_total_money1->GetValue();
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetValue();
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetValue();
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
    }
}
//End ShiftReport_ByPump ReportGroup class

//ShiftReport_ByPump GroupsCollection class @114-792BF6B8
class clsGroupsCollectionShiftReport_ByPump {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mpump_idCurrentHeaderIndex;
    public $mhose_idCurrentHeaderIndex;
    public $msale_typeCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionShiftReport_ByPump(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mpump_idCurrentHeaderIndex = 1;
        $this->mhose_idCurrentHeaderIndex = 2;
        $this->msale_typeCurrentHeaderIndex = 3;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupShiftReport_ByPump($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->pump_idTotalIndex = $this->mpump_idCurrentHeaderIndex;
        $group->hose_idTotalIndex = $this->mhose_idCurrentHeaderIndex;
        $group->sale_typeTotalIndex = $this->msale_typeCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->pump_id->Value = $this->Parent->pump_id->initialValue;
        $this->Parent->hose_id->Value = $this->Parent->hose_id->initialValue;
        $this->Parent->sale_type->Value = $this->Parent->sale_type->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->Sum_total_volume2->Value = $this->Parent->Sum_total_volume2->initialValue;
        $this->Parent->Sum_total_money2->Value = $this->Parent->Sum_total_money2->initialValue;
        $this->Parent->Sum_total_volume1->Value = $this->Parent->Sum_total_volume1->initialValue;
        $this->Parent->Sum_total_money1->Value = $this->Parent->Sum_total_money1->initialValue;
        $this->Parent->Sum_total_volume->Value = $this->Parent->Sum_total_volume->initialValue;
        $this->Parent->Sum_total_money->Value = $this->Parent->Sum_total_money->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
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
            $this->Parent->Sum_total_volume->Reset();
            $this->Parent->Sum_total_money->Reset();
        }
        if ($groupName == "hose_id" or $OpenFlag) {
            $Grouphose_id = & $this->InitGroup(true);
            $this->Parent->hose_id_Header->CCSEventResult = CCGetEvent($this->Parent->hose_id_Header->CCSEvents, "OnInitialize", $this->Parent->hose_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->hose_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->hose_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->hose_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->hose_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->hose_id_Header->Height;
                $Grouphose_id->SetTotalControls("GetNextValue");
            $this->Parent->hose_id_Header->CCSEventResult = CCGetEvent($this->Parent->hose_id_Header->CCSEvents, "OnCalculate", $this->Parent->hose_id_Header);
            $Grouphose_id->SetControls();
            $Grouphose_id->Mode = 1;
            $OpenFlag = true;
            $Grouphose_id->GroupType = "hose_id";
            $this->mhose_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouphose_id;
            $this->Parent->Sum_total_volume1->Reset();
            $this->Parent->Sum_total_money1->Reset();
        }
        if ($groupName == "sale_type" or $OpenFlag) {
            $Groupsale_type = & $this->InitGroup(true);
            $this->Parent->sale_type_Header->CCSEventResult = CCGetEvent($this->Parent->sale_type_Header->CCSEvents, "OnInitialize", $this->Parent->sale_type_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->sale_type_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->sale_type_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->sale_type_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->sale_type_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->sale_type_Header->Height;
                $Groupsale_type->SetTotalControls("GetNextValue");
            $this->Parent->sale_type_Header->CCSEventResult = CCGetEvent($this->Parent->sale_type_Header->CCSEvents, "OnCalculate", $this->Parent->sale_type_Header);
            $Groupsale_type->SetControls();
            $Groupsale_type->Mode = 1;
            $Groupsale_type->GroupType = "sale_type";
            $this->msale_typeCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupsale_type;
            $this->Parent->Sum_total_volume2->Reset();
            $this->Parent->Sum_total_money2->Reset();
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
        $Groupsale_type = & $this->InitGroup(true);
        $this->Parent->sale_type_Footer->CCSEventResult = CCGetEvent($this->Parent->sale_type_Footer->CCSEvents, "OnInitialize", $this->Parent->sale_type_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->sale_type_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->sale_type_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->sale_type_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupsale_type->SetTotalControls("GetPrevValue");
        $Groupsale_type->SyncWithHeader($this->Groups[$this->msale_typeCurrentHeaderIndex]);
        if ($this->Parent->sale_type_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->sale_type_Footer->Height;
        $this->Parent->sale_type_Footer->CCSEventResult = CCGetEvent($this->Parent->sale_type_Footer->CCSEvents, "OnCalculate", $this->Parent->sale_type_Footer);
        $Groupsale_type->SetControls();
        $this->Parent->Sum_total_volume2->Reset();
        $this->Parent->Sum_total_money2->Reset();
        $this->RestoreValues();
        $Groupsale_type->Mode = 2;
        $Groupsale_type->GroupType ="sale_type";
        $this->Groups[] = & $Groupsale_type;
        if ($groupName == "sale_type") return;
        $Grouphose_id = & $this->InitGroup(true);
        $this->Parent->hose_id_Footer->CCSEventResult = CCGetEvent($this->Parent->hose_id_Footer->CCSEvents, "OnInitialize", $this->Parent->hose_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->hose_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->hose_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->hose_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouphose_id->SetTotalControls("GetPrevValue");
        $Grouphose_id->SyncWithHeader($this->Groups[$this->mhose_idCurrentHeaderIndex]);
        if ($this->Parent->hose_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->hose_id_Footer->Height;
        $this->Parent->hose_id_Footer->CCSEventResult = CCGetEvent($this->Parent->hose_id_Footer->CCSEvents, "OnCalculate", $this->Parent->hose_id_Footer);
        $Grouphose_id->SetControls();
        $this->Parent->Sum_total_volume1->Reset();
        $this->Parent->Sum_total_money1->Reset();
        $this->RestoreValues();
        $Grouphose_id->Mode = 2;
        $Grouphose_id->GroupType ="hose_id";
        $this->Groups[] = & $Grouphose_id;
        if ($groupName == "hose_id") return;
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
        $this->Parent->Sum_total_volume->Reset();
        $this->Parent->Sum_total_money->Reset();
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
//End ShiftReport_ByPump GroupsCollection class

class clsReportShiftReport_ByPump { //ShiftReport_ByPump Class @114-47C63B4A

//ShiftReport_ByPump Variables @114-97B96B52

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
    public $hose_id_HeaderBlock, $hose_id_Header;
    public $hose_id_FooterBlock, $hose_id_Footer;
    public $sale_type_HeaderBlock, $sale_type_Header;
    public $sale_type_FooterBlock, $sale_type_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $pump_id_HeaderControls, $pump_id_FooterControls;
    public $hose_id_HeaderControls, $hose_id_FooterControls;
    public $sale_type_HeaderControls, $sale_type_FooterControls;
//End ShiftReport_ByPump Variables

//Class_Initialize Event @114-2AF1CCCC
    function clsReportShiftReport_ByPump($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ShiftReport_ByPump";
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
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->pump_id_Footer = new clsSection($this);
        $this->pump_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->pump_id_Footer->Height);
        $this->pump_id_Header = new clsSection($this);
        $this->hose_id_Footer = new clsSection($this);
        $this->hose_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->hose_id_Footer->Height);
        $this->hose_id_Footer->Visible = false;
        $this->hose_id_Header = new clsSection($this);
        $this->sale_type_Footer = new clsSection($this);
        $this->sale_type_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->sale_type_Footer->Height);
        $this->sale_type_Footer->Visible = false;
        $this->sale_type_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsShiftReport_ByPumpDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 80;
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

        $this->pump_id = new clsControl(ccsReportLabel, "pump_id", "pump_id", ccsInteger, "", "", $this);
        $this->hose_id = new clsControl(ccsReportLabel, "hose_id", "hose_id", ccsInteger, "", "", $this);
        $this->sale_type = new clsControl(ccsReportLabel, "sale_type", "sale_type", ccsInteger, "", "", $this);
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_volume2 = new clsControl(ccsReportLabel, "Sum_total_volume2", "Sum_total_volume2", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume2->TotalFunction = "Sum";
        $this->Sum_total_money2 = new clsControl(ccsReportLabel, "Sum_total_money2", "Sum_total_money2", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money2->TotalFunction = "Sum";
        $this->Sum_total_volume1 = new clsControl(ccsReportLabel, "Sum_total_volume1", "Sum_total_volume1", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume1->TotalFunction = "Sum";
        $this->Sum_total_money1 = new clsControl(ccsReportLabel, "Sum_total_money1", "Sum_total_money1", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money1->TotalFunction = "Sum";
        $this->Sum_total_volume = new clsControl(ccsReportLabel, "Sum_total_volume", "Sum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume->TotalFunction = "Sum";
        $this->Sum_total_money = new clsControl(ccsReportLabel, "Sum_total_money", "Sum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money->TotalFunction = "Sum";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->TotalFunction = "Sum";
    }
//End Class_Initialize Event

//Initialize Method @114-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @114-C67F7691
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pump_id->Errors->Count());
        $errors = ($errors || $this->hose_id->Errors->Count());
        $errors = ($errors || $this->sale_type->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume2->Errors->Count());
        $errors = ($errors || $this->Sum_total_money2->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume1->Errors->Count());
        $errors = ($errors || $this->Sum_total_money1->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume->Errors->Count());
        $errors = ($errors || $this->Sum_total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @114-CFA1D281
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pump_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->hose_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->sale_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @114-94CA5E18
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urlp_start_id"] = CCGetFromGet("p_start_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $pump_idKey = "";
        $hose_idKey = "";
        $sale_typeKey = "";
        $Groups = new clsGroupsCollectionShiftReport_ByPump($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->pump_id->SetValue($this->DataSource->pump_id->GetValue());
            $this->hose_id->SetValue($this->DataSource->hose_id->GetValue());
            $this->sale_type->SetValue($this->DataSource->sale_type->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->Sum_total_volume2->SetValue($this->DataSource->Sum_total_volume2->GetValue());
            $this->Sum_total_money2->SetValue($this->DataSource->Sum_total_money2->GetValue());
            $this->Sum_total_volume1->SetValue($this->DataSource->Sum_total_volume1->GetValue());
            $this->Sum_total_money1->SetValue($this->DataSource->Sum_total_money1->GetValue());
            $this->Sum_total_volume->SetValue($this->DataSource->Sum_total_volume->GetValue());
            $this->Sum_total_money->SetValue($this->DataSource->Sum_total_money->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->OpenGroup("pump_id");
            } elseif ($hose_idKey != $this->DataSource->f("hose_id")) {
                $Groups->OpenGroup("hose_id");
            } elseif ($sale_typeKey != $this->DataSource->f("sale_type")) {
                $Groups->OpenGroup("sale_type");
            }
            $Groups->AddItem();
            $pump_idKey = $this->DataSource->f("pump_id");
            $hose_idKey = $this->DataSource->f("hose_id");
            $sale_typeKey = $this->DataSource->f("sale_type");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->CloseGroup("pump_id");
            } elseif ($hose_idKey != $this->DataSource->f("hose_id")) {
                $Groups->CloseGroup("hose_id");
            } elseif ($sale_typeKey != $this->DataSource->f("sale_type")) {
                $Groups->CloseGroup("sale_type");
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
            $this->ControlsVisible["hose_id"] = $this->hose_id->Visible;
            $this->ControlsVisible["sale_type"] = $this->sale_type->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            $this->ControlsVisible["Sum_total_volume2"] = $this->Sum_total_volume2->Visible;
            $this->ControlsVisible["Sum_total_money2"] = $this->Sum_total_money2->Visible;
            $this->ControlsVisible["Sum_total_volume1"] = $this->Sum_total_volume1->Visible;
            $this->ControlsVisible["Sum_total_money1"] = $this->Sum_total_money1->Visible;
            $this->ControlsVisible["Sum_total_volume"] = $this->Sum_total_volume->Visible;
            $this->ControlsVisible["Sum_total_money"] = $this->Sum_total_money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->pump_id->Visible = $this->ControlsVisible["pump_id"] && !$items[$i]->pump_idDup;
                        $this->pump_id->SetValue($items[$i]->pump_id);
                        $this->pump_id->Attributes->RestoreFromArray($items[$i]->_pump_idAttributes);
                        $this->hose_id->SetValue($items[$i]->hose_id);
                        $this->hose_id->Attributes->RestoreFromArray($items[$i]->_hose_idAttributes);
                        $this->sale_type->SetValue($items[$i]->sale_type);
                        $this->sale_type->Attributes->RestoreFromArray($items[$i]->_sale_typeAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->pump_id->Show();
                        $this->hose_id->Show();
                        $this->sale_type->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
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
                            $this->Sum_total_volume->SetText(CCFormatNumber($items[$i]->Sum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume->Attributes->RestoreFromArray($items[$i]->_Sum_total_volumeAttributes);
                            $this->Sum_total_money->SetText(CCFormatNumber($items[$i]->Sum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money->Attributes->RestoreFromArray($items[$i]->_Sum_total_moneyAttributes);
                            $this->pump_id_Footer->CCSEventResult = CCGetEvent($this->pump_id_Footer->CCSEvents, "BeforeShow", $this->pump_id_Footer);
                            if ($this->pump_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section pump_id_Footer";
                                $this->Sum_total_volume->Show();
                                $this->Sum_total_money->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section pump_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "hose_id":
                        if ($items[$i]->Mode == 1) {
                            $this->hose_id_Header->CCSEventResult = CCGetEvent($this->hose_id_Header->CCSEvents, "BeforeShow", $this->hose_id_Header);
                            if ($this->hose_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section hose_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section hose_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_total_volume1->SetText(CCFormatNumber($items[$i]->Sum_total_volume1, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume1->Attributes->RestoreFromArray($items[$i]->_Sum_total_volume1Attributes);
                            $this->Sum_total_money1->SetText(CCFormatNumber($items[$i]->Sum_total_money1, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money1->Attributes->RestoreFromArray($items[$i]->_Sum_total_money1Attributes);
                            $this->hose_id_Footer->CCSEventResult = CCGetEvent($this->hose_id_Footer->CCSEvents, "BeforeShow", $this->hose_id_Footer);
                            if ($this->hose_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section hose_id_Footer";
                                $this->Sum_total_volume1->Show();
                                $this->Sum_total_money1->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section hose_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "sale_type":
                        if ($items[$i]->Mode == 1) {
                            $this->sale_type_Header->CCSEventResult = CCGetEvent($this->sale_type_Header->CCSEvents, "BeforeShow", $this->sale_type_Header);
                            if ($this->sale_type_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section sale_type_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section sale_type_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Sum_total_volume2->SetText(CCFormatNumber($items[$i]->Sum_total_volume2, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume2->Attributes->RestoreFromArray($items[$i]->_Sum_total_volume2Attributes);
                            $this->Sum_total_money2->SetText(CCFormatNumber($items[$i]->Sum_total_money2, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money2->Attributes->RestoreFromArray($items[$i]->_Sum_total_money2Attributes);
                            $this->sale_type_Footer->CCSEventResult = CCGetEvent($this->sale_type_Footer->CCSEvents, "BeforeShow", $this->sale_type_Footer);
                            if ($this->sale_type_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section sale_type_Footer";
                                $this->Sum_total_volume2->Show();
                                $this->Sum_total_money2->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section sale_type_Footer", true, "Section Detail");
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

} //End ShiftReport_ByPump Class @114-FCB6E20C

class clsShiftReport_ByPumpDataSource extends clsDBConnection1 {  //ShiftReport_ByPumpDataSource Class @114-7F659759

//DataSource Variables @114-733780D4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $pump_id;
    public $hose_id;
    public $sale_type;
    public $total_volume;
    public $total_money;
    public $Sum_total_volume2;
    public $Sum_total_money2;
    public $Sum_total_volume1;
    public $Sum_total_money1;
    public $Sum_total_volume;
    public $Sum_total_money;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @114-37A99E4A
    function clsShiftReport_ByPumpDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ShiftReport_ByPump";
        $this->Initialize();
        $this->pump_id = new clsField("pump_id", ccsInteger, "");
        $this->hose_id = new clsField("hose_id", ccsInteger, "");
        $this->sale_type = new clsField("sale_type", ccsInteger, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->total_money = new clsField("total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_volume2 = new clsField("Sum_total_volume2", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_money2 = new clsField("Sum_total_money2", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_volume1 = new clsField("Sum_total_volume1", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_money1 = new clsField("Sum_total_money1", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_volume = new clsField("Sum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->Sum_total_money = new clsField("Sum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""));
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @114-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @114-31F7634D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_start_id", ccsInteger, "", "", $this->Parameters["urlp_start_id"], 0, false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @114-EC8B4213
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT sum(volume) AS total_volume, sum(money) AS total_money, pump_id, hose_id, grade_id, sale_type \n\n" .
        "FROM ssf_pump_sales {SQL_Where}\n\n" .
        "GROUP BY pump_id, hose_id, grade_id, sale_type {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "pump_id asc,hose_id asc,sale_type asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @114-ED1F9CB0
    function SetValues()
    {
        $this->pump_id->SetDBValue(trim($this->f("pump_id")));
        $this->hose_id->SetDBValue(trim($this->f("hose_id")));
        $this->sale_type->SetDBValue(trim($this->f("sale_type")));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->Sum_total_volume2->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money2->SetDBValue(trim($this->f("total_money")));
        $this->Sum_total_volume1->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money1->SetDBValue(trim($this->f("total_money")));
        $this->Sum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
    }
//End SetValues Method

} //End ShiftReport_ByPumpDataSource Class @114-FCB6E20C

//ssf_pump_sales_ssf_pump_g ReportGroup class @199-3EE91EC9
class clsReportGroupssf_pump_sales_ssf_pump_g {
    public $GroupType;
    public $mode; //1 - open, 2 - close
    public $pump_group_name, $pump_group_nameDup, $_pump_group_nameAttributes;
    public $total_volume, $_total_volumeAttributes;
    public $total_money, $_total_moneyAttributes;
    public $ReportLabel1, $_ReportLabel1Attributes;
    public $Sum_total_volume, $_Sum_total_volumeAttributes;
    public $Sum_total_money, $_Sum_total_moneyAttributes;
    public $TotalSum_total_volume, $_TotalSum_total_volumeAttributes;
    public $TotalSum_total_money, $_TotalSum_total_moneyAttributes;
    public $Attributes;
    public $ReportTotalIndex = 0;
    public $PageTotalIndex;
    public $PageNumber;
    public $RowNumber;
    public $Parent;
    public $ssf_pump_group_details_pump_group_idTotalIndex;
    public $ssf_pump_group_details_pump_idTotalIndex;
    public $hose_idTotalIndex;

    function clsReportGroupssf_pump_sales_ssf_pump_g(& $parent) {
        $this->Parent = & $parent;
        $this->Attributes = $this->Parent->Attributes->GetAsArray();
    }
    function SetControls($PrevGroup = "") {
        $this->pump_group_name = $this->Parent->pump_group_name->Value;
        $this->total_volume = $this->Parent->total_volume->Value;
        $this->total_money = $this->Parent->total_money->Value;
        $this->ReportLabel1 = $this->Parent->ReportLabel1->Value;
        if ($PrevGroup) {
            $this->pump_group_nameDup =  CCCompareValues($this->pump_group_name, $PrevGroup->pump_group_name, $this->Parent->pump_group_name->DataType) == 0;
        }
    }

    function SetTotalControls($mode = "", $PrevGroup = "") {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetTotalValue($mode);
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetTotalValue($mode);
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetTotalValue($mode);
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetTotalValue($mode);
        $this->_pump_group_nameAttributes = $this->Parent->pump_group_name->Attributes->GetAsArray();
        $this->_total_volumeAttributes = $this->Parent->total_volume->Attributes->GetAsArray();
        $this->_total_moneyAttributes = $this->Parent->total_money->Attributes->GetAsArray();
        $this->_ReportLabel1Attributes = $this->Parent->ReportLabel1->Attributes->GetAsArray();
        $this->_Sum_total_volumeAttributes = $this->Parent->Sum_total_volume->Attributes->GetAsArray();
        $this->_Sum_total_moneyAttributes = $this->Parent->Sum_total_money->Attributes->GetAsArray();
        $this->_TotalSum_total_volumeAttributes = $this->Parent->TotalSum_total_volume->Attributes->GetAsArray();
        $this->_TotalSum_total_moneyAttributes = $this->Parent->TotalSum_total_money->Attributes->GetAsArray();
    }
    function SyncWithHeader(& $Header) {
        $Header->Sum_total_volume = $this->Sum_total_volume;
        $Header->_Sum_total_volumeAttributes = $this->_Sum_total_volumeAttributes;
        $Header->Sum_total_money = $this->Sum_total_money;
        $Header->_Sum_total_moneyAttributes = $this->_Sum_total_moneyAttributes;
        $Header->TotalSum_total_volume = $this->TotalSum_total_volume;
        $Header->_TotalSum_total_volumeAttributes = $this->_TotalSum_total_volumeAttributes;
        $Header->TotalSum_total_money = $this->TotalSum_total_money;
        $Header->_TotalSum_total_moneyAttributes = $this->_TotalSum_total_moneyAttributes;
        $this->pump_group_name = $Header->pump_group_name;
        $Header->_pump_group_nameAttributes = $this->_pump_group_nameAttributes;
        $this->Parent->pump_group_name->Value = $Header->pump_group_name;
        $this->Parent->pump_group_name->Attributes->RestoreFromArray($Header->_pump_group_nameAttributes);
        $this->total_volume = $Header->total_volume;
        $Header->_total_volumeAttributes = $this->_total_volumeAttributes;
        $this->Parent->total_volume->Value = $Header->total_volume;
        $this->Parent->total_volume->Attributes->RestoreFromArray($Header->_total_volumeAttributes);
        $this->total_money = $Header->total_money;
        $Header->_total_moneyAttributes = $this->_total_moneyAttributes;
        $this->Parent->total_money->Value = $Header->total_money;
        $this->Parent->total_money->Attributes->RestoreFromArray($Header->_total_moneyAttributes);
        $this->ReportLabel1 = $Header->ReportLabel1;
        $Header->_ReportLabel1Attributes = $this->_ReportLabel1Attributes;
        $this->Parent->ReportLabel1->Value = $Header->ReportLabel1;
        $this->Parent->ReportLabel1->Attributes->RestoreFromArray($Header->_ReportLabel1Attributes);
    }
    function ChangeTotalControls() {
        $this->Sum_total_volume = $this->Parent->Sum_total_volume->GetValue();
        $this->Sum_total_money = $this->Parent->Sum_total_money->GetValue();
        $this->TotalSum_total_volume = $this->Parent->TotalSum_total_volume->GetValue();
        $this->TotalSum_total_money = $this->Parent->TotalSum_total_money->GetValue();
    }
}
//End ssf_pump_sales_ssf_pump_g ReportGroup class

//ssf_pump_sales_ssf_pump_g GroupsCollection class @199-B0ECE490
class clsGroupsCollectionssf_pump_sales_ssf_pump_g {
    public $Groups;
    public $mPageCurrentHeaderIndex;
    public $mssf_pump_group_details_pump_group_idCurrentHeaderIndex;
    public $mssf_pump_group_details_pump_idCurrentHeaderIndex;
    public $mhose_idCurrentHeaderIndex;
    public $PageSize;
    public $TotalPages = 0;
    public $TotalRows = 0;
    public $CurrentPageSize = 0;
    public $Pages;
    public $Parent;
    public $LastDetailIndex;

    function clsGroupsCollectionssf_pump_sales_ssf_pump_g(& $parent) {
        $this->Parent = & $parent;
        $this->Groups = array();
        $this->Pages  = array();
        $this->mssf_pump_group_details_pump_group_idCurrentHeaderIndex = 1;
        $this->mssf_pump_group_details_pump_idCurrentHeaderIndex = 2;
        $this->mhose_idCurrentHeaderIndex = 3;
        $this->mReportTotalIndex = 0;
        $this->mPageTotalIndex = 1;
    }

    function & InitGroup() {
        $group = new clsReportGroupssf_pump_sales_ssf_pump_g($this->Parent);
        $group->RowNumber = $this->TotalRows + 1;
        $group->PageNumber = $this->TotalPages;
        $group->PageTotalIndex = $this->mPageCurrentHeaderIndex;
        $group->ssf_pump_group_details_pump_group_idTotalIndex = $this->mssf_pump_group_details_pump_group_idCurrentHeaderIndex;
        $group->ssf_pump_group_details_pump_idTotalIndex = $this->mssf_pump_group_details_pump_idCurrentHeaderIndex;
        $group->hose_idTotalIndex = $this->mhose_idCurrentHeaderIndex;
        return $group;
    }

    function RestoreValues() {
        $this->Parent->pump_group_name->Value = $this->Parent->pump_group_name->initialValue;
        $this->Parent->total_volume->Value = $this->Parent->total_volume->initialValue;
        $this->Parent->total_money->Value = $this->Parent->total_money->initialValue;
        $this->Parent->ReportLabel1->Value = $this->Parent->ReportLabel1->initialValue;
        $this->Parent->Sum_total_volume->Value = $this->Parent->Sum_total_volume->initialValue;
        $this->Parent->Sum_total_money->Value = $this->Parent->Sum_total_money->initialValue;
        $this->Parent->TotalSum_total_volume->Value = $this->Parent->TotalSum_total_volume->initialValue;
        $this->Parent->TotalSum_total_money->Value = $this->Parent->TotalSum_total_money->initialValue;
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
        if ($groupName == "ssf_pump_group_details_pump_group_id") {
            $Groupssf_pump_group_details_pump_group_id = & $this->InitGroup(true);
            $this->Parent->ssf_pump_group_details_pump_group_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_group_id_Header->CCSEvents, "OnInitialize", $this->Parent->ssf_pump_group_details_pump_group_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->ssf_pump_group_details_pump_group_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->ssf_pump_group_details_pump_group_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->ssf_pump_group_details_pump_group_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->ssf_pump_group_details_pump_group_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_pump_group_details_pump_group_id_Header->Height;
                $Groupssf_pump_group_details_pump_group_id->SetTotalControls("GetNextValue");
            $this->Parent->ssf_pump_group_details_pump_group_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_group_id_Header->CCSEvents, "OnCalculate", $this->Parent->ssf_pump_group_details_pump_group_id_Header);
            $Groupssf_pump_group_details_pump_group_id->SetControls();
            $Groupssf_pump_group_details_pump_group_id->Mode = 1;
            $OpenFlag = true;
            $Groupssf_pump_group_details_pump_group_id->GroupType = "ssf_pump_group_details_pump_group_id";
            $this->mssf_pump_group_details_pump_group_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupssf_pump_group_details_pump_group_id;
            $this->Parent->Sum_total_volume->Reset();
            $this->Parent->Sum_total_money->Reset();
        }
        if ($groupName == "ssf_pump_group_details_pump_id" or $OpenFlag) {
            $Groupssf_pump_group_details_pump_id = & $this->InitGroup(true);
            $this->Parent->ssf_pump_group_details_pump_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_id_Header->CCSEvents, "OnInitialize", $this->Parent->ssf_pump_group_details_pump_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->ssf_pump_group_details_pump_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->ssf_pump_group_details_pump_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->ssf_pump_group_details_pump_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->ssf_pump_group_details_pump_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_pump_group_details_pump_id_Header->Height;
                $Groupssf_pump_group_details_pump_id->SetTotalControls("GetNextValue");
            $this->Parent->ssf_pump_group_details_pump_id_Header->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_id_Header->CCSEvents, "OnCalculate", $this->Parent->ssf_pump_group_details_pump_id_Header);
            $Groupssf_pump_group_details_pump_id->SetControls();
            $Groupssf_pump_group_details_pump_id->Mode = 1;
            $OpenFlag = true;
            $Groupssf_pump_group_details_pump_id->GroupType = "ssf_pump_group_details_pump_id";
            $this->mssf_pump_group_details_pump_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Groupssf_pump_group_details_pump_id;
        }
        if ($groupName == "hose_id" or $OpenFlag) {
            $Grouphose_id = & $this->InitGroup(true);
            $this->Parent->hose_id_Header->CCSEventResult = CCGetEvent($this->Parent->hose_id_Header->CCSEvents, "OnInitialize", $this->Parent->hose_id_Header);
            if ($this->Parent->Page_Footer->Visible) 
                $OverSize = $this->Parent->hose_id_Header->Height + $this->Parent->Page_Footer->Height;
            else
                $OverSize = $this->Parent->hose_id_Header->Height;
            if (($this->PageSize > 0) and $this->Parent->hose_id_Header->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
                $this->ClosePage();
                $this->OpenPage();
            }
            if ($this->Parent->hose_id_Header->Visible)
                $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->hose_id_Header->Height;
                $Grouphose_id->SetTotalControls("GetNextValue");
            $this->Parent->hose_id_Header->CCSEventResult = CCGetEvent($this->Parent->hose_id_Header->CCSEvents, "OnCalculate", $this->Parent->hose_id_Header);
            $Grouphose_id->SetControls();
            $Grouphose_id->Mode = 1;
            $Grouphose_id->GroupType = "hose_id";
            $this->mhose_idCurrentHeaderIndex = count($this->Groups);
            $this->Groups[] = & $Grouphose_id;
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
        $Grouphose_id = & $this->InitGroup(true);
        $this->Parent->hose_id_Footer->CCSEventResult = CCGetEvent($this->Parent->hose_id_Footer->CCSEvents, "OnInitialize", $this->Parent->hose_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->hose_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->hose_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->hose_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Grouphose_id->SetTotalControls("GetPrevValue");
        $Grouphose_id->SyncWithHeader($this->Groups[$this->mhose_idCurrentHeaderIndex]);
        if ($this->Parent->hose_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->hose_id_Footer->Height;
        $this->Parent->hose_id_Footer->CCSEventResult = CCGetEvent($this->Parent->hose_id_Footer->CCSEvents, "OnCalculate", $this->Parent->hose_id_Footer);
        $Grouphose_id->SetControls();
        $this->RestoreValues();
        $Grouphose_id->Mode = 2;
        $Grouphose_id->GroupType ="hose_id";
        $this->Groups[] = & $Grouphose_id;
        if ($groupName == "hose_id") return;
        $Groupssf_pump_group_details_pump_id = & $this->InitGroup(true);
        $this->Parent->ssf_pump_group_details_pump_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_id_Footer->CCSEvents, "OnInitialize", $this->Parent->ssf_pump_group_details_pump_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->ssf_pump_group_details_pump_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->ssf_pump_group_details_pump_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->ssf_pump_group_details_pump_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupssf_pump_group_details_pump_id->SetTotalControls("GetPrevValue");
        $Groupssf_pump_group_details_pump_id->SyncWithHeader($this->Groups[$this->mssf_pump_group_details_pump_idCurrentHeaderIndex]);
        if ($this->Parent->ssf_pump_group_details_pump_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_pump_group_details_pump_id_Footer->Height;
        $this->Parent->ssf_pump_group_details_pump_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_id_Footer->CCSEvents, "OnCalculate", $this->Parent->ssf_pump_group_details_pump_id_Footer);
        $Groupssf_pump_group_details_pump_id->SetControls();
        $this->RestoreValues();
        $Groupssf_pump_group_details_pump_id->Mode = 2;
        $Groupssf_pump_group_details_pump_id->GroupType ="ssf_pump_group_details_pump_id";
        $this->Groups[] = & $Groupssf_pump_group_details_pump_id;
        if ($groupName == "ssf_pump_group_details_pump_id") return;
        $Groupssf_pump_group_details_pump_group_id = & $this->InitGroup(true);
        $this->Parent->ssf_pump_group_details_pump_group_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_group_id_Footer->CCSEvents, "OnInitialize", $this->Parent->ssf_pump_group_details_pump_group_id_Footer);
        if ($this->Parent->Page_Footer->Visible) 
            $OverSize = $this->Parent->ssf_pump_group_details_pump_group_id_Footer->Height + $this->Parent->Page_Footer->Height;
        else
            $OverSize = $this->Parent->ssf_pump_group_details_pump_group_id_Footer->Height;
        if (($this->PageSize > 0) and $this->Parent->ssf_pump_group_details_pump_group_id_Footer->Visible and ($this->CurrentPageSize + $OverSize > $this->PageSize)) {
            $this->ClosePage();
            $this->OpenPage();
        }
        $Groupssf_pump_group_details_pump_group_id->SetTotalControls("GetPrevValue");
        $Groupssf_pump_group_details_pump_group_id->SyncWithHeader($this->Groups[$this->mssf_pump_group_details_pump_group_idCurrentHeaderIndex]);
        if ($this->Parent->ssf_pump_group_details_pump_group_id_Footer->Visible)
            $this->CurrentPageSize = $this->CurrentPageSize + $this->Parent->ssf_pump_group_details_pump_group_id_Footer->Height;
        $this->Parent->ssf_pump_group_details_pump_group_id_Footer->CCSEventResult = CCGetEvent($this->Parent->ssf_pump_group_details_pump_group_id_Footer->CCSEvents, "OnCalculate", $this->Parent->ssf_pump_group_details_pump_group_id_Footer);
        $Groupssf_pump_group_details_pump_group_id->SetControls();
        $this->Parent->Sum_total_volume->Reset();
        $this->Parent->Sum_total_money->Reset();
        $this->RestoreValues();
        $Groupssf_pump_group_details_pump_group_id->Mode = 2;
        $Groupssf_pump_group_details_pump_group_id->GroupType ="ssf_pump_group_details_pump_group_id";
        $this->Groups[] = & $Groupssf_pump_group_details_pump_group_id;
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
//End ssf_pump_sales_ssf_pump_g GroupsCollection class

class clsReportssf_pump_sales_ssf_pump_g { //ssf_pump_sales_ssf_pump_g Class @199-E8256015

//ssf_pump_sales_ssf_pump_g Variables @199-E274F1E8

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
    public $ssf_pump_group_details_pump_group_id_HeaderBlock, $ssf_pump_group_details_pump_group_id_Header;
    public $ssf_pump_group_details_pump_group_id_FooterBlock, $ssf_pump_group_details_pump_group_id_Footer;
    public $ssf_pump_group_details_pump_id_HeaderBlock, $ssf_pump_group_details_pump_id_Header;
    public $ssf_pump_group_details_pump_id_FooterBlock, $ssf_pump_group_details_pump_id_Footer;
    public $hose_id_HeaderBlock, $hose_id_Header;
    public $hose_id_FooterBlock, $hose_id_Footer;
    public $SorterName, $SorterDirection;

    public $ds;
    public $DataSource;

    //Report Controls
    public $StaticControls, $RowControls, $Report_FooterControls, $Report_HeaderControls;
    public $Page_FooterControls, $Page_HeaderControls;
    public $ssf_pump_group_details_pump_group_id_HeaderControls, $ssf_pump_group_details_pump_group_id_FooterControls;
    public $ssf_pump_group_details_pump_id_HeaderControls, $ssf_pump_group_details_pump_id_FooterControls;
    public $hose_id_HeaderControls, $hose_id_FooterControls;
//End ssf_pump_sales_ssf_pump_g Variables

//Class_Initialize Event @199-783BAEF2
    function clsReportssf_pump_sales_ssf_pump_g($RelativePath = "", & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_pump_sales_ssf_pump_g";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->Detail = new clsSection($this);
        $MinPageSize = 0;
        $MaxSectionSize = 0;
        $this->Detail->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Detail->Height);
        $this->Detail->Visible = false;
        $this->Report_Footer = new clsSection($this);
        $this->Report_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->Report_Footer->Height);
        $this->Report_Header = new clsSection($this);
        $this->Page_Footer = new clsSection($this);
        $this->Page_Footer->Height = 1;
        $MinPageSize += $this->Page_Footer->Height;
        $this->Page_Header = new clsSection($this);
        $this->Page_Header->Height = 1;
        $MinPageSize += $this->Page_Header->Height;
        $this->ssf_pump_group_details_pump_group_id_Footer = new clsSection($this);
        $this->ssf_pump_group_details_pump_group_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->ssf_pump_group_details_pump_group_id_Footer->Height);
        $this->ssf_pump_group_details_pump_group_id_Header = new clsSection($this);
        $this->ssf_pump_group_details_pump_id_Footer = new clsSection($this);
        $this->ssf_pump_group_details_pump_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->ssf_pump_group_details_pump_id_Footer->Height);
        $this->ssf_pump_group_details_pump_id_Header = new clsSection($this);
        $this->hose_id_Footer = new clsSection($this);
        $this->hose_id_Footer->Height = 1;
        $MaxSectionSize = max($MaxSectionSize, $this->hose_id_Footer->Height);
        $this->hose_id_Header = new clsSection($this);
        $this->Errors = new clsErrors();
        $this->DataSource = new clsssf_pump_sales_ssf_pump_gDataSource($this);
        $this->ds = & $this->DataSource;
        $PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(is_numeric($PageSize) && $PageSize > 0) {
            $this->PageSize = $PageSize;
        } else {
            if (!is_numeric($PageSize) || $PageSize < 0)
                $this->PageSize = 200;
             else if ($PageSize == "0")
                $this->PageSize = 200;
             else 
                $this->PageSize = min(200, $PageSize);
        }
        $MinPageSize += $MaxSectionSize;
        if ($this->PageSize && $MinPageSize && $this->PageSize < $MinPageSize)
            $this->PageSize = $MinPageSize;
        $this->PageNumber = $this->ViewMode == "Print" ? 1 : intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0 ) {
            $this->PageNumber = 1;
        }

        $this->pump_group_name = new clsControl(ccsReportLabel, "pump_group_name", "pump_group_name", ccsText, "", "", $this);
        $this->total_volume = new clsControl(ccsReportLabel, "total_volume", "total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->total_volume->HTML = true;
        $this->total_volume->EmptyText = "&nbsp;";
        $this->total_money = new clsControl(ccsReportLabel, "total_money", "total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->total_money->HTML = true;
        $this->total_money->EmptyText = "&nbsp;";
        $this->ReportLabel1 = new clsControl(ccsReportLabel, "ReportLabel1", "ReportLabel1", ccsText, "", "", $this);
        $this->Sum_total_volume = new clsControl(ccsReportLabel, "Sum_total_volume", "Sum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->Sum_total_volume->HTML = true;
        $this->Sum_total_volume->TotalFunction = "Sum";
        $this->Sum_total_volume->EmptyText = "&nbsp;";
        $this->Sum_total_money = new clsControl(ccsReportLabel, "Sum_total_money", "Sum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->Sum_total_money->HTML = true;
        $this->Sum_total_money->TotalFunction = "Sum";
        $this->Sum_total_money->EmptyText = "&nbsp;";
        $this->NoRecords = new clsPanel("NoRecords", $this);
        $this->TotalSum_total_volume = new clsControl(ccsReportLabel, "TotalSum_total_volume", "TotalSum_total_volume", ccsFloat, array(False, 3, Null, Null, False, "", "", 1, True, ""), "", $this);
        $this->TotalSum_total_volume->HTML = true;
        $this->TotalSum_total_volume->TotalFunction = "Sum";
        $this->TotalSum_total_volume->EmptyText = "&nbsp;";
        $this->TotalSum_total_money = new clsControl(ccsReportLabel, "TotalSum_total_money", "TotalSum_total_money", ccsFloat, array(False, 2, Null, Null, False, "\$", "", 1, True, ""), "", $this);
        $this->TotalSum_total_money->HTML = true;
        $this->TotalSum_total_money->TotalFunction = "Sum";
        $this->TotalSum_total_money->EmptyText = "&nbsp;";
    }
//End Class_Initialize Event

//Initialize Method @199-6C59EE65
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = $this->PageSize;
        $this->DataSource->AbsolutePage = $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//CheckErrors Method @199-8D9BD764
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pump_group_name->Errors->Count());
        $errors = ($errors || $this->total_volume->Errors->Count());
        $errors = ($errors || $this->total_money->Errors->Count());
        $errors = ($errors || $this->ReportLabel1->Errors->Count());
        $errors = ($errors || $this->Sum_total_volume->Errors->Count());
        $errors = ($errors || $this->Sum_total_money->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_volume->Errors->Count());
        $errors = ($errors || $this->TotalSum_total_money->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//GetErrors Method @199-9C180D28
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pump_group_name->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ReportLabel1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Sum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->TotalSum_total_money->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

//Show Method @199-6CC7D02D
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $ShownRecords = 0;

        $this->DataSource->Parameters["urlp_start_id"] = CCGetFromGet("p_start_id", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();

        $ssf_pump_group_details_pump_group_idKey = "";
        $ssf_pump_group_details_pump_idKey = "";
        $hose_idKey = "";
        $Groups = new clsGroupsCollectionssf_pump_sales_ssf_pump_g($this);
        $Groups->PageSize = $this->PageSize > 0 ? $this->PageSize : 0;

        $is_next_record = $this->DataSource->next_record();
        $this->IsEmpty = ! $is_next_record;
        while($is_next_record) {
            $this->DataSource->SetValues();
            $this->pump_group_name->SetValue($this->DataSource->pump_group_name->GetValue());
            $this->total_volume->SetValue($this->DataSource->total_volume->GetValue());
            $this->total_money->SetValue($this->DataSource->total_money->GetValue());
            $this->ReportLabel1->SetValue($this->DataSource->ReportLabel1->GetValue());
            $this->Sum_total_volume->SetValue($this->DataSource->Sum_total_volume->GetValue());
            $this->Sum_total_money->SetValue($this->DataSource->Sum_total_money->GetValue());
            $this->TotalSum_total_volume->SetValue($this->DataSource->TotalSum_total_volume->GetValue());
            $this->TotalSum_total_money->SetValue($this->DataSource->TotalSum_total_money->GetValue());
            if (count($Groups->Groups) == 0) $Groups->OpenGroup("Report");
            if (count($Groups->Groups) == 2 or $ssf_pump_group_details_pump_group_idKey != $this->DataSource->f("pump_group_id")) {
                $Groups->OpenGroup("ssf_pump_group_details_pump_group_id");
            } elseif ($ssf_pump_group_details_pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->OpenGroup("ssf_pump_group_details_pump_id");
            } elseif ($hose_idKey != $this->DataSource->f("hose_id")) {
                $Groups->OpenGroup("hose_id");
            }
            $Groups->AddItem();
            $ssf_pump_group_details_pump_group_idKey = $this->DataSource->f("pump_group_id");
            $ssf_pump_group_details_pump_idKey = $this->DataSource->f("pump_id");
            $hose_idKey = $this->DataSource->f("hose_id");
            $is_next_record = $this->DataSource->next_record();
            if (!$is_next_record || $ssf_pump_group_details_pump_group_idKey != $this->DataSource->f("pump_group_id")) {
                $Groups->CloseGroup("ssf_pump_group_details_pump_group_id");
            } elseif ($ssf_pump_group_details_pump_idKey != $this->DataSource->f("pump_id")) {
                $Groups->CloseGroup("ssf_pump_group_details_pump_id");
            } elseif ($hose_idKey != $this->DataSource->f("hose_id")) {
                $Groups->CloseGroup("hose_id");
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
            $this->ControlsVisible["pump_group_name"] = $this->pump_group_name->Visible;
            $this->ControlsVisible["total_volume"] = $this->total_volume->Visible;
            $this->ControlsVisible["total_money"] = $this->total_money->Visible;
            $this->ControlsVisible["ReportLabel1"] = $this->ReportLabel1->Visible;
            $this->ControlsVisible["Sum_total_volume"] = $this->Sum_total_volume->Visible;
            $this->ControlsVisible["Sum_total_money"] = $this->Sum_total_money->Visible;
            do {
                $this->Attributes->RestoreFromArray($items[$i]->Attributes);
                $this->RowNumber = $items[$i]->RowNumber;
                switch ($items[$i]->GroupType) {
                    Case "":
                        $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Detail";
                        $this->pump_group_name->Visible = $this->ControlsVisible["pump_group_name"] && !$items[$i]->pump_group_nameDup;
                        $this->pump_group_name->SetValue($items[$i]->pump_group_name);
                        $this->pump_group_name->Attributes->RestoreFromArray($items[$i]->_pump_group_nameAttributes);
                        $this->total_volume->SetValue($items[$i]->total_volume);
                        $this->total_volume->Attributes->RestoreFromArray($items[$i]->_total_volumeAttributes);
                        $this->total_money->SetValue($items[$i]->total_money);
                        $this->total_money->Attributes->RestoreFromArray($items[$i]->_total_moneyAttributes);
                        $this->Detail->CCSEventResult = CCGetEvent($this->Detail->CCSEvents, "BeforeShow", $this->Detail);
                        $this->Attributes->Show();
                        $this->pump_group_name->Show();
                        $this->total_volume->Show();
                        $this->total_money->Show();
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
                            $this->TotalSum_total_volume->SetText(CCFormatNumber($items[$i]->TotalSum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_volume->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_volumeAttributes);
                            $this->TotalSum_total_money->SetText(CCFormatNumber($items[$i]->TotalSum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->TotalSum_total_money->Attributes->RestoreFromArray($items[$i]->_TotalSum_total_moneyAttributes);
                            $this->Report_Footer->CCSEventResult = CCGetEvent($this->Report_Footer->CCSEvents, "BeforeShow", $this->Report_Footer);
                            if ($this->Report_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Report_Footer";
                                $this->NoRecords->Show();
                                $this->TotalSum_total_volume->Show();
                                $this->TotalSum_total_money->Show();
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
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->Page_Footer->CCSEventResult = CCGetEvent($this->Page_Footer->CCSEvents, "BeforeShow", $this->Page_Footer);
                            if ($this->Page_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section Page_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section Page_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "ssf_pump_group_details_pump_group_id":
                        if ($items[$i]->Mode == 1) {
                            $this->ssf_pump_group_details_pump_group_id_Header->CCSEventResult = CCGetEvent($this->ssf_pump_group_details_pump_group_id_Header->CCSEvents, "BeforeShow", $this->ssf_pump_group_details_pump_group_id_Header);
                            if ($this->ssf_pump_group_details_pump_group_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_pump_group_details_pump_group_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_pump_group_details_pump_group_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->ReportLabel1->SetValue($items[$i]->ReportLabel1);
                            $this->ReportLabel1->Attributes->RestoreFromArray($items[$i]->_ReportLabel1Attributes);
                            $this->Sum_total_volume->SetText(CCFormatNumber($items[$i]->Sum_total_volume, array(False, 3, Null, Null, False, "", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_volume->Attributes->RestoreFromArray($items[$i]->_Sum_total_volumeAttributes);
                            $this->Sum_total_money->SetText(CCFormatNumber($items[$i]->Sum_total_money, array(False, 2, Null, Null, False, "\$", "", 1, True, "")), ccsFloat);
                            $this->Sum_total_money->Attributes->RestoreFromArray($items[$i]->_Sum_total_moneyAttributes);
                            $this->ssf_pump_group_details_pump_group_id_Footer->CCSEventResult = CCGetEvent($this->ssf_pump_group_details_pump_group_id_Footer->CCSEvents, "BeforeShow", $this->ssf_pump_group_details_pump_group_id_Footer);
                            if ($this->ssf_pump_group_details_pump_group_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_pump_group_details_pump_group_id_Footer";
                                $this->ReportLabel1->Show();
                                $this->Sum_total_volume->Show();
                                $this->Sum_total_money->Show();
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_pump_group_details_pump_group_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "ssf_pump_group_details_pump_id":
                        if ($items[$i]->Mode == 1) {
                            $this->ssf_pump_group_details_pump_id_Header->CCSEventResult = CCGetEvent($this->ssf_pump_group_details_pump_id_Header->CCSEvents, "BeforeShow", $this->ssf_pump_group_details_pump_id_Header);
                            if ($this->ssf_pump_group_details_pump_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_pump_group_details_pump_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_pump_group_details_pump_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->ssf_pump_group_details_pump_id_Footer->CCSEventResult = CCGetEvent($this->ssf_pump_group_details_pump_id_Footer->CCSEvents, "BeforeShow", $this->ssf_pump_group_details_pump_id_Footer);
                            if ($this->ssf_pump_group_details_pump_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section ssf_pump_group_details_pump_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section ssf_pump_group_details_pump_id_Footer", true, "Section Detail");
                            }
                        }
                        break;
                    case "hose_id":
                        if ($items[$i]->Mode == 1) {
                            $this->hose_id_Header->CCSEventResult = CCGetEvent($this->hose_id_Header->CCSEvents, "BeforeShow", $this->hose_id_Header);
                            if ($this->hose_id_Header->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section hose_id_Header";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section hose_id_Header", true, "Section Detail");
                            }
                        }
                        if ($items[$i]->Mode == 2) {
                            $this->hose_id_Footer->CCSEventResult = CCGetEvent($this->hose_id_Footer->CCSEvents, "BeforeShow", $this->hose_id_Footer);
                            if ($this->hose_id_Footer->Visible) {
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock . "/Section hose_id_Footer";
                                $this->Attributes->Show();
                                $Tpl->block_path = $ParentPath . "/" . $ReportBlock;
                                $Tpl->parseto("Section hose_id_Footer", true, "Section Detail");
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

} //End ssf_pump_sales_ssf_pump_g Class @199-FCB6E20C

class clsssf_pump_sales_ssf_pump_gDataSource extends clsDBConnection1 {  //ssf_pump_sales_ssf_pump_gDataSource Class @199-C6DD5B3F

//DataSource Variables @199-8EAF1AFB
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $wp;


    // Datasource fields
    public $pump_group_name;
    public $total_volume;
    public $total_money;
    public $ReportLabel1;
    public $Sum_total_volume;
    public $Sum_total_money;
    public $TotalSum_total_volume;
    public $TotalSum_total_money;
//End DataSource Variables

//DataSourceClass_Initialize Event @199-2B1E034B
    function clsssf_pump_sales_ssf_pump_gDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Report ssf_pump_sales_ssf_pump_g";
        $this->Initialize();
        $this->pump_group_name = new clsField("pump_group_name", ccsText, "");
        $this->total_volume = new clsField("total_volume", ccsFloat, "");
        $this->total_money = new clsField("total_money", ccsFloat, "");
        $this->ReportLabel1 = new clsField("ReportLabel1", ccsText, "");
        $this->Sum_total_volume = new clsField("Sum_total_volume", ccsFloat, "");
        $this->Sum_total_money = new clsField("Sum_total_money", ccsFloat, "");
        $this->TotalSum_total_volume = new clsField("TotalSum_total_volume", ccsFloat, "");
        $this->TotalSum_total_money = new clsField("TotalSum_total_money", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @199-9E1383D1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @199-5A2A0CBB
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlp_start_id", ccsInteger, "", "", $this->Parameters["urlp_start_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opGreaterThanOrEqual, "ssf_pump_sales.sale_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @199-F4E9D612
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT pump_group_name, ssf_pump_sales.pump_id AS pump_id, hose_id, Sum(volume) AS total_volume, Sum(money) AS total_money, ssf_pump_group_details.pump_group_id AS pump_group_id \n\n" .
        "FROM ssf_pump_sales LEFT JOIN (ssf_pump_group_details LEFT JOIN ssf_pump_group_header ON\n\n" .
        "ssf_pump_group_details.pump_group_id = ssf_pump_group_header.pump_group_id) ON\n\n" .
        "ssf_pump_sales.pump_id = ssf_pump_group_details.pump_id {SQL_Where}\n\n" .
        "GROUP BY ssf_pump_group_details.pump_group_id, pump_group_name, ssf_pump_sales.pump_id, hose_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->query(CCBuildSQL($this->SQL, $this->Where, "ssf_pump_group_details.pump_group_id asc,ssf_pump_sales.pump_id asc,ssf_pump_sales.hose_id asc" .  ($this->Order ? ", " . $this->Order: "")));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @199-E742DE0D
    function SetValues()
    {
        $this->pump_group_name->SetDBValue($this->f("pump_group_name"));
        $this->total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->total_money->SetDBValue(trim($this->f("total_money")));
        $this->ReportLabel1->SetDBValue($this->f("pump_group_name"));
        $this->Sum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->Sum_total_money->SetDBValue(trim($this->f("total_money")));
        $this->TotalSum_total_volume->SetDBValue(trim($this->f("total_volume")));
        $this->TotalSum_total_money->SetDBValue(trim($this->f("total_money")));
    }
//End SetValues Method

} //End ssf_pump_sales_ssf_pump_gDataSource Class @199-FCB6E20C



//Initialize Page @1-93515A55
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
$TemplateFileName = "SSFShiftReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-BF2DECBF
include("./SSFShiftReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-14B720BF
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ShiftReport_Header = new clsGridShiftReport_Header("", $MainPage);
$ShiftReport_ByType = new clsReportShiftReport_ByType("", $MainPage);
$ShiftReport_ByPayment = new clsReportShiftReport_ByPayment("", $MainPage);
$ShiftReport_ByGrade = new clsReportShiftReport_ByGrade("", $MainPage);
$ShiftReport_ByPump = new clsReportShiftReport_ByPump("", $MainPage);
$ssf_pump_sales_ssf_pump_g = new clsReportssf_pump_sales_ssf_pump_g("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ShiftReport_Header = & $ShiftReport_Header;
$MainPage->ShiftReport_ByType = & $ShiftReport_ByType;
$MainPage->ShiftReport_ByPayment = & $ShiftReport_ByPayment;
$MainPage->ShiftReport_ByGrade = & $ShiftReport_ByGrade;
$MainPage->ShiftReport_ByPump = & $ShiftReport_ByPump;
$MainPage->ssf_pump_sales_ssf_pump_g = & $ssf_pump_sales_ssf_pump_g;
$ShiftReport_Header->Initialize();
$ShiftReport_ByType->Initialize();
$ShiftReport_ByPayment->Initialize();
$ShiftReport_ByGrade->Initialize();
$ShiftReport_ByPump->Initialize();
$ssf_pump_sales_ssf_pump_g->Initialize();

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

//Execute Components @1-0687DBC0
$SSFSpiritHeader->Operations();
//End Execute Components

//Go to destination page @1-C22A5136
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ShiftReport_Header);
    unset($ShiftReport_ByType);
    unset($ShiftReport_ByPayment);
    unset($ShiftReport_ByGrade);
    unset($ShiftReport_ByPump);
    unset($ssf_pump_sales_ssf_pump_g);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-FC3D6BE9
$SSFSpiritHeader->Show();
$ShiftReport_Header->Show();
$ShiftReport_ByType->Show();
$ShiftReport_ByPayment->Show();
$ShiftReport_ByGrade->Show();
$ShiftReport_ByPump->Show();
$ssf_pump_sales_ssf_pump_g->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-D5EDB3BA
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ShiftReport_Header);
unset($ShiftReport_ByType);
unset($ShiftReport_ByPayment);
unset($ShiftReport_ByGrade);
unset($ShiftReport_ByPump);
unset($ssf_pump_sales_ssf_pump_g);
unset($Tpl);
//End Unload Page


?>
