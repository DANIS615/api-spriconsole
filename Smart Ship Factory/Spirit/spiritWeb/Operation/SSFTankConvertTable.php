<?php
//Include Common Files @1-2377879C
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFTankConvertTable.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tank_conversion_table { //ssf_tank_conversion_table class @3-63E9EA08

//Variables @3-75DE5832

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
    public $Sorter_tank_id;
//End Variables

//Class_Initialize Event @3-AB44316D
    function clsGridssf_tank_conversion_table($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tank_conversion_table";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tank_conversion_table";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tank_conversion_tableDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tank_conversion_tableOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tank_conversion_tableDir", "");

        $this->tank_id = new clsControl(ccsLink, "tank_id", "tank_id", ccsText, "", CCGetRequestParam("tank_id", ccsGet, NULL), $this);
        $this->tank_id->Page = "SSFTankConvertTable.php";
        $this->Sorter_tank_id = new clsSorter($this->ComponentName, "Sorter_tank_id", $FileName, $this);
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

//Show Method @3-74DD8D98
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
            $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
                $this->tank_id->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->tank_id->Parameters = CCAddParam($this->tank_id->Parameters, "tank_id", $this->DataSource->f("tank_id"));
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->tank_id->Show();
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
        $this->Sorter_tank_id->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @3-B7F5770B
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tank_conversion_table Class @3-FCB6E20C

class clsssf_tank_conversion_tableDataSource extends clsDBConnection1 {  //ssf_tank_conversion_tableDataSource Class @3-89DCC17C

//DataSource Variables @3-94F54541
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $tank_id;
//End DataSource Variables

//DataSourceClass_Initialize Event @3-A4C4C595
    function clsssf_tank_conversion_tableDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tank_conversion_table";
        $this->Initialize();
        $this->tank_id = new clsField("tank_id", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @3-8AF02D53
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_tank_id" => array("tank_id", "")));
    }
//End SetOrder Method

//Prepare Method @3-CDD21234
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->Criterion[1] = "library = 'tank'";
        $this->wp->Criterion[2] = "groupname = 'general'";
        $this->wp->Criterion[3] = "parameter = 'ID'";
        $this->Where = $this->wp->opAND(
             false, $this->wp->opAND(
             false, 
             $this->wp->Criterion[1], 
             $this->wp->Criterion[2]), 
             $this->wp->Criterion[3]);
    }
//End Prepare Method

//Open Method @3-BBA3E81F
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM config_values";
        $this->SQL = "SELECT param_value AS tank_id \n\n" .
        "FROM config_values {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @3-023D9113
    function SetValues()
    {
        $this->tank_id->SetDBValue($this->f("tank_id"));
    }
//End SetValues Method

} //End ssf_tank_conversion_tableDataSource Class @3-FCB6E20C

class clsEditableGridssf_tank_conversion_table1 { //ssf_tank_conversion_table1 Class @13-66946E33

//Variables @13-5CAC8408

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
    public $Sorter_prod_height;
    public $Sorter_prod_volume;
//End Variables

//Class_Initialize Event @13-DCF8F9B0
    function clsEditableGridssf_tank_conversion_table1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "EditableGrid ssf_tank_conversion_table1/Error";
        $this->ControlsErrors = array();
        $this->ComponentName = "ssf_tank_conversion_table1";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->CachedColumns["tank_id"][0] = "tank_id";
        $this->CachedColumns["prod_height"][0] = "prod_height";
        $this->DataSource = new clsssf_tank_conversion_table1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 100;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: EditableGrid " . $this->ComponentName . "<br>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;

        $this->EmptyRows = 5;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
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

        $this->SorterName = CCGetParam("ssf_tank_conversion_table1Order", "");
        $this->SorterDirection = CCGetParam("ssf_tank_conversion_table1Dir", "");

        $this->lblTank = new clsControl(ccsLabel, "lblTank", "lblTank", ccsText, "", NULL, $this);
        $this->Sorter_prod_height = new clsSorter($this->ComponentName, "Sorter_prod_height", $FileName, $this);
        $this->Sorter_prod_volume = new clsSorter($this->ComponentName, "Sorter_prod_volume", $FileName, $this);
        $this->prod_height = new clsControl(ccsTextBox, "prod_height", $CCSLocales->GetText("prod_height"), ccsFloat, "", NULL, $this);
        $this->tank_id = new clsControl(ccsHidden, "tank_id", $CCSLocales->GetText("tank_id"), ccsInteger, "", NULL, $this);
        $this->tank_id->Required = true;
        $this->prod_volume = new clsControl(ccsTextBox, "prod_volume", $CCSLocales->GetText("prod_volume"), ccsFloat, "", NULL, $this);
        $this->CheckBox_Delete = new clsControl(ccsCheckBox, "CheckBox_Delete", "CheckBox_Delete", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), NULL, $this);
        $this->CheckBox_Delete->CheckedValue = true;
        $this->CheckBox_Delete->UncheckedValue = false;
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
        $this->Button_Submit = new clsButton("Button_Submit", $Method, $this);
        $this->Cancel = new clsButton("Cancel", $Method, $this);
    }
