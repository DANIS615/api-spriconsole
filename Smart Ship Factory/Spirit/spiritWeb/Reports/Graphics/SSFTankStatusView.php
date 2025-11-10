<?php
//Include Common Files @1-E930FBA3
define("RelativePath", "../..");
define("PathToCurrentPage", "/Reports/Graphics/");
define("FileName", "SSFTankStatusView.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecorda_b_c { //a_b_c Class @19-E017D2BC

//Variables @19-9E315808

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

//Class_Initialize Event @19-8FD573EF
    function clsRecorda_b_c($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record a_b_c/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "a_b_c";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->s_tank_id = new clsControl(ccsListBox, "s_tank_id", "s_tank_id", ccsText, "", CCGetRequestParam("s_tank_id", $Method, NULL), $this);
            $this->s_tank_id->DSType = dsSQL;
            list($this->s_tank_id->BoundColumn, $this->s_tank_id->TextColumn, $this->s_tank_id->DBFormat) = array("tank_id", "tank_id", "");
            $this->s_tank_id->DataSource = new clsDBConnection1();
            $this->s_tank_id->ds = & $this->s_tank_id->DataSource;
            $this->s_tank_id->DataSource->SQL = "SELECT param_value AS tank_id \n" .
            "FROM config_values\n" .
            "WHERE ( library = 'tank' )\n" .
            "AND ( groupname = 'general' )\n" .
            "AND ( parameter = 'ID' ) ";
            $this->s_tank_id->DataSource->Order = "";
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @19-498E6A94
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_tank_id->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_tank_id->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @19-100FFC7E
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_tank_id->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @19-5DEA93D6
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
        $Redirect = "SSFTankStatusView.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "SSFTankStatusView.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @19-7CC3932D
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_tank_id->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_tank_id->Errors->ToString());
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

        $this->s_tank_id->Show();
        $this->Button_DoSearch->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End a_b_c Class @19-FCB6E20C

class clsGridTanks { //Tanks class @3-1E916A16

//Variables @3-6E51DF5A

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
//End Variables

//Class_Initialize Event @3-42CCAEAC
    function clsGridTanks($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "Tanks";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid Tanks";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsTanksDataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 12;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->lblTank = new clsControl(ccsLabel, "lblTank", "lblTank", ccsText, "", CCGetRequestParam("lblTank", ccsGet, NULL), $this);
        $this->lblproduct = new clsControl(ccsLabel, "lblproduct", "lblproduct", ccsText, "", CCGetRequestParam("lblproduct", ccsGet, NULL), $this);
        $this->lblcapacity = new clsControl(ccsLabel, "lblcapacity", "lblcapacity", ccsText, "", CCGetRequestParam("lblcapacity", ccsGet, NULL), $this);
        $this->lblprod_vol = new clsControl(ccsLabel, "lblprod_vol", "lblprod_vol", ccsText, "", CCGetRequestParam("lblprod_vol", ccsGet, NULL), $this);
        $this->lblwater_vol = new clsControl(ccsLabel, "lblwater_vol", "lblwater_vol", ccsText, "", CCGetRequestParam("lblwater_vol", ccsGet, NULL), $this);
        $this->lblempty = new clsControl(ccsLabel, "lblempty", "lblempty", ccsText, "", CCGetRequestParam("lblempty", ccsGet, NULL), $this);
        $this->lblprod_h = new clsControl(ccsLabel, "lblprod_h", "lblprod_h", ccsText, "", CCGetRequestParam("lblprod_h", ccsGet, NULL), $this);
        $this->lblwater_h = new clsControl(ccsLabel, "lblwater_h", "lblwater_h", ccsText, "", CCGetRequestParam("lblwater_h", ccsGet, NULL), $this);
        $this->tank_id = new clsControl(ccsLabel, "tank_id", "tank_id", ccsInteger, "", CCGetRequestParam("tank_id", ccsGet, NULL), $this);
        $this->product = new clsControl(ccsLabel, "product", "product", ccsText, "", CCGetRequestParam("product", ccsGet, NULL), $this);
        $this->capacity = new clsControl(ccsLabel, "capacity", "capacity", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("capacity", ccsGet, NULL), $this);
        $this->prod_v = new clsControl(ccsLabel, "prod_v", "prod_v", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("prod_v", ccsGet, NULL), $this);
        $this->water_vol = new clsControl(ccsLabel, "water_vol", "water_vol", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("water_vol", ccsGet, NULL), $this);
        $this->lblvoid = new clsControl(ccsLabel, "lblvoid", "lblvoid", ccsFloat, array(False, 3, Null, "", False, "", "", 1, True, ""), CCGetRequestParam("lblvoid", ccsGet, NULL), $this);
        $this->prod_h = new clsControl(ccsLabel, "prod_h", "prod_h", ccsText, "", CCGetRequestParam("prod_h", ccsGet, NULL), $this);
        $this->water_h = new clsControl(ccsLabel, "water_h", "water_h", ccsText, "", CCGetRequestParam("water_h", ccsGet, NULL), $this);
        $this->color = new clsControl(ccsHidden, "color", "color", ccsText, "", CCGetRequestParam("color", ccsGet, NULL), $this);
        $this->img_tank = new clsControl(ccsImage, "img_tank", "img_tank", ccsText, "", CCGetRequestParam("img_tank", ccsGet, NULL), $this);
        $this->lbl_date_last_read = new clsControl(ccsLabel, "lbl_date_last_read", "lbl_date_last_read", ccsText, "", CCGetRequestParam("lbl_date_last_read", ccsGet, NULL), $this);
        $this->date_last_read = new clsControl(ccsLabel, "date_last_read", "date_last_read", ccsDate, array("dd", "/", "mm", "/", "yyyy"), CCGetRequestParam("date_last_read", ccsGet, NULL), $this);
        $this->time_last_read = new clsControl(ccsLabel, "time_last_read", "time_last_read", ccsDate, array("H", ":", "nn", ":", "ss"), CCGetRequestParam("time_last_read", ccsGet, NULL), $this);
        $this->ImageLink1 = new clsControl(ccsImageLink, "ImageLink1", "ImageLink1", ccsText, "", CCGetRequestParam("ImageLink1", ccsGet, NULL), $this);
        $this->ImageLink1->Page = "../../Operation/SSFChangeTankStatus.php";
        $this->probe_status = new clsControl(ccsHidden, "probe_status", "probe_status", ccsInteger, "", CCGetRequestParam("probe_status", ccsGet, NULL), $this);
        $this->RowSeparator = new clsPanel("RowSeparator", $this);
        $this->EmptyRow = new clsControl(ccsLabel, "EmptyRow", "EmptyRow", ccsText, "", CCGetRequestParam("EmptyRow", ccsGet, NULL), $this);
        $this->EmptyRow->HTML = true;
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

//Show Method @3-7E0374E9
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_tank_id"] = CCGetFromGet("s_tank_id", NULL);

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
            $this->ControlsVisible["lblTank"] = $this->lblTank->Visible;
            $this->ControlsVisible["lblproduct"] = $this->lblproduct->Visible;
            $this->ControlsVisible["lblcapacity"] = $this->lblcapacity->Visible;
            $this->ControlsVisible["lblprod_vol"] = $this->lblprod_vol->Visible;
            $this->ControlsVisible["lblwater_vol"] = $this->lblwater_vol->Visible;
            $this->ControlsVisible["lblempty"] = $this->lblempty->Visible;
            $this->ControlsVisible["lblprod_h"] = $this->lblprod_h->Visible;
            $this->ControlsVisible["lblwater_h"] = $this->lblwater_h->Visible;
            $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
            $this->ControlsVisible["product"] = $this->product->Visible;
            $this->ControlsVisible["capacity"] = $this->capacity->Visible;
            $this->ControlsVisible["prod_v"] = $this->prod_v->Visible;
            $this->ControlsVisible["water_vol"] = $this->water_vol->Visible;
            $this->ControlsVisible["lblvoid"] = $this->lblvoid->Visible;
            $this->ControlsVisible["prod_h"] = $this->prod_h->Visible;
            $this->ControlsVisible["water_h"] = $this->water_h->Visible;
            $this->ControlsVisible["color"] = $this->color->Visible;
            $this->ControlsVisible["img_tank"] = $this->img_tank->Visible;
            $this->ControlsVisible["lbl_date_last_read"] = $this->lbl_date_last_read->Visible;
            $this->ControlsVisible["date_last_read"] = $this->date_last_read->Visible;
            $this->ControlsVisible["time_last_read"] = $this->time_last_read->Visible;
            $this->ControlsVisible["ImageLink1"] = $this->ImageLink1->Visible;
            $this->ControlsVisible["probe_status"] = $this->probe_status->Visible;
            $this->ControlsVisible["RowSeparator"] = $this->RowSeparator->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                if(!is_array($this->lblTank->Value) && !strlen($this->lblTank->Value) && $this->lblTank->Value !== false)
                    $this->lblTank->SetText($CCSLocales->GetText("tank"));
                if(!is_array($this->lblempty->Value) && !strlen($this->lblempty->Value) && $this->lblempty->Value !== false)
                    $this->lblempty->SetText($CCSLocales->GetText("ssf_empty"));
                $this->lblproduct->SetText($CCSLocales->GetText("grade"));
                $this->lblcapacity->SetText($CCSLocales->GetText("capacity"));
                $this->lblprod_vol->SetText($CCSLocales->GetText("ssf_prod_volume"));
                $this->lblwater_vol->SetText($CCSLocales->GetText("water_volume"));
                $this->lblprod_h->SetText($CCSLocales->GetText("ssf_prod_height"));
                $this->lblwater_h->SetText($CCSLocales->GetText("water_height"));
                $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
                $this->product->SetValue($this->DataSource->product->GetValue());
                $this->capacity->SetValue($this->DataSource->capacity->GetValue());
                $this->prod_v->SetValue($this->DataSource->prod_v->GetValue());
                $this->water_vol->SetValue($this->DataSource->water_vol->GetValue());
                $this->prod_h->SetValue($this->DataSource->prod_h->GetValue());
                $this->water_h->SetValue($this->DataSource->water_h->GetValue());
                $this->color->SetValue($this->DataSource->color->GetValue());
                $this->lbl_date_last_read->SetText($CCSLocales->GetText("ssf_date_last_read"));
                $this->date_last_read->SetValue($this->DataSource->date_last_read->GetValue());
                $this->time_last_read->SetValue($this->DataSource->time_last_read->GetValue());
                $this->ImageLink1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ImageLink1->Parameters = CCAddParam($this->ImageLink1->Parameters, "param_value", $this->DataSource->f("tank_id"));
                $this->probe_status->SetValue($this->DataSource->probe_status->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->lblTank->Show();
                $this->lblproduct->Show();
                $this->lblcapacity->Show();
                $this->lblprod_vol->Show();
                $this->lblwater_vol->Show();
                $this->lblempty->Show();
                $this->lblprod_h->Show();
                $this->lblwater_h->Show();
                $this->tank_id->Show();
                $this->product->Show();
                $this->capacity->Show();
                $this->prod_v->Show();
                $this->water_vol->Show();
                $this->lblvoid->Show();
                $this->prod_h->Show();
                $this->water_h->Show();
                $this->color->Show();
                $this->img_tank->Show();
                $this->lbl_date_last_read->Show();
                $this->date_last_read->Show();
                $this->time_last_read->Show();
                $this->ImageLink1->Show();
                $this->probe_status->Show();
                $this->RowSeparator->Show();
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
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        $this->EmptyRow->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-1D12509B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->lblTank->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblproduct->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblcapacity->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblprod_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblwater_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblempty->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblprod_h->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblwater_h->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->product->Errors->ToString());
        $errors = ComposeStrings($errors, $this->capacity->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_v->Errors->ToString());
        $errors = ComposeStrings($errors, $this->water_vol->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lblvoid->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_h->Errors->ToString());
        $errors = ComposeStrings($errors, $this->water_h->Errors->ToString());
        $errors = ComposeStrings($errors, $this->color->Errors->ToString());
        $errors = ComposeStrings($errors, $this->img_tank->Errors->ToString());
        $errors = ComposeStrings($errors, $this->lbl_date_last_read->Errors->ToString());
        $errors = ComposeStrings($errors, $this->date_last_read->Errors->ToString());
        $errors = ComposeStrings($errors, $this->time_last_read->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ImageLink1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->probe_status->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End Tanks Class @3-FCB6E20C

class clsTanksDataSource extends clsDBConnection1 {  //TanksDataSource Class @3-016CCD79

//DataSource Variables @3-3BB39019
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $lblproduct;
    public $lblcapacity;
    public $lblprod_vol;
    public $lblwater_vol;
    public $lblprod_h;
    public $lblwater_h;
    public $tank_id;
    public $product;
    public $capacity;
    public $prod_v;
    public $water_vol;
    public $prod_h;
    public $water_h;
    public $color;
    public $lbl_date_last_read;
    public $date_last_read;
    public $time_last_read;
    public $probe_status;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-3EA0F101
    function clsTanksDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid Tanks";
        $this->Initialize();
        $this->lblproduct = new clsField("lblproduct", ccsText, "");
        $this->lblcapacity = new clsField("lblcapacity", ccsText, "");
        $this->lblprod_vol = new clsField("lblprod_vol", ccsText, "");
        $this->lblwater_vol = new clsField("lblwater_vol", ccsText, "");
        $this->lblprod_h = new clsField("lblprod_h", ccsText, "");
        $this->lblwater_h = new clsField("lblwater_h", ccsText, "");
        $this->tank_id = new clsField("tank_id", ccsInteger, "");
        $this->product = new clsField("product", ccsText, "");
        $this->capacity = new clsField("capacity", ccsFloat, "");
        $this->prod_v = new clsField("prod_v", ccsFloat, "");
        $this->water_vol = new clsField("water_vol", ccsFloat, "");
        $this->prod_h = new clsField("prod_h", ccsText, "");
        $this->water_h = new clsField("water_h", ccsText, "");
        $this->color = new clsField("color", ccsText, "");
        $this->lbl_date_last_read = new clsField("lbl_date_last_read", ccsText, "");
        $this->date_last_read = new clsField("date_last_read", ccsDate, array("yyyy", "mm", "dd"));
        $this->time_last_read = new clsField("time_last_read", ccsDate, array("HH", "nn", "ss"));
        $this->probe_status = new clsField("probe_status", ccsInteger, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-81B09E88
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "tank_id";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            "");
    }
//End SetOrder Method

//Prepare Method @3-4C188ED3
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("5", "urls_tank_id", ccsInteger, "", "", $this->Parameters["urls_tank_id"], "", false);
        $this->wp->Criterion[1] = "a.library = 'tank'";
        $this->wp->Criterion[2] = "a.groupname = 'general'";
        $this->wp->Criterion[3] = "a.parameter = 'ID'";
        $this->wp->Criterion[4] = "c.parameter = 'capacity'";
        $this->wp->Criterion[5] = $this->wp->Operation(opEqual, "b.tank_id", $this->wp->GetDBValue("5"), $this->ToSQL($this->wp->GetDBValue("5"), ccsInteger),false);
        $this->wp->Criterion[6] = "d.parameter = 'product'";
        $this->wp->Criterion[7] = "e.library = 'product'";
        $this->wp->Criterion[8] = "e.groupname = 'general'";
        $this->wp->Criterion[9] = "e.parameter = 'color'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]), 
             $this->wp->Criterion[4]), 
             $this->wp->Criterion[5]), 
             $this->wp->Criterion[6]), 
             $this->wp->Criterion[7]), 
             $this->wp->Criterion[8]), 
             $this->wp->Criterion[9]);
    }
