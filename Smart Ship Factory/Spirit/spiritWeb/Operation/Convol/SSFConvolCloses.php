<?php
//Include Common Files @1-150E141C
define("RelativePath", "../..");
define("PathToCurrentPage", "/Operation/Convol/");
define("FileName", "SSFConvolCloses.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_addin_ctrl_vol_close { //ssf_addin_ctrl_vol_close class @4-9C10874A

//Variables @4-4FA8EE5B

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
    public $Sorter_ctrlvol_close_id;
    public $Sorter_ctrlvol_date;
    public $Sorter_ctrlvol_time;
//End Variables

//Class_Initialize Event @4-E27066BB
    function clsGridssf_addin_ctrl_vol_close($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_ctrl_vol_close";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_ctrl_vol_close";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_ctrl_vol_closeDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_addin_ctrl_vol_closeOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_ctrl_vol_closeDir", "");

        $this->ctrlvol_close_id = new clsControl(ccsLink, "ctrlvol_close_id", "ctrlvol_close_id", ccsInteger, "", CCGetRequestParam("ctrlvol_close_id", ccsGet, NULL), $this);
        $this->ctrlvol_close_id->Page = "SSFConvolCloses.php";
        $this->ctrlvol_date = new clsControl(ccsLabel, "ctrlvol_date", "ctrlvol_date", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("ctrlvol_date", ccsGet, NULL), $this);
        $this->ctrlvol_time = new clsControl(ccsLabel, "ctrlvol_time", "ctrlvol_time", ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("ctrlvol_time", ccsGet, NULL), $this);
        $this->ctrlvol_reason_desc = new clsControl(ccsLabel, "ctrlvol_reason_desc", "ctrlvol_reason_desc", ccsMemo, "", CCGetRequestParam("ctrlvol_reason_desc", ccsGet, NULL), $this);
        $this->Button_NewClose = new clsButton("Button_NewClose", ccsGet, $this);
        $this->Sorter_ctrlvol_close_id = new clsSorter($this->ComponentName, "Sorter_ctrlvol_close_id", $FileName, $this);
        $this->Sorter_ctrlvol_date = new clsSorter($this->ComponentName, "Sorter_ctrlvol_date", $FileName, $this);
        $this->Sorter_ctrlvol_time = new clsSorter($this->ComponentName, "Sorter_ctrlvol_time", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @4-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @4-8CC11BF9
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;


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
            $this->ControlsVisible["ctrlvol_close_id"] = $this->ctrlvol_close_id->Visible;
            $this->ControlsVisible["ctrlvol_date"] = $this->ctrlvol_date->Visible;
            $this->ControlsVisible["ctrlvol_time"] = $this->ctrlvol_time->Visible;
            $this->ControlsVisible["ctrlvol_reason_desc"] = $this->ctrlvol_reason_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->ctrlvol_close_id->SetValue($this->DataSource->ctrlvol_close_id->GetValue());
                $this->ctrlvol_close_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ctrlvol_close_id->Parameters = CCAddParam($this->ctrlvol_close_id->Parameters, "ctrlvol_close_id", $this->DataSource->f("ctrlvol_close_id"));
                $this->ctrlvol_date->SetValue($this->DataSource->ctrlvol_date->GetValue());
                $this->ctrlvol_time->SetValue($this->DataSource->ctrlvol_time->GetValue());
                $this->ctrlvol_reason_desc->SetValue($this->DataSource->ctrlvol_reason_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->ctrlvol_close_id->Show();
                $this->ctrlvol_date->Show();
                $this->ctrlvol_time->Show();
                $this->ctrlvol_reason_desc->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Button_NewClose->Show();
        $this->Sorter_ctrlvol_close_id->Show();
        $this->Sorter_ctrlvol_date->Show();
        $this->Sorter_ctrlvol_time->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @4-E50875B0
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->ctrlvol_close_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ctrlvol_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ctrlvol_time->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ctrlvol_reason_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_ctrl_vol_close Class @4-FCB6E20C

class clsssf_addin_ctrl_vol_closeDataSource extends clsDBConnection1 {  //ssf_addin_ctrl_vol_closeDataSource Class @4-89520DD5

//DataSource Variables @4-45B37D0E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $ctrlvol_close_id;
    public $ctrlvol_date;
    public $ctrlvol_time;
    public $ctrlvol_reason_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @4-A7148856
    function clsssf_addin_ctrl_vol_closeDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_ctrl_vol_close";
        $this->Initialize();
        $this->ctrlvol_close_id = new clsField("ctrlvol_close_id", ccsInteger, "");
        $this->ctrlvol_date = new clsField("ctrlvol_date", ccsDate, array("yyyy", "mm", "dd"));
        $this->ctrlvol_time = new clsField("ctrlvol_time", ccsDate, array("hh", "nn", "ss"));
        $this->ctrlvol_reason_desc = new clsField("ctrlvol_reason_desc", ccsMemo, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @4-26769735
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ctrlvol_close_id desc";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ctrlvol_close_id" => array("ctrlvol_close_id", ""), 
            "Sorter_ctrlvol_date" => array("ctrlvol_date", ""), 
            "Sorter_ctrlvol_time" => array("ctrlvol_time", "")));
    }
//End SetOrder Method

//Prepare Method @4-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @4-B4A35BDD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_ctrl_vol_close_info";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_ctrl_vol_close_info {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @4-2A8DBD8A
    function SetValues()
    {
        $this->ctrlvol_close_id->SetDBValue(trim($this->f("ctrlvol_close_id")));
        $this->ctrlvol_date->SetDBValue(trim($this->f("ctrlvol_date")));
        $this->ctrlvol_time->SetDBValue(trim($this->f("ctrlvol_time")));
        $this->ctrlvol_reason_desc->SetDBValue($this->f("ctrlvol_reason_desc"));
    }
//End SetValues Method

} //End ssf_addin_ctrl_vol_closeDataSource Class @4-FCB6E20C

class clsEditableGridssf_addin_ctrl_vol_close1 { //ssf_addin_ctrl_vol_close1 Class @15-E10993BE

//Variables @15-2145AC18

    // Public variables
    public $ComponentType = "EditableGrid";
    public $ComponentName;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormParameters;
    public $FormState;
    public $FormEnctype;
    public $CachedColumns;
    public $TotalRows;
    public $UpdatedRows;
    public $EmptyRows;
    public $Visible;
    public $RowsErrors;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode;
    public $ValidatingControls;
    public $Controls;
    public $ControlsErrors;
    public $RowNumber;
    public $Attributes;

    // Class variables
    public $Sorter_ctrlvol_file_type;
    public $Sorter_ctrlvol_file_generation_status;
    public $Sorter_ctrlvol_file_send_status;
    public $Sorter_ctrlvol_file_send_status_desc;
//End Variables

//Class_Initialize Event @15-99C8694E
    function clsEditableGridssf_addin_ctrl_vol_close1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_addin_ctrl_vol_close1/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_addin_ctrl_vol_close1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["ctrlvol_close_id"][0] = "ctrlvol_close_id";
        $this->CachedColumns["ctrlvol_file_type"][0] = "ctrlvol_file_type";
        $this->DataSource = new clsssf_addin_ctrl_vol_close1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 10;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 0;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if(!$this->Visible) return;

        $CCSForm = CCGetFromGet("ccsForm", "");
        $this->FormEnctype = "application/x-www-form-urlencoded";
        $this->FormSubmitted = ($CCSForm == $this->ComponentName);
        if($this->FormSubmitted) {
            $this->FormState = CCGetFromPost("FormState", "");
            $this->SetFormState($this->FormState);
        } else {
            $this->FormState = "";
        }
        $Method = $this->FormSubmitted ? ccsPost : ccsGet;

        $this->SorterName = CCGetParam("ssf_addin_ctrl_vol_close1Order", "");
        $this->SorterDirection = CCGetParam("ssf_addin_ctrl_vol_close1Dir", "");

        $this->Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", NULL, $this);
        $this->Sorter_ctrlvol_file_type = new clsSorter($this->ComponentName, "Sorter_ctrlvol_file_type", $FileName, $this);
        $this->Sorter_ctrlvol_file_generation_status = new clsSorter($this->ComponentName, "Sorter_ctrlvol_file_generation_status", $FileName, $this);
        $this->Sorter_ctrlvol_file_send_status = new clsSorter($this->ComponentName, "Sorter_ctrlvol_file_send_status", $FileName, $this);
        $this->Sorter_ctrlvol_file_send_status_desc = new clsSorter($this->ComponentName, "Sorter_ctrlvol_file_send_status_desc", $FileName, $this);
        $this->chkmarkall = new clsControl(ccsCheckBox, "chkmarkall", "chkmarkall", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->chkmarkall->CheckedValue = true;
        $this->chkmarkall->UncheckedValue = false;
        $this->ctrlvol_close_id = new clsControl(ccsHidden, "ctrlvol_close_id", $CCSLocales->GetText("ctrlvol_close_id"), ccsInteger, "", NULL, $this);
        $this->ctrlvol_close_id->Required = true;
        $this->ctrlvol_file_type = new clsControl(ccsHidden, "ctrlvol_file_type", $CCSLocales->GetText("ctrlvol_file_type"), ccsText, "", NULL, $this);
        $this->ctrlvol_file_type->Required = true;
        $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", NULL, $this);
        $this->ctrlvol_file_generation_status = new clsControl(ccsLabel, "ctrlvol_file_generation_status", $CCSLocales->GetText("ctrlvol_file_generation_status"), ccsText, "", NULL, $this);
        $this->ctrlvol_file_generation_status->HTML = true;
        $this->ctrlvol_file_send_status = new clsControl(ccsLabel, "ctrlvol_file_send_status", $CCSLocales->GetText("ctrlvol_file_send_status"), ccsText, "", NULL, $this);
        $this->ctrlvol_file_send_status->HTML = true;
        $this->ctrlvol_file_send_status_desc = new clsControl(ccsLabel, "ctrlvol_file_send_status_desc", $CCSLocales->GetText("ctrlvol_file_send_status_desc"), ccsText, "", NULL, $this);
        $this->ctrlvol_file_send_status_desc->HTML = true;
        $this->CheckBox_Update = new clsControl(ccsCheckBox, "CheckBox_Update", "CheckBox_Update", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Update->CheckedValue = true;
        $this->CheckBox_Update->UncheckedValue = false;
        $this->Button_Resend = new clsButton("Button_Resend", $Method, $this);
        $this->Button_Regenerate = new clsButton("Button_Regenerate", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @15-17D09CCA
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urlctrlvol_close_id"] = CCGetFromGet("ctrlvol_close_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @15-AE3C6B97
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["ctrlvol_close_id"][$RowNumber] = CCGetFromPost("ctrlvol_close_id_" . $RowNumber, NULL);
            $this->FormParameters["ctrlvol_file_type"][$RowNumber] = CCGetFromPost("ctrlvol_file_type_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Update"][$RowNumber] = CCGetFromPost("CheckBox_Update_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @15-5F33CD9A
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["ctrlvol_close_id"] = $this->CachedColumns["ctrlvol_close_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ctrlvol_file_type"] = $this->CachedColumns["ctrlvol_file_type"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->ctrlvol_close_id->SetText($this->FormParameters["ctrlvol_close_id"][$this->RowNumber], $this->RowNumber);
            $this->ctrlvol_file_type->SetText($this->FormParameters["ctrlvol_file_type"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                $Validation = ($this->ValidateRow($this->RowNumber) && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @15-5D166735
    function ValidateRow()
    {
        global $CCSLocales;
        $this->ctrlvol_close_id->Validate();
        $this->ctrlvol_file_type->Validate();
        $this->CheckBox_Update->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->ctrlvol_close_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ctrlvol_file_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Update->Errors->ToString());
        $this->ctrlvol_close_id->Errors->Clear();
        $this->ctrlvol_file_type->Errors->Clear();
        $this->CheckBox_Update->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @15-D68F306B
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["ctrlvol_close_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["ctrlvol_file_type"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["CheckBox_Update"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @15-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @15-74B97E77
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted)
            return;

        $this->GetFormParameters();
        $this->PressedButton = "Button_Resend";
        if($this->Button_Resend->Pressed) {
            $this->PressedButton = "Button_Resend";
        } else if($this->Button_Regenerate->Pressed) {
            $this->PressedButton = "Button_Regenerate";
        } else if($this->Cancel->Pressed) {
            $this->PressedButton = "Cancel";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Resend") {
            if(!CCGetEvent($this->Button_Resend->CCSEvents, "OnClick", $this->Button_Resend) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Regenerate") {
            if(!CCGetEvent($this->Button_Regenerate->CCSEvents, "OnClick", $this->Button_Regenerate) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Cancel") {
            if(!CCGetEvent($this->Cancel->CCSEvents, "OnClick", $this->Cancel)) {
                $Redirect = "";
            } else {
                $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ctrlvol_close_id"));
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @15-B013A872
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["ctrlvol_close_id"] = $this->CachedColumns["ctrlvol_close_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ctrlvol_file_type"] = $this->CachedColumns["ctrlvol_file_type"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->ctrlvol_close_id->SetText($this->FormParameters["ctrlvol_close_id"][$this->RowNumber], $this->RowNumber);
            $this->ctrlvol_file_type->SetText($this->FormParameters["ctrlvol_file_type"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->UpdateAllowed) { $Validation = ($this->UpdateRow() && $Validation); }
            }
            else if($this->CheckInsert() && $this->InsertAllowed)
            {
                $Validation = ($Validation && $this->InsertRow());
            }
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterSubmit", $this);
        if ($this->Errors->Count() == 0 && $Validation){
            $this->DataSource->close();
            return true;
        }
        return false;
    }
//End UpdateGrid Method

//UpdateRow Method @15-D1331F21
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->ctrlvol_close_id->SetValue($this->ctrlvol_close_id->GetValue(true));
        $this->DataSource->ctrlvol_file_type->SetValue($this->ctrlvol_file_type->GetValue(true));
        $this->DataSource->Label1->SetValue($this->Label1->GetValue(true));
        $this->DataSource->ctrlvol_file_generation_status->SetValue($this->ctrlvol_file_generation_status->GetValue(true));
        $this->DataSource->ctrlvol_file_send_status->SetValue($this->ctrlvol_file_send_status->GetValue(true));
        $this->DataSource->ctrlvol_file_send_status_desc->SetValue($this->ctrlvol_file_send_status_desc->GetValue(true));
        $this->DataSource->Update();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End UpdateRow Method

//DeleteRow Method @15-A4A656F6
    function DeleteRow()
    {
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End DeleteRow Method

//FormScript Method @15-DC206C71
    function FormScript($TotalRows)
    {
        $script = "";
        $script .= "\n<script language=\"JavaScript\">\n<!--\n";
        $script .= "var ssf_addin_ctrl_vol_close1Elements;\n";
        $script .= "var ssf_addin_ctrl_vol_close1EmptyRows = 0;\n";
        $script .= "var " . $this->ComponentName . "ctrlvol_close_idID = 0;\n";
        $script .= "var " . $this->ComponentName . "ctrlvol_file_typeID = 1;\n";
        $script .= "var " . $this->ComponentName . "CheckBox_UpdateID = 2;\n";
        $script .= "\nfunction initssf_addin_ctrl_vol_close1Elements() {\n";
        $script .= "\tvar ED = document.forms[\"ssf_addin_ctrl_vol_close1\"];\n";
        $script .= "\tssf_addin_ctrl_vol_close1Elements = new Array (\n";
        for($i = 1; $i <= $TotalRows; $i++) {
            $script .= "\t\tnew Array(" . "ED.ctrlvol_close_id_" . $i . ", " . "ED.ctrlvol_file_type_" . $i . ", " . "ED.CheckBox_Update_" . $i . ")";
            if($i != $TotalRows) $script .= ",\n";
        }
        $script .= ");\n";
        $script .= "}\n";
        $script .= "\n//-->\n</script>";
        return $script;
    }
//End FormScript Method

//SetFormState Method @15-0B224A38
    function SetFormState($FormState)
    {
        if(strlen($FormState)) {
            $FormState = str_replace("\\\\", "\\" . ord("\\"), $FormState);
            $FormState = str_replace("\\;", "\\" . ord(";"), $FormState);
            $pieces = explode(";", $FormState);
            $this->UpdatedRows = $pieces[0];
            $this->EmptyRows   = $pieces[1];
            $this->TotalRows = $this->UpdatedRows + $this->EmptyRows;
            $RowNumber = 0;
            for($i = 2; $i < sizeof($pieces); $i = $i + 2)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["ctrlvol_close_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["ctrlvol_file_type"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["ctrlvol_close_id"][$RowNumber] = "";
                $this->CachedColumns["ctrlvol_file_type"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @15-C5EDEA78
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ctrlvol_close_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ctrlvol_file_type"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @15-E12A6908
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->open();
        $is_next_record = ($this->ReadAllowed && $this->DataSource->next_record());
        $this->IsEmpty = ! $is_next_record;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) { return; }

        $this->Attributes->Show();
        $this->Button_Resend->Visible = $this->Button_Resend->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $this->Button_Regenerate->Visible = $this->Button_Regenerate->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["ctrlvol_close_id"] = $this->ctrlvol_close_id->Visible;
        $this->ControlsVisible["ctrlvol_file_type"] = $this->ctrlvol_file_type->Visible;
        $this->ControlsVisible["Label1"] = $this->Label1->Visible;
        $this->ControlsVisible["ctrlvol_file_generation_status"] = $this->ctrlvol_file_generation_status->Visible;
        $this->ControlsVisible["ctrlvol_file_send_status"] = $this->ctrlvol_file_send_status->Visible;
        $this->ControlsVisible["ctrlvol_file_send_status_desc"] = $this->ctrlvol_file_send_status_desc->Visible;
        $this->ControlsVisible["CheckBox_Update"] = $this->CheckBox_Update->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["ctrlvol_close_id"][$this->RowNumber] = $this->DataSource->CachedColumns["ctrlvol_close_id"];
                    $this->CachedColumns["ctrlvol_file_type"][$this->RowNumber] = $this->DataSource->CachedColumns["ctrlvol_file_type"];
                    $this->Label1->SetText("");
                    $this->CheckBox_Update->SetValue("");
                    $this->ctrlvol_close_id->SetValue($this->DataSource->ctrlvol_close_id->GetValue());
                    $this->ctrlvol_file_type->SetValue($this->DataSource->ctrlvol_file_type->GetValue());
                    $this->ctrlvol_file_generation_status->SetValue($this->DataSource->ctrlvol_file_generation_status->GetValue());
                    $this->ctrlvol_file_send_status->SetValue($this->DataSource->ctrlvol_file_send_status->GetValue());
                    $this->ctrlvol_file_send_status_desc->SetValue($this->DataSource->ctrlvol_file_send_status_desc->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->Label1->SetText("");
                    $this->ctrlvol_file_generation_status->SetText("");
                    $this->ctrlvol_file_send_status->SetText("");
                    $this->ctrlvol_file_send_status_desc->SetText("");
                    $this->ctrlvol_file_generation_status->SetValue($this->DataSource->ctrlvol_file_generation_status->GetValue());
                    $this->ctrlvol_file_send_status->SetValue($this->DataSource->ctrlvol_file_send_status->GetValue());
                    $this->ctrlvol_file_send_status_desc->SetValue($this->DataSource->ctrlvol_file_send_status_desc->GetValue());
                    $this->ctrlvol_close_id->SetText($this->FormParameters["ctrlvol_close_id"][$this->RowNumber], $this->RowNumber);
                    $this->ctrlvol_file_type->SetText($this->FormParameters["ctrlvol_file_type"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["ctrlvol_close_id"][$this->RowNumber] = "";
                    $this->CachedColumns["ctrlvol_file_type"][$this->RowNumber] = "";
                    $this->ctrlvol_close_id->SetText("");
                    $this->ctrlvol_file_type->SetText("");
                    $this->Label1->SetText("");
                    $this->ctrlvol_file_generation_status->SetText("");
                    $this->ctrlvol_file_send_status->SetText("");
                    $this->ctrlvol_file_send_status_desc->SetText("");
                } else {
                    $this->Label1->SetText("");
                    $this->ctrlvol_file_generation_status->SetText("");
                    $this->ctrlvol_file_send_status->SetText("");
                    $this->ctrlvol_file_send_status_desc->SetText("");
                    $this->ctrlvol_close_id->SetText($this->FormParameters["ctrlvol_close_id"][$this->RowNumber], $this->RowNumber);
                    $this->ctrlvol_file_type->SetText($this->FormParameters["ctrlvol_file_type"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->ctrlvol_close_id->Show($this->RowNumber);
                $this->ctrlvol_file_type->Show($this->RowNumber);
                $this->Label1->Show($this->RowNumber);
                $this->ctrlvol_file_generation_status->Show($this->RowNumber);
                $this->ctrlvol_file_send_status->Show($this->RowNumber);
                $this->ctrlvol_file_send_status_desc->Show($this->RowNumber);
                $this->CheckBox_Update->Show($this->RowNumber);
                if (isset($this->RowsErrors[$this->RowNumber]) && ($this->RowsErrors[$this->RowNumber] != "")) {
                    $Tpl->setblockvar("RowError", "");
                    $Tpl->setvar("Error", $this->RowsErrors[$this->RowNumber]);
                    $this->Attributes->Show();
                    $Tpl->parse("RowError", false);
                } else {
                    $Tpl->setblockvar("RowError", "");
                }
                $Tpl->setvar("FormScript", $this->FormScript($this->RowNumber));
                $Tpl->parse();
                if ($is_next_record) {
                    if ($this->FormSubmitted) {
                        $is_next_record = $this->RowNumber < $this->UpdatedRows;
                        if (($this->DataSource->CachedColumns["ctrlvol_close_id"] == $this->CachedColumns["ctrlvol_close_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["ctrlvol_file_type"] == $this->CachedColumns["ctrlvol_file_type"][$this->RowNumber])) {
                            if ($this->ReadAllowed) $this->DataSource->next_record();
                        }
                    }else{
                        $is_next_record = ($this->RowNumber < $this->PageSize) &&  $this->ReadAllowed && $this->DataSource->next_record();
                    }
                } else { 
                    $EmptyRowsLeft--;
                }
            } while($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed));
        } else {
            $Tpl->block_path = $EditableGridPath;
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $Tpl->block_path = $EditableGridPath;
        $this->Label2->Show();
        $this->Sorter_ctrlvol_file_type->Show();
        $this->Sorter_ctrlvol_file_generation_status->Show();
        $this->Sorter_ctrlvol_file_send_status->Show();
        $this->Sorter_ctrlvol_file_send_status_desc->Show();
        $this->chkmarkall->Show();
        $this->Button_Resend->Show();
        $this->Button_Regenerate->Show();
        $this->Cancel->Show();

        if($this->CheckErrors()) {
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $Tpl->SetVar("HTMLFormProperties", "method=\"POST\" action=\"" . $this->HTMLFormAction . "\" name=\"" . $this->ComponentName . "\"");
        $Tpl->SetVar("FormState", CCToHTML($this->GetFormState($NonEmptyRows)));
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_ctrl_vol_close1 Class @15-FCB6E20C

class clsssf_addin_ctrl_vol_close1DataSource extends clsDBConnection1 {  //ssf_addin_ctrl_vol_close1DataSource Class @15-0B720D81

//DataSource Variables @15-08E7B06B
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $UpdateParameters;
    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;
    public $UpdateFields = array();

    // Datasource fields
    public $ctrlvol_close_id;
    public $ctrlvol_file_type;
    public $Label1;
    public $ctrlvol_file_generation_status;
    public $ctrlvol_file_send_status;
    public $ctrlvol_file_send_status_desc;
    public $CheckBox_Update;
//End DataSource Variables

//DataSourceClass_Initialize Event @15-08BE0B23
    function clsssf_addin_ctrl_vol_close1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_addin_ctrl_vol_close1/Error";
        $this->Initialize();
        $this->ctrlvol_close_id = new clsField("ctrlvol_close_id", ccsInteger, "");
        $this->ctrlvol_file_type = new clsField("ctrlvol_file_type", ccsText, "");
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->ctrlvol_file_generation_status = new clsField("ctrlvol_file_generation_status", ccsText, "");
        $this->ctrlvol_file_send_status = new clsField("ctrlvol_file_send_status", ccsText, "");
        $this->ctrlvol_file_send_status_desc = new clsField("ctrlvol_file_send_status_desc", ccsText, "");
        $this->CheckBox_Update = new clsField("CheckBox_Update", ccsBoolean, array("t", "f", ""));

        $this->UpdateFields["ctrlvol_close_id"] = array("Name" => "ctrlvol_close_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["ctrlvol_file_type"] = array("Name" => "ctrlvol_file_type", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @15-7AA50AA7
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ctrlvol_file_type";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ctrlvol_file_type" => array("ctrlvol_file_type", ""), 
            "Sorter_ctrlvol_file_generation_status" => array("ctrlvol_file_generation_status", ""), 
            "Sorter_ctrlvol_file_send_status" => array("ctrlvol_file_send_status", ""), 
            "Sorter_ctrlvol_file_send_status_desc" => array("ctrlvol_file_send_status_desc", "")));
    }
//End SetOrder Method

//Prepare Method @15-E2538D29
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlctrlvol_close_id", ccsInteger, "", "", $this->Parameters["urlctrlvol_close_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ctrlvol_close_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @15-1FBF4DF4
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_ctrl_vol_close_file_info";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_ctrl_vol_close_file_info {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @15-D7203E43
    function SetValues()
    {
        $this->CachedColumns["ctrlvol_close_id"] = $this->f("ctrlvol_close_id");
        $this->CachedColumns["ctrlvol_file_type"] = $this->f("ctrlvol_file_type");
        $this->ctrlvol_close_id->SetDBValue(trim($this->f("ctrlvol_close_id")));
        $this->ctrlvol_file_type->SetDBValue($this->f("ctrlvol_file_type"));
        $this->ctrlvol_file_generation_status->SetDBValue($this->f("ctrlvol_file_generation_status"));
        $this->ctrlvol_file_send_status->SetDBValue($this->f("ctrlvol_file_send_status"));
        $this->ctrlvol_file_send_status_desc->SetDBValue($this->f("ctrlvol_file_send_status_desc"));
    }
//End SetValues Method

//Update Method @15-A6F0F711
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "ctrlvol_close_id=" . $this->ToSQL($this->CachedColumns["ctrlvol_close_id"], ccsInteger) . " AND ctrlvol_file_type=" . $this->ToSQL($this->CachedColumns["ctrlvol_file_type"], ccsText);
        $this->UpdateFields["ctrlvol_close_id"]["Value"] = $this->ctrlvol_close_id->GetDBValue(true);
        $this->UpdateFields["ctrlvol_file_type"]["Value"] = $this->ctrlvol_file_type->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_ctrl_vol_close_file_info", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Update Method

//Delete Method @15-EEC77B0B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "ctrlvol_close_id=" . $this->ToSQL($this->CachedColumns["ctrlvol_close_id"], ccsInteger) . " AND ctrlvol_file_type=" . $this->ToSQL($this->CachedColumns["ctrlvol_file_type"], ccsText);
        $this->SQL = "DELETE FROM ssf_addin_ctrl_vol_close_file_info";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Delete Method

} //End ssf_addin_ctrl_vol_close1DataSource Class @15-FCB6E20C

//Initialize Page @1-32AFD319
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
$TemplateFileName = "SSFConvolCloses.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-4EBD9C7B
include("./SSFConvolCloses_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-A6D3B93C
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_ctrl_vol_close = new clsGridssf_addin_ctrl_vol_close("", $MainPage);
$ssf_addin_ctrl_vol_close1 = new clsEditableGridssf_addin_ctrl_vol_close1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_ctrl_vol_close = & $ssf_addin_ctrl_vol_close;
$MainPage->ssf_addin_ctrl_vol_close1 = & $ssf_addin_ctrl_vol_close1;
$ssf_addin_ctrl_vol_close->Initialize();
$ssf_addin_ctrl_vol_close1->Initialize();

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

//Execute Components @1-FD0DCBBA
$SSFSpiritHeader->Operations();
$ssf_addin_ctrl_vol_close1->Operation();
//End Execute Components

//Go to destination page @1-D53B0B74
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_ctrl_vol_close);
    unset($ssf_addin_ctrl_vol_close1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-F011F406
$SSFSpiritHeader->Show();
$ssf_addin_ctrl_vol_close->Show();
$ssf_addin_ctrl_vol_close1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-33A900B1
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_ctrl_vol_close);
unset($ssf_addin_ctrl_vol_close1);
unset($Tpl);
//End Unload Page


?>
