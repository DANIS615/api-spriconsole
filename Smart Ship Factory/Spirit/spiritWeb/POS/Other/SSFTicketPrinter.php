<?php
//Include Common Files @1-CDE660F3
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Other/");
define("FileName", "SSFTicketPrinter.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_printers { //ssf_tkt_printers class @3-9C085668

//Variables @3-2443FBD5

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
    public $Sorter_tkt_printer_id;
    public $Sorter_tkt_printer_param_value;
//End Variables

//Class_Initialize Event @3-39243AC1
    function clsGridssf_tkt_printers($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_printers";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_printers";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_printersDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_printersOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_printersDir", "");

        $this->tkt_printer_id = new clsControl(ccsLink, "tkt_printer_id", "tkt_printer_id", ccsText, "", CCGetRequestParam("tkt_printer_id", ccsGet, NULL), $this);
        $this->tkt_printer_id->Page = "SSFTicketPrinter.php";
        $this->tkt_printer_param_value = new clsControl(ccsLabel, "tkt_printer_param_value", "tkt_printer_param_value", ccsText, "", CCGetRequestParam("tkt_printer_param_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_printer_id = new clsSorter($this->ComponentName, "Sorter_tkt_printer_id", $FileName, $this);
        $this->Sorter_tkt_printer_param_value = new clsSorter($this->ComponentName, "Sorter_tkt_printer_param_value", $FileName, $this);
        $this->ssf_tkt_catalog_Insert = new clsControl(ccsLink, "ssf_tkt_catalog_Insert", "ssf_tkt_catalog_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_catalog_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_catalog_Insert->Page = "SSFTicketPrinter.php";
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

//Show Method @3-78878BF7
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
            $this->ControlsVisible["tkt_printer_id"] = $this->tkt_printer_id->Visible;
            $this->ControlsVisible["tkt_printer_param_value"] = $this->tkt_printer_param_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_printer_id->SetValue($this->DataSource->tkt_printer_id->GetValue());
                $this->tkt_printer_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_printer_id->Parameters = CCAddParam($this->tkt_printer_id->Parameters, "tkt_printer_id", $this->DataSource->f("tkt_printer_id"));
                $this->tkt_printer_id->Parameters = CCAddParam($this->tkt_printer_id->Parameters, "tkt_printer_type", $this->DataSource->f("tkt_printer_type"));
                $this->tkt_printer_param_value->SetValue($this->DataSource->tkt_printer_param_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_printer_id->Show();
                $this->tkt_printer_param_value->Show();
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
        $this->ssf_tkt_catalog_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_printer_id", "tkt_printer_type", "tkt_printer_param_id", "ccsForm"));
        $this->ssf_tkt_catalog_Insert->Parameters = CCAddParam($this->ssf_tkt_catalog_Insert->Parameters, "ssf_tkt_catalog_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_printer_id->Show();
        $this->Sorter_tkt_printer_param_value->Show();
        $this->ssf_tkt_catalog_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-AAEF0857
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_printer_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_printer_param_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_printers Class @3-FCB6E20C

class clsssf_tkt_printersDataSource extends clsDBConnection1 {  //ssf_tkt_printersDataSource Class @3-BC76DD21

//DataSource Variables @3-DBBEA3B1
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_printer_id;
    public $tkt_printer_param_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-7652EBC1
    function clsssf_tkt_printersDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_printers";
        $this->Initialize();
        $this->tkt_printer_id = new clsField("tkt_printer_id", ccsText, "");
        $this->tkt_printer_param_value = new clsField("tkt_printer_param_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-893D2826
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_printer_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_printer_id" => array("tkt_printer_id", ""), 
            "Sorter_tkt_printer_param_value" => array("tkt_printer_param_value", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-47435FB2
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT tkt_printer_id, tkt_printer_param_value , (select a.tkt_printer_param_value from ssf_tkt_printers a\n" .
        "where a.tkt_printer_id = ssf_tkt_printers.tkt_printer_id AND a.tkt_printer_param_id = 'PRT_TYPE'  ) as tkt_printer_type\n" .
        "FROM ssf_tkt_printers\n" .
        "WHERE ( tkt_printer_param_id = 'PRT_COMP_ID' )) cnt";
        $this->SQL = "SELECT tkt_printer_id, tkt_printer_param_value , (select a.tkt_printer_param_value from ssf_tkt_printers a\n" .
        "where a.tkt_printer_id = ssf_tkt_printers.tkt_printer_id AND a.tkt_printer_param_id = 'PRT_TYPE'  ) as tkt_printer_type\n" .
        "FROM ssf_tkt_printers\n" .
        "WHERE ( tkt_printer_param_id = 'PRT_COMP_ID' )  {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-C1759C5B
    function SetValues()
    {
        $this->tkt_printer_id->SetDBValue($this->f("tkt_printer_id"));
        $this->tkt_printer_param_value->SetDBValue($this->f("tkt_printer_param_value"));
    }
//End SetValues Method

} //End ssf_tkt_printersDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_printers1 { //ssf_tkt_printers1 Class @15-F6925EB3

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

//Class_Initialize Event @15-527EE34D
    function clsRecordssf_tkt_printers1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_printers1/Error";
        $this->DataSource = new clsssf_tkt_printers1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_printers1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_printer_id = new clsControl(ccsTextBox, "tkt_printer_id", $CCSLocales->GetText("tkt_printer_id"), ccsText, "", CCGetRequestParam("tkt_printer_id", $Method, NULL), $this);
            $this->tkt_printer_id->Required = true;
            $this->h_tkt_printer_param_id = new clsControl(ccsHidden, "h_tkt_printer_param_id", "h_tkt_printer_param_id", ccsText, "", CCGetRequestParam("h_tkt_printer_param_id", $Method, NULL), $this);
            $this->tkt_printer_param_value = new clsControl(ccsTextBox, "tkt_printer_param_value", $CCSLocales->GetText("tkt_printer_param_value"), ccsText, "", CCGetRequestParam("tkt_printer_param_value", $Method, NULL), $this);
            $this->tkt_printer_param_value->Required = true;
            $this->lst_printer_type = new clsControl(ccsListBox, "lst_printer_type", $CCSLocales->GetText("type"), ccsText, "", CCGetRequestParam("lst_printer_type", $Method, NULL), $this);
            $this->lst_printer_type->DSType = dsTable;
            list($this->lst_printer_type->BoundColumn, $this->lst_printer_type->TextColumn, $this->lst_printer_type->DBFormat) = array("", "", "");
            $this->lst_printer_type->DataSource = new clsDBConnection1();
            $this->lst_printer_type->ds = & $this->lst_printer_type->DataSource;
            $this->lst_printer_type->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->lst_printer_type->DataSource->Order = "tkt_catalog_value";
            $this->lst_printer_type->DataSource->wp = new clsSQLParameters();
            $this->lst_printer_type->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'printer_type'";
            $this->lst_printer_type->DataSource->Where = 
                 $this->lst_printer_type->DataSource->wp->Criterion[1];
            $this->lst_printer_type->DataSource->Order = "tkt_catalog_value";
            $this->h_tkt_printer_type = new clsControl(ccsHidden, "h_tkt_printer_type", "h_tkt_printer_type", ccsText, "", CCGetRequestParam("h_tkt_printer_type", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @15-7A855CDB
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_printer_id"] = CCGetFromGet("tkt_printer_id", NULL);
    }
//End Initialize Method

//Validate Method @15-63A0DE82
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_printer_id->Validate() && $Validation);
        $Validation = ($this->h_tkt_printer_param_id->Validate() && $Validation);
        $Validation = ($this->tkt_printer_param_value->Validate() && $Validation);
        $Validation = ($this->lst_printer_type->Validate() && $Validation);
        $Validation = ($this->h_tkt_printer_type->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_printer_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_printer_param_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_printer_param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lst_printer_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_printer_type->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @15-137128C3
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_printer_id->Errors->Count());
        $errors = ($errors || $this->h_tkt_printer_param_id->Errors->Count());
        $errors = ($errors || $this->tkt_printer_param_value->Errors->Count());
        $errors = ($errors || $this->lst_printer_type->Errors->Count());
        $errors = ($errors || $this->h_tkt_printer_type->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @15-67EFDB69
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
        $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_printer_id", "ssf_tkt_catalog_Insert", "tkt_printer_type", "tkt_printer_param_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_printer_id", "ssf_tkt_catalog_Insert", "tkt_printer_type", "tkt_printer_param_id"));
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

//InsertRow Method @15-139BEF98
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_printer_id->SetValue($this->tkt_printer_id->GetValue(true));
        $this->DataSource->h_tkt_printer_param_id->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        $this->DataSource->tkt_printer_param_value->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @15-C1A7049C
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_printer_param_value->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->DataSource->tkt_printer_id->SetValue($this->tkt_printer_id->GetValue(true));
        $this->DataSource->h_tkt_printer_param_id->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @15-30C062D5
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->tkt_printer_id->SetValue($this->tkt_printer_id->GetValue(true));
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @15-A21BA6B7
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->lst_printer_type->Prepare();

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
                    $this->tkt_printer_id->SetValue($this->DataSource->tkt_printer_id->GetValue());
                    $this->h_tkt_printer_param_id->SetValue($this->DataSource->h_tkt_printer_param_id->GetValue());
                    $this->tkt_printer_param_value->SetValue($this->DataSource->tkt_printer_param_value->GetValue());
                    $this->lst_printer_type->SetValue($this->DataSource->lst_printer_type->GetValue());
                    $this->h_tkt_printer_type->SetValue($this->DataSource->h_tkt_printer_type->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_printer_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_printer_param_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_printer_param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lst_printer_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_printer_type->Errors->ToString());
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

        $this->tkt_printer_id->Attributes->SetValue("readonlyparam", "");
        $this->lst_printer_type->Attributes->SetValue("disabledparam", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_printer_id->Show();
        $this->h_tkt_printer_param_id->Show();
        $this->tkt_printer_param_value->Show();
        $this->lst_printer_type->Show();
        $this->h_tkt_printer_type->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_printers1 Class @15-FCB6E20C

class clsssf_tkt_printers1DataSource extends clsDBConnection1 {  //ssf_tkt_printers1DataSource Class @15-B1971F54

//DataSource Variables @15-2C336FEA
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

    // Datasource fields
    public $tkt_printer_id;
    public $h_tkt_printer_param_id;
    public $tkt_printer_param_value;
    public $lst_printer_type;
    public $h_tkt_printer_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @15-14AE4A1B
    function clsssf_tkt_printers1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_printers1/Error";
        $this->Initialize();
        $this->tkt_printer_id = new clsField("tkt_printer_id", ccsText, "");
        $this->h_tkt_printer_param_id = new clsField("h_tkt_printer_param_id", ccsText, "");
        $this->tkt_printer_param_value = new clsField("tkt_printer_param_value", ccsText, "");
        $this->lst_printer_type = new clsField("lst_printer_type", ccsText, "");
        $this->h_tkt_printer_type = new clsField("h_tkt_printer_type", ccsText, "");

        $this->InsertFields["tkt_printer_id"] = array("Name" => "tkt_printer_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_printer_param_id"] = array("Name" => "tkt_printer_param_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_printer_param_value"] = array("Name" => "tkt_printer_param_value", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @15-37BF9153
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_printer_id", ccsText, "", "", $this->Parameters["urltkt_printer_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
    }
//End Prepare Method

//Open Method @15-49B8F1EA
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT tkt_printer_id, tkt_printer_param_id, tkt_printer_param_value, (select a.tkt_printer_param_value from ssf_tkt_printers a\n" .
        "where a.tkt_printer_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "' AND a.tkt_printer_param_id = 'PRT_TYPE'  ) as tkt_printer_type\n" .
        "FROM ssf_tkt_printers\n" .
        "WHERE tkt_printer_id = '" . $this->SQLValue($this->wp->GetDBValue("1"), ccsText) . "'\n" .
        "AND ( tkt_printer_param_id = 'PRT_COMP_ID' ) ";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @15-BF29CD33
    function SetValues()
    {
        $this->tkt_printer_id->SetDBValue($this->f("tkt_printer_id"));
        $this->h_tkt_printer_param_id->SetDBValue($this->f("tkt_printer_param_id"));
        $this->tkt_printer_param_value->SetDBValue($this->f("tkt_printer_param_value"));
        $this->lst_printer_type->SetDBValue($this->f("tkt_printer_type"));
        $this->h_tkt_printer_type->SetDBValue($this->f("tkt_printer_type"));
    }
//End SetValues Method

//Insert Method @15-1DC7FF21
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_printer_id"] = new clsSQLParameter("ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_param_id"] = new clsSQLParameter("ctrlh_tkt_printer_param_id", ccsText, "", "", $this->h_tkt_printer_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_param_value"] = new clsSQLParameter("ctrltkt_printer_param_value", ccsText, "", "", $this->tkt_printer_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_printer_id"]->GetValue()) and !strlen($this->cp["tkt_printer_id"]->GetText()) and !is_bool($this->cp["tkt_printer_id"]->GetValue())) 
            $this->cp["tkt_printer_id"]->SetValue($this->tkt_printer_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_param_id"]->GetValue()) and !strlen($this->cp["tkt_printer_param_id"]->GetText()) and !is_bool($this->cp["tkt_printer_param_id"]->GetValue())) 
            $this->cp["tkt_printer_param_id"]->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_param_value"]->GetValue()) and !strlen($this->cp["tkt_printer_param_value"]->GetText()) and !is_bool($this->cp["tkt_printer_param_value"]->GetValue())) 
            $this->cp["tkt_printer_param_value"]->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->InsertFields["tkt_printer_id"]["Value"] = $this->cp["tkt_printer_id"]->GetDBValue(true);
        $this->InsertFields["tkt_printer_param_id"]["Value"] = $this->cp["tkt_printer_param_id"]->GetDBValue(true);
        $this->InsertFields["tkt_printer_param_value"]["Value"] = $this->cp["tkt_printer_param_value"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_printers", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @15-59A14DAC
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_printer_param_value"] = new clsSQLParameter("ctrltkt_printer_param_value", ccsText, "", "", $this->tkt_printer_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_id"] = new clsSQLParameter("ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["h_tkt_printer_param_id"] = new clsSQLParameter("ctrlh_tkt_printer_param_id", ccsText, "", "", $this->h_tkt_printer_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_printer_param_value"]->GetValue()) and !strlen($this->cp["tkt_printer_param_value"]->GetText()) and !is_bool($this->cp["tkt_printer_param_value"]->GetValue())) 
            $this->cp["tkt_printer_param_value"]->SetValue($this->tkt_printer_param_value->GetValue(true));
        if (!is_null($this->cp["tkt_printer_id"]->GetValue()) and !strlen($this->cp["tkt_printer_id"]->GetText()) and !is_bool($this->cp["tkt_printer_id"]->GetValue())) 
            $this->cp["tkt_printer_id"]->SetValue($this->tkt_printer_id->GetValue(true));
        if (!is_null($this->cp["h_tkt_printer_param_id"]->GetValue()) and !strlen($this->cp["h_tkt_printer_param_id"]->GetText()) and !is_bool($this->cp["h_tkt_printer_param_id"]->GetValue())) 
            $this->cp["h_tkt_printer_param_id"]->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        $this->SQL = "update ssf_tkt_printers \n" .
        "set tkt_printer_param_value = '" . $this->SQLValue($this->cp["tkt_printer_param_value"]->GetDBValue(), ccsText) . "'\n" .
        "where tkt_printer_id = '" . $this->SQLValue($this->cp["tkt_printer_id"]->GetDBValue(), ccsText) . "'\n" .
        "and tkt_printer_param_id = '" . $this->SQLValue($this->cp["h_tkt_printer_param_id"]->GetDBValue(), ccsText) . "'";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @15-B49EDF1B
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_printer_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM ssf_tkt_printers";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_printers1DataSource Class @15-FCB6E20C

class clsGridssf_tkt_configuration { //ssf_tkt_configuration class @52-B2454510

//Variables @52-64AABEF0

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

//Class_Initialize Event @52-612B3602
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
            $this->PageSize = 10;
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

        $this->tkt_printer_param_id = new clsControl(ccsLink, "tkt_printer_param_id", "tkt_printer_param_id", ccsText, "", CCGetRequestParam("tkt_printer_param_id", ccsGet, NULL), $this);
        $this->tkt_printer_param_id->Page = "SSFTicketPrinter.php";
        $this->tkt_printer_param_value = new clsControl(ccsLabel, "tkt_printer_param_value", "tkt_printer_param_value", ccsText, "", CCGetRequestParam("tkt_printer_param_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_config_param_id = new clsSorter($this->ComponentName, "Sorter_tkt_config_param_id", $FileName, $this);
        $this->Sorter_tkt_config_param_value = new clsSorter($this->ComponentName, "Sorter_tkt_config_param_value", $FileName, $this);
        $this->ssf_tkt_configuration_Insert = new clsControl(ccsLink, "ssf_tkt_configuration_Insert", "ssf_tkt_configuration_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_configuration_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_configuration_Insert->Page = "SSFTicketPrinter.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @52-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @52-9B8DB23F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltkt_printer_id"] = CCGetFromGet("tkt_printer_id", NULL);

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
            $this->ControlsVisible["tkt_printer_param_id"] = $this->tkt_printer_param_id->Visible;
            $this->ControlsVisible["tkt_printer_param_value"] = $this->tkt_printer_param_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_printer_param_id->SetValue($this->DataSource->tkt_printer_param_id->GetValue());
                $this->tkt_printer_param_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_printer_param_id->Parameters = CCAddParam($this->tkt_printer_param_id->Parameters, "tkt_printer_param_id", $this->DataSource->f("tkt_printer_param_id"));
                $this->tkt_printer_param_value->SetValue($this->DataSource->tkt_printer_param_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_printer_param_id->Show();
                $this->tkt_printer_param_value->Show();
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
        $this->ssf_tkt_configuration_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_printer_param_id", "ccsForm"));
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

//GetErrors Method @52-8B1D72DC
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_printer_param_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_printer_param_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_configuration Class @52-FCB6E20C

class clsssf_tkt_configurationDataSource extends clsDBConnection1 {  //ssf_tkt_configurationDataSource Class @52-BBF4F9D5

//DataSource Variables @52-9C616AE5
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_printer_param_id;
    public $tkt_printer_param_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @52-BF3D81E7
    function clsssf_tkt_configurationDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_configuration";
        $this->Initialize();
        $this->tkt_printer_param_id = new clsField("tkt_printer_param_id", ccsText, "");
        $this->tkt_printer_param_value = new clsField("tkt_printer_param_value", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @52-3557A9AC
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_printers.tkt_printer_param_value";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_config_param_id" => array("tkt_printer_param_id", ""), 
            "Sorter_tkt_config_param_value" => array("tkt_printer_param_value", "")));
    }
//End SetOrder Method

//Prepare Method @52-D7E29E3E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_printer_id", ccsText, "", "", $this->Parameters["urltkt_printer_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_printers.tkt_printer_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = "ssf_tkt_printers1.tkt_printer_param_id = 'PRT_TYPE'";
        $this->wp->Criterion[3] = "ssf_tkt_catalog.tkt_catalog_id = 'printer_param_config'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @52-C500E886
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (ssf_tkt_printers INNER JOIN ssf_tkt_printers ssf_tkt_printers1 ON\n\n" .
        "ssf_tkt_printers.tkt_printer_id = ssf_tkt_printers1.tkt_printer_id) INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_printers.tkt_printer_param_id = ssf_tkt_catalog.tkt_catalog_value AND ssf_tkt_printers1.tkt_printer_param_value = ssf_tkt_catalog.tkt_catalog_code";
        $this->SQL = "SELECT ssf_tkt_printers.*, tkt_catalog_misc1, ssf_tkt_printers1.tkt_printer_param_value AS tkt_printer_type \n\n" .
        "FROM (ssf_tkt_printers INNER JOIN ssf_tkt_printers ssf_tkt_printers1 ON\n\n" .
        "ssf_tkt_printers.tkt_printer_id = ssf_tkt_printers1.tkt_printer_id) INNER JOIN ssf_tkt_catalog ON\n\n" .
        "ssf_tkt_printers.tkt_printer_param_id = ssf_tkt_catalog.tkt_catalog_value AND ssf_tkt_printers1.tkt_printer_param_value = ssf_tkt_catalog.tkt_catalog_code {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @52-6050DFE0
    function SetValues()
    {
        $this->tkt_printer_param_id->SetDBValue($this->f("tkt_catalog_misc1"));
        $this->tkt_printer_param_value->SetDBValue($this->f("tkt_printer_param_value"));
    }
//End SetValues Method

} //End ssf_tkt_configurationDataSource Class @52-FCB6E20C

class clsRecordssf_tkt_printers2 { //ssf_tkt_printers2 Class @77-DDBF0D70

//Variables @77-9E315808

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

//Class_Initialize Event @77-4FB60741
    function clsRecordssf_tkt_printers2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_printers2/Error";
        $this->DataSource = new clsssf_tkt_printers2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_printers2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_printer_param_id = new clsControl(ccsListBox, "tkt_printer_param_id", $CCSLocales->GetText("tkt_printer_param_id"), ccsText, "", CCGetRequestParam("tkt_printer_param_id", $Method, NULL), $this);
            $this->tkt_printer_param_id->DSType = dsTable;
            list($this->tkt_printer_param_id->BoundColumn, $this->tkt_printer_param_id->TextColumn, $this->tkt_printer_param_id->DBFormat) = array("tkt_catalog_value", "tkt_catalog_misc1", "");
            $this->tkt_printer_param_id->DataSource = new clsDBConnection1();
            $this->tkt_printer_param_id->ds = & $this->tkt_printer_param_id->DataSource;
            $this->tkt_printer_param_id->DataSource->SQL = "SELECT tkt_catalog_value, tkt_catalog_misc1 \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->tkt_printer_param_id->DataSource->Order = "tkt_catalog_misc1";
            $this->tkt_printer_param_id->DataSource->Parameters["urltkt_printer_type"] = CCGetFromGet("tkt_printer_type", NULL);
            $this->tkt_printer_param_id->DataSource->wp = new clsSQLParameters();
            $this->tkt_printer_param_id->DataSource->wp->AddParameter("2", "urltkt_printer_type", ccsText, "", "", $this->tkt_printer_param_id->DataSource->Parameters["urltkt_printer_type"], "", false);
            $this->tkt_printer_param_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'printer_param_config'";
            $this->tkt_printer_param_id->DataSource->wp->Criterion[2] = $this->tkt_printer_param_id->DataSource->wp->Operation(opEqual, "tkt_catalog_code", $this->tkt_printer_param_id->DataSource->wp->GetDBValue("2"), $this->tkt_printer_param_id->DataSource->ToSQL($this->tkt_printer_param_id->DataSource->wp->GetDBValue("2"), ccsText),false);
            $this->tkt_printer_param_id->DataSource->Where = $this->tkt_printer_param_id->DataSource->wp->opAND(
                 false, 
                 $this->tkt_printer_param_id->DataSource->wp->Criterion[1], 
                 $this->tkt_printer_param_id->DataSource->wp->Criterion[2]);
            $this->tkt_printer_param_id->DataSource->Order = "tkt_catalog_misc1";
            $this->h_tkt_printer_param_id = new clsControl(ccsHidden, "h_tkt_printer_param_id", "h_tkt_printer_param_id", ccsText, "", CCGetRequestParam("h_tkt_printer_param_id", $Method, NULL), $this);
            $this->tkt_printer_id = new clsControl(ccsHidden, "tkt_printer_id", $CCSLocales->GetText("tkt_printer_id"), ccsText, "", CCGetRequestParam("tkt_printer_id", $Method, NULL), $this);
            $this->tkt_printer_id->Required = true;
            $this->tkt_printer_param_value = new clsControl(ccsTextBox, "tkt_printer_param_value", $CCSLocales->GetText("tkt_printer_param_value"), ccsText, "", CCGetRequestParam("tkt_printer_param_value", $Method, NULL), $this);
            $this->ListBox1 = new clsControl(ccsListBox, "ListBox1", "ListBox1", ccsText, "", CCGetRequestParam("ListBox1", $Method, NULL), $this);
            $this->ListBox1->DSType = dsListOfValues;
            $this->ListBox1->Values = array(array("", ""));
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @77-4D3B9B6A
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_printer_param_id"] = CCGetFromGet("tkt_printer_param_id", NULL);
        $this->DataSource->Parameters["urltkt_printer_id"] = CCGetFromGet("tkt_printer_id", NULL);
    }
//End Initialize Method

//Validate Method @77-780058B4
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_printer_param_id->Validate() && $Validation);
        $Validation = ($this->h_tkt_printer_param_id->Validate() && $Validation);
        $Validation = ($this->tkt_printer_id->Validate() && $Validation);
        $Validation = ($this->tkt_printer_param_value->Validate() && $Validation);
        $Validation = ($this->ListBox1->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_printer_param_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->h_tkt_printer_param_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_printer_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_printer_param_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ListBox1->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @77-76B7A01E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_printer_param_id->Errors->Count());
        $errors = ($errors || $this->h_tkt_printer_param_id->Errors->Count());
        $errors = ($errors || $this->tkt_printer_id->Errors->Count());
        $errors = ($errors || $this->tkt_printer_param_value->Errors->Count());
        $errors = ($errors || $this->ListBox1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @77-2B3C7292
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
        $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Delete") {
            $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_configuration_Insert", "tkt_printer_param_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete)) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = "SSFTicketPrinter.php" . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_configuration_Insert", "tkt_printer_param_id"));
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

//InsertRow Method @77-65278309
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_printer_param_id->SetValue($this->tkt_printer_param_id->GetValue(true));
        $this->DataSource->tkt_printer_id->SetValue($this->tkt_printer_id->GetValue(true));
        $this->DataSource->tkt_printer_param_value->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @77-D4A3DD82
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_printer_param_id->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        $this->DataSource->tkt_printer_id->SetValue($this->tkt_printer_id->GetValue(true));
        $this->DataSource->tkt_printer_param_value->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//Show Method @77-2DFBF2D8
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_printer_param_id->Prepare();
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
                    $this->tkt_printer_param_id->SetValue($this->DataSource->tkt_printer_param_id->GetValue());
                    $this->h_tkt_printer_param_id->SetValue($this->DataSource->h_tkt_printer_param_id->GetValue());
                    $this->tkt_printer_id->SetValue($this->DataSource->tkt_printer_id->GetValue());
                    $this->tkt_printer_param_value->SetValue($this->DataSource->tkt_printer_param_value->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_printer_param_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->h_tkt_printer_param_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_printer_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_printer_param_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ListBox1->Errors->ToString());
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

        $this->tkt_printer_param_id->Attributes->SetValue("disabledparam", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_printer_param_id->Show();
        $this->h_tkt_printer_param_id->Show();
        $this->tkt_printer_id->Show();
        $this->tkt_printer_param_value->Show();
        $this->ListBox1->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_printers2 Class @77-FCB6E20C

class clsssf_tkt_printers2DataSource extends clsDBConnection1 {  //ssf_tkt_printers2DataSource Class @77-3A44214D

//DataSource Variables @77-75E7ACAE
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $wp;
    public $AllParametersSet;

    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $tkt_printer_param_id;
    public $h_tkt_printer_param_id;
    public $tkt_printer_id;
    public $tkt_printer_param_value;
    public $ListBox1;
//End DataSource Variables

//DataSourceClass_Initialize Event @77-48600160
    function clsssf_tkt_printers2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_printers2/Error";
        $this->Initialize();
        $this->tkt_printer_param_id = new clsField("tkt_printer_param_id", ccsText, "");
        $this->h_tkt_printer_param_id = new clsField("h_tkt_printer_param_id", ccsText, "");
        $this->tkt_printer_id = new clsField("tkt_printer_id", ccsText, "");
        $this->tkt_printer_param_value = new clsField("tkt_printer_param_value", ccsText, "");
        $this->ListBox1 = new clsField("ListBox1", ccsText, "");

        $this->InsertFields["tkt_printer_param_id"] = array("Name" => "tkt_printer_param_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_printer_id"] = array("Name" => "tkt_printer_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_printer_param_value"] = array("Name" => "tkt_printer_param_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_printer_param_id"] = array("Name" => "tkt_printer_param_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_printer_id"] = array("Name" => "tkt_printer_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_printer_param_value"] = array("Name" => "tkt_printer_param_value", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @77-1B7258D3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_printer_param_id", ccsText, "", "", $this->Parameters["urltkt_printer_param_id"], "", false);
        $this->wp->AddParameter("2", "urltkt_printer_id", ccsText, "", "", $this->Parameters["urltkt_printer_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_printer_param_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_printer_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @77-1CEAC714
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_printers {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @77-DFA85066
    function SetValues()
    {
        $this->tkt_printer_param_id->SetDBValue($this->f("tkt_printer_param_id"));
        $this->h_tkt_printer_param_id->SetDBValue($this->f("tkt_printer_param_id"));
        $this->tkt_printer_id->SetDBValue($this->f("tkt_printer_id"));
        $this->tkt_printer_param_value->SetDBValue($this->f("tkt_printer_param_value"));
    }
//End SetValues Method

//Insert Method @77-B6E48D71
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_printer_param_id"] = new clsSQLParameter("ctrltkt_printer_param_id", ccsText, "", "", $this->tkt_printer_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_id"] = new clsSQLParameter("ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_param_value"] = new clsSQLParameter("ctrltkt_printer_param_value", ccsText, "", "", $this->tkt_printer_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_printer_param_id"]->GetValue()) and !strlen($this->cp["tkt_printer_param_id"]->GetText()) and !is_bool($this->cp["tkt_printer_param_id"]->GetValue())) 
            $this->cp["tkt_printer_param_id"]->SetValue($this->tkt_printer_param_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_id"]->GetValue()) and !strlen($this->cp["tkt_printer_id"]->GetText()) and !is_bool($this->cp["tkt_printer_id"]->GetValue())) 
            $this->cp["tkt_printer_id"]->SetValue($this->tkt_printer_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_param_value"]->GetValue()) and !strlen($this->cp["tkt_printer_param_value"]->GetText()) and !is_bool($this->cp["tkt_printer_param_value"]->GetValue())) 
            $this->cp["tkt_printer_param_value"]->SetValue($this->tkt_printer_param_value->GetValue(true));
        $this->InsertFields["tkt_printer_param_id"]["Value"] = $this->cp["tkt_printer_param_id"]->GetDBValue(true);
        $this->InsertFields["tkt_printer_id"]["Value"] = $this->cp["tkt_printer_id"]->GetDBValue(true);
        $this->InsertFields["tkt_printer_param_value"]["Value"] = $this->cp["tkt_printer_param_value"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_printers", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @77-064BF7E3
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_printer_param_id"] = new clsSQLParameter("ctrlh_tkt_printer_param_id", ccsText, "", "", $this->h_tkt_printer_param_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_id"] = new clsSQLParameter("ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_printer_param_value"] = new clsSQLParameter("ctrltkt_printer_param_value", ccsText, "", "", $this->tkt_printer_param_value->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrltkt_printer_id", ccsText, "", "", $this->tkt_printer_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrlh_tkt_printer_param_id", ccsText, "", "", $this->h_tkt_printer_param_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_printer_param_id"]->GetValue()) and !strlen($this->cp["tkt_printer_param_id"]->GetText()) and !is_bool($this->cp["tkt_printer_param_id"]->GetValue())) 
            $this->cp["tkt_printer_param_id"]->SetValue($this->h_tkt_printer_param_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_id"]->GetValue()) and !strlen($this->cp["tkt_printer_id"]->GetText()) and !is_bool($this->cp["tkt_printer_id"]->GetValue())) 
            $this->cp["tkt_printer_id"]->SetValue($this->tkt_printer_id->GetValue(true));
        if (!is_null($this->cp["tkt_printer_param_value"]->GetValue()) and !strlen($this->cp["tkt_printer_param_value"]->GetText()) and !is_bool($this->cp["tkt_printer_param_value"]->GetValue())) 
            $this->cp["tkt_printer_param_value"]->SetValue($this->tkt_printer_param_value->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_printer_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_printer_param_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $Where = $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]);
        $this->UpdateFields["tkt_printer_param_id"]["Value"] = $this->cp["tkt_printer_param_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_printer_id"]["Value"] = $this->cp["tkt_printer_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_printer_param_value"]["Value"] = $this->cp["tkt_printer_param_value"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_printers", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

} //End ssf_tkt_printers2DataSource Class @77-FCB6E20C

//Initialize Page @1-23327CF4
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
$TemplateFileName = "SSFTicketPrinter.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-6E896F67
include("./SSFTicketPrinter_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-E3A4FEAD
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_printers = new clsGridssf_tkt_printers("", $MainPage);
$ssf_tkt_printers1 = new clsRecordssf_tkt_printers1("", $MainPage);
$ssf_tkt_configuration = new clsGridssf_tkt_configuration("", $MainPage);
$ssf_tkt_printers2 = new clsRecordssf_tkt_printers2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_printers = & $ssf_tkt_printers;
$MainPage->ssf_tkt_printers1 = & $ssf_tkt_printers1;
$MainPage->ssf_tkt_configuration = & $ssf_tkt_configuration;
$MainPage->ssf_tkt_printers2 = & $ssf_tkt_printers2;
$ssf_tkt_printers->Initialize();
$ssf_tkt_printers1->Initialize();
$ssf_tkt_configuration->Initialize();
$ssf_tkt_printers2->Initialize();

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

//Execute Components @1-96F435C5
$SSFSpiritHeader->Operations();
$ssf_tkt_printers1->Operation();
$ssf_tkt_printers2->Operation();
//End Execute Components

//Go to destination page @1-35958681
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_printers);
    unset($ssf_tkt_printers1);
    unset($ssf_tkt_configuration);
    unset($ssf_tkt_printers2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C2F7A4D2
$SSFSpiritHeader->Show();
$ssf_tkt_printers->Show();
$ssf_tkt_printers1->Show();
$ssf_tkt_configuration->Show();
$ssf_tkt_printers2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-D716DA33
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_printers);
unset($ssf_tkt_printers1);
unset($ssf_tkt_configuration);
unset($ssf_tkt_printers2);
unset($Tpl);
//End Unload Page


?>