//End Prepare Method

//Open Method @3-7EB0B96B
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM (config_values a INNER JOIN ssf_tank_actual_info b ON\n\n" .
        "a.id = b.tank_id) INNER JOIN (config_values c INNER JOIN (config_values d INNER JOIN config_values e ON\n\n" .
        "d.param_value = e.id) ON\n\n" .
        "c.library = d.library AND c.id = d.id AND c.groupname = d.groupname) ON\n\n" .
        "a.library = c.library AND a.id = c.id AND a.groupname = c.groupname";
        $this->SQL = "SELECT b.*, c.param_value AS capacity, d.param_value AS product, e.param_value AS color \n\n" .
        "FROM (config_values a INNER JOIN ssf_tank_actual_info b ON\n\n" .
        "a.id = b.tank_id) INNER JOIN (config_values c INNER JOIN (config_values d INNER JOIN config_values e ON\n\n" .
        "d.param_value = e.id) ON\n\n" .
        "c.library = d.library AND c.id = d.id AND c.groupname = d.groupname) ON\n\n" .
        "a.library = c.library AND a.id = c.id AND a.groupname = c.groupname {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-71B53079
    function SetValues()
    {
        $this->tank_id->SetDBValue(trim($this->f("tank_id")));
        $this->product->SetDBValue($this->f("product"));
        $this->capacity->SetDBValue(trim($this->f("capacity")));
        $this->prod_v->SetDBValue(trim($this->f("prod_vol")));
        $this->water_vol->SetDBValue(trim($this->f("water_vol")));
        $this->prod_h->SetDBValue($this->f("prod_height"));
        $this->water_h->SetDBValue($this->f("water_height"));
        $this->color->SetDBValue($this->f("color"));
        $this->date_last_read->SetDBValue(trim($this->f("date_last_read")));
        $this->time_last_read->SetDBValue(trim($this->f("time_last_read")));
        $this->probe_status->SetDBValue(trim($this->f("probe_status")));
    }
//End SetValues Method

} //End TanksDataSource Class @3-FCB6E20C

