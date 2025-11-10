<?php
//Include Common Files @1-C2F87B48
define("RelativePath", "..");
define("PathToCurrentPage", "/POS/");
define("FileName", "SSFTicketPOS.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_catalog { //ssf_tkt_catalog class @3-36741316

//Variables @3-3FA0CD39

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
    public $Sorter_tkt_catalog_code;
    public $Sorter_tkt_catalog_value;
//End Variables

//Class_Initialize Event @3-63AEA5DE
    function clsGridssf_tkt_catalog($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_catalog";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_catalogDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_catalogOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_catalogDir", "");

        $this->tkt_catalog_code = new clsControl(ccsLink, "tkt_catalog_code", "tkt_catalog_code", ccsText, "", CCGetRequestParam("tkt_catalog_code", ccsGet, NULL), $this);
        $this->tkt_catalog_code->Page = "SSFTicketPOS.php";
        $this->tkt_catalog_value = new clsControl(ccsLabel, "tkt_catalog_value", "tkt_catalog_value", ccsText, "", CCGetRequestParam("tkt_catalog_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_catalog_code = new clsSorter($this->ComponentName, "Sorter_tkt_catalog_code", $FileName, $this);
        $this->Sorter_tkt_catalog_value = new clsSorter($this->ComponentName, "Sorter_tkt_catalog_value", $FileName, $this);
        $this->ssf_tkt_catalog_Insert = new clsControl(ccsLink, "ssf_tkt_catalog_Insert", "ssf_tkt_catalog_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_catalog_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_catalog_Insert->Page = "SSFTicketPOS.php";
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

//Show Method @3-CBE1E15F
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
            $this->ControlsVisible["tkt_catalog_code"] = $this->tkt_catalog_code->Visible;
            $this->ControlsVisible["tkt_catalog_value"] = $this->tkt_catalog_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_catalog_code->SetValue($this->DataSource->tkt_catalog_code->GetValue());
                $this->tkt_catalog_code->Parameters = "";
                $this->tkt_catalog_code->Parameters = CCAddParam($this->tkt_catalog_code->Parameters, "tkt_catalog_code", $this->DataSource->f("tkt_catalog_code"));
                $this->tkt_catalog_value->SetValue($this->DataSource->tkt_catalog_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_catalog_code->Show();
                $this->tkt_catalog_value->Show();
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
        $this->ssf_tkt_catalog_Insert->Parameters = "";
        $this->ssf_tkt_catalog_Insert->Parameters = CCAddParam($this->ssf_tkt_catalog_Insert->Parameters, "ssf_tkt_catalog_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_catalog_code->Show();
        $this->Sorter_tkt_catalog_value->Show();
        $this->ssf_tkt_catalog_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-91520DDC
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_catalog_code->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_catalog_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_catalog Class @3-FCB6E20C

class clsssf_tkt_catalogDataSource extends clsDBConnection1 {  //ssf_tkt_catalogDataSource Class @3-9B3D5D4B

//DataSource Variables @3-4514DF34
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_catalog_code;
    public $tkt_catalog_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-E3BABE19
    function clsssf_tkt_catalogDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_catalog";
        $this->Initialize();
        $this->tkt_catalog_code = new clsField("tkt_catalog_code", ccsText, "");
        $this->tkt_catalog_value = new clsField("tkt_catalog_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-099837A1
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_catalog_code";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_catalog_code" => array("tkt_catalog_code", ""), 
            "Sorter_tkt_catalog_value" => array("tkt_catalog_value", "")));
    }
//End SetOrder Method

//Prepare Method @3-948AE508
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_catalog_id = 'pos_config_id'";
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-5E0566A7
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_catalog";
        $this->SQL = "SELECT tkt_catalog_id, tkt_catalog_code, tkt_catalog_value \n\n" .
        "FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-C5F6501F
    function SetValues()
    {
        $this->tkt_catalog_code->SetDBValue($this->f("tkt_catalog_code"));
        $this->tkt_catalog_value->SetDBValue($this->f("tkt_catalog_value"));
    }
//End SetValues Method

} //End ssf_tkt_catalogDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_catalog1 { //ssf_tkt_catalog1 Class @16-C5B2479A

//Variables @16-9E315808

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

//Class_Initialize Event @16-205B9330
    function clsRecordssf_tkt_catalog1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_catalog1/Error";
        $this->DataSource = new clsssf_tkt_catalog1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_catalog1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_catalog_code = new clsControl(ccsTextBox, "tkt_catalog_code", $CCSLocales->GetText("tkt_catalog_code"), ccsText, "", CCGetRequestParam("tkt_catalog_code", $Method, NULL), $this);
            $this->tkt_catalog_code->Required = true;
            $this->tkt_catalog_value = new clsControl(ccsTextBox, "tkt_catalog_value", $CCSLocales->GetText("tkt_catalog_value"), ccsText, "", CCGetRequestParam("tkt_catalog_value", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_catalog_id = new clsControl(ccsHidden, "tkt_catalog_id", $CCSLocales->GetText("tkt_catalog_id"), ccsText, "", CCGetRequestParam("tkt_catalog_id", $Method, NULL), $this);
            $this->tkt_catalog_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @16-D43C1A9A
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_catalog_code"] = CCGetFromGet("tkt_catalog_code", NULL);
    }
//End Initialize Method

//Validate Method @16-CF7EF6A9
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_catalog_code->Validate() && $Validation);
        $Validation = ($this->tkt_catalog_value->Validate() && $Validation);
        $Validation = ($this->tkt_catalog_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_catalog_code->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_catalog_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_catalog_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @16-A3F1AC5C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_catalog_code->Errors->Count());
        $errors = ($errors || $this->tkt_catalog_value->Errors->Count());
        $errors = ($errors || $this->tkt_catalog_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @16-72A1A870
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
        $Redirect = "SSFTicketPOS.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketPOS.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_catalog_code", "ssf_tkt_catalog_Insert", "tkt_config_param_id", "ssf_tkt_configuration_Insert"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketPOS.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_catalog_code", "ssf_tkt_catalog_Insert", "tkt_config_param_id", "ssf_tkt_configuration_Insert"));
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

//InsertRow Method @16-5423FCD8
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_catalog_code->SetValue($this->tkt_catalog_code->GetValue(true));
        $this->DataSource->tkt_catalog_value->SetValue($this->tkt_catalog_value->GetValue(true));
        $this->DataSource->tkt_catalog_id->SetValue($this->tkt_catalog_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @16-AAF541DE
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_catalog_code->SetValue($this->tkt_catalog_code->GetValue(true));
        $this->DataSource->tkt_catalog_value->SetValue($this->tkt_catalog_value->GetValue(true));
        $this->DataSource->tkt_catalog_id->SetValue($this->tkt_catalog_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @16-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @16-12669424
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
                    $this->tkt_catalog_code->SetValue($this->DataSource->tkt_catalog_code->GetValue());
                    $this->tkt_catalog_value->SetValue($this->DataSource->tkt_catalog_value->GetValue());
                    $this->tkt_catalog_id->SetValue($this->DataSource->tkt_catalog_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_catalog_code->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_catalog_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_catalog_id->Errors->ToString());
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

        $this->tkt_catalog_code->Show();
        $this->tkt_catalog_value->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_catalog_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_catalog1 Class @16-FCB6E20C

class clsssf_tkt_catalog1DataSource extends clsDBConnection1 {  //ssf_tkt_catalog1DataSource Class @16-1CD7DC92

//DataSource Variables @16-953052C9
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
    public $tkt_catalog_code;
    public $tkt_catalog_value;
    public $tkt_catalog_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @16-65DC6FEE
    function clsssf_tkt_catalog1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_catalog1/Error";
        $this->Initialize();
        $this->tkt_catalog_code = new clsField("tkt_catalog_code", ccsText, "");
        $this->tkt_catalog_value = new clsField("tkt_catalog_value", ccsText, "");
        $this->tkt_catalog_id = new clsField("tkt_catalog_id", ccsText, "");

        $this->InsertFields["tkt_catalog_code"] = array("Name" => "tkt_catalog_code", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_catalog_value"] = array("Name" => "tkt_catalog_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_catalog_id"] = array("Name" => "tkt_catalog_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_code"] = array("Name" => "tkt_catalog_code", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_value"] = array("Name" => "tkt_catalog_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_catalog_id"] = array("Name" => "tkt_catalog_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @16-C4F65AA2
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urltkt_catalog_code", ccsText, "", "", $this->Parameters["urltkt_catalog_code"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = "tkt_catalog_id = 'pos_config_id'";
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_catalog_code", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @16-F04524A4
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @16-AE020097
    function SetValues()
    {
        $this->tkt_catalog_code->SetDBValue($this->f("tkt_catalog_code"));
        $this->tkt_catalog_value->SetDBValue($this->f("tkt_catalog_value"));
        $this->tkt_catalog_id->SetDBValue($this->f("tkt_catalog_id"));
    }
//End SetValues Method

//Insert Method @16-28D3C022
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_catalog_code"]["Value"] = $this->tkt_catalog_code->GetDBValue(true);
        $this->InsertFields["tkt_catalog_value"]["Value"] = $this->tkt_catalog_value->GetDBValue(true);
        $this->InsertFields["tkt_catalog_id"]["Value"] = $this->tkt_catalog_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_catalog", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @16-031011B5
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_catalog_code"]["Value"] = $this->tkt_catalog_code->GetDBValue(true);
        $this->UpdateFields["tkt_catalog_value"]["Value"] = $this->tkt_catalog_value->GetDBValue(true);
        $this->UpdateFields["tkt_catalog_id"]["Value"] = $this->tkt_catalog_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_catalog", $this->UpdateFields, $this);
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

//Delete Method @16-D3A29FAD
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_catalog";
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

} //End ssf_tkt_catalog1DataSource Class @16-FCB6E20C

class clsGridssf_tkt_configuration { //ssf_tkt_configuration class @35-B2454510

//Variables @35-64AABEF0

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
    public $Sorter_tkt_config_param_id;
    public $Sorter_tkt_config_param_value;
//End Variables

//Class_Initialize Event @35-F6F500C0
    function clsGridssf_tkt_configuration($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_configuration";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_configuration";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_configurationDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 25;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("ssf_tkt_configurationOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_configurationDir", "");

        $this->tkt_config_param_id = new clsControl(ccsLink, "tkt_config_param_id", "tkt_config_param_id", ccsText, "", CCGetRequestParam("tkt_config_param_id", ccsGet, NULL), $this);
        $this->tkt_config_param_id->Page = "SSFTicketPOS.php";
        $this->tkt_config_param_value = new clsControl(ccsLabel, "tkt_config_param_value", "tkt_config_param_value", ccsText, "", CCGetRequestParam("tkt_config_param_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_config_param_id = new clsSorter($this->ComponentName, "Sorter_tkt_config_param_id", $FileName, $this);
        $this->Sorter_tkt_config_param_value = new clsSorter($this->ComponentName, "Sorter_tkt_config_param_value", $FileName, $this);
        $this->ssf_tkt_configuration_Insert = new clsControl(ccsLink, "ssf_tkt_configuration_Insert", "ssf_tkt_configuration_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_configuration_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_configuration_Insert->Page = "SSFTicketPOS.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @35-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @35-273DA706
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltkt_catalog_code"] = CCGetFromGet("tkt_catalog_code", NULL);

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
            $this->ControlsVisible["tkt_config_param_id"] = $this->tkt_config_param_id->Visible;
            $this->ControlsVisible["tkt_config_param_value"] = $this->tkt_config_param_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_config_param_id->SetValue($this->DataSource->tkt_config_param_id->GetValue());
                $this->tkt_config_param_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_config_param_id->Parameters = CCAddParam($this->tkt_config_param_id->Parameters, "tkt_config_param_id", $this->DataSource->f("tkt_config_param_id"));
                $this->tkt_config_param_value->SetValue($this->DataSource->tkt_config_param_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_config_param_id->Show();
                $this->tkt_config_param_value->Show();
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
        $this->ssf_tkt_configuration_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_config_param_id", "ccsForm"));
        $this->ssf_tkt_configuration_Insert->Parameters = CCAddParam($this->ssf_tkt_configuration_Insert->Parameters, "ssf_tkt_configuration_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_config_param_id->Show();
        $this->Sorter_tkt_config_param_value->Show();
        $this->ssf_tkt_configuration_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @35-3E0CEEDA
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_config_param_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_config_param_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_configuration Class @35-FCB6E20C

class clsssf_tkt_configurationDataSource extends clsDBConnection1 {  //ssf_tkt_configurationDataSource Class @35-BBF4F9D5

//DataSource Variables @35-53DC45B7
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_config_param_id;
    public $tkt_config_param_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @35-9B8BF14F
    function clsssf_tkt_configurationDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_configuration";
        $this->Initialize();
        $this->tkt_config_param_id = new clsField("tkt_config_param_id", ccsText, "");
        $this->tkt_config_param_value = new clsField("tkt_config_param_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @35-A9E57650
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_config_param_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_config_param_id" => array("tkt_config_param_id", ""), 
            "Sorter_tkt_config_param_value" => array("tkt_config_param_value", "")));
    }
//End SetOrder Method

//Prepare Method @35-08C0467E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_catalog_code", ccsText, "", "", $this->Parameters["urltkt_catalog_code"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_config_pos_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @35-21CAFD71
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_configuration";
        $this->SQL = "SELECT tkt_config_pos_id, tkt_config_param_id, tkt_config_param_value \n\n" .
        "FROM ssf_tkt_configuration {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @35-91B82B83
    function SetValues()
    {
        $this->tkt_config_param_id->SetDBValue($this->f("tkt_config_param_id"));
        $this->tkt_config_param_value->SetDBValue($this->f("tkt_config_param_value"));
    }
//End SetValues Method

} //End ssf_tkt_configurationDataSource Class @35-FCB6E20C

class clsRecordssf_tkt_configuration1 { //ssf_tkt_configuration1 Class @48-56B5CACB

//Variables @48-9E315808

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

//Class_Initialize Event @48-C7CD4FE8
    function clsRecordssf_tkt_configuration1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_configuration1/Error";
        $this->DataSource = new clsssf_tkt_configuration1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_configuration1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_config_param_id = new clsControl(ccsListBox, "tkt_config_param_id", $CCSLocales->GetText("tkt_config_param_id"), ccsText, "", CCGetRequestParam("tkt_config_param_id", $Method, NULL), $this);
            $this->tkt_config_param_id->DSType = dsTable;
            list($this->tkt_config_param_id->BoundColumn, $this->tkt_config_param_id->TextColumn, $this->tkt_config_param_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_code", "");
            $this->tkt_config_param_id->DataSource = new clsDBConnection1();
            $this->tkt_config_param_id->ds = & $this->tkt_config_param_id->DataSource;
            $this->tkt_config_param_id->DataSource->SQL = "SELECT tkt_catalog_code \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_config_param_id->DataSource->wp = new clsSQLParameters();
            $this->tkt_config_param_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'pos_param_config'";
            $this->tkt_config_param_id->DataSource->Where = 
                 $this->tkt_config_param_id->DataSource->wp->Criterion[1];
            $this->h_tkt_config_param_id = new clsControl(ccsHidden, "h_tkt_config_param_id", "h_tkt_config_param_id", ccsText, "", CCGetRequestParam("h_tkt_config_param_id", $Method, NULL), $this);
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->tkt_config_param_value = new clsControl(ccsTextBox, "tkt_config_param_value", $CCSLocales->GetText("tkt_config_param_value"), ccsText, "", CCGetRequestParam("tkt_config_param_value", $Method, NULL), $this);
            $this->ListBox1 = new clsControl(ccsListBox, "ListBox1", "ListBox1", ccsText, "", CCGetRequestParam("ListBox1", $Method, NULL), $this);
            $this->ListBox1->DSType = dsListOfValues;
            $this->ListBox1->Values = array(array("", ""));
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->tkt_config_pos_id = new clsControl(ccsHidden, "tkt_config_pos_id", $CCSLocales->GetText("tkt_config_pos_id"), ccsText, "", CCGetRequestParam("tkt_config_pos_id", $Method, NULL), $this);
            $this->tkt_config_pos_id->Required = true;
            if(!is_array($this->Label1->Value) && !strlen($this->Label1->Value) && $this->Label1->Value !== false)
                $this->Label1->SetText(Valor);
        }
    }
//End Class_Initialize Event

//Initialize Method @48-2E83CF38
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_catalog_code"] = CCGetFromGet("tkt_catalog_code", NULL);
        $this->DataSource->Parameters["urltkt_config_param_id"] = CCGetFromGet("tkt_config_param_id", NULL);
    }
//End Initialize Method

//Validate Method @48-DF7F53C6
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_config_param_id->Validate() && $Validation);
        $Validation = ($this->h_tkt_config_param_id->Validate() && $Validation);
        $Validation = ($this->tkt_config_param_value->Validate() && $Validation);
        $Validation = ($this->ListBox1->Validate() && $Validation);
        $Validation = ($this->tkt_config_pos_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_config_param_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_config_param_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_config_param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ListBox1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_config_pos_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @48-5EF0EF39
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_config_param_id->Errors->Count());
        $errors = ($errors || $this->h_tkt_config_param_id->Errors->Count());
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->tkt_config_param_value->Errors->Count());
        $errors = ($errors || $this->ListBox1->Errors->Count());
        $errors = ($errors || $this->tkt_config_pos_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @48-B699EF31
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
            }
        }
        $Redirect = "SSFTicketPOS.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketPOS.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_configuration_Insert", "tkt_config_param_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
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

//InsertRow Method @48-F50B41FD
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_config_param_id->SetValue($this->tkt_config_param_id->GetValue(true));
        $this->DataSource->tkt_config_param_value->SetValue($this->tkt_config_param_value->GetValue(true));
        $this->DataSource->tkt_config_pos_id->SetValue($this->tkt_config_pos_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @48-394BA0E4
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_config_param_id->SetValue($this->h_tkt_config_param_id->GetValue(true));
        $this->DataSource->tkt_config_param_value->SetValue($this->tkt_config_param_value->GetValue(true));
        $this->DataSource->tkt_config_pos_id->SetValue($this->tkt_config_pos_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @48-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @48-B955827F
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_config_param_id->Prepare();
        $this->ListBox1->Prepare();

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
                    $this->tkt_config_param_id->SetValue($this->DataSource->tkt_config_param_id->GetValue());
                    $this->h_tkt_config_param_id->SetValue($this->DataSource->h_tkt_config_param_id->GetValue());
                    $this->tkt_config_param_value->SetValue($this->DataSource->tkt_config_param_value->GetValue());
                    $this->tkt_config_pos_id->SetValue($this->DataSource->tkt_config_pos_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_config_param_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_config_param_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_config_param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ListBox1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_config_pos_id->Errors->ToString());
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

        $this->tkt_config_param_id->Show();
        $this->h_tkt_config_param_id->Show();
        $this->Label1->Show();
        $this->tkt_config_param_value->Show();
        $this->ListBox1->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->tkt_config_pos_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_configuration1 Class @48-FCB6E20C

class clsssf_tkt_configuration1DataSource extends clsDBConnection1 {  //ssf_tkt_configuration1DataSource Class @48-0B40AB75

//DataSource Variables @48-E117F607
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
    public $tkt_config_param_id;
    public $h_tkt_config_param_id;
    public $Label1;
    public $tkt_config_param_value;
    public $ListBox1;
    public $tkt_config_pos_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @48-51C65D1F
    function clsssf_tkt_configuration1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_configuration1/Error";
        $this->Initialize();
        $this->tkt_config_param_id = new clsField("tkt_config_param_id", ccsText, "");
        $this->h_tkt_config_param_id = new clsField("h_tkt_config_param_id", ccsText, "");
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->tkt_config_param_value = new clsField("tkt_config_param_value", ccsText, "");
        $this->ListBox1 = new clsField("ListBox1", ccsText, "");
        $this->tkt_config_pos_id = new clsField("tkt_config_pos_id", ccsText, "");

        $this->InsertFields["tkt_config_param_id"] = array("Name" => "tkt_config_param_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_config_param_value"] = array("Name" => "tkt_config_param_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_config_pos_id"] = array("Name" => "tkt_config_pos_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_config_param_id"] = array("Name" => "tkt_config_param_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_config_param_value"] = array("Name" => "tkt_config_param_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_config_pos_id"] = array("Name" => "tkt_config_pos_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @48-B203BAC7
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_catalog_code", ccsText, "", "", $this->Parameters["urltkt_catalog_code"], "", false);
        $this->wp->AddParameter("2", "urltkt_config_param_id", ccsText, "", "", $this->Parameters["urltkt_config_param_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_config_pos_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_config_param_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @48-9FEE7B47
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_configuration {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @48-D7183C6E
    function SetValues()
    {
        $this->tkt_config_param_id->SetDBValue($this->f("tkt_config_param_id"));
        $this->h_tkt_config_param_id->SetDBValue($this->f("tkt_config_param_id"));
        $this->tkt_config_param_value->SetDBValue($this->f("tkt_config_param_value"));
        $this->tkt_config_pos_id->SetDBValue($this->f("tkt_config_pos_id"));
    }
//End SetValues Method

//Insert Method @48-9538DC19
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_config_param_id"] = new clsSQLParameter("ctrltkt_config_param_id", ccsText, "", "", $this->tkt_config_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_config_param_value"] = new clsSQLParameter("ctrltkt_config_param_value", ccsText, "", "", $this->tkt_config_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_config_pos_id"] = new clsSQLParameter("ctrltkt_config_pos_id", ccsText, "", "", $this->tkt_config_pos_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_config_param_id"]->GetValue()) and !strlen($this->cp["tkt_config_param_id"]->GetText()) and !is_bool($this->cp["tkt_config_param_id"]->GetValue())) 
            $this->cp["tkt_config_param_id"]->SetValue($this->tkt_config_param_id->GetValue(true));
        if (!is_null($this->cp["tkt_config_param_value"]->GetValue()) and !strlen($this->cp["tkt_config_param_value"]->GetText()) and !is_bool($this->cp["tkt_config_param_value"]->GetValue())) 
            $this->cp["tkt_config_param_value"]->SetValue($this->tkt_config_param_value->GetValue(true));
        if (!is_null($this->cp["tkt_config_pos_id"]->GetValue()) and !strlen($this->cp["tkt_config_pos_id"]->GetText()) and !is_bool($this->cp["tkt_config_pos_id"]->GetValue())) 
            $this->cp["tkt_config_pos_id"]->SetValue($this->tkt_config_pos_id->GetValue(true));
        $this->InsertFields["tkt_config_param_id"]["Value"] = $this->cp["tkt_config_param_id"]->GetDBValue(true);
        $this->InsertFields["tkt_config_param_value"]["Value"] = $this->cp["tkt_config_param_value"]->GetDBValue(true);
        $this->InsertFields["tkt_config_pos_id"]["Value"] = $this->cp["tkt_config_pos_id"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_configuration", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @48-F62EE7D7
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_config_param_id"] = new clsSQLParameter("ctrlh_tkt_config_param_id", ccsText, "", "", $this->h_tkt_config_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_config_param_value"] = new clsSQLParameter("ctrltkt_config_param_value", ccsText, "", "", $this->tkt_config_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_config_pos_id"] = new clsSQLParameter("ctrltkt_config_pos_id", ccsText, "", "", $this->tkt_config_pos_id->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urltkt_catalog_code", ccsText, "", "", CCGetFromGet("tkt_catalog_code", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "urltkt_config_param_id", ccsText, "", "", CCGetFromGet("tkt_config_param_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_config_param_id"]->GetValue()) and !strlen($this->cp["tkt_config_param_id"]->GetText()) and !is_bool($this->cp["tkt_config_param_id"]->GetValue())) 
            $this->cp["tkt_config_param_id"]->SetValue($this->h_tkt_config_param_id->GetValue(true));
        if (!is_null($this->cp["tkt_config_param_value"]->GetValue()) and !strlen($this->cp["tkt_config_param_value"]->GetText()) and !is_bool($this->cp["tkt_config_param_value"]->GetValue())) 
            $this->cp["tkt_config_param_value"]->SetValue($this->tkt_config_param_value->GetValue(true));
        if (!is_null($this->cp["tkt_config_pos_id"]->GetValue()) and !strlen($this->cp["tkt_config_pos_id"]->GetText()) and !is_bool($this->cp["tkt_config_pos_id"]->GetValue())) 
            $this->cp["tkt_config_pos_id"]->SetValue($this->tkt_config_pos_id->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_config_pos_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_config_param_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $Where = $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]);
        $this->UpdateFields["tkt_config_param_id"]["Value"] = $this->cp["tkt_config_param_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_config_param_value"]["Value"] = $this->cp["tkt_config_param_value"]->GetDBValue(true);
        $this->UpdateFields["tkt_config_pos_id"]["Value"] = $this->cp["tkt_config_pos_id"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_configuration", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @48-69DE9A34
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urltkt_catalog_code", ccsText, "", "", CCGetFromGet("tkt_catalog_code", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "urltkt_config_param_id", ccsText, "", "", CCGetFromGet("tkt_config_param_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_config_pos_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_config_param_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $Where = $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]);
        $this->SQL = "DELETE FROM ssf_tkt_configuration";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_configuration1DataSource Class @48-FCB6E20C

//Initialize Page @1-2DEEAE9E
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
$TemplateFileName = "SSFTicketPOS.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-6A553A80
include("./SSFTicketPOS_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CD22F260
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_catalog = new clsGridssf_tkt_catalog("", $MainPage);
$ssf_tkt_catalog1 = new clsRecordssf_tkt_catalog1("", $MainPage);
$ssf_tkt_configuration = new clsGridssf_tkt_configuration("", $MainPage);
$ssf_tkt_configuration1 = new clsRecordssf_tkt_configuration1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_catalog = & $ssf_tkt_catalog;
$MainPage->ssf_tkt_catalog1 = & $ssf_tkt_catalog1;
$MainPage->ssf_tkt_configuration = & $ssf_tkt_configuration;
$MainPage->ssf_tkt_configuration1 = & $ssf_tkt_configuration1;
$ssf_tkt_catalog->Initialize();
$ssf_tkt_catalog1->Initialize();
$ssf_tkt_configuration->Initialize();
$ssf_tkt_configuration1->Initialize();

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

//Execute Components @1-A2FB27CB
$SSFSpiritHeader->Operations();
$ssf_tkt_catalog1->Operation();
$ssf_tkt_configuration1->Operation();
//End Execute Components

//Go to destination page @1-CA2C7E37
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_catalog);
    unset($ssf_tkt_catalog1);
    unset($ssf_tkt_configuration);
    unset($ssf_tkt_configuration1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A8245886
$SSFSpiritHeader->Show();
$ssf_tkt_catalog->Show();
$ssf_tkt_catalog1->Show();
$ssf_tkt_configuration->Show();
$ssf_tkt_configuration1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-A6AD62E2
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_catalog);
unset($ssf_tkt_catalog1);
unset($ssf_tkt_configuration);
unset($ssf_tkt_configuration1);
unset($Tpl);
//End Unload Page


?>