//End Class_Initialize Event

//Initialize Method @13-1DB7BAB5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);

        $this->DataSource->Parameters["urltank_id"] = CCGetFromGet("tank_id", NULL);
    }
//End Initialize Method

//GetFormParameters Method @13-8EB4CB38
    function GetFormParameters()
    {
        for($RowNumber = 1; $RowNumber <= $this->TotalRows; $RowNumber++)
        {
            $this->FormParameters["prod_height"][$RowNumber] = CCGetFromPost("prod_height_" . $RowNumber, NULL);
            $this->FormParameters["tank_id"][$RowNumber] = CCGetFromPost("tank_id_" . $RowNumber, NULL);
            $this->FormParameters["prod_volume"][$RowNumber] = CCGetFromPost("prod_volume_" . $RowNumber, NULL);
            $this->FormParameters["CheckBox_Delete"][$RowNumber] = CCGetFromPost("CheckBox_Delete_" . $RowNumber, NULL);
        }
    }
//End GetFormParameters Method

//Validate Method @13-F991414A
    function Validate()
    {
        $Validation = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);

        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["tank_id"] = $this->CachedColumns["tank_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["prod_height"] = $this->CachedColumns["prod_height"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
            $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
            $this->prod_volume->SetText($this->FormParameters["prod_volume"][$this->RowNumber], $this->RowNumber);
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

//ValidateRow Method @13-70894B5A
    function ValidateRow()
    {
        global $CCSLocales;
        $this->prod_height->Validate();
        $this->tank_id->Validate();
        $this->prod_volume->Validate();
        $this->CheckBox_Delete->Validate();
        $this->RowErrors = new clsErrors();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidateRow", $this);
        $errors = "";
        $errors = ComposeStrings($errors, $this->prod_height->Errors->ToString());
        $errors = ComposeStrings($errors, $this->tank_id->Errors->ToString());
        $errors = ComposeStrings($errors, $this->prod_volume->Errors->ToString());
        $errors = ComposeStrings($errors, $this->CheckBox_Delete->Errors->ToString());
        $this->prod_height->Errors->Clear();
        $this->tank_id->Errors->Clear();
        $this->prod_volume->Errors->Clear();
        $this->CheckBox_Delete->Errors->Clear();
        $errors = ComposeStrings($errors, $this->RowErrors->ToString());
        $this->RowsErrors[$this->RowNumber] = $errors;
        return $errors != "" ? 0 : 1;
    }
//End ValidateRow Method

//CheckInsert Method @13-619015D7
    function CheckInsert()
    {
        $filed = false;
        $filed = ($filed || strlen($this->FormParameters["prod_height"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["tank_id"][$this->RowNumber]));
        $filed = ($filed || strlen($this->FormParameters["prod_volume"][$this->RowNumber]));
        return $filed;
    }
//End CheckInsert Method

//CheckErrors Method @13-F5A3B433
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @13-D9E4781C
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
        if($this->Button_Submit->Pressed) {
            $this->PressedButton = "Button_Submit";
        } else if($this->Cancel->Pressed) {
            $this->PressedButton = "Cancel";
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
        if($this->PressedButton == "Button_Submit") {
            if(!CCGetEvent($this->Button_Submit->CCSEvents, "OnClick", $this->Button_Submit) || !$this->UpdateGrid()) {
                $Redirect = "";
            }
        } else if($this->PressedButton == "Cancel") {
            if(!CCGetEvent($this->Cancel->CCSEvents, "OnClick", $this->Cancel)) {
                $Redirect = "";
            } else {
                $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm", "tank_id", "dup_tank_id"));
            }
        } else {
            $Redirect = "";
        }
        if ($Redirect)
            $this->DataSource->close();
    }
//End Operation Method

//UpdateGrid Method @13-604A121C
    function UpdateGrid()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSubmit", $this);
        //if(!$this->Validate()) return;
        $Validation = true;
        for($this->RowNumber = 1; $this->RowNumber <= $this->TotalRows; $this->RowNumber++)
        {
            $this->DataSource->CachedColumns["tank_id"] = $this->CachedColumns["tank_id"][$this->RowNumber];
            $this->DataSource->CachedColumns["prod_height"] = $this->CachedColumns["prod_height"][$this->RowNumber];
            $this->DataSource->CurrentRow = $this->RowNumber;
            $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
            $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
            $this->prod_volume->SetText($this->FormParameters["prod_volume"][$this->RowNumber], $this->RowNumber);
            $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
			if ($this->prod_height->GetValue() != "" ) {
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
        }
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterSubmit", $this);
        if ($this->Errors->Count() == 0 && $Validation){
            $this->DataSource->close();
            return true;
        }
        return false;
    }
//End UpdateGrid Method

//InsertRow Method @13-0B6BB476
    function InsertRow()
    {
        if(!$this->InsertAllowed) return false;
        $this->DataSource->prod_height->SetValue($this->prod_height->GetValue(true));
        $this->DataSource->tank_id->SetValue($this->tank_id->GetValue(true));
        $this->DataSource->prod_volume->SetValue($this->prod_volume->GetValue(true));
        $this->DataSource->Insert();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End InsertRow Method

//UpdateRow Method @13-79C4467F
    function UpdateRow()
    {
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->prod_height->SetValue($this->prod_height->GetValue(true));
        $this->DataSource->tank_id->SetValue($this->tank_id->GetValue(true));
        $this->DataSource->prod_volume->SetValue($this->prod_volume->GetValue(true));
        $this->DataSource->Update();
        $errors = "";
        if($this->DataSource->Errors->Count() > 0) {
            $errors = $this->DataSource->Errors->ToString();
            $this->RowsErrors[$this->RowNumber] = $errors;
            $this->DataSource->Errors->Clear();
        }
        return (($this->Errors->Count() == 0) && !strlen($errors));
    }
//End UpdateRow Method

//DeleteRow Method @13-A4A656F6
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

//FormScript Method @13-59800DB5
    function FormScript($TotalRows)
    {
        $script = "";
        return $script;
    }
//End FormScript Method

//SetFormState Method @13-69F657DF
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
            for($i = 2; $i < sizeof($pieces); $i = $i + 2)  {
                $piece = $pieces[$i + 0];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["tank_id"][$RowNumber] = $piece;
                $piece = $pieces[$i + 1];
                $piece = str_replace("\\" . ord("\\"), "\\", $piece);
                $piece = str_replace("\\" . ord(";"), ";", $piece);
                $this->CachedColumns["prod_height"][$RowNumber] = $piece;
                $RowNumber++;
            }

            if(!$RowNumber) { $RowNumber = 1; }
            for($i = 1; $i <= $this->EmptyRows; $i++) {
                $this->CachedColumns["tank_id"][$RowNumber] = "";
                $this->CachedColumns["prod_height"][$RowNumber] = "";
                $RowNumber++;
            }
        }
    }
//End SetFormState Method

//GetFormState Method @13-E346964E
    function GetFormState($NonEmptyRows)
    {
        if(!$this->FormSubmitted) {
            $this->FormState  = $NonEmptyRows . ";";
            $this->FormState .= $this->InsertAllowed ? $this->EmptyRows : "0";
            if($NonEmptyRows) {
                for($i = 0; $i <= $NonEmptyRows; $i++) {
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["tank_id"][$i]));
                    $this->FormState .= ";" . str_replace(";", "\\;", str_replace("\\", "\\\\", $this->CachedColumns["prod_height"][$i]));
                }
            }
        }
        return $this->FormState;
    }
