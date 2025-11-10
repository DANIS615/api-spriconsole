<?php
//Include Common Files @1-09213265
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Tax/");
define("FileName", "SSFTicketTaxGroup.php");
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

//Class_Initialize Event @3-8DBC57D7
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
        $this->tkt_catalog_code->Page = "SSFTicketTaxGroup.php";
        $this->tkt_catalog_value = new clsControl(ccsLabel, "tkt_catalog_value", "tkt_catalog_value", ccsText, "", CCGetRequestParam("tkt_catalog_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_catalog_code = new clsSorter($this->ComponentName, "Sorter_tkt_catalog_code", $FileName, $this);
        $this->Sorter_tkt_catalog_value = new clsSorter($this->ComponentName, "Sorter_tkt_catalog_value", $FileName, $this);
        $this->ssf_tkt_catalog_Insert = new clsControl(ccsLink, "ssf_tkt_catalog_Insert", "ssf_tkt_catalog_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_catalog_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_catalog_Insert->Page = "SSFTicketTaxGroup.php";
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

//Prepare Method @3-7E78EE9A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "tkt_catalog_id = 'tax_group_id'";
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

//Operation Method @16-82BF663B
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
        $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_catalog_code", "ssf_tkt_catalog_Insert", "ssf_tkt_taxes_group_Insert", "tkt_tax_tax_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_catalog_code", "ssf_tkt_catalog_Insert", "ssf_tkt_taxes_group_Insert", "tkt_tax_tax_id"));
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

//Prepare Method @16-A21548A6
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("2", "urltkt_catalog_code", ccsText, "", "", $this->Parameters["urltkt_catalog_code"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = "tkt_catalog_id = 'tax_group_id'";
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

class clsGridssf_tkt_taxes_group { //ssf_tkt_taxes_group class @83-28902EE4

//Variables @83-C8D1EED3

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
    public $Sorter_tkt_tax_tax_id;
    public $Sorter_tkt_tax_order;
//End Variables

//Class_Initialize Event @83-AB4ED896
    function clsGridssf_tkt_taxes_group($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_taxes_group";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_taxes_group";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_taxes_groupDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_taxes_groupOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_taxes_groupDir", "");

        $this->tkt_tax_tax_id = new clsControl(ccsLink, "tkt_tax_tax_id", "tkt_tax_tax_id", ccsText, "", CCGetRequestParam("tkt_tax_tax_id", ccsGet, NULL), $this);
        $this->tkt_tax_tax_id->Page = "SSFTicketTaxGroup.php";
        $this->tkt_tax_order = new clsControl(ccsLabel, "tkt_tax_order", "tkt_tax_order", ccsInteger, "", CCGetRequestParam("tkt_tax_order", ccsGet, NULL), $this);
        $this->Sorter_tkt_tax_tax_id = new clsSorter($this->ComponentName, "Sorter_tkt_tax_tax_id", $FileName, $this);
        $this->Sorter_tkt_tax_order = new clsSorter($this->ComponentName, "Sorter_tkt_tax_order", $FileName, $this);
        $this->ssf_tkt_taxes_group_Insert = new clsControl(ccsLink, "ssf_tkt_taxes_group_Insert", "ssf_tkt_taxes_group_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_taxes_group_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_taxes_group_Insert->Page = "SSFTicketTaxGroup.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @83-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @83-F2D533B1
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
            $this->ControlsVisible["tkt_tax_tax_id"] = $this->tkt_tax_tax_id->Visible;
            $this->ControlsVisible["tkt_tax_order"] = $this->tkt_tax_order->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_tax_tax_id->SetValue($this->DataSource->tkt_tax_tax_id->GetValue());
                $this->tkt_tax_tax_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_tax_tax_id->Parameters = CCAddParam($this->tkt_tax_tax_id->Parameters, "tkt_tax_tax_id", $this->DataSource->f("tkt_tax_tax_id"));
                $this->tkt_tax_order->SetValue($this->DataSource->tkt_tax_order->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_tax_tax_id->Show();
                $this->tkt_tax_order->Show();
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
        $this->ssf_tkt_taxes_group_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_tax_tax_id", "ccsForm"));
        $this->ssf_tkt_taxes_group_Insert->Parameters = CCAddParam($this->ssf_tkt_taxes_group_Insert->Parameters, "ssf_tkt_taxes_group_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_tax_tax_id->Show();
        $this->Sorter_tkt_tax_order->Show();
        $this->ssf_tkt_taxes_group_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @83-CE76BCB8
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_tax_tax_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_tax_order->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_taxes_group Class @83-FCB6E20C

class clsssf_tkt_taxes_groupDataSource extends clsDBConnection1 {  //ssf_tkt_taxes_groupDataSource Class @83-9C730B4D

//DataSource Variables @83-0D24F4F7
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_tax_tax_id;
    public $tkt_tax_order;
//End DataSource Variables

//DataSourceClass_Initialize Event @83-AF0029FC
    function clsssf_tkt_taxes_groupDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_taxes_group";
        $this->Initialize();
        $this->tkt_tax_tax_id = new clsField("tkt_tax_tax_id", ccsText, "");
        $this->tkt_tax_order = new clsField("tkt_tax_order", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @83-C0EFB23E
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_tax_order";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_tax_tax_id" => array("tkt_tax_tax_id", ""), 
            "Sorter_tkt_tax_order" => array("tkt_tax_order", "")));
    }
//End SetOrder Method

//Prepare Method @83-C0B77D9F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_catalog_code", ccsText, "", "", $this->Parameters["urltkt_catalog_code"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_tax_group_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @83-97B1EDCD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_taxes_group";
        $this->SQL = "SELECT tkt_tax_group_id, tkt_tax_tax_id, tkt_tax_order \n\n" .
        "FROM ssf_tkt_taxes_group {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @83-25CBF494
    function SetValues()
    {
        $this->tkt_tax_tax_id->SetDBValue($this->f("tkt_tax_tax_id"));
        $this->tkt_tax_order->SetDBValue(trim($this->f("tkt_tax_order")));
    }
//End SetValues Method

} //End ssf_tkt_taxes_groupDataSource Class @83-FCB6E20C

class clsRecordssf_tkt_taxes_group1 { //ssf_tkt_taxes_group1 Class @96-92962D06

//Variables @96-9E315808

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

//Class_Initialize Event @96-51842207
    function clsRecordssf_tkt_taxes_group1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_taxes_group1/Error";
        $this->DataSource = new clsssf_tkt_taxes_group1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_taxes_group1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_tax_tax_id = new clsControl(ccsTextBox, "tkt_tax_tax_id", $CCSLocales->GetText("tkt_tax_tax_id"), ccsText, "", CCGetRequestParam("tkt_tax_tax_id", $Method, NULL), $this);
            $this->tkt_tax_tax_id->Required = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopTaxList.php";
            $this->tkt_tax_order = new clsControl(ccsTextBox, "tkt_tax_order", $CCSLocales->GetText("tkt_tax_order"), ccsInteger, "", CCGetRequestParam("tkt_tax_order", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_tax_group_id = new clsControl(ccsHidden, "tkt_tax_group_id", $CCSLocales->GetText("tkt_tax_group_id"), ccsText, "", CCGetRequestParam("tkt_tax_group_id", $Method, NULL), $this);
            $this->tkt_tax_group_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @96-733CBA9E
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_tax_tax_id"] = CCGetFromGet("tkt_tax_tax_id", NULL);
    }
//End Initialize Method

//Validate Method @96-F3A2FCB6
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_tax_tax_id->Validate() && $Validation);
        $Validation = ($this->tkt_tax_order->Validate() && $Validation);
        $Validation = ($this->tkt_tax_group_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_tax_tax_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_order->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_tax_group_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @96-34EF92FD
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_tax_tax_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->tkt_tax_order->Errors->Count());
        $errors = ($errors || $this->tkt_tax_group_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @96-4A0F1EB5
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
        $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_taxes_group_Insert", "tkt_tax_tax_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketTaxGroup.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_taxes_group_Insert", "tkt_tax_tax_id"));
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

//InsertRow Method @96-FFCBC232
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_tax_tax_id->SetValue($this->tkt_tax_tax_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_tax_order->SetValue($this->tkt_tax_order->GetValue(true));
        $this->DataSource->tkt_tax_group_id->SetValue($this->tkt_tax_group_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @96-ECE5EA71
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_tax_tax_id->SetValue($this->tkt_tax_tax_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_tax_order->SetValue($this->tkt_tax_order->GetValue(true));
        $this->DataSource->tkt_tax_group_id->SetValue($this->tkt_tax_group_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @96-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @96-3F760C5E
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
                    $this->tkt_tax_tax_id->SetValue($this->DataSource->tkt_tax_tax_id->GetValue());
                    $this->tkt_tax_order->SetValue($this->DataSource->tkt_tax_order->GetValue());
                    $this->tkt_tax_group_id->SetValue($this->DataSource->tkt_tax_group_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_tax_tax_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_order->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_tax_group_id->Errors->ToString());
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

        $this->tkt_tax_tax_id->Show();
        $this->Link1->Show();
        $this->tkt_tax_order->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_tax_group_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_taxes_group1 Class @96-FCB6E20C

class clsssf_tkt_taxes_group1DataSource extends clsDBConnection1 {  //ssf_tkt_taxes_group1DataSource Class @96-F5B337F1

//DataSource Variables @96-2094D4E2
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
    public $tkt_tax_tax_id;
    public $Link1;
    public $tkt_tax_order;
    public $tkt_tax_group_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @96-0C0A3AC1
    function clsssf_tkt_taxes_group1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_taxes_group1/Error";
        $this->Initialize();
        $this->tkt_tax_tax_id = new clsField("tkt_tax_tax_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->tkt_tax_order = new clsField("tkt_tax_order", ccsInteger, "");
        $this->tkt_tax_group_id = new clsField("tkt_tax_group_id", ccsText, "");

        $this->InsertFields["tkt_tax_tax_id"] = array("Name" => "tkt_tax_tax_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_tax_order"] = array("Name" => "tkt_tax_order", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_tax_group_id"] = array("Name" => "tkt_tax_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_tax_id"] = array("Name" => "tkt_tax_tax_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_tax_order"] = array("Name" => "tkt_tax_order", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_tax_group_id"] = array("Name" => "tkt_tax_group_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @96-F34C4AC1
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_tax_tax_id", ccsText, "", "", $this->Parameters["urltkt_tax_tax_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_tax_tax_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @96-E7904F1B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_taxes_group {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @96-0FB3B381
    function SetValues()
    {
        $this->tkt_tax_tax_id->SetDBValue($this->f("tkt_tax_tax_id"));
        $this->tkt_tax_order->SetDBValue(trim($this->f("tkt_tax_order")));
        $this->tkt_tax_group_id->SetDBValue($this->f("tkt_tax_group_id"));
    }
//End SetValues Method

//Insert Method @96-C15D4C85
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_tax_tax_id"]["Value"] = $this->tkt_tax_tax_id->GetDBValue(true);
        $this->InsertFields["tkt_tax_order"]["Value"] = $this->tkt_tax_order->GetDBValue(true);
        $this->InsertFields["tkt_tax_group_id"]["Value"] = $this->tkt_tax_group_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_taxes_group", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @96-157B48F7
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_tax_tax_id"]["Value"] = $this->tkt_tax_tax_id->GetDBValue(true);
        $this->UpdateFields["tkt_tax_order"]["Value"] = $this->tkt_tax_order->GetDBValue(true);
        $this->UpdateFields["tkt_tax_group_id"]["Value"] = $this->tkt_tax_group_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_taxes_group", $this->UpdateFields, $this);
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

//Delete Method @96-20F2C10C
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_taxes_group";
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

} //End ssf_tkt_taxes_group1DataSource Class @96-FCB6E20C

//Initialize Page @1-A7F76049
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
$TemplateFileName = "SSFTicketTaxGroup.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-D77785FA
include("./SSFTicketTaxGroup_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-12CB252E
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_catalog = new clsGridssf_tkt_catalog("", $MainPage);
$ssf_tkt_catalog1 = new clsRecordssf_tkt_catalog1("", $MainPage);
$ssf_tkt_taxes_group = new clsGridssf_tkt_taxes_group("", $MainPage);
$ssf_tkt_taxes_group1 = new clsRecordssf_tkt_taxes_group1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_catalog = & $ssf_tkt_catalog;
$MainPage->ssf_tkt_catalog1 = & $ssf_tkt_catalog1;
$MainPage->ssf_tkt_taxes_group = & $ssf_tkt_taxes_group;
$MainPage->ssf_tkt_taxes_group1 = & $ssf_tkt_taxes_group1;
$ssf_tkt_catalog->Initialize();
$ssf_tkt_catalog1->Initialize();
$ssf_tkt_taxes_group->Initialize();
$ssf_tkt_taxes_group1->Initialize();

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

//Execute Components @1-7EAA135A
$SSFSpiritHeader->Operations();
$ssf_tkt_catalog1->Operation();
$ssf_tkt_taxes_group1->Operation();
//End Execute Components

//Go to destination page @1-37EADA25
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_catalog);
    unset($ssf_tkt_catalog1);
    unset($ssf_tkt_taxes_group);
    unset($ssf_tkt_taxes_group1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-1FD05ED8
$SSFSpiritHeader->Show();
$ssf_tkt_catalog->Show();
$ssf_tkt_catalog1->Show();
$ssf_tkt_taxes_group->Show();
$ssf_tkt_taxes_group1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-F237F9C2
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_catalog);
unset($ssf_tkt_catalog1);
unset($ssf_tkt_taxes_group);
unset($ssf_tkt_taxes_group1);
unset($Tpl);
//End Unload Page


?>
