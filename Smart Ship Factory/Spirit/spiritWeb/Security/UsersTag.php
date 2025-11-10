<?php
//Include Common Files @1-67E99736
define("RelativePath", "..");
define("PathToCurrentPage", "/Security/");
define("FileName", "UsersTag.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_addin_tagat_user_tags { //ssf_addin_tagat_user_tags class @3-ECF6B268

//Variables @3-6D3425A9

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
    public $Sorter_tagat_tag_id;
    public $Sorter_tagat_user;
    public $Sorter_tagat_enabled;
//End Variables

//Class_Initialize Event @3-1346E35B
    function clsGridssf_addin_tagat_user_tags($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_addin_tagat_user_tags";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_addin_tagat_user_tags";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_addin_tagat_user_tagsDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_addin_tagat_user_tagsOrder", "");
        $this->SorterDirection = CCGetParam("ssf_addin_tagat_user_tagsDir", "");

        $this->tagat_tag_id = new clsControl(ccsLink, "tagat_tag_id", "tagat_tag_id", ccsText, "", CCGetRequestParam("tagat_tag_id", ccsGet, NULL), $this);
        $this->tagat_tag_id->Page = "UsersTag.php";
        $this->tagat_user = new clsControl(ccsLabel, "tagat_user", "tagat_user", ccsText, "", CCGetRequestParam("tagat_user", ccsGet, NULL), $this);
        $this->tagat_enabled = new clsControl(ccsLabel, "tagat_enabled", "tagat_enabled", ccsText, "", CCGetRequestParam("tagat_enabled", ccsGet, NULL), $this);
        $this->Sorter_tagat_tag_id = new clsSorter($this->ComponentName, "Sorter_tagat_tag_id", $FileName, $this);
        $this->Sorter_tagat_user = new clsSorter($this->ComponentName, "Sorter_tagat_user", $FileName, $this);
        $this->Sorter_tagat_enabled = new clsSorter($this->ComponentName, "Sorter_tagat_enabled", $FileName, $this);
        $this->ssf_addin_tagat_Insert = new clsControl(ccsLink, "ssf_addin_tagat_Insert", "ssf_addin_tagat_Insert", ccsText, "", CCGetRequestParam("ssf_addin_tagat_Insert", ccsGet, NULL), $this);
        $this->ssf_addin_tagat_Insert->Page = "UsersTag.php";
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

//Show Method @3-8A314BA7
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
            $this->ControlsVisible["tagat_tag_id"] = $this->tagat_tag_id->Visible;
            $this->ControlsVisible["tagat_user"] = $this->tagat_user->Visible;
            $this->ControlsVisible["tagat_enabled"] = $this->tagat_enabled->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tagat_tag_id->SetValue($this->DataSource->tagat_tag_id->GetValue());
                $this->tagat_tag_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tagat_tag_id->Parameters = CCAddParam($this->tagat_tag_id->Parameters, "tagat_tag_id", $this->DataSource->f("tagat_tag_id"));
                $this->tagat_user->SetValue($this->DataSource->tagat_user->GetValue());
                $this->tagat_enabled->SetValue($this->DataSource->tagat_enabled->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tagat_tag_id->Show();
                $this->tagat_user->Show();
                $this->tagat_enabled->Show();
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
        $this->ssf_addin_tagat_Insert->Parameters = CCGetQueryString("QueryString", array("tagat_tag_id", "ccsForm"));
        $this->ssf_addin_tagat_Insert->Parameters = CCAddParam($this->ssf_addin_tagat_Insert->Parameters, "ssf_addin_tagat_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tagat_tag_id->Show();
        $this->Sorter_tagat_user->Show();
        $this->Sorter_tagat_enabled->Show();
        $this->ssf_addin_tagat_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-128A550C
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tagat_tag_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tagat_user->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tagat_enabled->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_addin_tagat_user_tags Class @3-FCB6E20C

class clsssf_addin_tagat_user_tagsDataSource extends clsDBConnection1 {  //ssf_addin_tagat_user_tagsDataSource Class @3-B6FC290E

//DataSource Variables @3-081AFE2E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tagat_tag_id;
    public $tagat_user;
    public $tagat_enabled;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-B6CBB02B
    function clsssf_addin_tagat_user_tagsDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_addin_tagat_user_tags";
        $this->Initialize();
        $this->tagat_tag_id = new clsField("tagat_tag_id", ccsText, "");
        $this->tagat_user = new clsField("tagat_user", ccsText, "");
        $this->tagat_enabled = new clsField("tagat_enabled", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-9831D0BA
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tagat_tag_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tagat_tag_id" => array("tagat_tag_id", ""), 
            "Sorter_tagat_user" => array("tagat_user", ""), 
            "Sorter_tagat_enabled" => array("tagat_enabled", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-CC1EF077
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_addin_tagat_user_tags";
        $this->SQL = "SELECT tagat_tag_id, tagat_user, tagat_enabled \n\n" .
        "FROM ssf_addin_tagat_user_tags {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-B26B1832
    function SetValues()
    {
        $this->tagat_tag_id->SetDBValue($this->f("tagat_tag_id"));
        $this->tagat_user->SetDBValue($this->f("tagat_user"));
        $this->tagat_enabled->SetDBValue($this->f("tagat_enabled"));
    }
//End SetValues Method

} //End ssf_addin_tagat_user_tagsDataSource Class @3-FCB6E20C

class clsRecordssf_addin_tagat_user_tags1 { //ssf_addin_tagat_user_tags1 Class @17-D127478A

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

//Class_Initialize Event @17-797F2027
    function clsRecordssf_addin_tagat_user_tags1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_addin_tagat_user_tags1/Error";
        $this->DataSource = new clsssf_addin_tagat_user_tags1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_addin_tagat_user_tags1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tagat_tag_id = new clsControl(ccsTextBox, "tagat_tag_id", $CCSLocales->GetText("tagat_tag_id"), ccsText, "", CCGetRequestParam("tagat_tag_id", $Method, NULL), $this);
            $this->tagat_tag_id->Required = true;
            $this->tagat_user = new clsControl(ccsListBox, "tagat_user", $CCSLocales->GetText("tagat_user"), ccsText, "", CCGetRequestParam("tagat_user", $Method, NULL), $this);
            $this->tagat_user->DSType = dsTable;
            list($this->tagat_user->BoundColumn, $this->tagat_user->TextColumn, $this->tagat_user->DBFormat) = array("user_id", "user_id", "");
            $this->tagat_user->DataSource = new clsDBConnection1();
            $this->tagat_user->ds = & $this->tagat_user->DataSource;
            $this->tagat_user->DataSource->SQL = "SELECT user_id \n" .
"FROM ssf_sec_users {SQL_Where} {SQL_OrderBy}";
            $this->tagat_user->DataSource->Parameters["expr33"] = 'SSF';
            $this->tagat_user->DataSource->wp = new clsSQLParameters();
            $this->tagat_user->DataSource->wp->AddParameter("1", "expr33", ccsText, "", "", $this->tagat_user->DataSource->Parameters["expr33"], "", false);
            $this->tagat_user->DataSource->wp->Criterion[1] = $this->tagat_user->DataSource->wp->Operation(opNotEqual, "user_id", $this->tagat_user->DataSource->wp->GetDBValue("1"), $this->tagat_user->DataSource->ToSQL($this->tagat_user->DataSource->wp->GetDBValue("1"), ccsText),false);
            $this->tagat_user->DataSource->Where = 
                 $this->tagat_user->DataSource->wp->Criterion[1];
            $this->tagat_enabled = new clsControl(ccsListBox, "tagat_enabled", $CCSLocales->GetText("tagat_enabled"), ccsText, "", CCGetRequestParam("tagat_enabled", $Method, NULL), $this);
            $this->tagat_enabled->DSType = dsListOfValues;
            $this->tagat_enabled->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @17-464D2873
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltagat_tag_id"] = CCGetFromGet("tagat_tag_id", NULL);
    }
//End Initialize Method

//Validate Method @17-2E13FF83
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tagat_tag_id->Validate() && $Validation);
        $Validation = ($this->tagat_user->Validate() && $Validation);
        $Validation = ($this->tagat_enabled->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tagat_tag_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tagat_user->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tagat_enabled->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @17-7EBAF9F8
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tagat_tag_id->Errors->Count());
        $errors = ($errors || $this->tagat_user->Errors->Count());
        $errors = ($errors || $this->tagat_enabled->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @17-F87BCFC8
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_addin_tagat_Insert", "tagat_tag_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_addin_tagat_Insert", "tagat_tag_id"));
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

//InsertRow Method @17-F51155DC
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tagat_tag_id->SetValue($this->tagat_tag_id->GetValue(true));
        $this->DataSource->tagat_user->SetValue($this->tagat_user->GetValue(true));
        $this->DataSource->tagat_enabled->SetValue($this->tagat_enabled->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @17-99D71D04
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tagat_tag_id->SetValue($this->tagat_tag_id->GetValue(true));
        $this->DataSource->tagat_user->SetValue($this->tagat_user->GetValue(true));
        $this->DataSource->tagat_enabled->SetValue($this->tagat_enabled->GetValue(true));
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

//Show Method @17-51EBF647
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tagat_user->Prepare();
        $this->tagat_enabled->Prepare();

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
                    $this->tagat_tag_id->SetValue($this->DataSource->tagat_tag_id->GetValue());
                    $this->tagat_user->SetValue($this->DataSource->tagat_user->GetValue());
                    $this->tagat_enabled->SetValue($this->DataSource->tagat_enabled->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tagat_tag_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tagat_user->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tagat_enabled->Errors->ToString());
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

        $this->tagat_tag_id->Show();
        $this->tagat_user->Show();
        $this->tagat_enabled->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_addin_tagat_user_tags1 Class @17-FCB6E20C

class clsssf_addin_tagat_user_tags1DataSource extends clsDBConnection1 {  //ssf_addin_tagat_user_tags1DataSource Class @17-1A4CA8F9

//DataSource Variables @17-6AAEE11F
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
    public $tagat_tag_id;
    public $tagat_user;
    public $tagat_enabled;
//End DataSource Variables

//DataSourceClass_Initialize Event @17-D807F769
    function clsssf_addin_tagat_user_tags1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_addin_tagat_user_tags1/Error";
        $this->Initialize();
        $this->tagat_tag_id = new clsField("tagat_tag_id", ccsText, "");
        $this->tagat_user = new clsField("tagat_user", ccsText, "");
        $this->tagat_enabled = new clsField("tagat_enabled", ccsText, "");

        $this->InsertFields["tagat_tag_id"] = array("Name" => "tagat_tag_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tagat_user"] = array("Name" => "tagat_user", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tagat_enabled"] = array("Name" => "tagat_enabled", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tagat_tag_id"] = array("Name" => "tagat_tag_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tagat_user"] = array("Name" => "tagat_user", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tagat_enabled"] = array("Name" => "tagat_enabled", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @17-F5CCAD56
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltagat_tag_id", ccsText, "", "", $this->Parameters["urltagat_tag_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tagat_tag_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @17-F4A2F07C
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_addin_tagat_user_tags {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @17-B26B1832
    function SetValues()
    {
        $this->tagat_tag_id->SetDBValue($this->f("tagat_tag_id"));
        $this->tagat_user->SetDBValue($this->f("tagat_user"));
        $this->tagat_enabled->SetDBValue($this->f("tagat_enabled"));
    }
//End SetValues Method

//Insert Method @17-A0CBE3BC
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tagat_tag_id"]["Value"] = $this->tagat_tag_id->GetDBValue(true);
        $this->InsertFields["tagat_user"]["Value"] = $this->tagat_user->GetDBValue(true);
        $this->InsertFields["tagat_enabled"]["Value"] = $this->tagat_enabled->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_addin_tagat_user_tags", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @17-5CADD451
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tagat_tag_id"]["Value"] = $this->tagat_tag_id->GetDBValue(true);
        $this->UpdateFields["tagat_user"]["Value"] = $this->tagat_user->GetDBValue(true);
        $this->UpdateFields["tagat_enabled"]["Value"] = $this->tagat_enabled->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_addin_tagat_user_tags", $this->UpdateFields, $this);
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

//Delete Method @17-30C54E9B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_addin_tagat_user_tags";
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

} //End ssf_addin_tagat_user_tags1DataSource Class @17-FCB6E20C

//Initialize Page @1-8E923A37
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
$TemplateFileName = "UsersTag.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-D5F39CEF
CCSecurityRedirect("", "Login.php");
//End Authenticate User

//Include events file @1-6CE97D74
include("./UsersTag_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-7D73E6F9
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_addin_tagat_user_tags = new clsGridssf_addin_tagat_user_tags("", $MainPage);
$ssf_addin_tagat_user_tags1 = new clsRecordssf_addin_tagat_user_tags1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_addin_tagat_user_tags = & $ssf_addin_tagat_user_tags;
$MainPage->ssf_addin_tagat_user_tags1 = & $ssf_addin_tagat_user_tags1;
$ssf_addin_tagat_user_tags->Initialize();
$ssf_addin_tagat_user_tags1->Initialize();

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

//Execute Components @1-AFA61D8F
$SSFSpiritHeader->Operations();
$ssf_addin_tagat_user_tags1->Operation();
//End Execute Components

//Go to destination page @1-52D13F39
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_addin_tagat_user_tags);
    unset($ssf_addin_tagat_user_tags1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-208FD797
$SSFSpiritHeader->Show();
$ssf_addin_tagat_user_tags->Show();
$ssf_addin_tagat_user_tags1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6C79D1DA
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_addin_tagat_user_tags);
unset($ssf_addin_tagat_user_tags1);
unset($Tpl);
//End Unload Page


?>
