<?php
class clsRecordSSFTicketSKPruebassf_tkt_speed_keys { //ssf_tkt_speed_keys Class @2-83C48F2E

//Variables @2-9E315808

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

//Class_Initialize Event @2-CD6831DB
    function clsRecordSSFTicketSKPruebassf_tkt_speed_keys($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->DataSource = new clsSSFTicketSKPruebassf_tkt_speed_keysDataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_speed_keys";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->h_tkt_speed_id = new clsControl(ccsHidden, "h_tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("h_tkt_speed_id", $Method, NULL), $this);
            $this->h_tkt_speed_id->Required = true;
            $this->r_tkt_speed_id = new clsControl(ccsListBox, "r_tkt_speed_id", $CCSLocales->GetText("tkt_speed_id"), ccsText, "", CCGetRequestParam("r_tkt_speed_id", $Method, NULL), $this);
            $this->r_tkt_speed_id->DSType = dsTable;
            list($this->r_tkt_speed_id->BoundColumn, $this->r_tkt_speed_id->TextColumn, $this->r_tkt_speed_id->DBFormat) = array("tkt_catalog_code", "tkt_catalog_value", "");
            $this->r_tkt_speed_id->DataSource = new clsDBConnection1();
            $this->r_tkt_speed_id->ds = & $this->r_tkt_speed_id->DataSource;
            $this->r_tkt_speed_id->DataSource->SQL = "SELECT tkt_catalog_code, tkt_catalog_value \n" .
"FROM ssf_tkt_catalog {SQL_Where} {SQL_OrderBy}";
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->r_tkt_speed_id->DataSource->wp = new clsSQLParameters();
            $this->r_tkt_speed_id->DataSource->wp->Criterion[1] = "tkt_catalog_id = 'speedkey_group_id'";
            $this->r_tkt_speed_id->DataSource->Where = 
                 $this->r_tkt_speed_id->DataSource->wp->Criterion[1];
            $this->r_tkt_speed_id->DataSource->Order = "tkt_catalog_code";
            $this->tkt_speed_parent_group_id = new clsControl(ccsTextBox, "tkt_speed_parent_group_id", $CCSLocales->GetText("tkt_speed_parent_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_parent_group_id", $Method, NULL), $this);
            $this->tkt_speed_parent_group_id->Required = true;
            $this->tkt_speed_order = new clsControl(ccsTextBox, "tkt_speed_order", $CCSLocales->GetText("tkt_speed_order"), ccsInteger, "", CCGetRequestParam("tkt_speed_order", $Method, NULL), $this);
            $this->tkt_speed_order->Required = true;
            $this->tkt_speed_group_id = new clsControl(ccsTextBox, "tkt_speed_group_id", $CCSLocales->GetText("tkt_speed_group_id"), ccsText, "", CCGetRequestParam("tkt_speed_group_id", $Method, NULL), $this);
            $this->tkt_speed_value = new clsControl(ccsTextBox, "tkt_speed_value", $CCSLocales->GetText("tkt_speed_value"), ccsText, "", CCGetRequestParam("tkt_speed_value", $Method, NULL), $this);
            $this->tkt_speed_param = new clsControl(ccsTextBox, "tkt_speed_param", $CCSLocales->GetText("tkt_speed_param"), ccsText, "", CCGetRequestParam("tkt_speed_param", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
        }
    }
//End Class_Initialize Event

//Initialize Method @2-2DBA863F
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urltkt_speed_id"] = CCGetFromGet("tkt_speed_id", NULL);
        $this->DataSource->Parameters["urlparent_group_id"] = CCGetFromGet("parent_group_id", NULL);
        $this->DataSource->Parameters["urlspeed_group_id"] = CCGetFromGet("speed_group_id", NULL);
        $this->DataSource->Parameters["urlspeed_order"] = CCGetFromGet("speed_order", NULL);
    }
//End Initialize Method

