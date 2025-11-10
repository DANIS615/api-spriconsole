<?php
//Include Common Files @1-A16810A0
define("RelativePath", "../..");
define("PathToCurrentPage", "/Fleet/Configuration/");
define("FileName", "SSFFleetProducts.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordssf_flt_product_profileSearch { //ssf_flt_product_profileSearch Class @6-954EEB07

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

//Class_Initialize Event @6-8686F66D
    function clsRecordssf_flt_product_profileSearch($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_product_profileSearch/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_product_profileSearch";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_pp_profile_id = new clsControl(ccsTextBox, "s_pp_profile_id", "s_pp_profile_id", ccsText, "", CCGetRequestParam("s_pp_profile_id", $Method, NULL), $this);
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @6-BC168904
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_pp_profile_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_pp_profile_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @6-264CE398
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_pp_profile_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @6-4B2DA89B
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
        $Redirect = "SSFFleetProducts.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFFleetProducts.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @6-8FC37120
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
            $Error = ComposeStrings($Error, $this->s_pp_profile_id->Errors->ToString());
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

        $this->s_pp_profile_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End ssf_flt_product_profileSearch Class @6-FCB6E20C

class clsGridssf_flt_product_profile { //ssf_flt_product_profile class @3-919780C8

//Variables @3-6304BF77

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
    public $Sorter_pp_profile_id;
//End Variables

//Class_Initialize Event @3-3666A20D
    function clsGridssf_flt_product_profile($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_product_profile";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_product_profile";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_product_profileDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_product_profileOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_product_profileDir", "");

        $this->pp_profile_id = new clsControl(ccsLink, "pp_profile_id", "pp_profile_id", ccsText, "", CCGetRequestParam("pp_profile_id", ccsGet, NULL), $this);
        $this->pp_profile_id->Page = "SSFFleetProducts.php";
        $this->Sorter_pp_profile_id = new clsSorter($this->ComponentName, "Sorter_pp_profile_id", $FileName, $this);
        $this->ssf_flt_profile_Insert = new clsControl(ccsLink, "ssf_flt_profile_Insert", "ssf_flt_profile_Insert", ccsText, "", CCGetRequestParam("ssf_flt_profile_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_profile_Insert->Page = "SSFFleetProducts.php";
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

//Show Method @3-2D859A79
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_pp_profile_id"] = CCGetFromGet("s_pp_profile_id", NULL);

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
            $this->ControlsVisible["pp_profile_id"] = $this->pp_profile_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pp_profile_id->SetValue($this->DataSource->pp_profile_id->GetValue());
                $this->pp_profile_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->pp_profile_id->Parameters = CCAddParam($this->pp_profile_id->Parameters, "pp_profile_id", $this->DataSource->f("pp_profile_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pp_profile_id->Show();
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
        $this->ssf_flt_profile_Insert->Parameters = CCGetQueryString("QueryString", array("pp_profile_id", "pp_tkt_plu_id", "ccsForm"));
        $this->ssf_flt_profile_Insert->Parameters = CCAddParam($this->ssf_flt_profile_Insert->Parameters, "ssf_flt_profile_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_pp_profile_id->Show();
        $this->ssf_flt_profile_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-14C998AE
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pp_profile_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_product_profile Class @3-FCB6E20C

class clsssf_flt_product_profileDataSource extends clsDBConnection1 {  //ssf_flt_product_profileDataSource Class @3-45432D1A

//DataSource Variables @3-A9D10183
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pp_profile_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-46D8E003
    function clsssf_flt_product_profileDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_product_profile";
        $this->Initialize();
        $this->pp_profile_id = new clsField("pp_profile_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-718B544F
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pp_profile_id" => array("pp_profile_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-CE835B8A
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_pp_profile_id", ccsText, "", "", $this->Parameters["urls_pp_profile_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opContains, "pp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @3-F6CB24B0
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(DISTINCT( pp_profile_id)) \n\n" .
        "FROM ssf_flt_product_profile";
        $this->SQL = "SELECT pp_profile_id \n\n" .
        "FROM ssf_flt_product_profile {SQL_Where}\n\n" .
        "GROUP BY pp_profile_id {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-26EC8CB5
    function SetValues()
    {
        $this->pp_profile_id->SetDBValue($this->f("pp_profile_id"));
    }
//End SetValues Method

} //End ssf_flt_product_profileDataSource Class @3-FCB6E20C

class clsRecordssf_flt_product_profile1 { //ssf_flt_product_profile1 Class @16-5CD917B2

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

//Class_Initialize Event @16-68BBBA0D
    function clsRecordssf_flt_product_profile1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_product_profile1/Error";
        $this->DataSource = new clsssf_flt_product_profile1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_product_profile1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->pp_profile_id = new clsControl(ccsTextBox, "pp_profile_id", $CCSLocales->GetText("pp_profile_id"), ccsText, "", CCGetRequestParam("pp_profile_id", $Method, NULL), $this);
            $this->pp_profile_id->Required = true;
            $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", $Method, NULL), $this);
            $this->pp_tkt_plu_id = new clsControl(ccsTextBox, "pp_tkt_plu_id", "pp_tkt_plu_id", ccsText, "", CCGetRequestParam("pp_tkt_plu_id", $Method, NULL), $this);
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopProductsList.php";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @16-CC1CAF71
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlpp_profile_id"] = CCGetFromGet("pp_profile_id", NULL);
    }
//End Initialize Method

//Validate Method @16-9B1A17BF
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->pp_profile_id->Validate() && $Validation);
        $Validation = ($this->pp_tkt_plu_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->pp_profile_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pp_tkt_plu_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @16-DF7A5346
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->pp_profile_id->Errors->Count());
        $errors = ($errors || $this->Label1->Errors->Count());
        $errors = ($errors || $this->pp_tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @16-C127416D
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile_Insert", "pp_profile_id", "pp_tkt_plu_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile_Insert", "pp_profile_id", "pp_tkt_plu_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
                $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile_Insert"));
                if(!CCGetEvent($this->Button_Insert->CCSEvents, "OnClick", $this->Button_Insert) || !$this->InsertRow()) {
                    $Redirect = "";
                }
            } else if($this->PressedButton == "Button_Update") {
                $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile_Insert", "pp_profile_id"));
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

//InsertRow Method @16-69D4BC2D
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->pp_profile_id->SetValue($this->pp_profile_id->GetValue(true));
        $this->DataSource->Label1->SetValue($this->Label1->GetValue(true));
        $this->DataSource->pp_tkt_plu_id->SetValue($this->pp_tkt_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @16-086CDBF9
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->pp_profile_id->SetValue($this->pp_profile_id->GetValue(true));
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

//Show Method @16-CD910419
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
                    $this->pp_profile_id->SetValue($this->DataSource->pp_profile_id->GetValue());
                    $this->pp_tkt_plu_id->SetValue($this->DataSource->pp_tkt_plu_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->pp_profile_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Label1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pp_tkt_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
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

        $this->pp_profile_id->Show();
        $this->Label1->Show();
        $this->pp_tkt_plu_id->Show();
        $this->Link1->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_product_profile1 Class @16-FCB6E20C

class clsssf_flt_product_profile1DataSource extends clsDBConnection1 {  //ssf_flt_product_profile1DataSource Class @16-0065C380

//DataSource Variables @16-53FC6E58
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
    public $pp_profile_id;
    public $Label1;
    public $pp_tkt_plu_id;
    public $Link1;
//End DataSource Variables

//DataSourceClass_Initialize Event @16-D4F33CD6
    function clsssf_flt_product_profile1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_product_profile1/Error";
        $this->Initialize();
        $this->pp_profile_id = new clsField("pp_profile_id", ccsText, "");
        $this->Label1 = new clsField("Label1", ccsText, "");
        $this->pp_tkt_plu_id = new clsField("pp_tkt_plu_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");

        $this->InsertFields["pp_profile_id"] = array("Name" => "pp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pp_tkt_plu_id"] = array("Name" => "pp_tkt_plu_id", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["pp_profile_id"] = array("Name" => "pp_profile_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @16-B943A61F
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpp_profile_id", ccsText, "", "", $this->Parameters["urlpp_profile_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "pp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @16-EBC19574
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT pp_profile_id, pp_tkt_plu_id \n\n" .
        "FROM ssf_flt_product_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @16-37BF7335
    function SetValues()
    {
        $this->pp_profile_id->SetDBValue($this->f("pp_profile_id"));
        $this->pp_tkt_plu_id->SetDBValue($this->f("pp_tkt_plu_id"));
    }
//End SetValues Method

//Insert Method @16-9E73D7C9
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["pp_profile_id"]["Value"] = $this->pp_profile_id->GetDBValue(true);
        $this->InsertFields["pp_tkt_plu_id"]["Value"] = $this->pp_tkt_plu_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_product_profile", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @16-84E95C02
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["pp_profile_id"] = new clsSQLParameter("ctrlpp_profile_id", ccsText, "", "", $this->pp_profile_id->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urlpp_profile_id", ccsText, "", "", CCGetFromGet("pp_profile_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["pp_profile_id"]->GetValue()) and !strlen($this->cp["pp_profile_id"]->GetText()) and !is_bool($this->cp["pp_profile_id"]->GetValue())) 
            $this->cp["pp_profile_id"]->SetValue($this->pp_profile_id->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "pp_profile_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->UpdateFields["pp_profile_id"]["Value"] = $this->cp["pp_profile_id"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_product_profile", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @16-197C2C7A
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "urlpp_profile_id", ccsText, "", "", CCGetFromGet("pp_profile_id", NULL), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "pp_profile_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $Where = 
             $wp->Criterion[1];
        $this->SQL = "DELETE FROM ssf_flt_product_profile";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_flt_product_profile1DataSource Class @16-FCB6E20C

class clsGridssf_flt_product_profile_s { //ssf_flt_product_profile_s class @42-53C331B3

//Variables @42-18864783

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
    public $Sorter_pp_tkt_plu_id;
    public $Sorter_tkt_plu_long_desc;
//End Variables

//Class_Initialize Event @42-F667F7C2
    function clsGridssf_flt_product_profile_s($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_flt_product_profile_s";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_flt_product_profile_s";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_flt_product_profile_sDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_flt_product_profile_sOrder", "");
        $this->SorterDirection = CCGetParam("ssf_flt_product_profile_sDir", "");

        $this->pp_tkt_plu_id = new clsControl(ccsLink, "pp_tkt_plu_id", "pp_tkt_plu_id", ccsText, "", CCGetRequestParam("pp_tkt_plu_id", ccsGet, NULL), $this);
        $this->pp_tkt_plu_id->Page = "SSFFleetProducts.php";
        $this->tkt_plu_long_desc = new clsControl(ccsLabel, "tkt_plu_long_desc", "tkt_plu_long_desc", ccsText, "", CCGetRequestParam("tkt_plu_long_desc", ccsGet, NULL), $this);
        $this->Sorter_pp_tkt_plu_id = new clsSorter($this->ComponentName, "Sorter_pp_tkt_plu_id", $FileName, $this);
        $this->Sorter_tkt_plu_long_desc = new clsSorter($this->ComponentName, "Sorter_tkt_plu_long_desc", $FileName, $this);
        $this->ssf_flt_product_Insert = new clsControl(ccsLink, "ssf_flt_product_Insert", "ssf_flt_product_Insert", ccsText, "", CCGetRequestParam("ssf_flt_product_Insert", ccsGet, NULL), $this);
        $this->ssf_flt_product_Insert->Page = "SSFFleetProducts.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @42-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @42-0272E82C
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urlpp_profile_id"] = CCGetFromGet("pp_profile_id", NULL);

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
            $this->ControlsVisible["pp_tkt_plu_id"] = $this->pp_tkt_plu_id->Visible;
            $this->ControlsVisible["tkt_plu_long_desc"] = $this->tkt_plu_long_desc->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->pp_tkt_plu_id->SetValue($this->DataSource->pp_tkt_plu_id->GetValue());
                $this->pp_tkt_plu_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->pp_tkt_plu_id->Parameters = CCAddParam($this->pp_tkt_plu_id->Parameters, "pp_profile_id", $this->DataSource->f("pp_profile_id"));
                $this->pp_tkt_plu_id->Parameters = CCAddParam($this->pp_tkt_plu_id->Parameters, "pp_tkt_plu_id", $this->DataSource->f("pp_tkt_plu_id"));
                $this->tkt_plu_long_desc->SetValue($this->DataSource->tkt_plu_long_desc->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->pp_tkt_plu_id->Show();
                $this->tkt_plu_long_desc->Show();
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
        $this->ssf_flt_product_Insert->Parameters = CCGetQueryString("QueryString", array("pp_tkt_plu_id", "ccsForm"));
        $this->ssf_flt_product_Insert->Parameters = CCAddParam($this->ssf_flt_product_Insert->Parameters, "ssf_flt_product_Insert", insert);
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->Sorter_pp_tkt_plu_id->Show();
        $this->Sorter_tkt_plu_long_desc->Show();
        $this->ssf_flt_product_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @42-789D3419
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->pp_tkt_plu_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tkt_plu_long_desc->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_flt_product_profile_s Class @42-FCB6E20C

class clsssf_flt_product_profile_sDataSource extends clsDBConnection1 {  //ssf_flt_product_profile_sDataSource Class @42-235BA051

//DataSource Variables @42-907AC7AA
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $pp_tkt_plu_id;
    public $tkt_plu_long_desc;
//End DataSource Variables

//DataSourceClass_Initialize Event @42-279B4B8F
    function clsssf_flt_product_profile_sDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_flt_product_profile_s";
        $this->Initialize();
        $this->pp_tkt_plu_id = new clsField("pp_tkt_plu_id", ccsText, "");
        $this->tkt_plu_long_desc = new clsField("tkt_plu_long_desc", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @42-A3257A39
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_flt_product_profile.pp_tkt_plu_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_pp_tkt_plu_id" => array("pp_tkt_plu_id", ""), 
            "Sorter_tkt_plu_long_desc" => array("tkt_plu_long_desc", "")));
    }
//End SetOrder Method

//Prepare Method @42-E6DA26EA
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpp_profile_id", ccsText, "", "", $this->Parameters["urlpp_profile_id"], "", false);
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_flt_product_profile.pp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @42-CF39FB88
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_flt_product_profile INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_flt_product_profile.pp_tkt_plu_id = ssf_tkt_plu.tkt_plu_id";
        $this->SQL = "SELECT pp_profile_id, pp_tkt_plu_id, tkt_plu_long_desc \n\n" .
        "FROM ssf_flt_product_profile INNER JOIN ssf_tkt_plu ON\n\n" .
        "ssf_flt_product_profile.pp_tkt_plu_id = ssf_tkt_plu.tkt_plu_id {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @42-81DE2083
    function SetValues()
    {
        $this->pp_tkt_plu_id->SetDBValue($this->f("pp_tkt_plu_id"));
        $this->tkt_plu_long_desc->SetDBValue($this->f("tkt_plu_long_desc"));
    }
//End SetValues Method

} //End ssf_flt_product_profile_sDataSource Class @42-FCB6E20C

class clsRecordssf_flt_product_profile2 { //ssf_flt_product_profile2 Class @58-77F44471

//Variables @58-9E315808

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

//Class_Initialize Event @58-62CBCCD8
    function clsRecordssf_flt_product_profile2($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_flt_product_profile2/Error";
        $this->DataSource = new clsssf_flt_product_profile2DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_flt_product_profile2";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_pp_tkt_plu_id = new clsControl(ccsTextBox, "s_pp_tkt_plu_id", $CCSLocales->GetText("tkt_plu_id"), ccsText, "", CCGetRequestParam("s_pp_tkt_plu_id", $Method, NULL), $this);
            $this->s_pp_tkt_plu_id->Required = true;
            $this->Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", $Method, NULL), $this);
            $this->Link1->Page = "../../POS/SSFPopProductsList.php";
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->pp_profile_id = new clsControl(ccsHidden, "pp_profile_id", $CCSLocales->GetText("pp_profile_id"), ccsText, "", CCGetRequestParam("pp_profile_id", $Method, NULL), $this);
            $this->pp_profile_id->Required = true;
        }
    }
//End Class_Initialize Event

//Initialize Method @58-140959BE
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlpp_profile_id"] = CCGetFromGet("pp_profile_id", NULL);
        $this->DataSource->Parameters["urlpp_tkt_plu_id"] = CCGetFromGet("pp_tkt_plu_id", NULL);
    }
//End Initialize Method

//Validate Method @58-EF613A2F
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_pp_tkt_plu_id->Validate() && $Validation);
        $Validation = ($this->pp_profile_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_pp_tkt_plu_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->pp_profile_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @58-4C77E654
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_pp_tkt_plu_id->Errors->Count());
        $errors = ($errors || $this->Link1->Errors->Count());
        $errors = ($errors || $this->pp_profile_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @58-DD546BD8
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
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_profile_Insert", "pp_tkt_plu_id"));
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
            $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "ssf_flt_product_Insert", "pp_tkt_plu_id"));
            if(!CCGetEvent($this->Button_Cancel->CCSEvents, "OnClick", $this->Button_Cancel)) {
                $Redirect = "";
            }
        } else if($this->Validate()) {
            if($this->PressedButton == "Button_Insert") {
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

//InsertRow Method @58-3461E73F
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->s_pp_tkt_plu_id->SetValue($this->s_pp_tkt_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->pp_profile_id->SetValue($this->pp_profile_id->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @58-43E838DE
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->s_pp_tkt_plu_id->SetValue($this->s_pp_tkt_plu_id->GetValue(true));
        $this->DataSource->Link1->SetValue($this->Link1->GetValue(true));
        $this->DataSource->pp_profile_id->SetValue($this->pp_profile_id->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @58-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @58-6726CD3C
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
                    $this->s_pp_tkt_plu_id->SetValue($this->DataSource->s_pp_tkt_plu_id->GetValue());
                    $this->pp_profile_id->SetValue($this->DataSource->pp_profile_id->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_pp_tkt_plu_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Link1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->pp_profile_id->Errors->ToString());
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

        $this->s_pp_tkt_plu_id->Show();
        $this->Link1->Show();
        $this->Button_Insert->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->pp_profile_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_flt_product_profile2 Class @58-FCB6E20C

class clsssf_flt_product_profile2DataSource extends clsDBConnection1 {  //ssf_flt_product_profile2DataSource Class @58-8BB6FD99

//DataSource Variables @58-E68C5992
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
    public $s_pp_tkt_plu_id;
    public $Link1;
    public $pp_profile_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @58-4442EF9E
    function clsssf_flt_product_profile2DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_flt_product_profile2/Error";
        $this->Initialize();
        $this->s_pp_tkt_plu_id = new clsField("s_pp_tkt_plu_id", ccsText, "");
        $this->Link1 = new clsField("Link1", ccsText, "");
        $this->pp_profile_id = new clsField("pp_profile_id", ccsText, "");

        $this->InsertFields["pp_tkt_plu_id"] = array("Name" => "pp_tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["pp_profile_id"] = array("Name" => "pp_profile_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pp_tkt_plu_id"] = array("Name" => "pp_tkt_plu_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["pp_profile_id"] = array("Name" => "pp_profile_id", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @58-C574FC7C
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlpp_profile_id", ccsText, "", "", $this->Parameters["urlpp_profile_id"], "", false);
        $this->wp->AddParameter("2", "urlpp_tkt_plu_id", ccsText, "", "", $this->Parameters["urlpp_tkt_plu_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "pp_profile_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "pp_tkt_plu_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->Where = $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]);
    }
//End Prepare Method

//Open Method @58-D257E379
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_flt_product_profile {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @58-E62E5FC9
    function SetValues()
    {
        $this->s_pp_tkt_plu_id->SetDBValue($this->f("pp_tkt_plu_id"));
        $this->pp_profile_id->SetDBValue($this->f("pp_profile_id"));
    }
//End SetValues Method

//Insert Method @58-CD31C3FB
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["pp_tkt_plu_id"]["Value"] = $this->s_pp_tkt_plu_id->GetDBValue(true);
        $this->InsertFields["pp_profile_id"]["Value"] = $this->pp_profile_id->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_flt_product_profile", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @58-F1EEFD52
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["pp_tkt_plu_id"]["Value"] = $this->s_pp_tkt_plu_id->GetDBValue(true);
        $this->UpdateFields["pp_profile_id"]["Value"] = $this->pp_profile_id->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_flt_product_profile", $this->UpdateFields, $this);
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

//Delete Method @58-301A7AC7
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_flt_product_profile";
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

} //End ssf_flt_product_profile2DataSource Class @58-FCB6E20C

//Initialize Page @1-00F26F71
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
$TemplateFileName = "SSFFleetProducts.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-600B0A5F
include("./SSFFleetProducts_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C4AB0559
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_flt_product_profileSearch = new clsRecordssf_flt_product_profileSearch("", $MainPage);
$ssf_flt_product_profile = new clsGridssf_flt_product_profile("", $MainPage);
$ssf_flt_product_profile1 = new clsRecordssf_flt_product_profile1("", $MainPage);
$ssf_flt_product_profile_s = new clsGridssf_flt_product_profile_s("", $MainPage);
$ssf_flt_product_profile2 = new clsRecordssf_flt_product_profile2("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_flt_product_profileSearch = & $ssf_flt_product_profileSearch;
$MainPage->ssf_flt_product_profile = & $ssf_flt_product_profile;
$MainPage->ssf_flt_product_profile1 = & $ssf_flt_product_profile1;
$MainPage->ssf_flt_product_profile_s = & $ssf_flt_product_profile_s;
$MainPage->ssf_flt_product_profile2 = & $ssf_flt_product_profile2;
$ssf_flt_product_profile->Initialize();
$ssf_flt_product_profile1->Initialize();
$ssf_flt_product_profile_s->Initialize();
$ssf_flt_product_profile2->Initialize();

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

//Execute Components @1-DD667CCB
$SSFSpiritHeader->Operations();
$ssf_flt_product_profileSearch->Operation();
$ssf_flt_product_profile1->Operation();
$ssf_flt_product_profile2->Operation();
//End Execute Components

//Go to destination page @1-806E12F5
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_flt_product_profileSearch);
    unset($ssf_flt_product_profile);
    unset($ssf_flt_product_profile1);
    unset($ssf_flt_product_profile_s);
    unset($ssf_flt_product_profile2);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-7B8AAB14
$SSFSpiritHeader->Show();
$ssf_flt_product_profileSearch->Show();
$ssf_flt_product_profile->Show();
$ssf_flt_product_profile1->Show();
$ssf_flt_product_profile_s->Show();
$ssf_flt_product_profile2->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6630E05D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_flt_product_profileSearch);
unset($ssf_flt_product_profile);
unset($ssf_flt_product_profile1);
unset($ssf_flt_product_profile_s);
unset($ssf_flt_product_profile2);
unset($Tpl);
//End Unload Page


?>