//End GetFormState Method

//Show Method @13-855CED8E
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
        $this->ControlsVisible["prod_height"] = $this->prod_height->Visible;
        $this->ControlsVisible["tank_id"] = $this->tank_id->Visible;
        $this->ControlsVisible["prod_volume"] = $this->prod_volume->Visible;
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
                    $this->CachedColumns["tank_id"][$this->RowNumber] = $this->DataSource->CachedColumns["tank_id"];
                    $this->CachedColumns["prod_height"][$this->RowNumber] = $this->DataSource->CachedColumns["prod_height"];
                    $this->CheckBox_Delete->SetValue("");
                    $this->prod_height->SetValue($this->DataSource->prod_height->GetValue());
                    $this->tank_id->SetValue($this->DataSource->tank_id->GetValue());
                    $this->prod_volume->SetValue($this->DataSource->prod_volume->GetValue());
                } elseif ($this->FormSubmitted && $is_next_record) {
                    $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
                    $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
                    $this->prod_volume->SetText($this->FormParameters["prod_volume"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                } elseif (!$this->FormSubmitted) {
                    $this->CachedColumns["tank_id"][$this->RowNumber] = "";
                    $this->CachedColumns["prod_height"][$this->RowNumber] = "";
                    $this->prod_height->SetText("");
                    $this->tank_id->SetText("");
                    $this->prod_volume->SetText("");
                } else {
                    $this->prod_height->SetText($this->FormParameters["prod_height"][$this->RowNumber], $this->RowNumber);
                    $this->tank_id->SetText($this->FormParameters["tank_id"][$this->RowNumber], $this->RowNumber);
                    $this->prod_volume->SetText($this->FormParameters["prod_volume"][$this->RowNumber], $this->RowNumber);
                    $this->CheckBox_Delete->SetText($this->FormParameters["CheckBox_Delete"][$this->RowNumber], $this->RowNumber);
                }
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->prod_height->Show($this->RowNumber);
                $this->tank_id->Show($this->RowNumber);
                $this->prod_volume->Show($this->RowNumber);
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
                        if (($this->DataSource->CachedColumns["tank_id"] == $this->CachedColumns["tank_id"][$this->RowNumber]) && ($this->DataSource->CachedColumns["prod_height"] == $this->CachedColumns["prod_height"][$this->RowNumber])) {
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
        $this->lblTank->Show();
        $this->Sorter_prod_height->Show();
        $this->Sorter_prod_volume->Show();
        $this->Navigator->Show();
        $this->Button_Submit->Show();
        $this->Cancel->Show();

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

} //End ssf_tank_conversion_table1 Class @13-FCB6E20C

class clsssf_tank_conversion_table1DataSource extends clsDBConnection1 {  //ssf_tank_conversion_table1DataSource Class @13-A4789801

//DataSource Variables @13-55D74F26
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $InsertParameters;
    public $UpdateParameters;
    public $DeleteParameters;
    public $CountSQL;
    public $wp;
    public $AllParametersSet;

    public $CachedColumns;
    public $CurrentRow;
    public $InsertFields = array();
    public $UpdateFields = array();

    // Datasource fields
    public $prod_height;
    public $tank_id;
    public $prod_volume;
    public $CheckBox_Delete;
//End DataSource Variables

//DataSourceClass_Initialize Event @13-8597D026
    function clsssf_tank_conversion_table1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "EditableGrid ssf_tank_conversion_table1/Error";
        $this->Initialize();
        $this->prod_height = new clsField("prod_height", ccsFloat, "");
        $this->tank_id = new clsField("tank_id", ccsInteger, "");
        $this->prod_volume = new clsField("prod_volume", ccsFloat, "");
        $this->CheckBox_Delete = new clsField("CheckBox_Delete", ccsBoolean, array("t", "f", ""));

        $this->InsertFields["prod_height"] = array("Name" => "prod_height", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["tank_id"] = array("Name" => "tank_id", "Value" => "", "DataType" => ccsInteger);
        $this->InsertFields["prod_volume"] = array("Name" => "prod_volume", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["prod_height"] = array("Name" => "prod_height", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["tank_id"] = array("Name" => "tank_id", "Value" => "", "DataType" => ccsInteger);
        $this->UpdateFields["prod_volume"] = array("Name" => "prod_volume", "Value" => "", "DataType" => ccsFloat);
    }
//End DataSourceClass_Initialize Event

//SetOrder Method @13-B4BB82B0
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_prod_height" => array("prod_height", ""), 
            "Sorter_prod_volume" => array("prod_volume", "")));
    }
//End SetOrder Method

//Prepare Method @13-34FA7017
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urltank_id", ccsInteger, "", "", $this->Parameters["urltank_id"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "tank_id", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsInteger),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @13-E734CAB3
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tank_conversion_table_ref_val";
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tank_conversion_table_ref_val {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @13-018280A4
    function SetValues()
    {
        $this->CachedColumns["tank_id"] = $this->f("tank_id");
        $this->CachedColumns["prod_height"] = $this->f("prod_height");
        $this->prod_height->SetDBValue(trim($this->f("prod_height")));
        $this->tank_id->SetDBValue(trim($this->f("tank_id")));
        $this->prod_volume->SetDBValue(trim($this->f("prod_volume")));
    }
//End SetValues Method

//Insert Method @13-560C5EFE
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["prod_height"]["Value"] = $this->prod_height->GetDBValue(true);
        $this->InsertFields["tank_id"]["Value"] = $this->tank_id->GetDBValue(true);
        $this->InsertFields["prod_volume"]["Value"] = $this->prod_volume->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tank_conversion_table_ref_val", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @13-CEAF7CF6
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "tank_id=" . $this->ToSQL($this->CachedColumns["tank_id"], ccsInteger) . " AND prod_height=" . $this->ToSQL($this->CachedColumns["prod_height"], ccsFloat);
        $this->UpdateFields["prod_height"]["Value"] = $this->prod_height->GetDBValue(true);
        $this->UpdateFields["tank_id"]["Value"] = $this->tank_id->GetDBValue(true);
        $this->UpdateFields["prod_volume"]["Value"] = $this->prod_volume->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tank_conversion_table_ref_val", $this->UpdateFields, $this);
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteUpdate", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteUpdate", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Update Method

//Delete Method @13-AB854ED7
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $SelectWhere = $this->Where;
        $this->Where = "tank_id=" . $this->ToSQL($this->CachedColumns["tank_id"], ccsInteger) . " AND prod_height=" . $this->ToSQL($this->CachedColumns["prod_height"], ccsFloat);
        $this->SQL = "DELETE FROM ssf_tank_conversion_table_ref_val";
        $this->SQL = CCBuildSQL($this->SQL, $this->Where, "");
        if (!strlen($this->Where) && $this->Errors->Count() == 0) 
            $this->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteDelete", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteDelete", $this->Parent);
        }
        $this->Where = $SelectWhere;
    }
