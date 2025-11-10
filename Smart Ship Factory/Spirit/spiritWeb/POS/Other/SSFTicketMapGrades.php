<?php
//Include Common Files @1-2A3F163C
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Other/");
define("FileName", "SSFTicketMapGrades.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_plu_grades { //ssf_tkt_plu_grades class @3-2317F2BB

//Variables @3-F7554ACD

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
    public $Sorter_tkt_plu_id;
    public $Sorter_tkt_grade_id;
    public $Sorter_tkt_automatic;
//End Variables

//Class_Initialize Event @3-5AE1C56A
    function clsGridssf_tkt_plu_grades($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_plu_grades";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_plu_grades";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_plu_gradesDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_plu_gradesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_plu_gradesDir", "");

        $this->tkt_plu_id = new clsControl(ccsLink, "tkt_plu_id", "tkt_plu_id", ccsText, "", CCGetRequestParam("tkt_plu_id", ccsGet, NULL), $this);
        $this->tkt_plu_id->Page = "SSFTicketMapGrades.php";
        $this->tkt_grade_id = new clsControl(ccsLabel, "tkt_grade_id", "tkt_grade_id", ccsText, "", CCGetRequestParam("tkt_grade_id", ccsGet, NULL), $this);
        $this->tkt_automatic = new clsControl(ccsCheckBox, "tkt_automatic", "tkt_automatic", ccsText, "", CCGetRequestParam("tkt_automatic", ccsGet, NULL), $this);
        $this->tkt_automatic->CheckedValue = $this->tkt_automatic->GetParsedValue("Y");
        $this->tkt_automatic->UncheckedValue = $this->tkt_automatic->GetParsedValue("N");
        $this->Sorter_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_grade_id = new clsSorter($this->ComponentName, "Sorter_tkt_grade_id", $FileName, $this);
        $this->Sorter_tkt_automatic = new clsSorter($this->ComponentName, "Sorter_tkt_automatic", $FileName, $this);
        $this->plu_grades_Insert = new clsControl(ccsLink, "plu_grades_Insert", "plu_grades_Insert", ccsText, "", CCGetRequestParam("plu_grades_Insert", ccsGet, NULL), $this);
        $this->plu_grades_Insert->Page = "SSFTicketMapGrades.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @3-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @3-61FA3555
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
            $this->ControlsVisible["tkt_plu_id"] = $this->tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_grade_id"] = $this->tkt_grade_id->Visible;
            $this->ControlsVisible["tkt_automatic"] = $this->tkt_automatic->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                if(!is_array($this->tkt_automatic->Value) && !strlen($this->tkt_automatic->Value) && $this->tkt_automatic->Value !== false)
                    $this->tkt_automatic->SetValue(true);
                $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                $this->tkt_plu_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_plu_id->Parameters = CCAddParam($this->tkt_plu_id->Parameters, "tkt_plu_id", $this->DataSource->f("tkt_plu_id"));
                $this->tkt_grade_id->SetValue($this->DataSource->tkt_grade_id->GetValue());
                $this->tkt_automatic->SetValue($this->DataSource->tkt_automatic->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_plu_id->Show();
                $this->tkt_grade_id->Show();
                $this->tkt_automatic->Show();
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
        $this->plu_grades_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_plu_id", "ccsForm"));
        $this->plu_grades_Insert->Parameters = CCAddParam($this->plu_grades_Insert->Parameters, "plu_grades_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_plu_id->Show();
        $this->Sorter_tkt_grade_id->Show();
        $this->Sorter_tkt_automatic->Show();
        $this->plu_grades_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-9C3CDA18
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_grade_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_automatic->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_plu_grades Class @3-FCB6E20C

class clsssf_tkt_plu_gradesDataSource extends clsDBConnection1 {  //ssf_tkt_plu_gradesDataSource Class @3-E8717FEB

//DataSource Variables @3-7B45C5A4
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_plu_id;
    public $tkt_grade_id;
    public $tkt_automatic;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-9A80C208
    function clsssf_tkt_plu_gradesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_plu_grades";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->tkt_grade_id = new clsField("tkt_grade_id", ccsText, "");
        $this->tkt_automatic = new clsField("tkt_automatic", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-B231BBDC
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_plu_grades.tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_plu_id" => array("tkt_plu_id", ""), 
            "Sorter_tkt_grade_id" => array("tkt_grade_id", ""), 
            "Sorter_tkt_automatic" => array("tkt_automatic", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-19FFA8B9
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT tkt_plu_id, tkt_grade_id AS grade_id_number, tkt_automatic, id AS tkt_grade_id \n" .
        "FROM ssf_tkt_plu_grades LEFT JOIN config_values ON\n" .
        "ssf_tkt_plu_grades.tkt_grade_id = config_values.param_value\n" .
        "AND ( config_values.library = 'grade' )\n" .
        "AND ( config_values.groupname = 'general' )\n" .
        "AND ( config_values.parameter = 'number' )) cnt";
        $this->SQL = "SELECT tkt_plu_id, tkt_grade_id AS grade_id_number, tkt_automatic, id AS tkt_grade_id \n" .
        "FROM ssf_tkt_plu_grades LEFT JOIN config_values ON\n" .
        "ssf_tkt_plu_grades.tkt_grade_id = config_values.param_value\n" .
        "AND ( config_values.library = 'grade' )\n" .
        "AND ( config_values.groupname = 'general' )\n" .
        "AND ( config_values.parameter = 'number' )  {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-E228DDCD
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_grade_id->SetDBValue($this->f("tkt_grade_id"));
        $this->tkt_automatic->SetDBValue($this->f("tkt_automatic"));
    }
//End SetValues Method

} //End ssf_tkt_plu_gradesDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_plu_grades1 { //ssf_tkt_plu_grades1 Class @17-B683F6BB

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

//Class_Initialize Event @17-87E90464
    function clsRecordssf_tkt_plu_grades1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_plu_grades1/Error";
        $this->DataSource = new clsssf_tkt_plu_grades1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_plu_grades1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_plu_id = new clsControl(ccsTextBox, "tkt_plu_id", $CCSLocales->GetText("tkt_plu_id"), ccsText, "", CCGetRequestParam("tkt_plu_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopProductsList.php";
            $this->tkt_grade_id = new clsControl(ccsListBox, "tkt_grade_id", $CCSLocales->GetText("tkt_grade_id"), ccsText, "", CCGetRequestParam("tkt_grade_id", $Method, NULL), $this);
            $this->tkt_grade_id->DSType = dsTable;
            list($this->tkt_grade_id->BoundColumn, $this->tkt_grade_id->TextColumn, $this->tkt_grade_id->DBFormat) = array("param_value", "id", "");
            $this->tkt_grade_id->DataSource = new clsDBConnection1();
            $this->tkt_grade_id->ds = & $this->tkt_grade_id->DataSource;
            $this->tkt_grade_id->DataSource->SQL = "SELECT id, param_value \n" .
"FROM config_values {SQL_Where} {SQL_OrderBy}";
            $this->tkt_grade_id->DataSource->Order = "id";
            $this->tkt_grade_id->DataSource->wp = new clsSQLParameters();
            $this->tkt_grade_id->DataSource->wp->Criterion[1] = "library = 'grade'";
            $this->tkt_grade_id->DataSource->wp->Criterion[2] = "groupname = 'general'";
            $this->tkt_grade_id->DataSource->wp->Criterion[3] = "parameter = 'number'";
            $this->tkt_grade_id->DataSource->Where = $this->tkt_grade_id->DataSource->wp->opAND(
                 false, $this->tkt_grade_id->DataSource->wp->opAND(
                 false, 
                 $this->tkt_grade_id->DataSource->wp->Criterion[1], 
                 $this->tkt_grade_id->DataSource->wp->Criterion[2]), 
                 $this->tkt_grade_id->DataSource->wp->Criterion[3]);
            $this->tkt_grade_id->DataSource->Order = "id";
            $this->tkt_automatic = new clsControl(ccsCheckBox, "tkt_automatic", $CCSLocales->GetText("tkt_automatic"), ccsText, "", CCGetRequestParam("tkt_automatic", $Method, NULL), $this);
            $this->tkt_automatic->CheckedValue = $this->tkt_automatic->GetParsedValue("Y");
            $this->tkt_automatic->UncheckedValue = $this->tkt_automatic->GetParsedValue("N");
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_automatic->Value) && !strlen($this->tkt_automatic->Value) && $this->tkt_automatic->Value !== false)
                    $this->tkt_automatic->SetValue(true);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @17-8F2D345E
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_plu_id"] = CCGetFromGet("tkt_plu_id", NULL);
    }
//End Initialize Method

//Validate Method @17-EFCA4285
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_plu_id->Validate() && $Validation);
        $Validation = ($this->tkt_grade_id->Validate() && $Validation);
        $Validation = ($this->tkt_automatic->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_grade_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_automatic->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @17-A36A1B8A
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->tkt_grade_id->Errors->Count());
        $errors = ($errors || $this->tkt_automatic->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @17-1BD4E418
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        $this->DataSource->Prepare();
        if(!$this->FormSubmitted) {
            $this->EditMode = $this->DataSource->AllParametersSet;
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = $this->EditMode ? "Button_Update" : "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Update->Pressed) {
                $this->PressedButton = "Button_Update";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = "SSFTicketMapGrades.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketMapGrades.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "plu_grades_Insert", "tkt_plu_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketMapGrades.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "plu_grades_Insert", "tkt_plu_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                if(!CCGetEvent($this->Button_Update->CCSEvents, "OnClick", $this->Button_Update) || !$this->UpdateRow()) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//InsertRow Method @17-5B9BFDBE
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_grade_id->SetValue($this->tkt_grade_id->GetValue(true));
        $this->DataSource->tkt_automatic->SetValue($this->tkt_automatic->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @17-2422C15A
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_plu_id->SetValue($this->tkt_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_grade_id->SetValue($this->tkt_grade_id->GetValue(true));
        $this->DataSource->tkt_automatic->SetValue($this->tkt_automatic->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @17-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @17-0970D2CD
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_grade_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->tkt_plu_id->SetValue($this->DataSource->tkt_plu_id->GetValue());
                    $this->tkt_grade_id->SetValue($this->DataSource->tkt_grade_id->GetValue());
                    $this->tkt_automatic->SetValue($this->DataSource->tkt_automatic->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_grade_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_automatic->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DataSource->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);
        $this->Button_Insert->Visible = !$this->EditMode && $this->InsertAllowed;
        $this->Button_Update->Visible = $this->EditMode && $this->UpdateAllowed;
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_plu_id->Show();
        $this->Link1->Show();
        $this->tkt_grade_id->Show();
        $this->tkt_automatic->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_plu_grades1 Class @17-FCB6E20C

class clsssf_tkt_plu_grades1DataSource extends clsDBConnection1 {  //ssf_tkt_plu_grades1DataSource Class @17-CA723358

//DataSource Variables @17-7FD7396A
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $tkt_plu_id;
    public $Link1;
    public $tkt_grade_id;
    public $tkt_automatic;
//End DataSource Variables

//DataSourceClass_Initialize Event @17-3E1E157F
    function clsssf_tkt_plu_grades1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_plu_grades1/Error";
        $this->Initialize();
        $this->tkt_plu_id = new clsField("tkt_plu_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->tkt_grade_id = new clsField("tkt_grade_id", ccsText, "");
        $this->tkt_automatic = new clsField("tkt_automatic", ccsText, "");

        $this->InsertFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_grade_id"] = array("Name" => "tkt_grade_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_automatic"] = array("Name" => "tkt_automatic", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_plu_id"] = array("Name" => "tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_grade_id"] = array("Name" => "tkt_grade_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_automatic"] = array("Name" => "tkt_automatic", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @17-A0E9AE44
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_plu_id", ccsText, "", "", $this->Parameters["urltkt_plu_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_plu_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @17-A9B776F6
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_plu_grades {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @17-E228DDCD
    function SetValues()
    {
        $this->tkt_plu_id->SetDBValue($this->f("tkt_plu_id"));
        $this->tkt_grade_id->SetDBValue($this->f("tkt_grade_id"));
        $this->tkt_automatic->SetDBValue($this->f("tkt_automatic"));
    }
//End SetValues Method

//Insert Method @17-5B3FC15E
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_plu_id"]["Value"] = $this->tkt_plu_id->GetDBValue(true);
        $this->InsertFields["tkt_grade_id"]["Value"] = $this->tkt_grade_id->GetDBValue(true);
        $this->InsertFields["tkt_automatic"]["Value"] = $this->tkt_automatic->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_plu_grades", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @17-C4F94E53
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_plu_id"]["Value"] = $this->tkt_plu_id->GetDBValue(true);
        $this->UpdateFields["tkt_grade_id"]["Value"] = $this->tkt_grade_id->GetDBValue(true);
        $this->UpdateFields["tkt_automatic"]["Value"] = $this->tkt_automatic->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_plu_grades", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @17-070B3A71
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_plu_grades";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_plu_grades1DataSource Class @17-FCB6E20C

//Initialize Page @1-91B7D134
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
$TemplateFileName = "SSFTicketMapGrades.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-3277986B
include("./SSFTicketMapGrades_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-9FE1E216
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_plu_grades = new clsGridssf_tkt_plu_grades("", $MainPage);
$ssf_tkt_plu_grades1 = new clsRecordssf_tkt_plu_grades1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_plu_grades = & $ssf_tkt_plu_grades;
$MainPage->ssf_tkt_plu_grades1 = & $ssf_tkt_plu_grades1;
$ssf_tkt_plu_grades->Initialize();
$ssf_tkt_plu_grades1->Initialize();

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

//Execute Components @1-F4F3D877
$SSFSpiritHeader->Operations();
$ssf_tkt_plu_grades1->Operation();
//End Execute Components

//Go to destination page @1-FAD94F63
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_plu_grades);
    unset($ssf_tkt_plu_grades1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-FD2C64A4
$SSFSpiritHeader->Show();
$ssf_tkt_plu_grades->Show();
$ssf_tkt_plu_grades1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-2EB0F96D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_plu_grades);
unset($ssf_tkt_plu_grades1);
unset($Tpl);
//End Unload Page


?>