//Initialize Page @1-F36FCD1B
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
$TemplateFileName = "SSFTankStatusView.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-F6F088F2
include("./SSFTankStatusView_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-1B3AD5AB
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$a_b_c = new clsRecorda_b_c("", $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "../../Operation/SSFTankDeepReading.php";
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link2->Page = "../../Operation/SSFTankDeliveries.php";
$Panel1 = new clsPanel("Panel1", $MainPage);
$lblfuelcharge = new clsControl(ccsLabel, "lblfuelcharge", "lblfuelcharge", ccsText, "", CCGetRequestParam("lblfuelcharge", ccsGet, NULL), $MainPage);
$Tanks = new clsGridTanks("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->a_b_c = & $a_b_c;
$MainPage->Link1 = & $Link1;
$MainPage->Link2 = & $Link2;
$MainPage->Panel1 = & $Panel1;
$MainPage->lblfuelcharge = & $lblfuelcharge;
$MainPage->Tanks = & $Tanks;
$Panel1->AddComponent("lblfuelcharge", $lblfuelcharge);
if(!is_array($lblfuelcharge->Value) && !strlen($lblfuelcharge->Value) && $lblfuelcharge->Value !== false)
    $lblfuelcharge->SetText($CCSLocales->GetText("ssf_fuel_charge_activated"));
$Tanks->Initialize();

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

//Execute Components @1-155C6692
$SSFSpiritHeader->Operations();
$a_b_c->Operation();
//End Execute Components

//Go to destination page @1-64B189EC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($a_b_c);
    unset($Tanks);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-16A5AFEF
$SSFSpiritHeader->Show();
$a_b_c->Show();
$Tanks->Show();
$Link1->Show();
$Link2->Show();
$Panel1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-237B16B6
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($a_b_c);
unset($Tanks);
unset($Tpl);
//End Unload Page


?>