//End Delete Method

} //End ssf_tank_conversion_table1DataSource Class @13-FCB6E20C

//Initialize Page @1-DB68E305
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
$TemplateFileName = "SSFTankConvertTable.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-6DBFE31E
include("./SSFTankConvertTable_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-35B986F2
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tank_conversion_table = new clsGridssf_tank_conversion_table("", $MainPage);
$Button_Duplicate = new clsButton("Button_Duplicate", ccsGet, $MainPage);
$dup_tank_id = new clsControl(ccsHidden, "dup_tank_id", "dup_tank_id", ccsText, "", CCGetRequestParam("dup_tank_id", ccsGet, NULL), $MainPage);
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link1->Page = "SSFTankConvertTable.php";
$ssf_tank_conversion_table1 = new clsEditableGridssf_tank_conversion_table1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tank_conversion_table = & $ssf_tank_conversion_table;
$MainPage->Button_Duplicate = & $Button_Duplicate;
$MainPage->dup_tank_id = & $dup_tank_id;
$MainPage->Link1 = & $Link1;
$MainPage->ssf_tank_conversion_table1 = & $ssf_tank_conversion_table1;
$ssf_tank_conversion_table->Initialize();
$ssf_tank_conversion_table1->Initialize();

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

//Execute Components @1-EA67C56E
$SSFSpiritHeader->Operations();
$ssf_tank_conversion_table1->Operation();
//End Execute Components

//Go to destination page @1-38D52EA1
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tank_conversion_table);
    unset($ssf_tank_conversion_table1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-C9E0FFEC
$SSFSpiritHeader->Show();
$ssf_tank_conversion_table->Show();
$Button_Duplicate->Show();
$ssf_tank_conversion_table1->Show();
$dup_tank_id->Show();
$Link1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-6E56FE7B
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tank_conversion_table);
unset($ssf_tank_conversion_table1);
unset($Tpl);
//End Unload Page


?>
