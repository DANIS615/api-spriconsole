<?php
//Include Common Files @1-2A3433D5
define("RelativePath", "..");
define("PathToCurrentPage", "/Security/");
define("FileName", "Roles.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @48-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_sec_roles { //ssf_sec_roles class @2-55CDBFC0

//Variables @2-71A831BC

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
    public $Sorter_role_id;
    public $Sorter_role_desc;
//End Variables

//Class_Initialize Event @2-65572081
    function clsGridssf_sec_roles($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_sec_roles";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_sec_roles";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_sec_rolesDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_sec_rolesOrder", "");
        $this->SorterDirection = CCGetParam("ssf_sec_rolesDir", "");

        $this->role_id = new clsControl(ccsLink, "role_id", "role_id", ccsText, "", CCGetRequestParam("role_id", ccsGet, NULL), $this);
        $this->role_id->Page = "Roles.php";
        $this->role_desc = new clsControl(ccsLabel, "role_desc", "role_desc", ccsText, "", CCGetRequestParam("role_desc", ccsGet, NULL), $this);
        $this->Sorter_role_id = new clsSorter($this->ComponentName, "Sorter_role_id", $FileName, $this);
        $this->Sorter_role_desc = new clsSorter($this->ComponentName, "Sorter_role_desc", $FileName, $this);
        $this->ssf_sec_roles_Insert = new clsControl(ccsLink, "ssf_sec_roles_Insert", "ssf_sec_roles_Insert", ccsText, "", CCGetRequestParam("ssf_sec_roles_Insert", ccsGet, NULL), $this);
        $this->ssf_sec_roles_Insert->Page = "Roles.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @2-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @2-1B294FA6
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
            $this->ControlsVisible["role_id"] = $this->role_id->Visible;
            $this->ControlsVisible["role_desc"] = $this->role_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->role_id->SetValue($this->DataSource->role_id->GetValue());
                $this->role_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->role_id->Parameters = CCAddParam($this->role_id->Parameters, "role_id", $this->DataSource->f("role_id"));
                $this->role_desc->SetValue($this->DataSource->role_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->role_id->Show();
                $this->role_desc->Show();
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
        $this->ssf_sec_roles_Insert->Parameters = CCGetQueryString("QueryString", array("role_id", "ccsForm"));
        $this->ssf_sec_roles_Insert->Parameters = CCAddParam($this->ssf_sec_roles_Insert->Parameters, "ssf_sec_roles_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_role_id->Show();
        $this->Sorter_role_desc->Show();
        $this->ssf_sec_roles_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-DC1B85E5
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->role_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->role_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_sec_roles Class @2-FCB6E20C

class clsssf_sec_rolesDataSource extends clsDBConnection1 {  //ssf_sec_rolesDataSource Class @2-4314FCA0

//DataSource Variables @2-99706F6E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $role_id;
    public $role_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-F0936AD3
    function clsssf_sec_rolesDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_sec_roles";
        $this->Initialize();
        $this->role_id = new clsField("role_id", ccsText, "");
        $this->role_desc = new clsField("role_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-0F868C9F
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "role_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_role_id" => array("role_id", ""), 
            "Sorter_role_desc" => array("role_desc", "")));
    }
//End SetOrder Method

//Prepare Method @2-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @2-CF8B2F50
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_sec_roles";
        $this->SQL = "SELECT role_id, role_desc \n\n" .
        "FROM ssf_sec_roles {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-46559735
    function SetValues()
    {
        $this->role_id->SetDBValue($this->f("role_id"));
        $this->role_desc->SetDBValue($this->f("role_desc"));
    }
//End SetValues Method

} //End ssf_sec_rolesDataSource Class @2-FCB6E20C

class clsRecordssf_sec_roles1 { //ssf_sec_roles1 Class @12-88BBF35D

//Variables @12-9E315808

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

//Class_Initialize Event @12-1F56C0B0
    function clsRecordssf_sec_roles1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_sec_roles1/Error";
        $this->DataSource = new clsssf_sec_roles1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_sec_roles1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->role_id = new clsControl(ccsTextBox, "role_id", $CCSLocales->GetText("role_id"), ccsText, "", CCGetRequestParam("role_id", $Method, NULL), $this);
            $this->role_id->Required = true;
            $this->role_desc = new clsControl(ccsTextBox, "role_desc", $CCSLocales->GetText("role_desc"), ccsText, "", CCGetRequestParam("role_desc", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @12-950DD9D4
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlrole_id"] = CCGetFromGet("role_id", NULL);
    }
//End Initialize Method

//Validate Method @12-7D8752C7
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->role_id->Validate() && $Validation);
        $Validation = ($this->role_desc->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->role_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->role_desc->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @12-0EAFD1A3
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->role_id->Errors->Count());
        $errors = ($errors || $this->role_desc->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @12-8938C50B
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
        $Redirect = "Roles.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "Roles.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "role_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "Roles.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "role_id", " ssf_sec_roles_Insert"));
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

//InsertRow Method @12-492ACB04
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->role_id->SetValue($this->role_id->GetValue(true));
        $this->DataSource->role_desc->SetValue($this->role_desc->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @12-85C5CC43
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->role_id->SetValue($this->role_id->GetValue(true));
        $this->DataSource->role_desc->SetValue($this->role_desc->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @12-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @12-BDD92353
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
                    $this->role_id->SetValue($this->DataSource->role_id->GetValue());
                    $this->role_desc->SetValue($this->DataSource->role_desc->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->role_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->role_desc->Errors->ToString());
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

        $this->role_id->Show();
        $this->role_desc->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_sec_roles1 Class @12-FCB6E20C

class clsssf_sec_roles1DataSource extends clsDBConnection1 {  //ssf_sec_roles1DataSource Class @12-2BD7CEC3

//DataSource Variables @12-E70696C8
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
    public $role_id;
    public $role_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @12-3C758F03
    function clsssf_sec_roles1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_sec_roles1/Error";
        $this->Initialize();
        $this->role_id = new clsField("role_id", ccsText, "");
        $this->role_desc = new clsField("role_desc", ccsText, "");

        $this->InsertFields["role_id"] = array("Name" => "role_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["role_desc"] = array("Name" => "role_desc", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["role_id"] = array("Name" => "role_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["role_desc"] = array("Name" => "role_desc", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @12-BD7CBC78
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlrole_id", ccsText, "", "", $this->Parameters["urlrole_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "role_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @12-86116790
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_sec_roles {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @12-46559735
    function SetValues()
    {
        $this->role_id->SetDBValue($this->f("role_id"));
        $this->role_desc->SetDBValue($this->f("role_desc"));
    }
//End SetValues Method

//Insert Method @12-2093C5D6
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["role_id"]["Value"] = $this->role_id->GetDBValue(true);
        $this->InsertFields["role_desc"]["Value"] = $this->role_desc->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_sec_roles", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @12-FD76DC11
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["role_id"]["Value"] = $this->role_id->GetDBValue(true);
        $this->UpdateFields["role_desc"]["Value"] = $this->role_desc->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_sec_roles", $this->UpdateFields, $this);
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

//Delete Method @12-8C4529F0
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_sec_roles";
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

} //End ssf_sec_roles1DataSource Class @12-FCB6E20C

class clsEditableGridssf_sec_user_access2 { //ssf_sec_user_access2 Class @90-09804077

//Variables @90-BABF9012

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
    public $Sorter_action_id;
    public $Sorter_user_rights;
//End Variables

//Class_Initialize Event @90-08F6E544
    function clsEditableGridssf_sec_user_access2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_sec_user_access2/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_sec_user_access2";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["user_id"][0] = "user_id";
        $this->CachedColumns["action_id"][0] = "action_id";
        $this->CachedColumns["role_id"][0] = "role_id";
        $this->CachedColumns["ssf_sec_role_access_action_id"][0] = "ssf_sec_role_access_action_id";
        $this->DataSource = new clsssf_sec_user_access2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 15;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 0;
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

        $this->SorterName = CCGetParam("ssf_sec_user_access2Order", "");
        $this->SorterDirection = CCGetParam("ssf_sec_user_access2Dir", "");

        $this->Sorter_action_id = new clsSorter($this->ComponentName, "Sorter_action_id", $FileName, $this);
        $this->Sorter_user_rights = new clsSorter($this->ComponentName, "Sorter_user_rights", $FileName, $this);
        $this->action_id = new clsControl(ccsLabel, "action_id", $CCSLocales->GetText("action_id"), ccsText, "", NULL, $this);
        $this->role_rights = new clsControl(ccsLabel, "role_rights", $CCSLocales->GetText("user_rights"), ccsInteger, "", NULL, $this);
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->btnmarkAll = new clsButton("btnmarkAll", $Method, $this);
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @90-203C242E
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urlrole_id"] = CCGetFromGet("role_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @90-5BC48FB4
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @90-46111E3F
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["user_id"] = $this->CachedColumns["user_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["action_id"] = $this->CachedColumns["action_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["role_id"] = $this->CachedColumns["role_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ssf_sec_role_access_action_id"] = $this->CachedColumns["ssf_sec_role_access_action_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if(!$this->CheckBox_Delete->Value)
                    $Validation = ($this->ValidateRow() && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @90-213646E1
    function ValidateRow()
    {
        global $CCSLocales;
        $this->CheckBox_Delete->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $this->CheckBox_Delete->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @90-FC0A7F41
    function CheckInsert()
    {
        $filed = false;
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @90-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @90-7D453C16
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
        $this->PressedButton = "Button_Submit";
        if($this->btnmarkAll->Pressed) {
            $this->PressedButton = "btnmarkAll";
        } else if($this->Button_Submit->Pressed) {
            $this->PressedButton = "Button_Submit";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "btnmarkAll") {
            if(!CCGetEvent($this->btnmarkAll->CCSEvents, "OnClick", $this->btnmarkAll)) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Submit") {
            if(!CCGetEvent($this->Button_Submit->CCSEvents, "OnClick", $this->Button_Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @90-C7EA1350
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["user_id"] = $this->CachedColumns["user_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["action_id"] = $this->CachedColumns["action_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["role_id"] = $this->CachedColumns["role_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["ssf_sec_role_access_action_id"] = $this->CachedColumns["ssf_sec_role_access_action_id"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->CheckBox_Delete->Value) {
                    if($this->DeleteAllowed) { $Validation = ($this->DeleteRow() && $Validation); }
                } else if($this->UpdateAllowed) {
                    $Validation = ($this->UpdateRow() && $Validation);
                }
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

//DeleteRow Method @90-A4A656F6
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

//FormScript Method @90-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @90-3AB3D2C8
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
            for($i = 2; $i < sizeof($pieces); $i = $i + 4)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["user_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["action_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 2];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["role_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 3];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["ssf_sec_role_access_action_id"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["user_id"][$RowNumber] = "";
                $this->CachedColumns["action_id"][$RowNumber] = "";
                $this->CachedColumns["role_id"][$RowNumber] = "";
                $this->CachedColumns["ssf_sec_role_access_action_id"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @90-05E883E3
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["user_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["action_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["role_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["ssf_sec_role_access_action_id"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @90-B3578AD1
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
        $this->Button_Submit->Visible = $this->Button_Submit->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["action_id"] = $this->action_id->Visible;
        $this->ControlsVisible["role_rights"] = $this->role_rights->Visible;
        $this->ControlsVisible["CheckBox_Delete"] = $this->CheckBox_Delete->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($is_next_record) || !($this->DeleteAllowed)) {
                    $this->CheckBox_Delete->Visible = false;
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns["user_id"][$this->RowNumber] = $this->DataSource->CachedColumns["user_id"];
                    $this->CachedColumns["action_id"][$this->RowNumber] = $this->DataSource->CachedColumns["action_id"];
                    $this->CachedColumns["role_id"][$this->RowNumber] = $this->DataSource->CachedColumns["role_id"];
                    $this->CachedColumns["ssf_sec_role_access_action_id"][$this->RowNumber] = $this->DataSource->CachedColumns["ssf_sec_role_access_action_id"];
                    $this->CheckBox_Delete->SetValue("");
                    $this->action_id->SetValue($this->DataSource->action_id->GetValue());
                    $this->role_rights->SetValue($this->DataSource->role_rights->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->action_id->SetText("");
                    $this->role_rights->SetText("");
                    $this->action_id->SetValue($this->DataSource->action_id->GetValue());
                    $this->role_rights->SetValue($this->DataSource->role_rights->GetValue());
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["user_id"][$this->RowNumber] = "";
                    $this->CachedColumns["action_id"][$this->RowNumber] = "";
                    $this->CachedColumns["role_id"][$this->RowNumber] = "";
                    $this->CachedColumns["ssf_sec_role_access_action_id"][$this->RowNumber] = "";
                    $this->action_id->SetText("");
                    $this->role_rights->SetText("");
                } else {
                    $this->action_id->SetText("");
                    $this->role_rights->SetText("");
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->action_id->Show($this->RowNumber);
                $this->role_rights->Show($this->RowNumber);
                $this->CheckBox_Delete->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["user_id"] == $this->CachedColumns["user_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["action_id"] == $this->CachedColumns["action_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["role_id"] == $this->CachedColumns["role_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["ssf_sec_role_access_action_id"] == $this->CachedColumns["ssf_sec_role_access_action_id"][$this->RowNumber])) {
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_action_id->Show();
        $this->Sorter_user_rights->Show();
        $this->Navigator->Show();
        $this->btnmarkAll->Show();
        $this->Button_Submit->Show();

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

} //End ssf_sec_user_access2 Class @90-FCB6E20C

class clsssf_sec_user_access2DataSource extends clsDBConnection1 {  //ssf_sec_user_access2DataSource Class @90-175C69AB

//DataSource Variables @90-E0F69987
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;

    // Datasource fields
    public $action_id;
    public $role_rights;
    public $CheckBox_Delete;
//End DataSource Variables

//DataSourceClass_Initialize Event @90-93F439A2
    function clsssf_sec_user_access2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_sec_user_access2/Error";
        $this->Initialize();
        $this->action_id = new clsField("action_id", ccsText, "");
        $this->role_rights = new clsField("role_rights", ccsInteger, "");
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @90-A60C5D01
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_sec_actions.action_description";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_action_id" => array("action_description", ""), 
            "Sorter_user_rights" => array("user_rights", "")));
    }
//End SetOrder Method

//Prepare Method @90-CB1DCA7B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlrole_id", ccsText, "", "", $this->Parameters["urlrole_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_sec_role_access.role_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @90-0EDA0FA3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_sec_role_access INNER JOIN ssf_sec_actions ON\n\n" .
        "ssf_sec_role_access.action_id = ssf_sec_actions.action_id";
        $this->SQL = "SELECT action_description, role_id, ssf_sec_role_access.action_id AS ssf_sec_role_access_action_id, role_rights \n\n" .
        "FROM ssf_sec_role_access INNER JOIN ssf_sec_actions ON\n\n" .
        "ssf_sec_role_access.action_id = ssf_sec_actions.action_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @90-A27A5FB5
    function SetValues()
    {
        $this->CachedColumns["user_id"] = $this->f("user_id");
        $this->CachedColumns["action_id"] = $this->f("action_id");
        $this->CachedColumns["role_id"] = $this->f("role_id");
        $this->CachedColumns["ssf_sec_role_access_action_id"] = $this->f("ssf_sec_role_access_action_id");
        $this->action_id->SetDBValue($this->f("action_description"));
        $this->role_rights->SetDBValue(trim($this->f("role_rights")));
    }
//End SetValues Method

//Delete Method @90-FA3FF55A
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "dsrole_id", ccsText, "", "", $this->CachedColumns["role_id"], "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "dsssf_sec_role_access_action_id", ccsText, "", "", $this->CachedColumns["ssf_sec_role_access_action_id"], "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "role_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "action_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $Where = $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]);
        $this->SQL = "DELETE FROM ssf_sec_role_access";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_sec_user_access2DataSource Class @90-FCB6E20C

class clsEditableGridssf_user_action_add { //ssf_user_action_add Class @119-2D3D1195

//Variables @119-0AADA924

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
//End Variables

//Class_Initialize Event @119-B4BAB8AA
    function clsEditableGridssf_user_action_add($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_user_action_add/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_user_action_add";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns[""][0] = "";
        $this->DataSource = new clsssf_user_action_addDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 15;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 0;
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

        $this->lstAccessType = new clsControl(ccsListBox, "lstAccessType", "lstAccessType", ccsText, "", NULL, $this);
        $this->lstAccessType->DSType = dsListOfValues;
        $this->lstAccessType->Values = array(array("1", $CCSLocales->GetText("Allowed")), array("2", $CCSLocales->GetText("ReqAuthorization")));
        $this->action_description = new clsControl(ccsLabel, "action_description", $CCSLocales->GetText("action_description"), ccsMemo, "", NULL, $this);
        $this->action_id = new clsControl(ccsHidden, "action_id", "action_id", ccsText, "", NULL, $this);
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->CheckBox_Delete->Visible = false;
        $this->CheckBox_Update = new clsControl(ccsCheckBox, "CheckBox_Update", "CheckBox_Update", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Update->CheckedValue = true;
        $this->CheckBox_Update->UncheckedValue = false;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->btnmarkAll = new clsButton("btnmarkAll", $Method, $this);
        $this->btnAdd1 = new clsButton("btnAdd1", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @119-203C242E
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urlrole_id"] = CCGetFromGet("role_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @119-194BB11A
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["action_id"][$RowNumber] = CCGetFromPost("action_id_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Update"][$RowNumber] = CCGetFromPost("CheckBox_Update_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @119-14836955
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns[""] = $this->CachedColumns[""][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->action_id->SetText($this->FormParameters["action_id"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if(!$this->CheckBox_Delete->Value)
                    $Validation = ($this->ValidateRow() && $Validation);
            }
            else if($this->CheckInsert())
            {
                $Validation = ($this->ValidateRow() && $Validation);
            }
        }
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//ValidateRow Method @119-BB24A6D6
    function ValidateRow()
    {
        global $CCSLocales;
        $this->action_id->Validate();
        $this->CheckBox_Delete->Validate();
        $this->CheckBox_Update->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->action_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Update->Errors->ToString());
        $this->action_id->Errors->Clear();
        $this->CheckBox_Delete->Errors->Clear();
        $this->CheckBox_Update->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @119-50631BCC
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["action_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["CheckBox_Update"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @119-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @119-3E001C12
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
        $this->PressedButton = "btnAdd1";
        if($this->btnmarkAll->Pressed) {
            $this->PressedButton = "btnmarkAll";
        } else if($this->btnAdd1->Pressed) {
            $this->PressedButton = "btnAdd1";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "btnmarkAll") {
            if(!CCGetEvent($this->btnmarkAll->CCSEvents, "OnClick", $this->btnmarkAll)) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "btnAdd1") {
            if(!CCGetEvent($this->btnAdd1->CCSEvents, "OnClick", $this->btnAdd1) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @119-B306BC01
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns[""] = $this->CachedColumns[""][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->action_id->SetText($this->FormParameters["action_id"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
            if ($this->UpdatedRows >= $this->RowNumber) {
                if($this->CheckBox_Delete->Value) {
                    if($this->DeleteAllowed) { $Validation = ($this->DeleteRow() && $Validation); }
                } else if($this->UpdateAllowed) {
                    $Validation = ($this->UpdateRow() && $Validation);
                }
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

//DeleteRow Method @119-A4A656F6
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

//FormScript Method @119-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @119-2C052262
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
            for($i = 2; $i < sizeof($pieces); $i = $i + 1)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns[""][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns[""][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @119-240E8836
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns[""][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @119-757BE1B7
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible) { return; }

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->lstAccessType->Prepare();

        $this->DataSource->open();
        $is_next_record = ($this->ReadAllowed && $this->DataSource->next_record());
        $this->IsEmpty = ! $is_next_record;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) { return; }

        $this->Attributes->Show();
        $this->btnAdd1->Visible = $this->btnAdd1->Visible && ($this->InsertAllowed || $this->UpdateAllowed || $this->DeleteAllowed);
        $ParentPath = $Tpl->block_path;
        $EditableGridPath = $ParentPath . "/EditableGrid " . $this->ComponentName;
        $EditableGridRowPath = $ParentPath . "/EditableGrid " . $this->ComponentName . "/Row";
        $Tpl->block_path = $EditableGridRowPath;
        $this->RowNumber = 0;
        $NonEmptyRows = 0;
        $EmptyRowsLeft = $this->EmptyRows;
        $this->ControlsVisible["action_description"] = $this->action_description->Visible;
        $this->ControlsVisible["action_id"] = $this->action_id->Visible;
        $this->ControlsVisible["CheckBox_Delete"] = $this->CheckBox_Delete->Visible;
        $this->ControlsVisible["CheckBox_Update"] = $this->CheckBox_Update->Visible;
        if ($is_next_record || ($EmptyRowsLeft && $this->InsertAllowed)) {
            do {
                $this->RowNumber++;
                if($is_next_record) {
                    $NonEmptyRows++;
                    $this->DataSource->SetValues();
                }
                if (!($is_next_record) || !($this->DeleteAllowed)) {
                    $this->CheckBox_Delete->Visible = false;
                }
                if (!($this->FormSubmitted) && $is_next_record) {
                    $this->CachedColumns[""][$this->RowNumber] = $this->DataSource->CachedColumns[""];
                    $this->CheckBox_Delete->SetValue("");
                    $this->CheckBox_Update->SetValue("");
                    $this->action_description->SetValue($this->DataSource->action_description->GetValue());
                    $this->action_id->SetValue($this->DataSource->action_id->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->action_description->SetText("");
                    $this->action_description->SetValue($this->DataSource->action_description->GetValue());
                    $this->action_id->SetText($this->FormParameters["action_id"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns[""][$this->RowNumber] = "";
                    $this->action_description->SetText("");
                    $this->action_id->SetText("");
                } else {
                    $this->action_description->SetText("");
                    $this->action_id->SetText($this->FormParameters["action_id"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Update->SetText($this->FormParameters["CheckBox_Update"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->action_description->Show($this->RowNumber);
                $this->action_id->Show($this->RowNumber);
                $this->CheckBox_Delete->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns[""] == $this->CachedColumns[""][$this->RowNumber])) {
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
        if(!is_array($this->lstAccessType->Value) && !strlen($this->lstAccessType->Value) && $this->lstAccessType->Value !== false)
            $this->lstAccessType->SetText(1);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->lstAccessType->Show();
        $this->Navigator->Show();
        $this->btnmarkAll->Show();
        $this->btnAdd1->Show();

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

} //End ssf_user_action_add Class @119-FCB6E20C

class clsssf_user_action_addDataSource extends clsDBConnection1 {  //ssf_user_action_addDataSource Class @119-D9B0AF22

//DataSource Variables @119-11C1CB60
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;

    // Datasource fields
    public $action_description;
    public $action_id;
    public $CheckBox_Delete;
    public $CheckBox_Update;
//End DataSource Variables

//DataSourceClass_Initialize Event @119-C5440319
    function clsssf_user_action_addDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_user_action_add/Error";
        $this->Initialize();
        $this->action_description = new clsField("action_description", ccsMemo, "");
        $this->action_id = new clsField("action_id", ccsText, "");
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));
        $this->CheckBox_Update = new clsField("CheckBox_Update", ccsBoolean, array("t", "f", ""));

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @119-C14096C3
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "action_description";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @119-402D19A5
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlrole_id", ccsText, "", "", $this->Parameters["urlrole_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
    }
//End Prepare Method

//Open Method @119-FF51898D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT action_id, action_description\n" .
        "FROM ssf_sec_actions \n" .
        "Where ssf_sec_actions.action_id not in (\n" .
        "Select ssf_sec_role_access.action_id from ssf_sec_role_access\n" .
        "where ssf_sec_role_access.role_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' )) cnt";
        $this->SQL = "SELECT action_id, action_description\n" .
        "FROM ssf_sec_actions \n" .
        "Where ssf_sec_actions.action_id not in (\n" .
        "Select ssf_sec_role_access.action_id from ssf_sec_role_access\n" .
        "where ssf_sec_role_access.role_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' )  {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @119-2F945542
    function SetValues()
    {
        $this->CachedColumns[""] = $this->f("");
        $this->action_description->SetDBValue($this->f("action_description"));
        $this->action_id->SetDBValue($this->f("action_id"));
    }
//End SetValues Method

//Delete Method @119-1F6F46F5
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = "role_id = '-1-2'";
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM ssf_sec_role_access";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_user_action_addDataSource Class @119-FCB6E20C



//DEL      function SetOrder($SorterName, $SorterDirection)
//DEL      {
//DEL          $this->Order = "action";
//DEL          $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
//DEL              array("Sorter_action" => array("action", ""), 
//DEL              "Sorter_role_rights" => array("role_rights", "")));
//DEL      }



//Initialize Page @1-0D506146
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
$TemplateFileName = "Roles.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-351A7514
include("./Roles_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-252CF80F
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_sec_roles = new clsGridssf_sec_roles("", $MainPage);
$ssf_sec_roles1 = new clsRecordssf_sec_roles1("", $MainPage);
$ssf_sec_user_access2 = new clsEditableGridssf_sec_user_access2("", $MainPage);
$ssf_user_action_add = new clsEditableGridssf_user_action_add("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_sec_roles = & $ssf_sec_roles;
$MainPage->ssf_sec_roles1 = & $ssf_sec_roles1;
$MainPage->ssf_sec_user_access2 = & $ssf_sec_user_access2;
$MainPage->ssf_user_action_add = & $ssf_user_action_add;
$ssf_sec_roles->Initialize();
$ssf_sec_roles1->Initialize();
$ssf_sec_user_access2->Initialize();
$ssf_user_action_add->Initialize();

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

//Execute Components @1-78CC5BA6
$SSFSpiritHeader->Operations();
$ssf_sec_roles1->Operation();
$ssf_sec_user_access2->Operation();
$ssf_user_action_add->Operation();
//End Execute Components

//Go to destination page @1-FB4213CC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_sec_roles);
    unset($ssf_sec_roles1);
    unset($ssf_sec_user_access2);
    unset($ssf_user_action_add);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-63678963
$SSFSpiritHeader->Show();
$ssf_sec_roles->Show();
$ssf_sec_roles1->Show();
$ssf_sec_user_access2->Show();
$ssf_user_action_add->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-C6DFE79F
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_sec_roles);
unset($ssf_sec_roles1);
unset($ssf_sec_user_access2);
unset($ssf_user_action_add);
unset($Tpl);
//End Unload Page


?>
