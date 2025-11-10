<?php
//Include Common Files @1-70744106
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Products/");
define("FileName", "SSFTicketPriceList.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_price_list_header { //ssf_tkt_price_list_header class @3-0E7FF830

//Variables @3-E5476516

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
    public $Sorter_tkt_list_id;
    public $Sorter_tkt_list_description;
    public $Sorter_tkt_list_active;
//End Variables

//Class_Initialize Event @3-86B95A84
    function clsGridssf_tkt_price_list_header($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_price_list_header";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_price_list_header";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_price_list_headerDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_price_list_headerOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_price_list_headerDir", "");

        $this->tkt_list_id = new clsControl(ccsLink, "tkt_list_id", "tkt_list_id", ccsInteger, "", CCGetRequestParam("tkt_list_id", ccsGet, NULL), $this);
        $this->tkt_list_id->Page = "SSFTicketPriceList.php";
        $this->tkt_list_description = new clsControl(ccsLabel, "tkt_list_description", "tkt_list_description", ccsText, "", CCGetRequestParam("tkt_list_description", ccsGet, NULL), $this);
        $this->tkt_list_active = new clsControl(ccsLabel, "tkt_list_active", "tkt_list_active", ccsText, "", CCGetRequestParam("tkt_list_active", ccsGet, NULL), $this);
        $this->Sorter_tkt_list_id = new clsSorter($this->ComponentName, "Sorter_tkt_list_id", $FileName, $this);
        $this->Sorter_tkt_list_description = new clsSorter($this->ComponentName, "Sorter_tkt_list_description", $FileName, $this);
        $this->Sorter_tkt_list_active = new clsSorter($this->ComponentName, "Sorter_tkt_list_active", $FileName, $this);
        $this->ssf_tkt_price_list_Insert = new clsControl(ccsLink, "ssf_tkt_price_list_Insert", "ssf_tkt_price_list_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_price_list_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_price_list_Insert->Page = "SSFTicketPriceList.php";
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

//Show Method @3-3637C6E4
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
            $this->ControlsVisible["tkt_list_id"] = $this->tkt_list_id->Visible;
            $this->ControlsVisible["tkt_list_description"] = $this->tkt_list_description->Visible;
            $this->ControlsVisible["tkt_list_active"] = $this->tkt_list_active->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_list_id->SetValue($this->DataSource->tkt_list_id->GetValue());
                $this->tkt_list_id->Parameters = CCGetQueryString("QueryString", array("ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq", "ccsForm"));
                $this->tkt_list_id->Parameters = CCAddParam($this->tkt_list_id->Parameters, "tkt_list_id", $this->DataSource->f("tkt_list_id"));
                $this->tkt_list_description->SetValue($this->DataSource->tkt_list_description->GetValue());
                $this->tkt_list_active->SetValue($this->DataSource->tkt_list_active->GetValue());
                $this->Attributes->SetValue("stylenotactive", "");
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_list_id->Show();
                $this->tkt_list_description->Show();
                $this->tkt_list_active->Show();
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
        $this->ssf_tkt_price_list_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_list_id", "ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq", "ccsForm"));
        $this->ssf_tkt_price_list_Insert->Parameters = CCAddParam($this->ssf_tkt_price_list_Insert->Parameters, "ssf_tkt_price_list_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_list_id->Show();
        $this->Sorter_tkt_list_description->Show();
        $this->Sorter_tkt_list_active->Show();
        $this->ssf_tkt_price_list_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-DC15EE65
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_list_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_list_description->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_list_active->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_price_list_header Class @3-FCB6E20C

class clsssf_tkt_price_list_headerDataSource extends clsDBConnection1 {  //ssf_tkt_price_list_headerDataSource Class @3-AB1B50D8

//DataSource Variables @3-88669A67
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_list_id;
    public $tkt_list_description;
    public $tkt_list_active;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-991C064D
    function clsssf_tkt_price_list_headerDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_price_list_header";
        $this->Initialize();
        $this->tkt_list_id = new clsField("tkt_list_id", ccsInteger, "");
        $this->tkt_list_description = new clsField("tkt_list_description", ccsText, "");
        $this->tkt_list_active = new clsField("tkt_list_active", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-61200A9C
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tkt_list_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_list_id" => array("tkt_list_id", ""), 
            "Sorter_tkt_list_description" => array("tkt_list_description", ""), 
            "Sorter_tkt_list_active" => array("tkt_list_active", "")));
    }
//End SetOrder Method

//Prepare Method @3-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @3-2A58F5FD
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_price_list_header";
        $this->SQL = "SELECT tkt_list_id, tkt_list_description, tkt_list_active \n\n" .
        "FROM ssf_tkt_price_list_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-CFAA898C
    function SetValues()
    {
        $this->tkt_list_id->SetDBValue(trim($this->f("tkt_list_id")));
        $this->tkt_list_description->SetDBValue($this->f("tkt_list_description"));
        $this->tkt_list_active->SetDBValue($this->f("tkt_list_active"));
    }
//End SetValues Method

} //End ssf_tkt_price_list_headerDataSource Class @3-FCB6E20C

class clsRecordssf_tkt_price_list_header1 { //ssf_tkt_price_list_header1 Class @16-B4751706

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

//Class_Initialize Event @16-A7AB5BA2
    function clsRecordssf_tkt_price_list_header1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_price_list_header1/Error";
        $this->DataSource = new clsssf_tkt_price_list_header1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_price_list_header1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_list_description = new clsControl(ccsTextBox, "tkt_list_description", $CCSLocales->GetText("tkt_list_description"), ccsText, "", CCGetRequestParam("tkt_list_description", $Method, NULL), $this);
            $this->tkt_list_active = new clsControl(ccsListBox, "tkt_list_active", $CCSLocales->GetText("tkt_list_active"), ccsText, "", CCGetRequestParam("tkt_list_active", $Method, NULL), $this);
            $this->tkt_list_active->DSType = dsListOfValues;
            $this->tkt_list_active->Values = array(array("Y", $CCSLocales->GetText("ssf_yes")), array("N", $CCSLocales->GetText("ssf_no")));
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->tkt_list_id = new clsControl(ccsHidden, "tkt_list_id", $CCSLocales->GetText("tkt_list_id"), ccsInteger, "", CCGetRequestParam("tkt_list_id", $Method, NULL), $this);
            $this->tkt_list_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @16-1A48A863
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_list_id"] = CCGetFromGet("tkt_list_id", NULL);
    }
//End Initialize Method

//Validate Method @16-813BF1BC
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_list_description->Validate() && $Validation);
        $Validation = ($this->tkt_list_active->Validate() && $Validation);
        $Validation = ($this->tkt_list_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_list_description->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_active->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @16-E444ACD7
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_list_description->Errors->Count());
        $errors = ($errors || $this->tkt_list_active->Errors->Count());
        $errors = ($errors || $this->tkt_list_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @16-DA763A4E
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_list_id", "ssf_tkt_price_list_Insert", "ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "tkt_list_id", "ssf_tkt_price_list_Insert", " ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq"));
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

