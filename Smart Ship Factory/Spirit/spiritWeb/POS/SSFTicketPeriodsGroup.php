<?php
//Include Common Files @1-0BB0AE26
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFTicketPeriodsGroup.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_period_groups { //ssf_tkt_period_groups class @3-014B599F

//Variables @3-D64BD64C

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
    public $Sorter_tkt_period_group_id;
    public $Sorter_tkt_period_group_desc;
//End Variables

//Class_Initialize Event @3-04C68C79
    function clsGridssf_tkt_period_groups($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_period_groups";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_period_groups";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_period_groupsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_period_groupsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_period_groupsDir", "");

        $this->tkt_period_group_id = new clsControl(ccsLink, "tkt_period_group_id", "tkt_period_group_id", ccsText, "", CCGetRequestParam("tkt_period_group_id", ccsGet, NULL), $this);
        $this->tkt_period_group_id->Page = "SSFTicketPeriodsGroup.php";
        $this->tkt_period_group_desc = new clsControl(ccsLabel, "tkt_period_group_desc", "tkt_period_group_desc", ccsText, "", CCGetRequestParam("tkt_period_group_desc", ccsGet, NULL), $this);
        $this->Sorter_tkt_period_group_id = new clsSorter($this->ComponentName, "Sorter_tkt_period_group_id", $FileName, $this);
        $this->Sorter_tkt_period_group_desc = new clsSorter($this->ComponentName, "Sorter_tkt_period_group_desc", $FileName, $this);
        $this->ssf_tkt_period_groups_Insert = new clsControl(ccsLink, "ssf_tkt_period_groups_Insert", "ssf_tkt_period_groups_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_period_groups_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_period_groups_Insert->Page = "SSFTicketPeriodsGroup.php";
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

//Show Method @3-3FC5589A
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
            $this->ControlsVisible["tkt_period_group_id"] = $this->tkt_period_group_id->Visible;
            $this->ControlsVisible["tkt_period_group_desc"] = $this->tkt_period_group_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_period_group_id->SetValue($this->DataSource->tkt_period_group_id->GetValue());
                $this->tkt_period_group_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_period_group_id->Parameters = CCAddParam($this->tkt_period_group_id->Parameters, "tkt_period_group_id", $this->DataSource->f("tkt_period_group_id"));
                $this->tkt_period_group_desc->SetValue($this->DataSource->tkt_period_group_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_period_group_id->Show();
                $this->tkt_period_group_desc->Show();
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
        $this->ssf_tkt_period_groups_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_period_group_id", "ccsForm"));
        $this->ssf_tkt_period_groups_Insert->Parameters = CCAddParam($this->ssf_tkt_period_groups_Insert->Parameters, "ssf_tkt_period_groups_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_period_group_id->Show();
        $this->Sorter_tkt_period_group_desc->Show();
        $this->ssf_tkt_period_groups_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-0F2D9E9C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_period_group_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_period_group_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_period_groups Class @3-FCB6E20C

class clsssf_tkt_period_groupsDataSource extends clsDBConnection1 {  //ssf_tkt_period_groupsDataSource Class @3-159F7175

//DataSource Variables @3-3FEFF9BC
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_period_group_id;
    public $tkt_period_group_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-D0383E02
    function clsssf_tkt_period_groupsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_period_groups";
        $this->Initialize();
        $this->tkt_period_group_id = new clsField("tkt_period_group_id", ccsText, "");
        $this->tkt_period_group_desc = new clsField("tkt_period_group_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-8296FF0A
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_period_group_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_period_group_id" => array("tkt_period_group_id", ""), 
            "Sorter_tkt_period_group_desc" => array("tkt_period_group_desc", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-7549DDEA
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_period_groups";
        $this->SQL = "SELECT tkt_period_group_id, tkt_period_group_desc \n\n" .
        "FROM ssf_tkt_period_groups {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-9E68101D
    function SetValues()
    {
        $this->tkt_period_group_id->SetDBValue($this->f("tkt_period_group_id"));
        $this->tkt_period_group_desc->SetDBValue($this->f("tkt_period_group_desc"));
    }
//End SetValues Method

} //End ssf_tkt_period_groupsDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_period_groups1 { //ssf_tkt_period_groups1 Class @13-2B015A66

//Variables @13-9E315808

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

//Class_Initialize Event @13-B09EB6A6
    function clsRecordssf_tkt_period_groups1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_period_groups1/Error";
        $this->DataSource = new clsssf_tkt_period_groups1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_period_groups1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_period_group_id = new clsControl(ccsTextBox, "tkt_period_group_id", $CCSLocales->GetText("tkt_period_group_id"), ccsText, "", CCGetRequestParam("tkt_period_group_id", $Method, NULL), $this);
            $this->tkt_period_group_id->Required = true;
            $this->tkt_period_group_desc = new clsControl(ccsTextBox, "tkt_period_group_desc", $CCSLocales->GetText("tkt_period_group_desc"), ccsText, "", CCGetRequestParam("tkt_period_group_desc", $Method, NULL), $this);
            $this->tkt_period_close_pumps = new clsControl(ccsCheckBox, "tkt_period_close_pumps", "tkt_period_close_pumps", ccsText, "", CCGetRequestParam("tkt_period_close_pumps", $Method, NULL), $this);
            $this->tkt_period_close_pumps->CheckedValue = $this->tkt_period_close_pumps->GetParsedValue("Y");
            $this->tkt_period_close_pumps->UncheckedValue = $this->tkt_period_close_pumps->GetParsedValue("N");
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->tkt_period_close_pumps->Value) && !strlen($this->tkt_period_close_pumps->Value) && $this->tkt_period_close_pumps->Value !== false)
                    $this->tkt_period_close_pumps->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @13-2DC8E96B
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_period_group_id"] = CCGetFromGet("tkt_period_group_id", NULL);
    }
//End Initialize Method

//Validate Method @13-5E861762
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_period_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_period_group_desc->Validate() && $Validation);
        $Validation = ($this->tkt_period_close_pumps->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_period_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_period_group_desc->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_period_close_pumps->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @13-B7D08C00
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_period_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_period_group_desc->Errors->Count());
        $errors = ($errors || $this->tkt_period_close_pumps->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @13-88437FAF
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
        $Redirect = "SSFTicketPeriodsGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketPeriodsGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_period_groups_Insert", "tkt_period_group_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketPeriodsGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_period_groups_Insert", "tkt_period_group_id"));
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

//InsertRow Method @13-05962017
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_period_group_id->SetValue($this->tkt_period_group_id->GetValue(true));
        $this->DataSource->tkt_period_group_desc->SetValue($this->tkt_period_group_desc->GetValue(true));
        $this->DataSource->tkt_period_close_pumps->SetValue($this->tkt_period_close_pumps->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @13-9A1E7FF8
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_period_group_id->SetValue($this->tkt_period_group_id->GetValue(true));
        $this->DataSource->tkt_period_group_desc->SetValue($this->tkt_period_group_desc->GetValue(true));
        $this->DataSource->tkt_period_close_pumps->SetValue($this->tkt_period_close_pumps->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @13-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @13-D9E519B8
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
        if($this->EditMode) {
            if($this->DataSource->Errors->Count()){
                $this->Errors->AddErrors($this->DataSource->Errors);
                $this->DataSource->Errors->clear();
            }
            $this->DataSource->Open();
            if($this->DataSource->Errors->Count() == 0 && $this->DataSource->next_record()) {
                $this->DataSource->SetValues();
                if(!$this->FormSubmitted){
                    $this->tkt_period_group_id->SetValue($this->DataSource->tkt_period_group_id->GetValue());
                    $this->tkt_period_group_desc->SetValue($this->DataSource->tkt_period_group_desc->GetValue());
                    $this->tkt_period_close_pumps->SetValue($this->DataSource->tkt_period_close_pumps->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_period_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_period_group_desc->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_period_close_pumps->Errors->ToString());
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

        $this->tkt_period_group_id->Attributes->SetValue("readonlyparam", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_period_group_id->Show();
        $this->tkt_period_group_desc->Show();
        $this->tkt_period_close_pumps->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_period_groups1 Class @13-FCB6E20C

class clsssf_tkt_period_groups1DataSource extends clsDBConnection1 {  //ssf_tkt_period_groups1DataSource Class @13-DD386315

//DataSource Variables @13-49CC372D
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
    public $tkt_period_group_id;
    public $tkt_period_group_desc;
    public $tkt_period_close_pumps;
//End DataSource Variables

//DataSourceClass_Initialize Event @13-1395F19D
    function clsssf_tkt_period_groups1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_period_groups1/Error";
        $this->Initialize();
        $this->tkt_period_group_id = new clsField("tkt_period_group_id", ccsText, "");
        $this->tkt_period_group_desc = new clsField("tkt_period_group_desc", ccsText, "");
        $this->tkt_period_close_pumps = new clsField("tkt_period_close_pumps", ccsText, "");

        $this->InsertFields["tkt_period_group_id"] = array("Name" => "tkt_period_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_period_group_desc"] = array("Name" => "tkt_period_group_desc", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_period_close_pumps"] = array("Name" => "tkt_period_close_pumps", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_period_group_id"] = array("Name" => "tkt_period_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_period_group_desc"] = array("Name" => "tkt_period_group_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_period_close_pumps"] = array("Name" => "tkt_period_close_pumps", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @13-01A90267
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_period_group_id", ccsText, "", "", $this->Parameters["urltkt_period_group_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_period_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @13-E8795BF0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_period_groups {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @13-86647AAB
    function SetValues()
    {
        $this->tkt_period_group_id->SetDBValue($this->f("tkt_period_group_id"));
        $this->tkt_period_group_desc->SetDBValue($this->f("tkt_period_group_desc"));
        $this->tkt_period_close_pumps->SetDBValue($this->f("tkt_period_close_pumps"));
    }
//End SetValues Method

//Insert Method @13-B653EBBA
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_period_group_id"]["Value"] = $this->tkt_period_group_id->GetDBValue(true);
        $this->InsertFields["tkt_period_group_desc"]["Value"] = $this->tkt_period_group_desc->GetDBValue(true);
        $this->InsertFields["tkt_period_close_pumps"]["Value"] = $this->tkt_period_close_pumps->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_period_groups", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @13-698FAE3D
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_period_group_id"]["Value"] = $this->tkt_period_group_id->GetDBValue(true);
        $this->UpdateFields["tkt_period_group_desc"]["Value"] = $this->tkt_period_group_desc->GetDBValue(true);
        $this->UpdateFields["tkt_period_close_pumps"]["Value"] = $this->tkt_period_close_pumps->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_period_groups", $this->UpdateFields, $this);
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

//Delete Method @13-A776E034
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_period_groups";
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

} //End ssf_tkt_period_groups1DataSource Class @13-FCB6E20C

//Initialize Page @1-390A3959
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
$TemplateFileName = "SSFTicketPeriodsGroup.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-A770C9F4
include("./SSFTicketPeriodsGroup_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C0FBFC70
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_period_groups = new clsGridssf_tkt_period_groups("", $MainPage);
$ssf_tkt_period_groups1 = new clsRecordssf_tkt_period_groups1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_period_groups = & $ssf_tkt_period_groups;
$MainPage->ssf_tkt_period_groups1 = & $ssf_tkt_period_groups1;
$ssf_tkt_period_groups->Initialize();
$ssf_tkt_period_groups1->Initialize();

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

//Execute Components @1-CB8CAC54
$SSFSpiritHeader->Operations();
$ssf_tkt_period_groups1->Operation();
//End Execute Components

//Go to destination page @1-42B7A505
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_period_groups);
    unset($ssf_tkt_period_groups1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-2610E2BE
$SSFSpiritHeader->Show();
$ssf_tkt_period_groups->Show();
$ssf_tkt_period_groups1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-76E1DC01
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_period_groups);
unset($ssf_tkt_period_groups1);
unset($Tpl);
//End Unload Page


?>