//Validate Method @2-E1EA0B3D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->h_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->r_tkt_speed_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_parent_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_order->Validate() && $Validation);
        $Validation = ($this->tkt_speed_group_id->Validate() && $Validation);
        $Validation = ($this->tkt_speed_value->Validate() && $Validation);
        $Validation = ($this->tkt_speed_param->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->h_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->r_tkt_speed_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_parent_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_order->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_group_id->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_value->Errors->Count() == 0);
        $Validation =  $Validation && ($this->tkt_speed_param->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @2-4A94697C
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->h_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->r_tkt_speed_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_parent_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_order->Errors->Count());
        $errors = ($errors || $this->tkt_speed_group_id->Errors->Count());
        $errors = ($errors || $this->tkt_speed_value->Errors->Count());
        $errors = ($errors || $this->tkt_speed_param->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @2-A4514815
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
        $Redirect = "SSFTicketSpeedKey.php";
        if($this->PressedButton == "Button_Delete") {
            if(!CCGetEvent($this->Button_Delete->CCSEvents, "OnClick", $this->Button_Delete) || !$this->DeleteRow()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Button_Cancel") {
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

//InsertRow Method @2-BF41E89A
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @2-4AC4A4EA
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_value->SetValue($this->tkt_speed_value->GetValue(true));
        $this->DataSource->tkt_speed_param->SetValue($this->tkt_speed_param->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @2-5C8D4533
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->h_tkt_speed_id->SetValue($this->h_tkt_speed_id->GetValue(true));
        $this->DataSource->tkt_speed_parent_group_id->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        $this->DataSource->tkt_speed_group_id->SetValue($this->tkt_speed_group_id->GetValue(true));
        $this->DataSource->tkt_speed_order->SetValue($this->tkt_speed_order->GetValue(true));
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @2-5B95AAE8
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->r_tkt_speed_id->Prepare();

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
                    $this->h_tkt_speed_id->SetValue($this->DataSource->h_tkt_speed_id->GetValue());
                    $this->r_tkt_speed_id->SetValue($this->DataSource->r_tkt_speed_id->GetValue());
                    $this->tkt_speed_parent_group_id->SetValue($this->DataSource->tkt_speed_parent_group_id->GetValue());
                    $this->tkt_speed_order->SetValue($this->DataSource->tkt_speed_order->GetValue());
                    $this->tkt_speed_group_id->SetValue($this->DataSource->tkt_speed_group_id->GetValue());
                    $this->tkt_speed_value->SetValue($this->DataSource->tkt_speed_value->GetValue());
                    $this->tkt_speed_param->SetValue($this->DataSource->tkt_speed_param->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->h_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->r_tkt_speed_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_parent_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_order->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_group_id->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_value->Errors->ToString());
            $Error = ComposeStrings($Error, $this->tkt_speed_param->Errors->ToString());
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

        $this->h_tkt_speed_id->Show();
        $this->r_tkt_speed_id->Show();
        $this->tkt_speed_parent_group_id->Show();
        $this->tkt_speed_order->Show();
        $this->tkt_speed_group_id->Show();
        $this->tkt_speed_value->Show();
        $this->tkt_speed_param->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_speed_keys Class @2-FCB6E20C

class clsSSFTicketSKPruebassf_tkt_speed_keysDataSource extends clsDBConnection1 {  //ssf_tkt_speed_keysDataSource Class @2-8F35FCA6

//DataSource Variables @2-5CE9CF6F
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
    public $h_tkt_speed_id;
    public $r_tkt_speed_id;
    public $tkt_speed_parent_group_id;
    public $tkt_speed_order;
    public $tkt_speed_group_id;
    public $tkt_speed_value;
    public $tkt_speed_param;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-0669693D
    function clsSSFTicketSKPruebassf_tkt_speed_keysDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_speed_keys/Error";
        $this->Initialize();
        $this->h_tkt_speed_id = new clsField("h_tkt_speed_id", ccsText, "");
        $this->r_tkt_speed_id = new clsField("r_tkt_speed_id", ccsText, "");
        $this->tkt_speed_parent_group_id = new clsField("tkt_speed_parent_group_id", ccsText, "");
        $this->tkt_speed_order = new clsField("tkt_speed_order", ccsInteger, "");
        $this->tkt_speed_group_id = new clsField("tkt_speed_group_id", ccsText, "");
        $this->tkt_speed_value = new clsField("tkt_speed_value", ccsText, "");
        $this->tkt_speed_param = new clsField("tkt_speed_param", ccsText, "");

        $this->InsertFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_id"] = array("Name" => "tkt_speed_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_parent_group_id"] = array("Name" => "tkt_speed_parent_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_order"] = array("Name" => "tkt_speed_order", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["tkt_speed_group_id"] = array("Name" => "tkt_speed_group_id", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_value"] = array("Name" => "tkt_speed_value", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["tkt_speed_param"] = array("Name" => "tkt_speed_param", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @2-33B46714
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltkt_speed_id", ccsText, "", "", $this->Parameters["urltkt_speed_id"], "", false);
        $this->wp->AddParameter("2", "urlparent_group_id", ccsText, "", "", $this->Parameters["urlparent_group_id"], "", false);
        $this->wp->AddParameter("3", "urlspeed_group_id", ccsText, "", "", $this->Parameters["urlspeed_group_id"], "", true);
        $this->wp->AddParameter("4", "urlspeed_order", ccsInteger, "", "", $this->Parameters["urlspeed_order"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tkt_speed_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->wp->Criterion[2] = $this->wp->Operation(opEqual, "tkt_speed_parent_group_id", $this->wp->GetDBValue("2"), $this->ToSQL($this->wp->GetDBValue("2"), ccsText),false);
        $this->wp->Criterion[3] = $this->wp->Operation(opEqual, "tkt_speed_group_id", $this->wp->GetDBValue("3"), $this->ToSQL($this->wp->GetDBValue("3"), ccsText),true);
        $this->wp->Criterion[4] = $this->wp->Operation(opEqual, "tkt_speed_order", $this->wp->GetDBValue("4"), $this->ToSQL($this->wp->GetDBValue("4"), ccsInteger),false);
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

//Open Method @2-CA347CDB
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_speed_keys {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @2-F6832D55
    function SetValues()
    {
        $this->h_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->r_tkt_speed_id->SetDBValue($this->f("tkt_speed_id"));
        $this->tkt_speed_parent_group_id->SetDBValue($this->f("tkt_speed_parent_group_id"));
        $this->tkt_speed_order->SetDBValue(trim($this->f("tkt_speed_order")));
        $this->tkt_speed_group_id->SetDBValue($this->f("tkt_speed_group_id"));
        $this->tkt_speed_value->SetDBValue($this->f("tkt_speed_value"));
        $this->tkt_speed_param->SetDBValue($this->f("tkt_speed_param"));
    }
//End SetValues Method

//Insert Method @2-D01B3B33
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrltkt_speed_value", ccsText, "", "", $this->tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrltkt_speed_param", ccsText, "", "", $this->tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->tkt_speed_param->GetValue(true));
        $this->InsertFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->InsertFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_speed_keys", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @2-A9D80BB4
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->cp["tkt_speed_id"] = new clsSQLParameter("ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_parent_group_id"] = new clsSQLParameter("ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_order"] = new clsSQLParameter("ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_group_id"] = new clsSQLParameter("ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_value"] = new clsSQLParameter("ctrltkt_speed_value", ccsText, "", "", $this->tkt_speed_value->GetValue(true), "", false, $this->ErrorBlock);
        $this->cp["tkt_speed_param"] = new clsSQLParameter("ctrltkt_speed_param", ccsText, "", "", $this->tkt_speed_param->GetValue(true), "", false, $this->ErrorBlock);
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", true);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("4", "ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        if (!is_null($this->cp["tkt_speed_id"]->GetValue()) and !strlen($this->cp["tkt_speed_id"]->GetText()) and !is_bool($this->cp["tkt_speed_id"]->GetValue())) 
            $this->cp["tkt_speed_id"]->SetValue($this->h_tkt_speed_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_parent_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_parent_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_parent_group_id"]->GetValue())) 
            $this->cp["tkt_speed_parent_group_id"]->SetValue($this->tkt_speed_parent_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_order"]->GetValue()) and !strlen($this->cp["tkt_speed_order"]->GetText()) and !is_bool($this->cp["tkt_speed_order"]->GetValue())) 
            $this->cp["tkt_speed_order"]->SetValue($this->tkt_speed_order->GetValue(true));
        if (!is_null($this->cp["tkt_speed_group_id"]->GetValue()) and !strlen($this->cp["tkt_speed_group_id"]->GetText()) and !is_bool($this->cp["tkt_speed_group_id"]->GetValue())) 
            $this->cp["tkt_speed_group_id"]->SetValue($this->tkt_speed_group_id->GetValue(true));
        if (!is_null($this->cp["tkt_speed_value"]->GetValue()) and !strlen($this->cp["tkt_speed_value"]->GetText()) and !is_bool($this->cp["tkt_speed_value"]->GetValue())) 
            $this->cp["tkt_speed_value"]->SetValue($this->tkt_speed_value->GetValue(true));
        if (!is_null($this->cp["tkt_speed_param"]->GetValue()) and !strlen($this->cp["tkt_speed_param"]->GetText()) and !is_bool($this->cp["tkt_speed_param"]->GetValue())) 
            $this->cp["tkt_speed_param"]->SetValue($this->tkt_speed_param->GetValue(true));
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),true);
        $wp->Criterion[4] = $wp->Operation(opEqual, "tkt_speed_order", $wp->GetDBValue("4"), $this->ToSQL($wp->GetDBValue("4"), ccsInteger),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]), 
             $wp->Criterion[4]);
        $this->UpdateFields["tkt_speed_id"]["Value"] = $this->cp["tkt_speed_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_parent_group_id"]["Value"] = $this->cp["tkt_speed_parent_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_order"]["Value"] = $this->cp["tkt_speed_order"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_group_id"]["Value"] = $this->cp["tkt_speed_group_id"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_value"]["Value"] = $this->cp["tkt_speed_value"]->GetDBValue(true);
        $this->UpdateFields["tkt_speed_param"]["Value"] = $this->cp["tkt_speed_param"]->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_speed_keys", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
    }
//End Update Method

//Delete Method @2-5E7A1A44
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $wp = new clsSQLParameters($this->ErrorBlock);
        $wp->AddParameter("1", "ctrlh_tkt_speed_id", ccsText, "", "", $this->h_tkt_speed_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("2", "ctrltkt_speed_parent_group_id", ccsText, "", "", $this->tkt_speed_parent_group_id->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("3", "ctrltkt_speed_group_id", ccsText, "", "", $this->tkt_speed_group_id->GetValue(true), "", true);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $wp->AddParameter("4", "ctrltkt_speed_order", ccsInteger, "", "", $this->tkt_speed_order->GetValue(true), "", false);
        if(!$wp->AllParamsSet()) {
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $wp->Criterion[1] = $wp->Operation(opEqual, "tkt_speed_id", $wp->GetDBValue("1"), $this->ToSQL($wp->GetDBValue("1"), ccsText),false);
        $wp->Criterion[2] = $wp->Operation(opEqual, "tkt_speed_parent_group_id", $wp->GetDBValue("2"), $this->ToSQL($wp->GetDBValue("2"), ccsText),false);
        $wp->Criterion[3] = $wp->Operation(opEqual, "tkt_speed_group_id", $wp->GetDBValue("3"), $this->ToSQL($wp->GetDBValue("3"), ccsText),true);
        $wp->Criterion[4] = $wp->Operation(opEqual, "tkt_speed_order", $wp->GetDBValue("4"), $this->ToSQL($wp->GetDBValue("4"), ccsInteger),false);
        $Where = $wp->opAND(
             false, $wp->opAND(
             false, $wp->opAND(
             false, 
             $wp->Criterion[1], 
             $wp->Criterion[2]), 
             $wp->Criterion[3]), 
             $wp->Criterion[4]);
        $this->SQL = "DELETE FROM ssf_tkt_speed_keys";
        $this->SQL = CCBuildSQL($this->SQL, $Where, "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
    }
//End Delete Method

} //End ssf_tkt_speed_keysDataSource Class @2-FCB6E20C

class clsSSFTicketSKPrueba { //SSFTicketSKPrueba class @1-91962F7E

//Variables @1-51D7F06F
    public $ComponentType = "IncludablePage";
    public $Connections = array();
    public $FileName = "";
    public $Redirect = "";
    public $Tpl = "";
    public $TemplateFileName = "";
    public $BlockToParse = "";
    public $ComponentName = "";
    public $Attributes = "";

    // Events;
    public $CCSEvents = "";
    public $CCSEventResult = "";
    public $RelativePath;
    public $Visible;
    public $Parent;
//End Variables

//Class_Initialize Event @1-77D7D265
    function clsSSFTicketSKPrueba($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "SSFTicketSKPrueba.php";
        $this->Redirect = "";
        $this->TemplateFileName = "SSFTicketSKPrueba.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-E133ACC8
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
        unset($this->ssf_tkt_speed_keys);
    }
//End Class_Terminate Event

//BindEvents Method @1-FE23E8ED
    function BindEvents()
    {
        $this->ssf_tkt_speed_keys->r_tkt_speed_id->CCSEvents["BeforeShow"] = "SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow";
        $this->ssf_tkt_speed_keys->CCSEvents["BeforeSelect"] = "SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInitialize", $this);
    }
//End BindEvents Method

//Operations Method @1-6807EE22
    function Operations()
    {
        global $Redirect;
        if(!$this->Visible)
            return "";
        $this->ssf_tkt_speed_keys->Operation();
    }
//End Operations Method

//Initialize Method @1-B3259B92
    function Initialize()
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        if(!$this->Visible)
            return "";
        $this->DBConnection1 = new clsDBConnection1();
        $this->Connections["Connection1"] = & $this->DBConnection1;
        $this->Attributes = $this->Parent->Attributes;

        // Create Components
        $this->ssf_tkt_speed_keys = new clsRecordSSFTicketSKPruebassf_tkt_speed_keys($this->RelativePath, $this);
        $this->ssf_tkt_speed_keys->Initialize();
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
    }
//End Initialize Method

//Show Method @1-8EB2D23F
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        $block_path = $Tpl->block_path;
        $Tpl->LoadTemplate("/POS/Other/" . $this->TemplateFileName, $this->ComponentName, $this->TemplateEncoding, "remove");
        $Tpl->block_path = $Tpl->block_path . "/" . $this->ComponentName;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $Tpl->block_path = $block_path;
            $Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Attributes->Show();
        $this->ssf_tkt_speed_keys->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $Tpl->SetVar($this->ComponentName, $Tpl->GetVar($this->ComponentName));
    }
//End Show Method

} //End SSFTicketSKPrueba Class @1-FCB6E20C

//Include Event File @1-F91F51A1
include(RelativePath . "/POS/Other/SSFTicketSKPrueba_events.php");
//End Include Event File


?>