//InsertRow Method @16-907EDAF7
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_list_description->SetValue($this->tkt_list_description->GetValue(true));
        $this->DataSource->tkt_list_active->SetValue($this->tkt_list_active->GetValue(true));
        $this->DataSource->tkt_list_id->SetValue($this->tkt_list_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @16-4797491C
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_list_description->SetValue($this->tkt_list_description->GetValue(true));
        $this->DataSource->tkt_list_active->SetValue($this->tkt_list_active->GetValue(true));
        $this->DataSource->tkt_list_id->SetValue($this->tkt_list_id->GetValue(true));
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

//Show Method @16-0E849FCC
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_list_active->Prepare();

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
                    $this->tkt_list_description->SetValue($this->DataSource->tkt_list_description->GetValue());
                    $this->tkt_list_active->SetValue($this->DataSource->tkt_list_active->GetValue());
                    $this->tkt_list_id->SetValue($this->DataSource->tkt_list_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_list_description->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_active->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_id->Errors->ToString());
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

        $this->tkt_list_description->Show();
        $this->tkt_list_active->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->tkt_list_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_price_list_header1 Class @16-FCB6E20C

class clsssf_tkt_price_list_header1DataSource extends clsDBConnection1 {  //ssf_tkt_price_list_header1DataSource Class @16-75E13861

//DataSource Variables @16-83E99232
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
    public $tkt_list_description;
    public $tkt_list_active;
    public $tkt_list_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @16-E8E16963
    function clsssf_tkt_price_list_header1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_price_list_header1/Error";
        $this->Initialize();
        $this->tkt_list_description = new clsField("tkt_list_description", ccsText, "");
        $this->tkt_list_active = new clsField("tkt_list_active", ccsText, "");
        $this->tkt_list_id = new clsField("tkt_list_id", ccsInteger, "");

        $this->InsertFields["tkt_list_description"] = array("Name" => "tkt_list_description", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_active"] = array("Name" => "tkt_list_active", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_id"] = array("Name" => "tkt_list_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_list_description"] = array("Name" => "tkt_list_description", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_active"] = array("Name" => "tkt_list_active", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_id"] = array("Name" => "tkt_list_id", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @16-C2A9D85E
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_list_id", ccsInteger, "", "", $this->Parameters["urltkt_list_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_list_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @16-B1BD94FB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_price_list_header {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @16-A91F8AA9
    function SetValues()
    {
        $this->tkt_list_description->SetDBValue($this->f("tkt_list_description"));
        $this->tkt_list_active->SetDBValue($this->f("tkt_list_active"));
        $this->tkt_list_id->SetDBValue(trim($this->f("tkt_list_id")));
    }
//End SetValues Method

//Insert Method @16-598C206D
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_list_description"]["Value"] = $this->tkt_list_description->GetDBValue(true);
        $this->InsertFields["tkt_list_active"]["Value"] = $this->tkt_list_active->GetDBValue(true);
        $this->InsertFields["tkt_list_id"]["Value"] = $this->tkt_list_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_price_list_header", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @16-53010860
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_list_description"]["Value"] = $this->tkt_list_description->GetDBValue(true);
        $this->UpdateFields["tkt_list_active"]["Value"] = $this->tkt_list_active->GetDBValue(true);
        $this->UpdateFields["tkt_list_id"]["Value"] = $this->tkt_list_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_price_list_header", $this->UpdateFields, $this);
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

//Delete Method @16-8F9B1CB2
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_price_list_header";
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

} //End ssf_tkt_price_list_header1DataSource Class @16-FCB6E20C

class clsGridssf_tkt_plu_ssf_tkt_price { //ssf_tkt_plu_ssf_tkt_price class @35-D243BDD4

//Variables @35-51BE8351

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
    public $Sorter_tkt_list_det_plu;
    public $Sorter_tkt_plu_long_desc;
    public $Sorter_tkt_list_det_type;
    public $Sorter_tkt_list_det_value;
//End Variables

//Class_Initialize Event @35-1E954161
    function clsGridssf_tkt_plu_ssf_tkt_price($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_plu_ssf_tkt_price";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_plu_ssf_tkt_price";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_plu_ssf_tkt_priceDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_plu_ssf_tkt_priceOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_plu_ssf_tkt_priceDir", "");

        $this->tkt_list_det_plu = new clsControl(ccsLink, "tkt_list_det_plu", "tkt_list_det_plu", ccsText, "", CCGetRequestParam("tkt_list_det_plu", ccsGet, NULL), $this);
        $this->tkt_list_det_plu->Page = "SSFTicketPriceList.php";
        $this->tkt_plu_long_desc = new clsControl(ccsLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", CCGetRequestParam("tkt_plu_long_desc", ccsGet, NULL), $this);
        $this->tkt_list_det_type = new clsControl(ccsLabel, "tkt_list_det_type", "tkt_list_det_type", ccsText, "", CCGetRequestParam("tkt_list_det_type", ccsGet, NULL), $this);
        $this->tkt_list_det_value = new clsControl(ccsLabel, "tkt_list_det_value", "tkt_list_det_value", ccsFloat, array(False, 2, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("tkt_list_det_value", ccsGet, NULL), $this);
        $this->Sorter_tkt_list_det_plu = new clsSorter($this->ComponentName, "Sorter_tkt_list_det_plu", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->Sorter_tkt_list_det_type = new clsSorter($this->ComponentName, "Sorter_tkt_list_det_type", $FileName, $this);
        $this->Sorter_tkt_list_det_value = new clsSorter($this->ComponentName, "Sorter_tkt_list_det_value", $FileName, $this);
        $this->ssf_tkt_price_det_Insert = new clsControl(ccsLink, "ssf_tkt_price_det_Insert", "ssf_tkt_price_det_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_price_det_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_price_det_Insert->Page = "SSFTicketPriceList.php";
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

//Show Method @35-37A2C852
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urltkt_list_id"] = CCGetFromGet("tkt_list_id", NULL);

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
            $this->ControlsVisible["tkt_list_det_plu"] = $this->tkt_list_det_plu->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            $this->ControlsVisible["tkt_list_det_type"] = $this->tkt_list_det_type->Visible;
            $this->ControlsVisible["tkt_list_det_value"] = $this->tkt_list_det_value->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tkt_list_det_plu->SetValue($this->DataSource->tkt_list_det_plu->GetValue());
                $this->tkt_list_det_plu->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tkt_list_det_plu->Parameters = CCAddParam($this->tkt_list_det_plu->Parameters, "tkt_list_det_seq", $this->DataSource->f("tkt_list_det_seq"));
                $this->tkt_list_det_plu->Parameters = CCAddParam($this->tkt_list_det_plu->Parameters, "tkt_list_det_plu", $this->DataSource->f("tkt_list_det_plu"));
                $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                $this->tkt_list_det_type->SetValue($this->DataSource->tkt_list_det_type->GetValue());
                $this->tkt_list_det_value->SetValue($this->DataSource->tkt_list_det_value->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tkt_list_det_plu->Show();
                $this->tkt_plu_long_desc->Show();
                $this->tkt_list_det_type->Show();
                $this->tkt_list_det_value->Show();
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
        $this->ssf_tkt_price_det_Insert->Parameters = CCGetQueryString("QueryString", array("tkt_list_det_plu", "tkt_list_det_seq", "ccsForm"));
        $this->ssf_tkt_price_det_Insert->Parameters = CCAddParam($this->ssf_tkt_price_det_Insert->Parameters, "ssf_tkt_price_det_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_tkt_list_det_plu->Show();
        $this->Sorter_tkt_plu_long_desc->Show();
        $this->Sorter_tkt_list_det_type->Show();
        $this->Sorter_tkt_list_det_value->Show();
        $this->ssf_tkt_price_det_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @35-F7575655
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tkt_list_det_plu->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_list_det_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_list_det_value->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_plu_ssf_tkt_price Class @35-FCB6E20C

class clsssf_tkt_plu_ssf_tkt_priceDataSource extends clsDBConnection1 {  //ssf_tkt_plu_ssf_tkt_priceDataSource Class @35-712976CF

//DataSource Variables @35-9C617307
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tkt_list_det_plu;
    public $tkt_plu_long_desc;
    public $tkt_list_det_type;
    public $tkt_list_det_value;
//End DataSource Variables

//DataSourceClass_Initialize Event @35-F7F78AA5
    function clsssf_tkt_plu_ssf_tkt_priceDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_plu_ssf_tkt_price";
        $this->Initialize();
        $this->tkt_list_det_plu = new clsField("tkt_list_det_plu", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");
        $this->tkt_list_det_type = new clsField("tkt_list_det_type", ccsText, "");
        $this->tkt_list_det_value = new clsField("tkt_list_det_value", ccsFloat, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @35-DE873A98
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_tkt_price_list_detail.tkt_list_det_id, ssf_tkt_price_list_detail.tkt_list_det_plu";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tkt_list_det_plu" => array("tkt_list_det_plu", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", ""), 
            "Sorter_tkt_list_det_type" => array("tkt_list_det_type", ""), 
            "Sorter_tkt_list_det_value" => array("tkt_list_det_value", "")));
    }
//End SetOrder Method

//Prepare Method @35-96D0925B
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_list_id", ccsInteger, "", "", $this->Parameters["urltkt_list_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_tkt_price_list_detail.tkt_list_det_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @35-0C0B6E90
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_price_list_detail INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_price_list_detail.tkt_list_det_plu = ssf_tkt_plu.tkt_plu_id";
        $this->SQL = "SELECT ssf_tkt_price_list_detail.*, tkt_plu_long_desc \n\n" .
        "FROM ssf_tkt_price_list_detail INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_tkt_price_list_detail.tkt_list_det_plu = ssf_tkt_plu.tkt_plu_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @35-87F8CC29
    function SetValues()
    {
        $this->tkt_list_det_plu->SetDBValue($this->f("tkt_list_det_plu"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
        $this->tkt_list_det_type->SetDBValue($this->f("tkt_list_det_type"));
        $this->tkt_list_det_value->SetDBValue(trim($this->f("tkt_list_det_value")));
    }
//End SetValues Method

} //End ssf_tkt_plu_ssf_tkt_priceDataSource Class @35-FCB6E20C

class clsRecordssf_tkt_price_list_detail { //ssf_tkt_price_list_detail Class @53-62EFAD20

//Variables @53-9E315808

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

//Class_Initialize Event @53-52FFF98B
    function clsRecordssf_tkt_price_list_detail($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_price_list_detail/Error";
        $this->DataSource = new clsssf_tkt_price_list_detailDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_price_list_detail";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->tkt_list_det_plu = new clsControl(ccsTextBox, "tkt_list_det_plu", $CCSLocales->GetText("tkt_list_det_plu"), ccsText, "", CCGetRequestParam("tkt_list_det_plu", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../SSFPopProductsList.php";
            $this->tkt_list_det_date_from = new clsControl(ccsTextBox, "tkt_list_det_date_from", $CCSLocales->GetText("tkt_list_det_date_from"), ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_list_det_date_from", $Method, NULL), $this);
            $this->DatePicker_tkt_list_det_date_from1 = new clsDatePicker("DatePicker_tkt_list_det_date_from1", "ssf_tkt_price_list_detail", "tkt_list_det_date_from", $this);
            $this->tkt_list_det_date_to = new clsControl(ccsTextBox, "tkt_list_det_date_to", $CCSLocales->GetText("tkt_list_det_date_to"), ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("tkt_list_det_date_to", $Method, NULL), $this);
            $this->DatePicker_tkt_list_det_date_to1 = new clsDatePicker("DatePicker_tkt_list_det_date_to1", "ssf_tkt_price_list_detail", "tkt_list_det_date_to", $this);
            $this->tkt_list_det_time_from = new clsControl(ccsTextBox, "tkt_list_det_time_from", $CCSLocales->GetText("tkt_list_det_time_from"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_list_det_time_from", $Method, NULL), $this);
            $this->tkt_list_det_time_to = new clsControl(ccsTextBox, "tkt_list_det_time_to", $CCSLocales->GetText("tkt_list_det_time_to"), ccsDate, array("HH", ":", "nn", ":", "ss"), CCGetRequestParam("tkt_list_det_time_to", $Method, NULL), $this);
            $this->tkt_list_det_type = new clsControl(ccsListBox, "tkt_list_det_type", $CCSLocales->GetText("tkt_list_det_type"), ccsText, "", CCGetRequestParam("tkt_list_det_type", $Method, NULL), $this);
            $this->tkt_list_det_type->DSType = dsListOfValues;
            $this->tkt_list_det_type->Values = array(array("F", $CCSLocales->GetText("fixed")), array("P", $CCSLocales->GetText("ssf_percentual")), array("N", $CCSLocales->GetText("ssf_newprice")));
            $this->CheckBox1 = new clsControl(ccsCheckBox, "CheckBox1", "CheckBox1", ccsText, "", CCGetRequestParam("CheckBox1", $Method, NULL), $this);
            $this->CheckBox1->CheckedValue = $this->CheckBox1->GetParsedValue("Y");
            $this->CheckBox1->UncheckedValue = $this->CheckBox1->GetParsedValue("N");
            $this->tkt_list_det_value = new clsControl(ccsTextBox, "tkt_list_det_value", $CCSLocales->GetText("tkt_list_det_value"), ccsFloat, "", CCGetRequestParam("tkt_list_det_value", $Method, NULL), $this);
            $this->lblMonday = new clsControl(ccsLabel, "lblMonday", "lblMonday", ccsText, "", CCGetRequestParam("lblMonday", $Method, NULL), $this);
            $this->lblTuesday = new clsControl(ccsLabel, "lblTuesday", "lblTuesday", ccsText, "", CCGetRequestParam("lblTuesday", $Method, NULL), $this);
            $this->lblWednesday = new clsControl(ccsLabel, "lblWednesday", "lblWednesday", ccsText, "", CCGetRequestParam("lblWednesday", $Method, NULL), $this);
            $this->lblThursday = new clsControl(ccsLabel, "lblThursday", "lblThursday", ccsText, "", CCGetRequestParam("lblThursday", $Method, NULL), $this);
            $this->lblFriday = new clsControl(ccsLabel, "lblFriday", "lblFriday", ccsText, "", CCGetRequestParam("lblFriday", $Method, NULL), $this);
            $this->lblSaturday = new clsControl(ccsLabel, "lblSaturday", "lblSaturday", ccsText, "", CCGetRequestParam("lblSaturday", $Method, NULL), $this);
            $this->lblSunday = new clsControl(ccsLabel, "lblSunday", "lblSunday", ccsText, "", CCGetRequestParam("lblSunday", $Method, NULL), $this);
            $this->tkt_list_det_on_mon = new clsControl(ccsCheckBox, "tkt_list_det_on_mon", $CCSLocales->GetText("tkt_list_det_on_mon"), ccsText, "", CCGetRequestParam("tkt_list_det_on_mon", $Method, NULL), $this);
            $this->tkt_list_det_on_mon->CheckedValue = $this->tkt_list_det_on_mon->GetParsedValue("Y");
            $this->tkt_list_det_on_mon->UncheckedValue = $this->tkt_list_det_on_mon->GetParsedValue("N");
            $this->tkt_list_det_on_tue = new clsControl(ccsCheckBox, "tkt_list_det_on_tue", $CCSLocales->GetText("tkt_list_det_on_tue"), ccsText, "", CCGetRequestParam("tkt_list_det_on_tue", $Method, NULL), $this);
            $this->tkt_list_det_on_tue->CheckedValue = $this->tkt_list_det_on_tue->GetParsedValue("Y");
            $this->tkt_list_det_on_tue->UncheckedValue = $this->tkt_list_det_on_tue->GetParsedValue("N");
            $this->tkt_list_det_on_wed = new clsControl(ccsCheckBox, "tkt_list_det_on_wed", $CCSLocales->GetText("tkt_list_det_on_wed"), ccsText, "", CCGetRequestParam("tkt_list_det_on_wed", $Method, NULL), $this);
            $this->tkt_list_det_on_wed->CheckedValue = $this->tkt_list_det_on_wed->GetParsedValue("Y");
            $this->tkt_list_det_on_wed->UncheckedValue = $this->tkt_list_det_on_wed->GetParsedValue("N");
            $this->tkt_list_det_on_thu = new clsControl(ccsCheckBox, "tkt_list_det_on_thu", $CCSLocales->GetText("tkt_list_det_on_thu"), ccsText, "", CCGetRequestParam("tkt_list_det_on_thu", $Method, NULL), $this);
            $this->tkt_list_det_on_thu->CheckedValue = $this->tkt_list_det_on_thu->GetParsedValue("Y");
            $this->tkt_list_det_on_thu->UncheckedValue = $this->tkt_list_det_on_thu->GetParsedValue("N");
            $this->tkt_list_det_on_fri = new clsControl(ccsCheckBox, "tkt_list_det_on_fri", $CCSLocales->GetText("tkt_list_det_on_fri"), ccsText, "", CCGetRequestParam("tkt_list_det_on_fri", $Method, NULL), $this);
            $this->tkt_list_det_on_fri->CheckedValue = $this->tkt_list_det_on_fri->GetParsedValue("Y");
            $this->tkt_list_det_on_fri->UncheckedValue = $this->tkt_list_det_on_fri->GetParsedValue("N");
            $this->tkt_list_det_on_sat = new clsControl(ccsCheckBox, "tkt_list_det_on_sat", $CCSLocales->GetText("tkt_list_det_on_sat"), ccsText, "", CCGetRequestParam("tkt_list_det_on_sat", $Method, NULL), $this);
            $this->tkt_list_det_on_sat->CheckedValue = $this->tkt_list_det_on_sat->GetParsedValue("Y");
            $this->tkt_list_det_on_sat->UncheckedValue = $this->tkt_list_det_on_sat->GetParsedValue("N");
            $this->tkt_list_det_on_sun = new clsControl(ccsCheckBox, "tkt_list_det_on_sun", $CCSLocales->GetText("tkt_list_det_on_sun"), ccsText, "", CCGetRequestParam("tkt_list_det_on_sun", $Method, NULL), $this);
            $this->tkt_list_det_on_sun->CheckedValue = $this->tkt_list_det_on_sun->GetParsedValue("Y");
            $this->tkt_list_det_on_sun->UncheckedValue = $this->tkt_list_det_on_sun->GetParsedValue("N");
            $this->tkt_list_det_id = new clsControl(ccsHidden, "tkt_list_det_id", $CCSLocales->GetText("tkt_list_det_id"), ccsInteger, "", CCGetRequestParam("tkt_list_det_id", $Method, NULL), $this);
            $this->tkt_list_det_id->Required = true;
            $this->tkt_list_det_seq = new clsControl(ccsHidden, "tkt_list_det_seq", $CCSLocales->GetText("tkt_list_det_seq"), ccsInteger, "", CCGetRequestParam("tkt_list_det_seq", $Method, NULL), $this);
            $this->tkt_list_det_seq->Required = true;
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->CheckBox1->Value) && !strlen($this->CheckBox1->Value) && $this->CheckBox1->Value !== false)
                    $this->CheckBox1->SetValue(false);
                if(!is_array($this->tkt_list_det_on_mon->Value) && !strlen($this->tkt_list_det_on_mon->Value) && $this->tkt_list_det_on_mon->Value !== false)
                    $this->tkt_list_det_on_mon->SetValue(true);
                if(!is_array($this->tkt_list_det_on_tue->Value) && !strlen($this->tkt_list_det_on_tue->Value) && $this->tkt_list_det_on_tue->Value !== false)
                    $this->tkt_list_det_on_tue->SetValue(true);
                if(!is_array($this->tkt_list_det_on_wed->Value) && !strlen($this->tkt_list_det_on_wed->Value) && $this->tkt_list_det_on_wed->Value !== false)
                    $this->tkt_list_det_on_wed->SetValue(true);
                if(!is_array($this->tkt_list_det_on_thu->Value) && !strlen($this->tkt_list_det_on_thu->Value) && $this->tkt_list_det_on_thu->Value !== false)
                    $this->tkt_list_det_on_thu->SetValue(true);
                if(!is_array($this->tkt_list_det_on_fri->Value) && !strlen($this->tkt_list_det_on_fri->Value) && $this->tkt_list_det_on_fri->Value !== false)
                    $this->tkt_list_det_on_fri->SetValue(true);
                if(!is_array($this->tkt_list_det_on_sat->Value) && !strlen($this->tkt_list_det_on_sat->Value) && $this->tkt_list_det_on_sat->Value !== false)
                    $this->tkt_list_det_on_sat->SetValue(true);
                if(!is_array($this->tkt_list_det_on_sun->Value) && !strlen($this->tkt_list_det_on_sun->Value) && $this->tkt_list_det_on_sun->Value !== false)
                    $this->tkt_list_det_on_sun->SetValue(true);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @53-FD240ECC
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_list_id"] = CCGetFromGet("tkt_list_id", NULL);
        $this->DataSource->Parameters["urltkt_list_det_seq"] = CCGetFromGet("tkt_list_det_seq", NULL);
        $this->DataSource->Parameters["urltkt_list_det_plu"] = CCGetFromGet("tkt_list_det_plu", NULL);
    }
//End Initialize Method

//Validate Method @53-24377286
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->tkt_list_det_plu->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_date_from->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_date_to->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_time_from->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_time_to->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_type->Validate() && $Validation);
        $Validation = ($this->CheckBox1->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_value->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_mon->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_tue->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_wed->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_thu->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_fri->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_sat->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_on_sun->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_id->Validate() && $Validation);
        $Validation = ($this->tkt_list_det_seq->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->tkt_list_det_plu->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_date_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_date_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_time_from->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_time_to->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->CheckBox1->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_mon->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_tue->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_wed->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_thu->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_fri->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_sat->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_on_sun->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_list_det_seq->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @53-29859486
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->tkt_list_det_plu->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_date_from->Errors->Count());
        $errors = ($errors || $this->DatePicker_tkt_list_det_date_from1->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_date_to->Errors->Count());
        $errors = ($errors || $this->DatePicker_tkt_list_det_date_to1->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_time_from->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_time_to->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_type->Errors->Count());
        $errors = ($errors || $this->CheckBox1->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_value->Errors->Count());
        $errors = ($errors || $this->lblMonday->Errors->Count());
        $errors = ($errors || $this->lblTuesday->Errors->Count());
        $errors = ($errors || $this->lblWednesday->Errors->Count());
        $errors = ($errors || $this->lblThursday->Errors->Count());
        $errors = ($errors || $this->lblFriday->Errors->Count());
        $errors = ($errors || $this->lblSaturday->Errors->Count());
        $errors = ($errors || $this->lblSunday->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_mon->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_tue->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_wed->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_thu->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_fri->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_sat->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_on_sun->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_id->Errors->Count());
        $errors = ($errors || $this->tkt_list_det_seq->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @53-954E5F9D
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_tkt_price_det_Insert", "tkt_list_det_plu", "tkt_list_det_seq"));
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

//InsertRow Method @53-43D31476
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->tkt_list_det_plu->SetValue($this->tkt_list_det_plu->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_list_det_date_from->SetValue($this->tkt_list_det_date_from->GetValue(true));
        $this->DataSource->tkt_list_det_date_to->SetValue($this->tkt_list_det_date_to->GetValue(true));
        $this->DataSource->tkt_list_det_time_from->SetValue($this->tkt_list_det_time_from->GetValue(true));
        $this->DataSource->tkt_list_det_time_to->SetValue($this->tkt_list_det_time_to->GetValue(true));
        $this->DataSource->tkt_list_det_type->SetValue($this->tkt_list_det_type->GetValue(true));
        $this->DataSource->CheckBox1->SetValue($this->CheckBox1->GetValue(true));
        $this->DataSource->tkt_list_det_value->SetValue($this->tkt_list_det_value->GetValue(true));
        $this->DataSource->lblMonday->SetValue($this->lblMonday->GetValue(true));
        $this->DataSource->lblTuesday->SetValue($this->lblTuesday->GetValue(true));
        $this->DataSource->lblWednesday->SetValue($this->lblWednesday->GetValue(true));
        $this->DataSource->lblThursday->SetValue($this->lblThursday->GetValue(true));
        $this->DataSource->lblFriday->SetValue($this->lblFriday->GetValue(true));
        $this->DataSource->lblSaturday->SetValue($this->lblSaturday->GetValue(true));
        $this->DataSource->lblSunday->SetValue($this->lblSunday->GetValue(true));
        $this->DataSource->tkt_list_det_on_mon->SetValue($this->tkt_list_det_on_mon->GetValue(true));
        $this->DataSource->tkt_list_det_on_tue->SetValue($this->tkt_list_det_on_tue->GetValue(true));
        $this->DataSource->tkt_list_det_on_wed->SetValue($this->tkt_list_det_on_wed->GetValue(true));
        $this->DataSource->tkt_list_det_on_thu->SetValue($this->tkt_list_det_on_thu->GetValue(true));
        $this->DataSource->tkt_list_det_on_fri->SetValue($this->tkt_list_det_on_fri->GetValue(true));
        $this->DataSource->tkt_list_det_on_sat->SetValue($this->tkt_list_det_on_sat->GetValue(true));
        $this->DataSource->tkt_list_det_on_sun->SetValue($this->tkt_list_det_on_sun->GetValue(true));
        $this->DataSource->tkt_list_det_id->SetValue($this->tkt_list_det_id->GetValue(true));
        $this->DataSource->tkt_list_det_seq->SetValue($this->tkt_list_det_seq->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @53-15B66917
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->tkt_list_det_plu->SetValue($this->tkt_list_det_plu->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->tkt_list_det_date_from->SetValue($this->tkt_list_det_date_from->GetValue(true));
        $this->DataSource->tkt_list_det_date_to->SetValue($this->tkt_list_det_date_to->GetValue(true));
        $this->DataSource->tkt_list_det_time_from->SetValue($this->tkt_list_det_time_from->GetValue(true));
        $this->DataSource->tkt_list_det_time_to->SetValue($this->tkt_list_det_time_to->GetValue(true));
        $this->DataSource->tkt_list_det_type->SetValue($this->tkt_list_det_type->GetValue(true));
        $this->DataSource->CheckBox1->SetValue($this->CheckBox1->GetValue(true));
        $this->DataSource->tkt_list_det_value->SetValue($this->tkt_list_det_value->GetValue(true));
        $this->DataSource->lblMonday->SetValue($this->lblMonday->GetValue(true));
        $this->DataSource->lblTuesday->SetValue($this->lblTuesday->GetValue(true));
        $this->DataSource->lblWednesday->SetValue($this->lblWednesday->GetValue(true));
        $this->DataSource->lblThursday->SetValue($this->lblThursday->GetValue(true));
        $this->DataSource->lblFriday->SetValue($this->lblFriday->GetValue(true));
        $this->DataSource->lblSaturday->SetValue($this->lblSaturday->GetValue(true));
        $this->DataSource->lblSunday->SetValue($this->lblSunday->GetValue(true));
        $this->DataSource->tkt_list_det_on_mon->SetValue($this->tkt_list_det_on_mon->GetValue(true));
        $this->DataSource->tkt_list_det_on_tue->SetValue($this->tkt_list_det_on_tue->GetValue(true));
        $this->DataSource->tkt_list_det_on_wed->SetValue($this->tkt_list_det_on_wed->GetValue(true));
        $this->DataSource->tkt_list_det_on_thu->SetValue($this->tkt_list_det_on_thu->GetValue(true));
        $this->DataSource->tkt_list_det_on_fri->SetValue($this->tkt_list_det_on_fri->GetValue(true));
        $this->DataSource->tkt_list_det_on_sat->SetValue($this->tkt_list_det_on_sat->GetValue(true));
        $this->DataSource->tkt_list_det_on_sun->SetValue($this->tkt_list_det_on_sun->GetValue(true));
        $this->DataSource->tkt_list_det_id->SetValue($this->tkt_list_det_id->GetValue(true));
        $this->DataSource->tkt_list_det_seq->SetValue($this->tkt_list_det_seq->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @53-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @53-90976C3E
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->tkt_list_det_type->Prepare();

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
                    $this->tkt_list_det_plu->SetValue($this->DataSource->tkt_list_det_plu->GetValue());
                    $this->tkt_list_det_date_from->SetValue($this->DataSource->tkt_list_det_date_from->GetValue());
                    $this->tkt_list_det_date_to->SetValue($this->DataSource->tkt_list_det_date_to->GetValue());
                    $this->tkt_list_det_time_from->SetValue($this->DataSource->tkt_list_det_time_from->GetValue());
                    $this->tkt_list_det_time_to->SetValue($this->DataSource->tkt_list_det_time_to->GetValue());
                    $this->tkt_list_det_type->SetValue($this->DataSource->tkt_list_det_type->GetValue());
                    $this->CheckBox1->SetValue($this->DataSource->CheckBox1->GetValue());
                    $this->tkt_list_det_value->SetValue($this->DataSource->tkt_list_det_value->GetValue());
                    $this->tkt_list_det_on_mon->SetValue($this->DataSource->tkt_list_det_on_mon->GetValue());
                    $this->tkt_list_det_on_tue->SetValue($this->DataSource->tkt_list_det_on_tue->GetValue());
                    $this->tkt_list_det_on_wed->SetValue($this->DataSource->tkt_list_det_on_wed->GetValue());
                    $this->tkt_list_det_on_thu->SetValue($this->DataSource->tkt_list_det_on_thu->GetValue());
                    $this->tkt_list_det_on_fri->SetValue($this->DataSource->tkt_list_det_on_fri->GetValue());
                    $this->tkt_list_det_on_sat->SetValue($this->DataSource->tkt_list_det_on_sat->GetValue());
                    $this->tkt_list_det_on_sun->SetValue($this->DataSource->tkt_list_det_on_sun->GetValue());
                    $this->tkt_list_det_id->SetValue($this->DataSource->tkt_list_det_id->GetValue());
                    $this->tkt_list_det_seq->SetValue($this->DataSource->tkt_list_det_seq->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->tkt_list_det_plu->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_date_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_tkt_list_det_date_from1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_date_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_tkt_list_det_date_to1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_time_from->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_time_to->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->CheckBox1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblMonday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblTuesday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblWednesday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblThursday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblFriday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblSaturday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblSunday->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_mon->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_tue->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_wed->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_thu->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_fri->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_sat->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_on_sun->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_list_det_seq->Errors->ToString());
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

        $this->tkt_list_det_plu->Attributes->SetValue("readonlyparam", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->tkt_list_det_plu->Show();
        $this->Link1->Show();
        $this->tkt_list_det_date_from->Show();
        $this->DatePicker_tkt_list_det_date_from1->Show();
        $this->tkt_list_det_date_to->Show();
        $this->DatePicker_tkt_list_det_date_to1->Show();
        $this->tkt_list_det_time_from->Show();
        $this->tkt_list_det_time_to->Show();
        $this->tkt_list_det_type->Show();
        $this->CheckBox1->Show();
        $this->tkt_list_det_value->Show();
        $this->lblMonday->Show();
        $this->lblTuesday->Show();
        $this->lblWednesday->Show();
        $this->lblThursday->Show();
        $this->lblFriday->Show();
        $this->lblSaturday->Show();
        $this->lblSunday->Show();
        $this->tkt_list_det_on_mon->Show();
        $this->tkt_list_det_on_tue->Show();
        $this->tkt_list_det_on_wed->Show();
        $this->tkt_list_det_on_thu->Show();
        $this->tkt_list_det_on_fri->Show();
        $this->tkt_list_det_on_sat->Show();
        $this->tkt_list_det_on_sun->Show();
        $this->tkt_list_det_id->Show();
        $this->tkt_list_det_seq->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_price_list_detail Class @53-FCB6E20C

class clsssf_tkt_price_list_detailDataSource extends clsDBConnection1 {  //ssf_tkt_price_list_detailDataSource Class @53-8D585618

//DataSource Variables @53-9AC361E0
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
    public $tkt_list_det_plu;
    public $Link1;
    public $tkt_list_det_date_from;
    public $tkt_list_det_date_to;
    public $tkt_list_det_time_from;
    public $tkt_list_det_time_to;
    public $tkt_list_det_type;
    public $CheckBox1;
    public $tkt_list_det_value;
    public $lblMonday;
    public $lblTuesday;
    public $lblWednesday;
    public $lblThursday;
    public $lblFriday;
    public $lblSaturday;
    public $lblSunday;
    public $tkt_list_det_on_mon;
    public $tkt_list_det_on_tue;
    public $tkt_list_det_on_wed;
    public $tkt_list_det_on_thu;
    public $tkt_list_det_on_fri;
    public $tkt_list_det_on_sat;
    public $tkt_list_det_on_sun;
    public $tkt_list_det_id;
    public $tkt_list_det_seq;
//End DataSource Variables

//DataSourceClass_Initialize Event @53-38CBFDB8
    function clsssf_tkt_price_list_detailDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_price_list_detail/Error";
        $this->Initialize();
        $this->tkt_list_det_plu = new clsField("tkt_list_det_plu", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->tkt_list_det_date_from = new clsField("tkt_list_det_date_from", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_list_det_date_to = new clsField("tkt_list_det_date_to", ccsDate, array("yyyy", "mm", "dd"));
        $this->tkt_list_det_time_from = new clsField("tkt_list_det_time_from", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_list_det_time_to = new clsField("tkt_list_det_time_to", ccsDate, array("HH", "nn", "ss"));
        $this->tkt_list_det_type = new clsField("tkt_list_det_type", ccsText, "");
        $this->CheckBox1 = new clsField("CheckBox1", ccsText, "");
        $this->tkt_list_det_value = new clsField("tkt_list_det_value", ccsFloat, "");
        $this->lblMonday = new clsField("lblMonday", ccsText, "");
        $this->lblTuesday = new clsField("lblTuesday", ccsText, "");
        $this->lblWednesday = new clsField("lblWednesday", ccsText, "");
        $this->lblThursday = new clsField("lblThursday", ccsText, "");
        $this->lblFriday = new clsField("lblFriday", ccsText, "");
        $this->lblSaturday = new clsField("lblSaturday", ccsText, "");
        $this->lblSunday = new clsField("lblSunday", ccsText, "");
        $this->tkt_list_det_on_mon = new clsField("tkt_list_det_on_mon", ccsText, "");
        $this->tkt_list_det_on_tue = new clsField("tkt_list_det_on_tue", ccsText, "");
        $this->tkt_list_det_on_wed = new clsField("tkt_list_det_on_wed", ccsText, "");
        $this->tkt_list_det_on_thu = new clsField("tkt_list_det_on_thu", ccsText, "");
        $this->tkt_list_det_on_fri = new clsField("tkt_list_det_on_fri", ccsText, "");
        $this->tkt_list_det_on_sat = new clsField("tkt_list_det_on_sat", ccsText, "");
        $this->tkt_list_det_on_sun = new clsField("tkt_list_det_on_sun", ccsText, "");
        $this->tkt_list_det_id = new clsField("tkt_list_det_id", ccsInteger, "");
        $this->tkt_list_det_seq = new clsField("tkt_list_det_seq", ccsInteger, "");

        $this->InsertFields["tkt_list_det_plu"] = array("Name" => "tkt_list_det_plu", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_date_from"] = array("Name" => "tkt_list_det_date_from", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_list_det_date_to"] = array("Name" => "tkt_list_det_date_to", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_list_det_time_from"] = array("Name" => "tkt_list_det_time_from", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_list_det_time_to"] = array("Name" => "tkt_list_det_time_to", "Value" => "", "DataType" => ccsDate);
        $this->InsertFields["tkt_list_det_type"] = array("Name" => "tkt_list_det_type", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_price_up"] = array("Name" => "tkt_list_det_price_up", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_value"] = array("Name" => "tkt_list_det_value", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tkt_list_det_on_mon"] = array("Name" => "tkt_list_det_on_mon", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_tue"] = array("Name" => "tkt_list_det_on_tue", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_wed"] = array("Name" => "tkt_list_det_on_wed", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_thu"] = array("Name" => "tkt_list_det_on_thu", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_fri"] = array("Name" => "tkt_list_det_on_fri", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_sat"] = array("Name" => "tkt_list_det_on_sat", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_on_sun"] = array("Name" => "tkt_list_det_on_sun", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_list_det_id"] = array("Name" => "tkt_list_det_id", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_list_det_seq"] = array("Name" => "tkt_list_det_seq", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_list_det_plu"] = array("Name" => "tkt_list_det_plu", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_date_from"] = array("Name" => "tkt_list_det_date_from", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_list_det_date_to"] = array("Name" => "tkt_list_det_date_to", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_list_det_time_from"] = array("Name" => "tkt_list_det_time_from", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_list_det_time_to"] = array("Name" => "tkt_list_det_time_to", "Value" => "", "DataType" => ccsDate);
        $this->UpdateFields["tkt_list_det_type"] = array("Name" => "tkt_list_det_type", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_price_up"] = array("Name" => "tkt_list_det_price_up", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_value"] = array("Name" => "tkt_list_det_value", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tkt_list_det_on_mon"] = array("Name" => "tkt_list_det_on_mon", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_tue"] = array("Name" => "tkt_list_det_on_tue", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_wed"] = array("Name" => "tkt_list_det_on_wed", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_thu"] = array("Name" => "tkt_list_det_on_thu", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_fri"] = array("Name" => "tkt_list_det_on_fri", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_sat"] = array("Name" => "tkt_list_det_on_sat", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_on_sun"] = array("Name" => "tkt_list_det_on_sun", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_list_det_id"] = array("Name" => "tkt_list_det_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_list_det_seq"] = array("Name" => "tkt_list_det_seq", "Value" => "", "DataType" => ccsInteger);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @53-C82E7454
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_list_id", ccsInteger, "", "", $this->Parameters["urltkt_list_id"], "", false);
        $this->wp->AddParameter("2", "urltkt_list_det_seq", ccsInteger, "", "", $this->Parameters["urltkt_list_det_seq"], "", false);
        $this->wp->AddParameter("3", "urltkt_list_det_plu", ccsText, "", "", $this->Parameters["urltkt_list_det_plu"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_list_det_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_list_det_seq", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsInteger),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_list_det_plu", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @53-587F8910
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_price_list_detail {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @53-092653EF
    function SetValues()
    {
        $this->tkt_list_det_plu->SetDBValue($this->f("tkt_list_det_plu"));
        $this->tkt_list_det_date_from->SetDBValue(trim($this->f("tkt_list_det_date_from")));
        $this->tkt_list_det_date_to->SetDBValue(trim($this->f("tkt_list_det_date_to")));
        $this->tkt_list_det_time_from->SetDBValue(trim($this->f("tkt_list_det_time_from")));
        $this->tkt_list_det_time_to->SetDBValue(trim($this->f("tkt_list_det_time_to")));
        $this->tkt_list_det_type->SetDBValue($this->f("tkt_list_det_type"));
        $this->CheckBox1->SetDBValue($this->f("tkt_list_det_price_up"));
        $this->tkt_list_det_value->SetDBValue(trim($this->f("tkt_list_det_value")));
        $this->tkt_list_det_on_mon->SetDBValue($this->f("tkt_list_det_on_mon"));
        $this->tkt_list_det_on_tue->SetDBValue($this->f("tkt_list_det_on_tue"));
        $this->tkt_list_det_on_wed->SetDBValue($this->f("tkt_list_det_on_wed"));
        $this->tkt_list_det_on_thu->SetDBValue($this->f("tkt_list_det_on_thu"));
        $this->tkt_list_det_on_fri->SetDBValue($this->f("tkt_list_det_on_fri"));
        $this->tkt_list_det_on_sat->SetDBValue($this->f("tkt_list_det_on_sat"));
        $this->tkt_list_det_on_sun->SetDBValue($this->f("tkt_list_det_on_sun"));
        $this->tkt_list_det_id->SetDBValue(trim($this->f("tkt_list_det_id")));
        $this->tkt_list_det_seq->SetDBValue(trim($this->f("tkt_list_det_seq")));
    }
//End SetValues Method

//Insert Method @53-2C7EC801
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["tkt_list_det_plu"]["Value"] = $this->tkt_list_det_plu->GetDBValue(true);
        $this->InsertFields["tkt_list_det_date_from"]["Value"] = $this->tkt_list_det_date_from->GetDBValue(true);
        $this->InsertFields["tkt_list_det_date_to"]["Value"] = $this->tkt_list_det_date_to->GetDBValue(true);
        $this->InsertFields["tkt_list_det_time_from"]["Value"] = $this->tkt_list_det_time_from->GetDBValue(true);
        $this->InsertFields["tkt_list_det_time_to"]["Value"] = $this->tkt_list_det_time_to->GetDBValue(true);
        $this->InsertFields["tkt_list_det_type"]["Value"] = $this->tkt_list_det_type->GetDBValue(true);
        $this->InsertFields["tkt_list_det_price_up"]["Value"] = $this->CheckBox1->GetDBValue(true);
        $this->InsertFields["tkt_list_det_value"]["Value"] = $this->tkt_list_det_value->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_mon"]["Value"] = $this->tkt_list_det_on_mon->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_tue"]["Value"] = $this->tkt_list_det_on_tue->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_wed"]["Value"] = $this->tkt_list_det_on_wed->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_thu"]["Value"] = $this->tkt_list_det_on_thu->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_fri"]["Value"] = $this->tkt_list_det_on_fri->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_sat"]["Value"] = $this->tkt_list_det_on_sat->GetDBValue(true);
        $this->InsertFields["tkt_list_det_on_sun"]["Value"] = $this->tkt_list_det_on_sun->GetDBValue(true);
        $this->InsertFields["tkt_list_det_id"]["Value"] = $this->tkt_list_det_id->GetDBValue(true);
        $this->InsertFields["tkt_list_det_seq"]["Value"] = $this->tkt_list_det_seq->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_price_list_detail", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @53-22461E4D
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["tkt_list_det_plu"]["Value"] = $this->tkt_list_det_plu->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_date_from"]["Value"] = $this->tkt_list_det_date_from->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_date_to"]["Value"] = $this->tkt_list_det_date_to->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_time_from"]["Value"] = $this->tkt_list_det_time_from->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_time_to"]["Value"] = $this->tkt_list_det_time_to->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_type"]["Value"] = $this->tkt_list_det_type->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_price_up"]["Value"] = $this->CheckBox1->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_value"]["Value"] = $this->tkt_list_det_value->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_mon"]["Value"] = $this->tkt_list_det_on_mon->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_tue"]["Value"] = $this->tkt_list_det_on_tue->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_wed"]["Value"] = $this->tkt_list_det_on_wed->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_thu"]["Value"] = $this->tkt_list_det_on_thu->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_fri"]["Value"] = $this->tkt_list_det_on_fri->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_sat"]["Value"] = $this->tkt_list_det_on_sat->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_on_sun"]["Value"] = $this->tkt_list_det_on_sun->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_id"]["Value"] = $this->tkt_list_det_id->GetDBValue(true);
        $this->UpdateFields["tkt_list_det_seq"]["Value"] = $this->tkt_list_det_seq->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_price_list_detail", $this->UpdateFields, $this);
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

//Delete Method @53-19725C88
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_price_list_detail";
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

} //End ssf_tkt_price_list_detailDataSource Class @53-FCB6E20C

//Initialize Page @1-8FEAB2B9
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
$TemplateFileName = "SSFTicketPriceList.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Include events file @1-5659EEF9
include("./SSFTicketPriceList_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-29D394C7
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_price_list_header = new clsGridssf_tkt_price_list_header("", $MainPage);
$ssf_tkt_price_list_header1 = new clsRecordssf_tkt_price_list_header1("", $MainPage);
$ssf_tkt_plu_ssf_tkt_price = new clsGridssf_tkt_plu_ssf_tkt_price("", $MainPage);
$ssf_tkt_price_list_detail = new clsRecordssf_tkt_price_list_detail("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_price_list_header = & $ssf_tkt_price_list_header;
$MainPage->ssf_tkt_price_list_header1 = & $ssf_tkt_price_list_header1;
$MainPage->ssf_tkt_plu_ssf_tkt_price = & $ssf_tkt_plu_ssf_tkt_price;
$MainPage->ssf_tkt_price_list_detail = & $ssf_tkt_price_list_detail;
$ssf_tkt_price_list_header->Initialize();
$ssf_tkt_price_list_header1->Initialize();
$ssf_tkt_plu_ssf_tkt_price->Initialize();
$ssf_tkt_price_list_detail->Initialize();

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

//Execute Components @1-567FF1FB
$SSFSpiritHeader->Operations();
$ssf_tkt_price_list_header1->Operation();
$ssf_tkt_price_list_detail->Operation();
//End Execute Components

//Go to destination page @1-F71C317B
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_price_list_header);
    unset($ssf_tkt_price_list_header1);
    unset($ssf_tkt_plu_ssf_tkt_price);
    unset($ssf_tkt_price_list_detail);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-AEA3FC6F
$SSFSpiritHeader->Show();
$ssf_tkt_price_list_header->Show();
$ssf_tkt_price_list_header1->Show();
$ssf_tkt_plu_ssf_tkt_price->Show();
$ssf_tkt_price_list_detail->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-95356FD7
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_price_list_header);
unset($ssf_tkt_price_list_header1);
unset($ssf_tkt_plu_ssf_tkt_price);
unset($ssf_tkt_price_list_detail);
unset($Tpl);
//End Unload Page


?>
