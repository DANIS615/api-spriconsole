<?php
//Include Common Files @1-6839930D
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Configuration/");
define("FileName", "SSFFleetTimeProfile.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_time_profileSearch { //ssf_flt_time_profileSearch Class @6-1490995A

//Variables @6-9E315808

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

//Class_Initialize Event @6-09064176
    function clsRecordssf_flt_time_profileSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_time_profileSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_time_profileSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tp_profile_id = new clsControl(ccsTextBox, "s_tp_profile_id", "s_tp_profile_id", ccsText, "", CCGetRequestParam("s_tp_profile_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-AD2013C1
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tp_profile_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tp_profile_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-6DCC53F9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tp_profile_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-770A7D62
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
        $Redirect = "SSFFleetTimeProfile.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetTimeProfile.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-E0CFC9F7
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
            $Error = ComposeStrings($Error, $this->s_tp_profile_id->Errors->ToString());
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

        $this->s_tp_profile_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_time_profileSearch Class @6-FCB6E20C

class clsGridssf_flt_time_profile { //ssf_flt_time_profile class @3-4D3C5232

//Variables @3-7AA8306C

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
    public $Sorter_tp_profile_id;
//End Variables

//Class_Initialize Event @3-7C00B4B6
    function clsGridssf_flt_time_profile($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_time_profile";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_time_profile";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_time_profileDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_time_profileOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_time_profileDir", "");

        $this->tp_profile_id = new clsControl(ccsLink, "tp_profile_id", "tp_profile_id", ccsText, "", CCGetRequestParam("tp_profile_id", ccsGet, NULL), $this);
        $this->tp_profile_id->Page = "SSFFleetTimeProfile.php";
        $this->Sorter_tp_profile_id = new clsSorter($this->ComponentName, "Sorter_tp_profile_id", $FileName, $this);
        $this->ssf_flt_time_profile_Insert = new clsControl(ccsLink, "ssf_flt_time_profile_Insert", "ssf_flt_time_profile_Insert", ccsText, "", CCGetRequestParam("ssf_flt_time_profile_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_time_profile_Insert->Page = "SSFFleetTimeProfile.php";
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

//Show Method @3-93A0E82F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tp_profile_id"] = CCGetFromGet("s_tp_profile_id", NULL);

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
            $this->ControlsVisible["tp_profile_id"] = $this->tp_profile_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tp_profile_id->SetValue($this->DataSource->tp_profile_id->GetValue());
                $this->tp_profile_id->Parameters = CCGetQueryString("QueryString", array("ssf_flt_profile2_Insert", "tp_week_day", "tp_time_from", "tp_time_to", "ccsForm"));
                $this->tp_profile_id->Parameters = CCAddParam($this->tp_profile_id->Parameters, "tp_profile_id", $this->DataSource->f("tp_profile_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tp_profile_id->Show();
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
        $this->ssf_flt_time_profile_Insert->Parameters = CCGetQueryString("QueryString", array("tp_profile_id", "tp_week_day", "tp_time_from", "tp_time_to", "ccsForm"));
        $this->ssf_flt_time_profile_Insert->Parameters = CCAddParam($this->ssf_flt_time_profile_Insert->Parameters, "ssf_flt_time_profile_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tp_profile_id->Show();
        $this->ssf_flt_time_profile_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-B3F8BE14
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tp_profile_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_time_profile Class @3-FCB6E20C

class clsssf_flt_time_profileDataSource extends clsDBConnection1 {  //ssf_flt_time_profileDataSource Class @3-868FBD0C

//DataSource Variables @3-B07D8E98
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tp_profile_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-1E9421E9
    function clsssf_flt_time_profileDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_time_profile";
        $this->Initialize();
        $this->tp_profile_id = new clsField("tp_profile_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-CEE16CBC
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tp_profile_id" => array("tp_profile_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-C60464F3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_tp_profile_id", ccsText, "", "", $this->Parameters["urls_tp_profile_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "tp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-A3229553
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(DISTINCT( tp_profile_id)) \n\n" .
        "FROM ssf_flt_time_profile";
        $this->SQL = "SELECT tp_profile_id \n\n" .
        "FROM ssf_flt_time_profile {SQL_Where}\n\n" .
        "GROUP BY tp_profile_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-2BD2FD6B
    function SetValues()
    {
        $this->tp_profile_id->SetDBValue($this->f("tp_profile_id"));
    }
//End SetValues Method

} //End ssf_flt_time_profileDataSource Class @3-FCB6E20C

class clsRecordssf_flt_time_profile1 { //ssf_flt_time_profile1 Class @15-FAF1F892

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

//Class_Initialize Event @15-406F9797
    function clsRecordssf_flt_time_profile1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_time_profile1/Error";
        $this->DataSource = new clsssf_flt_time_profile1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_time_profile1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tp_profile_id = new clsControl(ccsTextBox, "tp_profile_id", $CCSLocales->GetText("tp_profile_id"), ccsText, "", CCGetRequestParam("tp_profile_id", $Method, NULL), $this);
            $this->tp_profile_id->Required = true;
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->tp_week_day = new clsControl(ccsListBox, "tp_week_day", "tp_week_day", ccsText, "", CCGetRequestParam("tp_week_day", $Method, NULL), $this);
            $this->tp_week_day->DSType = dsListOfValues;
            $this->tp_week_day->Values = "";
            $this->Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", $Method, NULL), $this);
            $this->t_tp_time_from = new clsControl(ccsTextBox, "t_tp_time_from", "t_tp_time_from", ccsDate, array("H", ":", "nn", ":", "ss"), CCGetRequestParam("t_tp_time_from", $Method, NULL), $this);
            $this->t_tp_time_to = new clsControl(ccsTextBox, "t_tp_time_to", "t_tp_time_to", ccsDate, array("H", ":", "nn", ":", "ss"), CCGetRequestParam("t_tp_time_to", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @15-ECFFCA04
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltp_profile_id"] = CCGetFromGet("tp_profile_id", NULL);
    }
//End Initialize Method

//Validate Method @15-92B9F5F0
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tp_profile_id->Validate() && $Validation);
        $Validation = ($this->tp_week_day->Validate() && $Validation);
        $Validation = ($this->t_tp_time_from->Validate() && $Validation);
        $Validation = ($this->t_tp_time_to->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tp_profile_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tp_week_day->Errors->Count() == 0);
        $Validation =  $Validation && ($this->t_tp_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->t_tp_time_to->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @15-ACCF7EB9
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tp_profile_id->Errors->Count());
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->tp_week_day->Errors->Count());
        $errors = ($errors || $this->Label2->Errors->Count());
        $errors = ($errors || $this->t_tp_time_from->Errors->Count());
        $errors = ($errors || $this->t_tp_time_to->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @15-D1B7E54D
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
            $this->PressedButton = $this->EditMode ? "Button_Delete" : "Button_Insert";
            if($this->Button_Insert->Pressed) {
                $this->PressedButton = "Button_Insert";
            } else if($this->Button_Delete->Pressed) {
                $this->PressedButton = "Button_Delete";
            } else if($this->Button_Cancel->Pressed) {
                $this->PressedButton = "Button_Cancel";
            }
        }
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_time_profile_Insert", "tp_profile_id", "tp_week_day", "tp_time_from", "tp_time_to", "ssf_flt_profile2_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_time_profile_Insert", "tp_profile_id", "tp_week_day", "tp_time_from", "tp_time_to", "ssf_flt_profile2_Insert"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_time_profile_Insert", "tp_profile_id"));
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
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

//InsertRow Method @15-1A451C51
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tp_profile_id->SetValue($this->tp_profile_id->GetValue(true));
        $this->DataSource->Label1->SetValue($this->Label1->GetValue(true));
        $this->DataSource->tp_week_day->SetValue($this->tp_week_day->GetValue(true));
        $this->DataSource->Label2->SetValue($this->Label2->GetValue(true));
        $this->DataSource->t_tp_time_from->SetValue($this->t_tp_time_from->GetValue(true));
        $this->DataSource->t_tp_time_to->SetValue($this->t_tp_time_to->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @15-171719A1
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tp_profile_id->SetValue($this->tp_profile_id->GetValue(true));
        $this->DataSource->Label1->SetValue($this->Label1->GetValue(true));
        $this->DataSource->tp_week_day->SetValue($this->tp_week_day->GetValue(true));
        $this->DataSource->Label2->SetValue($this->Label2->GetValue(true));
        $this->DataSource->t_tp_time_from->SetValue($this->t_tp_time_from->GetValue(true));
        $this->DataSource->t_tp_time_to->SetValue($this->t_tp_time_to->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @15-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @15-DAEDD685
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tp_week_day->Prepare();

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
                    $this->tp_profile_id->SetValue($this->DataSource->tp_profile_id->GetValue());
                    $this->tp_week_day->SetValue($this->DataSource->tp_week_day->GetValue());
                    $this->t_tp_time_from->SetValue($this->DataSource->t_tp_time_from->GetValue());
                    $this->t_tp_time_to->SetValue($this->DataSource->t_tp_time_to->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tp_profile_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tp_week_day->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->t_tp_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->t_tp_time_to->Errors->ToString());
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
        $this->Button_Delete->Visible = $this->EditMode && $this->DeleteAllowed;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tp_profile_id->Show();
        $this->Label1->Show();
        $this->tp_week_day->Show();
        $this->Label2->Show();
        $this->t_tp_time_from->Show();
        $this->t_tp_time_to->Show();
        $this->Button_Insert->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_time_profile1 Class @15-FCB6E20C

class clsssf_flt_time_profile1DataSource extends clsDBConnection1 {  //ssf_flt_time_profile1DataSource Class @15-F472BA41

//DataSource Variables @15-644A091E
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
    public $tp_profile_id;
    public $Label1;
    public $tp_week_day;
    public $Label2;
    public $t_tp_time_from;
    public $t_tp_time_to;
//End DataSource Variables

//DataSourceClass_Initialize Event @15-E535B8B0
    function clsssf_flt_time_profile1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_time_profile1/Error";
        $this->Initialize();
        $this->tp_profile_id = new clsField("tp_profile_id", ccsText, "");
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->tp_week_day = new clsField("tp_week_day", ccsText, "");
        $this->Label2 = new clsField("Label2", ccsText, "");
        $this->t_tp_time_from = new clsField("t_tp_time_from", ccsDate, array("hh", "nn", "ss"));
        $this->t_tp_time_to = new clsField("t_tp_time_to", ccsDate, array("hh", "nn", "ss"));

        $this->InsertFields["tp_profile_id"] = array("Name" => "tp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tp_week_day"] = array("Name" => "tp_week_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["tp_time_from"] = array("Name" => "tp_time_from", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->InsertFields["tp_time_to"] = array("Name" => "tp_time_to", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["tp_profile_id"] = array("Name" => "tp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tp_week_day"] = array("Name" => "tp_week_day", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["tp_time_from"] = array("Name" => "tp_time_from", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
        $this->UpdateFields["tp_time_to"] = array("Name" => "tp_time_to", "Value" => "", "DataType" => ccsDate, "OmitIfEmpty" => 1);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @15-71B1E08F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltp_profile_id", ccsText, "", "", $this->Parameters["urltp_profile_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @15-D486393E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_time_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @15-014A9FBE
    function SetValues()
    {
        $this->tp_profile_id->SetDBValue($this->f("tp_profile_id"));
        $this->tp_week_day->SetDBValue($this->f("tp_week_day"));
        $this->t_tp_time_from->SetDBValue(trim($this->f("tp_time_from")));
        $this->t_tp_time_to->SetDBValue(trim($this->f("tp_time_to")));
    }
//End SetValues Method

//Insert Method @15-C480B061
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tp_profile_id"]["Value"] = $this->tp_profile_id->GetDBValue(true);
        $this->InsertFields["tp_week_day"]["Value"] = $this->tp_week_day->GetDBValue(true);
        $this->InsertFields["tp_time_from"]["Value"] = $this->t_tp_time_from->GetDBValue(true);
        $this->InsertFields["tp_time_to"]["Value"] = $this->t_tp_time_to->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_time_profile", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @15-6A7808CB
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tp_profile_id"]["Value"] = $this->tp_profile_id->GetDBValue(true);
        $this->UpdateFields["tp_week_day"]["Value"] = $this->tp_week_day->GetDBValue(true);
        $this->UpdateFields["tp_time_from"]["Value"] = $this->t_tp_time_from->GetDBValue(true);
        $this->UpdateFields["tp_time_to"]["Value"] = $this->t_tp_time_to->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_time_profile", $this->UpdateFields, $this);
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

//Delete Method @15-B09FE079
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urltp_profile_id", ccsText, "", "", CCGetFromGet("tp_profile_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tp_profile_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM ssf_flt_time_profile";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_flt_time_profile1DataSource Class @15-FCB6E20C

class clsGridssf_flt_time_profile2 { //ssf_flt_time_profile2 class @39-FCF4DEA7

//Variables @39-004B5CDF

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
    public $Sorter_tp_week_day;
    public $Sorter_tp_time_from;
    public $Sorter_tp_time_to;
//End Variables

//Class_Initialize Event @39-DBEFC16C
    function clsGridssf_flt_time_profile2($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_time_profile2";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_time_profile2";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_time_profile2DataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_time_profile2Order", "");
        $this->SorterDirection = CCGetParam("ssf_flt_time_profile2Dir", "");

        $this->tp_week_day = new clsControl(ccsLink, "tp_week_day", "tp_week_day", ccsText, "", CCGetRequestParam("tp_week_day", ccsGet, NULL), $this);
        $this->tp_week_day->Page = "SSFFleetTimeProfile.php";
        $this->g_tp_time_from = new clsControl(ccsLabel, "g_tp_time_from", "g_tp_time_from", ccsDate, array("H", ":", "nn", ":", "ss"), CCGetRequestParam("g_tp_time_from", ccsGet, NULL), $this);
        $this->g_tp_time_to = new clsControl(ccsLabel, "g_tp_time_to", "g_tp_time_to", ccsDate, array("H", ":", "nn", ":", "ss"), CCGetRequestParam("g_tp_time_to", ccsGet, NULL), $this);
        $this->Sorter_tp_week_day = new clsSorter($this->ComponentName, "Sorter_tp_week_day", $FileName, $this);
        $this->Sorter_tp_time_from = new clsSorter($this->ComponentName, "Sorter_tp_time_from", $FileName, $this);
        $this->Sorter_tp_time_to = new clsSorter($this->ComponentName, "Sorter_tp_time_to", $FileName, $this);
        $this->ssf_flt_profile2_Insert = new clsControl(ccsLink, "ssf_flt_profile2_Insert", "ssf_flt_profile2_Insert", ccsText, "", CCGetRequestParam("ssf_flt_profile2_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_profile2_Insert->Page = "SSFFleetTimeProfile.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @39-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @39-0DCE3918
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltp_profile_id"] = CCGetFromGet("tp_profile_id", NULL);

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
            $this->ControlsVisible["tp_week_day"] = $this->tp_week_day->Visible;
            $this->ControlsVisible["g_tp_time_from"] = $this->g_tp_time_from->Visible;
            $this->ControlsVisible["g_tp_time_to"] = $this->g_tp_time_to->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tp_week_day->SetValue($this->DataSource->tp_week_day->GetValue());
                $this->tp_week_day->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tp_week_day->Parameters = CCAddParam($this->tp_week_day->Parameters, "tp_week_day", $this->DataSource->f("tp_week_day"));
                $this->tp_week_day->Parameters = CCAddParam($this->tp_week_day->Parameters, "tp_time_from", $this->DataSource->f("tp_time_from"));
                $this->tp_week_day->Parameters = CCAddParam($this->tp_week_day->Parameters, "tp_time_to", $this->DataSource->f("tp_time_to"));
                $this->g_tp_time_from->SetValue($this->DataSource->g_tp_time_from->GetValue());
                $this->g_tp_time_to->SetValue($this->DataSource->g_tp_time_to->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tp_week_day->Show();
                $this->g_tp_time_from->Show();
                $this->g_tp_time_to->Show();
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
        $this->ssf_flt_profile2_Insert->Parameters = CCGetQueryString("QueryString", array("tp_week_day", "ccsForm"));
        $this->ssf_flt_profile2_Insert->Parameters = CCAddParam($this->ssf_flt_profile2_Insert->Parameters, "ssf_flt_profile2_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tp_week_day->Show();
        $this->Sorter_tp_time_from->Show();
        $this->Sorter_tp_time_to->Show();
        $this->ssf_flt_profile2_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @39-6517618C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tp_week_day->Errors->ToString());
        $errors = ComposeStrings($errors, $this->g_tp_time_from->Errors->ToString());
        $errors = ComposeStrings($errors, $this->g_tp_time_to->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_time_profile2 Class @39-FCB6E20C

class clsssf_flt_time_profile2DataSource extends clsDBConnection1 {  //ssf_flt_time_profile2DataSource Class @39-7FA18458

//DataSource Variables @39-3F0EAD05
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tp_week_day;
    public $g_tp_time_from;
    public $g_tp_time_to;
//End DataSource Variables

//DataSourceClass_Initialize Event @39-FBA46E54
    function clsssf_flt_time_profile2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_time_profile2";
        $this->Initialize();
        $this->tp_week_day = new clsField("tp_week_day", ccsText, "");
        $this->g_tp_time_from = new clsField("g_tp_time_from", ccsDate, array("hh", "nn", "ss"));
        $this->g_tp_time_to = new clsField("g_tp_time_to", ccsDate, array("hh", "nn", "ss"));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @39-4E8159CE
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tp_profile_id, tp_week_day, tp_time_from";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tp_week_day" => array("tp_week_day", ""), 
            "Sorter_tp_time_from" => array("tp_time_from", ""), 
            "Sorter_tp_time_to" => array("tp_time_to", "")));
    }
//End SetOrder Method

//Prepare Method @39-7CD67FA9
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltp_profile_id", ccsText, "", "", $this->Parameters["urltp_profile_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @39-73E207C6
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_time_profile";
        $this->SQL = "SELECT tp_profile_id, tp_week_day, tp_time_from, tp_time_to \n\n" .
        "FROM ssf_flt_time_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @39-41E03BAA
    function SetValues()
    {
        $this->tp_week_day->SetDBValue($this->f("tp_week_day"));
        $this->g_tp_time_from->SetDBValue(trim($this->f("tp_time_from")));
        $this->g_tp_time_to->SetDBValue(trim($this->f("tp_time_to")));
    }
//End SetValues Method

} //End ssf_flt_time_profile2DataSource Class @39-FCB6E20C

class clsRecordssf_flt_time_profile3 { //ssf_flt_time_profile3 Class @57-C8C79A10

//Variables @57-9E315808

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

//Class_Initialize Event @57-273C2F21
    function clsRecordssf_flt_time_profile3($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_time_profile3/Error";
        $this->DataSource = new clsssf_flt_time_profile3DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_time_profile3";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tp_week_day = new clsControl(ccsListBox, "s_tp_week_day", $CCSLocales->GetText("tp_week_day"), ccsText, "", CCGetRequestParam("s_tp_week_day", $Method, NULL), $this);
            $this->s_tp_week_day->Required = true;
            $this->s_tp_time_from = new clsControl(ccsTextBox, "s_tp_time_from", $CCSLocales->GetText("tp_time_from"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("s_tp_time_from", $Method, NULL), $this);
            $this->s_tp_time_from->Required = true;
            $this->s_tp_time_to = new clsControl(ccsTextBox, "s_tp_time_to", $CCSLocales->GetText("tp_time_to"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("s_tp_time_to", $Method, NULL), $this);
            $this->s_tp_time_to->Required = true;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tp_profile_id = new clsControl(ccsHidden, "tp_profile_id", $CCSLocales->GetText("tp_profile_id"), ccsText, "", CCGetRequestParam("tp_profile_id", $Method, NULL), $this);
            $this->tp_profile_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @57-FCC2CCE3
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltp_profile_id"] = CCGetFromGet("tp_profile_id", NULL);
        $this->DataSource->Parameters["urltp_week_day"] = CCGetFromGet("tp_week_day", NULL);
        $this->DataSource->Parameters["urltp_time_from"] = CCGetFromGet("tp_time_from", NULL);
        $this->DataSource->Parameters["urltp_time_to"] = CCGetFromGet("tp_time_to", NULL);
    }
//End Initialize Method

//Validate Method @57-289BBA41
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tp_week_day->Validate() && $Validation);
        $Validation = ($this->s_tp_time_from->Validate() && $Validation);
        $Validation = ($this->s_tp_time_to->Validate() && $Validation);
        $Validation = ($this->tp_profile_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tp_week_day->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tp_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_tp_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tp_profile_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @57-A973CBFC
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tp_week_day->Errors->Count());
        $errors = ($errors || $this->s_tp_time_from->Errors->Count());
        $errors = ($errors || $this->s_tp_time_to->Errors->Count());
        $errors = ($errors || $this->tp_profile_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @57-52EC858A
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
        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile2_Insert", "tp_week_day", "tp_time_from", "tp_time_to"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile2_Insert", "tp_week_day", "tp_time_from", "tp_time_to"));
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

//InsertRow Method @57-14D5A8EE
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->s_tp_week_day->SetValue($this->s_tp_week_day->GetValue(true));
        $this->DataSource->s_tp_time_from->SetValue($this->s_tp_time_from->GetValue(true));
        $this->DataSource->s_tp_time_to->SetValue($this->s_tp_time_to->GetValue(true));
        $this->DataSource->tp_profile_id->SetValue($this->tp_profile_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @57-D1F27733
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->s_tp_week_day->SetValue($this->s_tp_week_day->GetValue(true));
        $this->DataSource->s_tp_time_from->SetValue($this->s_tp_time_from->GetValue(true));
        $this->DataSource->s_tp_time_to->SetValue($this->s_tp_time_to->GetValue(true));
        $this->DataSource->tp_profile_id->SetValue($this->tp_profile_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @57-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @57-AA1A1988
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tp_week_day->Prepare();

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
                    $this->s_tp_week_day->SetValue($this->DataSource->s_tp_week_day->GetValue());
                    $this->s_tp_time_from->SetValue($this->DataSource->s_tp_time_from->GetValue());
                    $this->s_tp_time_to->SetValue($this->DataSource->s_tp_time_to->GetValue());
                    $this->tp_profile_id->SetValue($this->DataSource->tp_profile_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tp_week_day->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tp_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_tp_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tp_profile_id->Errors->ToString());
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

        $this->s_tp_week_day->Show();
        $this->s_tp_time_from->Show();
        $this->s_tp_time_to->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tp_profile_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_time_profile3 Class @57-FCB6E20C

class clsssf_flt_time_profile3DataSource extends clsDBConnection1 {  //ssf_flt_time_profile3DataSource Class @57-B03F9390

//DataSource Variables @57-E2F3A8D7
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
    public $s_tp_week_day;
    public $s_tp_time_from;
    public $s_tp_time_to;
    public $tp_profile_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @57-EB868CF2
    function clsssf_flt_time_profile3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_time_profile3/Error";
        $this->Initialize();
        $this->s_tp_week_day = new clsField("s_tp_week_day", ccsText, "");
        $this->s_tp_time_from = new clsField("s_tp_time_from", ccsDate, array("HH", "nn", "ss"));
        $this->s_tp_time_to = new clsField("s_tp_time_to", ccsDate, array("HH", "nn", "ss"));
        $this->tp_profile_id = new clsField("tp_profile_id", ccsText, "");

        $this->InsertFields["tp_week_day"] = array("Name" => "tp_week_day", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tp_time_from"] = array("Name" => "tp_time_from", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tp_time_to"] = array("Name" => "tp_time_to", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tp_profile_id"] = array("Name" => "tp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tp_week_day"] = array("Name" => "tp_week_day", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tp_time_from"] = array("Name" => "tp_time_from", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tp_time_to"] = array("Name" => "tp_time_to", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tp_profile_id"] = array("Name" => "tp_profile_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @57-C5B4214E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltp_profile_id", ccsText, "", "", $this->Parameters["urltp_profile_id"], "", false);
        $this->wp->AddParameter("2", "urltp_week_day", ccsText, "", "", $this->Parameters["urltp_week_day"], "", false);
        $this->wp->AddParameter("3", "urltp_time_from", ccsText, "", "", $this->Parameters["urltp_time_from"], "", false);
        $this->wp->AddParameter("4", "urltp_time_to", ccsText, "", "", $this->Parameters["urltp_time_to"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tp_week_day", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tp_time_from", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "tp_time_to", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]);
    }
//End Prepare Method

//Open Method @57-D486393E
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_time_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @57-A2B0F83D
    function SetValues()
    {
        $this->s_tp_week_day->SetDBValue($this->f("tp_week_day"));
        $this->s_tp_time_from->SetDBValue(trim($this->f("tp_time_from")));
        $this->s_tp_time_to->SetDBValue(trim($this->f("tp_time_to")));
        $this->tp_profile_id->SetDBValue($this->f("tp_profile_id"));
    }
//End SetValues Method

//Insert Method @57-CDFA706B
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tp_week_day"]["Value"] = $this->s_tp_week_day->GetDBValue(true);
        $this->InsertFields["tp_time_from"]["Value"] = $this->s_tp_time_from->GetDBValue(true);
        $this->InsertFields["tp_time_to"]["Value"] = $this->s_tp_time_to->GetDBValue(true);
        $this->InsertFields["tp_profile_id"]["Value"] = $this->tp_profile_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_time_profile", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @57-D140177A
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tp_week_day"]["Value"] = $this->s_tp_week_day->GetDBValue(true);
        $this->UpdateFields["tp_time_from"]["Value"] = $this->s_tp_time_from->GetDBValue(true);
        $this->UpdateFields["tp_time_to"]["Value"] = $this->s_tp_time_to->GetDBValue(true);
        $this->UpdateFields["tp_profile_id"]["Value"] = $this->tp_profile_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_time_profile", $this->UpdateFields, $this);
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

//Delete Method @57-FDF87FF0
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_time_profile";
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

} //End ssf_flt_time_profile3DataSource Class @57-FCB6E20C

//Initialize Page @1-17590EB8
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
$TemplateFileName = "SSFFleetTimeProfile.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F89A657C
include("./SSFFleetTimeProfile_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-5778A212
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_flt_time_profileSearch = new clsRecordssf_flt_time_profileSearch("", $MainPage);
$ssf_flt_time_profile = new clsGridssf_flt_time_profile("", $MainPage);
$ssf_flt_time_profile1 = new clsRecordssf_flt_time_profile1("", $MainPage);
$ssf_flt_time_profile2 = new clsGridssf_flt_time_profile2("", $MainPage);
$ssf_flt_time_profile3 = new clsRecordssf_flt_time_profile3("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_time_profileSearch = & $ssf_flt_time_profileSearch;
$MainPage->ssf_flt_time_profile = & $ssf_flt_time_profile;
$MainPage->ssf_flt_time_profile1 = & $ssf_flt_time_profile1;
$MainPage->ssf_flt_time_profile2 = & $ssf_flt_time_profile2;
$MainPage->ssf_flt_time_profile3 = & $ssf_flt_time_profile3;
$ssf_flt_time_profile->Initialize();
$ssf_flt_time_profile1->Initialize();
$ssf_flt_time_profile2->Initialize();
$ssf_flt_time_profile3->Initialize();

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

//Execute Components @1-4E2246FF
$SSFSpiritHeader->Operations();
$ssf_flt_time_profileSearch->Operation();
$ssf_flt_time_profile1->Operation();
$ssf_flt_time_profile3->Operation();
//End Execute Components

//Go to destination page @1-EBA38770
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_time_profileSearch);
    unset($ssf_flt_time_profile);
    unset($ssf_flt_time_profile1);
    unset($ssf_flt_time_profile2);
    unset($ssf_flt_time_profile3);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-E4B785F4
$SSFSpiritHeader->Show();
$ssf_flt_time_profileSearch->Show();
$ssf_flt_time_profile->Show();
$ssf_flt_time_profile1->Show();
$ssf_flt_time_profile2->Show();
$ssf_flt_time_profile3->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-61705FA5
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_time_profileSearch);
unset($ssf_flt_time_profile);
unset($ssf_flt_time_profile1);
unset($ssf_flt_time_profile2);
unset($ssf_flt_time_profile3);
unset($Tpl);
//End Unload Page


?>
