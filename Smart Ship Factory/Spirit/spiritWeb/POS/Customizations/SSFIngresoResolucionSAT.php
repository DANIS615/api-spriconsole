<?php
//Include Common Files @1-C2E12BBB
define("RelativePath", "../..");
define("PathToCurrentPage", "/POS/Customizations/");
define("FileName", "SSFIngresoResolucionSAT.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @36-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsGridssf_tkt_resolucion_sat { //ssf_tkt_resolucion_sat class @37-AFE33F53

//Variables @37-CFAEC655

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
    public $Sorter_ssf_sat_nro_resolucion;
    public $Sorter_ssf_sat_date_resolucion;
    public $Sorter_ssf_sat_group;
    public $Sorter_ssf_sat_desde;
    public $Sorter_ssf_sat_hasta;
    public $Sorter_ssf_sat_date;
    public $Sorter_ssf_sat_used;
    public $Sorter_ssf_sat_type;
//End Variables

//Class_Initialize Event @37-BB442B44
    function clsGridssf_tkt_resolucion_sat($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "ssf_tkt_resolucion_sat";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid ssf_tkt_resolucion_sat";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clsssf_tkt_resolucion_satDataSource($this);
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
        $this->SorterName = CCGetParam("ssf_tkt_resolucion_satOrder", "");
        $this->SorterDirection = CCGetParam("ssf_tkt_resolucion_satDir", "");

        $this->ssf_sat_nro_resolucion = new clsControl(ccsLink, "ssf_sat_nro_resolucion", "ssf_sat_nro_resolucion", ccsText, "", CCGetRequestParam("ssf_sat_nro_resolucion", ccsGet, NULL), $this);
        $this->ssf_sat_nro_resolucion->Page = "SSFIngresoResolucionSAT.php";
        $this->ssf_sat_date_resolucion = new clsControl(ccsLabel, "ssf_sat_date_resolucion", "ssf_sat_date_resolucion", ccsText, "", CCGetRequestParam("ssf_sat_date_resolucion", ccsGet, NULL), $this);
        $this->ssf_sat_group = new clsControl(ccsLabel, "ssf_sat_group", "ssf_sat_group", ccsText, "", CCGetRequestParam("ssf_sat_group", ccsGet, NULL), $this);
        $this->ssf_sat_desde = new clsControl(ccsLabel, "ssf_sat_desde", "ssf_sat_desde", ccsFloat, "", CCGetRequestParam("ssf_sat_desde", ccsGet, NULL), $this);
        $this->ssf_sat_hasta = new clsControl(ccsLabel, "ssf_sat_hasta", "ssf_sat_hasta", ccsFloat, "", CCGetRequestParam("ssf_sat_hasta", ccsGet, NULL), $this);
        $this->ssf_sat_date = new clsControl(ccsLabel, "ssf_sat_date", "ssf_sat_date", ccsText, "", CCGetRequestParam("ssf_sat_date", ccsGet, NULL), $this);
        $this->ssf_sat_used = new clsControl(ccsLabel, "ssf_sat_used", "ssf_sat_used", ccsText, "", CCGetRequestParam("ssf_sat_used", ccsGet, NULL), $this);
        $this->ssf_sat_type = new clsControl(ccsLabel, "ssf_sat_type", "ssf_sat_type", ccsText, "", CCGetRequestParam("ssf_sat_type", ccsGet, NULL), $this);
        $this->Sorter_ssf_sat_nro_resolucion = new clsSorter($this->ComponentName, "Sorter_ssf_sat_nro_resolucion", $FileName, $this);
        $this->Sorter_ssf_sat_date_resolucion = new clsSorter($this->ComponentName, "Sorter_ssf_sat_date_resolucion", $FileName, $this);
        $this->Sorter_ssf_sat_group = new clsSorter($this->ComponentName, "Sorter_ssf_sat_group", $FileName, $this);
        $this->Sorter_ssf_sat_desde = new clsSorter($this->ComponentName, "Sorter_ssf_sat_desde", $FileName, $this);
        $this->Sorter_ssf_sat_hasta = new clsSorter($this->ComponentName, "Sorter_ssf_sat_hasta", $FileName, $this);
        $this->Sorter_ssf_sat_date = new clsSorter($this->ComponentName, "Sorter_ssf_sat_date", $FileName, $this);
        $this->Sorter_ssf_sat_used = new clsSorter($this->ComponentName, "Sorter_ssf_sat_used", $FileName, $this);
        $this->Sorter_ssf_sat_type = new clsSorter($this->ComponentName, "Sorter_ssf_sat_type", $FileName, $this);
        $this->ssf_tkt_resolucion_sat_Insert = new clsControl(ccsLink, "ssf_tkt_resolucion_sat_Insert", "ssf_tkt_resolucion_sat_Insert", ccsText, "", CCGetRequestParam("ssf_tkt_resolucion_sat_Insert", ccsGet, NULL), $this);
        $this->ssf_tkt_resolucion_sat_Insert->Parameters = CCGetQueryString("QueryString", array("ssf_sat_nro_resolucion", "ccsForm"));
        $this->ssf_tkt_resolucion_sat_Insert->Page = "SSFIngresoResolucionSAT.php";
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpCentered, $this);
    }
//End Class_Initialize Event

//Initialize Method @37-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @37-C53DB665
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
            $this->ControlsVisible["ssf_sat_nro_resolucion"] = $this->ssf_sat_nro_resolucion->Visible;
            $this->ControlsVisible["ssf_sat_date_resolucion"] = $this->ssf_sat_date_resolucion->Visible;
            $this->ControlsVisible["ssf_sat_group"] = $this->ssf_sat_group->Visible;
            $this->ControlsVisible["ssf_sat_desde"] = $this->ssf_sat_desde->Visible;
            $this->ControlsVisible["ssf_sat_hasta"] = $this->ssf_sat_hasta->Visible;
            $this->ControlsVisible["ssf_sat_date"] = $this->ssf_sat_date->Visible;
            $this->ControlsVisible["ssf_sat_used"] = $this->ssf_sat_used->Visible;
            $this->ControlsVisible["ssf_sat_type"] = $this->ssf_sat_type->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->ssf_sat_nro_resolucion->SetValue($this->DataSource->ssf_sat_nro_resolucion->GetValue());
                $this->ssf_sat_nro_resolucion->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
                $this->ssf_sat_nro_resolucion->Parameters = CCAddParam($this->ssf_sat_nro_resolucion->Parameters, "ssf_sat_nro_resolucion", $this->DataSource->f("ssf_sat_nro_resolucion"));
                $this->ssf_sat_date_resolucion->SetValue($this->DataSource->ssf_sat_date_resolucion->GetValue());
                $this->ssf_sat_group->SetValue($this->DataSource->ssf_sat_group->GetValue());
                $this->ssf_sat_desde->SetValue($this->DataSource->ssf_sat_desde->GetValue());
                $this->ssf_sat_hasta->SetValue($this->DataSource->ssf_sat_hasta->GetValue());
                $this->ssf_sat_date->SetValue($this->DataSource->ssf_sat_date->GetValue());
                $this->ssf_sat_used->SetValue($this->DataSource->ssf_sat_used->GetValue());
                $this->ssf_sat_type->SetValue($this->DataSource->ssf_sat_type->GetValue());
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->ssf_sat_nro_resolucion->Show();
                $this->ssf_sat_date_resolucion->Show();
                $this->ssf_sat_group->Show();
                $this->ssf_sat_desde->Show();
                $this->ssf_sat_hasta->Show();
                $this->ssf_sat_date->Show();
                $this->ssf_sat_used->Show();
                $this->ssf_sat_type->Show();
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
        $this->Sorter_ssf_sat_nro_resolucion->Show();
        $this->Sorter_ssf_sat_date_resolucion->Show();
        $this->Sorter_ssf_sat_group->Show();
        $this->Sorter_ssf_sat_desde->Show();
        $this->Sorter_ssf_sat_hasta->Show();
        $this->Sorter_ssf_sat_date->Show();
        $this->Sorter_ssf_sat_used->Show();
        $this->Sorter_ssf_sat_type->Show();
        $this->ssf_tkt_resolucion_sat_Insert->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @37-CB794DC5
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->ssf_sat_nro_resolucion->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_date_resolucion->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_group->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_desde->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_hasta->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_date->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_used->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ssf_sat_type->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End ssf_tkt_resolucion_sat Class @37-FCB6E20C

class clsssf_tkt_resolucion_satDataSource extends clsDBConnection1 {  //ssf_tkt_resolucion_satDataSource Class @37-41B965E0

//DataSource Variables @37-4666719D
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $ssf_sat_nro_resolucion;
    public $ssf_sat_date_resolucion;
    public $ssf_sat_group;
    public $ssf_sat_desde;
    public $ssf_sat_hasta;
    public $ssf_sat_date;
    public $ssf_sat_used;
    public $ssf_sat_type;
//End DataSource Variables

//DataSourceClass_Initialize Event @37-D1D9E3B6
    function clsssf_tkt_resolucion_satDataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid ssf_tkt_resolucion_sat";
        $this->Initialize();
        $this->ssf_sat_nro_resolucion = new clsField("ssf_sat_nro_resolucion", ccsText, "");
        $this->ssf_sat_date_resolucion = new clsField("ssf_sat_date_resolucion", ccsText, "");
        $this->ssf_sat_group = new clsField("ssf_sat_group", ccsText, "");
        $this->ssf_sat_desde = new clsField("ssf_sat_desde", ccsFloat, "");
        $this->ssf_sat_hasta = new clsField("ssf_sat_hasta", ccsFloat, "");
        $this->ssf_sat_date = new clsField("ssf_sat_date", ccsText, "");
        $this->ssf_sat_used = new clsField("ssf_sat_used", ccsText, "");
        $this->ssf_sat_type = new clsField("ssf_sat_type", ccsText, "");

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @37-BAAB707F
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "ssf_sat_group, ssf_sat_desde";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_ssf_sat_nro_resolucion" => array("ssf_sat_nro_resolucion", ""), 
            "Sorter_ssf_sat_date_resolucion" => array("ssf_sat_date_resolucion", ""), 
            "Sorter_ssf_sat_group" => array("ssf_sat_group", ""), 
            "Sorter_ssf_sat_desde" => array("ssf_sat_desde", ""), 
            "Sorter_ssf_sat_hasta" => array("ssf_sat_hasta", ""), 
            "Sorter_ssf_sat_date" => array("ssf_sat_date", ""), 
            "Sorter_ssf_sat_used" => array("ssf_sat_used", ""), 
            "Sorter_ssf_sat_type" => array("ssf_sat_type", "")));
    }
//End SetOrder Method

//Prepare Method @37-14D6CD9D
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
    }
//End Prepare Method

//Open Method @37-E7F6F95A
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*)\n\n" .
        "FROM ssf_tkt_resolucion_sat";
        $this->SQL = "SELECT ssf_sat_nro_resolucion, ssf_sat_date_resolucion, ssf_sat_group, ssf_sat_desde, ssf_sat_hasta, ssf_sat_date, ssf_sat_used, ssf_sat_type \n\n" .
        "FROM ssf_tkt_resolucion_sat {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @37-FF7C1831
    function SetValues()
    {
        $this->ssf_sat_nro_resolucion->SetDBValue($this->f("ssf_sat_nro_resolucion"));
        $this->ssf_sat_date_resolucion->SetDBValue($this->f("ssf_sat_date_resolucion"));
        $this->ssf_sat_group->SetDBValue($this->f("ssf_sat_group"));
        $this->ssf_sat_desde->SetDBValue(trim($this->f("ssf_sat_desde")));
        $this->ssf_sat_hasta->SetDBValue(trim($this->f("ssf_sat_hasta")));
        $this->ssf_sat_date->SetDBValue($this->f("ssf_sat_date"));
        $this->ssf_sat_used->SetDBValue($this->f("ssf_sat_used"));
        $this->ssf_sat_type->SetDBValue($this->f("ssf_sat_type"));
    }
//End SetValues Method

} //End ssf_tkt_resolucion_satDataSource Class @37-FCB6E20C

class clsRecordssf_tkt_resolucion_sat1 { //ssf_tkt_resolucion_sat1 Class @62-8F07ED67

//Variables @62-9E315808

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

//Class_Initialize Event @62-3565BD76
    function clsRecordssf_tkt_resolucion_sat1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record ssf_tkt_resolucion_sat1/Error";
        $this->DataSource = new clsssf_tkt_resolucion_sat1DataSource($this);
        $this->ds = & $this->DataSource;
        $this->InsertAllowed = true;
        $this->UpdateAllowed = true;
        $this->DeleteAllowed = true;
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "ssf_tkt_resolucion_sat1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->EditMode = ($FormMethod == "Edit");
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->ssf_sat_nro_resolucion = new clsControl(ccsTextBox, "ssf_sat_nro_resolucion", $CCSLocales->GetText("ssf_sat_nro_resolucion"), ccsText, "", CCGetRequestParam("ssf_sat_nro_resolucion", $Method, NULL), $this);
            $this->ssf_sat_nro_resolucion->Required = true;
            $this->ssf_sat_date_resolucion = new clsControl(ccsTextBox, "ssf_sat_date_resolucion", $CCSLocales->GetText("ssf_sat_date_resolucion"), ccsText, "", CCGetRequestParam("ssf_sat_date_resolucion", $Method, NULL), $this);
            $this->ssf_sat_date_resolucion->Required = true;
            $this->DatePicker_ssf_sat_date_resolucion1 = new clsDatePicker("DatePicker_ssf_sat_date_resolucion1", "ssf_tkt_resolucion_sat1", "ssf_sat_date_resolucion", $this);
            $this->ssf_sat_group = new clsControl(ccsTextBox, "ssf_sat_group", $CCSLocales->GetText("ssf_sat_group"), ccsText, "", CCGetRequestParam("ssf_sat_group", $Method, NULL), $this);
            $this->ssf_sat_group->Required = true;
            $this->ssf_sat_desde = new clsControl(ccsTextBox, "ssf_sat_desde", $CCSLocales->GetText("ssf_sat_desde"), ccsFloat, "", CCGetRequestParam("ssf_sat_desde", $Method, NULL), $this);
            $this->ssf_sat_desde->Required = true;
            $this->ssf_sat_hasta = new clsControl(ccsTextBox, "ssf_sat_hasta", $CCSLocales->GetText("ssf_sat_hasta"), ccsFloat, "", CCGetRequestParam("ssf_sat_hasta", $Method, NULL), $this);
            $this->ssf_sat_hasta->Required = true;
            $this->lstSatType = new clsControl(ccsListBox, "lstSatType", "lstSatType", ccsText, "", CCGetRequestParam("lstSatType", $Method, NULL), $this);
            $this->lstSatType->DSType = dsListOfValues;
            $this->lstSatType->Values = array(array("FACT", "Facturas"), array("CRED", "Notas de Crédito"));
            $this->lstSatType->Required = true;
            $this->ssf_sat_type = new clsControl(ccsTextBox, "ssf_sat_type", "ssf_sat_type", ccsText, "", CCGetRequestParam("ssf_sat_type", $Method, NULL), $this);
            $this->Button_Insert = new clsButton("Button_Insert", $Method, $this);
            $this->Button_Update = new clsButton("Button_Update", $Method, $this);
            $this->Button_Delete = new clsButton("Button_Delete", $Method, $this);
            $this->Button_Cancel = new clsButton("Button_Cancel", $Method, $this);
            $this->ssf_sat_date = new clsControl(ccsHidden, "ssf_sat_date", $CCSLocales->GetText("ssf_sat_date"), ccsText, "", CCGetRequestParam("ssf_sat_date", $Method, NULL), $this);
            $this->ssf_sat_date->Required = true;
            $this->ssf_sat_used = new clsControl(ccsHidden, "ssf_sat_used", $CCSLocales->GetText("ssf_sat_used"), ccsText, "", CCGetRequestParam("ssf_sat_used", $Method, NULL), $this);
            if(!$this->FormSubmitted) {
                if(!is_array($this->lstSatType->Value) && !strlen($this->lstSatType->Value) && $this->lstSatType->Value !== false)
                    $this->lstSatType->SetText(FACT);
            }
        }
    }
//End Class_Initialize Event

//Initialize Method @62-14A4C97C
    function Initialize()
    {

        if(!$this->Visible)
            return;

        $this->DataSource->Parameters["urlssf_sat_nro_resolucion"] = CCGetFromGet("ssf_sat_nro_resolucion", NULL);
    }
//End Initialize Method

//Validate Method @62-A41BB29D
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->ssf_sat_nro_resolucion->Validate() && $Validation);
        $Validation = ($this->ssf_sat_date_resolucion->Validate() && $Validation);
        $Validation = ($this->ssf_sat_group->Validate() && $Validation);
        $Validation = ($this->ssf_sat_desde->Validate() && $Validation);
        $Validation = ($this->ssf_sat_hasta->Validate() && $Validation);
        $Validation = ($this->lstSatType->Validate() && $Validation);
        $Validation = ($this->ssf_sat_type->Validate() && $Validation);
        $Validation = ($this->ssf_sat_date->Validate() && $Validation);
        $Validation = ($this->ssf_sat_used->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->ssf_sat_nro_resolucion->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_date_resolucion->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_group->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_desde->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_hasta->Errors->Count() == 0);
        $Validation =  $Validation && ($this->lstSatType->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_type->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_date->Errors->Count() == 0);
        $Validation =  $Validation && ($this->ssf_sat_used->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @62-B16B5D13
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->ssf_sat_nro_resolucion->Errors->Count());
        $errors = ($errors || $this->ssf_sat_date_resolucion->Errors->Count());
        $errors = ($errors || $this->DatePicker_ssf_sat_date_resolucion1->Errors->Count());
        $errors = ($errors || $this->ssf_sat_group->Errors->Count());
        $errors = ($errors || $this->ssf_sat_desde->Errors->Count());
        $errors = ($errors || $this->ssf_sat_hasta->Errors->Count());
        $errors = ($errors || $this->lstSatType->Errors->Count());
        $errors = ($errors || $this->ssf_sat_type->Errors->Count());
        $errors = ($errors || $this->ssf_sat_date->Errors->Count());
        $errors = ($errors || $this->ssf_sat_used->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        $errors = ($errors || $this->DataSource->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @62-EC57B482
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
        $Redirect = "SSFIngresoResolucionSAT.php" . "?" . CCGetQueryString("QueryString", array("ccsForm"));
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

//InsertRow Method @62-CEF2B382
    function InsertRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInsert", $this);
        if(!$this->InsertAllowed) return false;
        $this->DataSource->ssf_sat_nro_resolucion->SetValue($this->ssf_sat_nro_resolucion->GetValue(true));
        $this->DataSource->ssf_sat_date_resolucion->SetValue($this->ssf_sat_date_resolucion->GetValue(true));
        $this->DataSource->ssf_sat_group->SetValue($this->ssf_sat_group->GetValue(true));
        $this->DataSource->ssf_sat_desde->SetValue($this->ssf_sat_desde->GetValue(true));
        $this->DataSource->ssf_sat_hasta->SetValue($this->ssf_sat_hasta->GetValue(true));
        $this->DataSource->lstSatType->SetValue($this->lstSatType->GetValue(true));
        $this->DataSource->ssf_sat_date->SetValue($this->ssf_sat_date->GetValue(true));
        $this->DataSource->ssf_sat_used->SetValue($this->ssf_sat_used->GetValue(true));
        $this->DataSource->Insert();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInsert", $this);
        return (!$this->CheckErrors());
    }
//End InsertRow Method

//UpdateRow Method @62-B29BE84A
    function UpdateRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUpdate", $this);
        if(!$this->UpdateAllowed) return false;
        $this->DataSource->ssf_sat_nro_resolucion->SetValue($this->ssf_sat_nro_resolucion->GetValue(true));
        $this->DataSource->ssf_sat_date_resolucion->SetValue($this->ssf_sat_date_resolucion->GetValue(true));
        $this->DataSource->ssf_sat_group->SetValue($this->ssf_sat_group->GetValue(true));
        $this->DataSource->ssf_sat_desde->SetValue($this->ssf_sat_desde->GetValue(true));
        $this->DataSource->ssf_sat_hasta->SetValue($this->ssf_sat_hasta->GetValue(true));
        $this->DataSource->lstSatType->SetValue($this->lstSatType->GetValue(true));
        $this->DataSource->ssf_sat_date->SetValue($this->ssf_sat_date->GetValue(true));
        $this->DataSource->ssf_sat_used->SetValue($this->ssf_sat_used->GetValue(true));
        $this->DataSource->Update();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterUpdate", $this);
        return (!$this->CheckErrors());
    }
//End UpdateRow Method

//DeleteRow Method @62-299D98C3
    function DeleteRow()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeDelete", $this);
        if(!$this->DeleteAllowed) return false;
        $this->DataSource->Delete();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterDelete", $this);
        return (!$this->CheckErrors());
    }
//End DeleteRow Method

//Show Method @62-5FB3E130
    function Show()
    {
        global $Tpl;
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->lstSatType->Prepare();

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
                    $this->ssf_sat_nro_resolucion->SetValue($this->DataSource->ssf_sat_nro_resolucion->GetValue());
                    $this->ssf_sat_date_resolucion->SetValue($this->DataSource->ssf_sat_date_resolucion->GetValue());
                    $this->ssf_sat_group->SetValue($this->DataSource->ssf_sat_group->GetValue());
                    $this->ssf_sat_desde->SetValue($this->DataSource->ssf_sat_desde->GetValue());
                    $this->ssf_sat_hasta->SetValue($this->DataSource->ssf_sat_hasta->GetValue());
                    $this->lstSatType->SetValue($this->DataSource->lstSatType->GetValue());
                    $this->ssf_sat_date->SetValue($this->DataSource->ssf_sat_date->GetValue());
                    $this->ssf_sat_used->SetValue($this->DataSource->ssf_sat_used->GetValue());
                }
            } else {
                $this->EditMode = false;
            }
        }
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->ssf_sat_nro_resolucion->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_date_resolucion->Errors->ToString());
            $Error = ComposeStrings($Error, $this->DatePicker_ssf_sat_date_resolucion1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_group->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_desde->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_hasta->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lstSatType->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_type->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_date->Errors->ToString());
            $Error = ComposeStrings($Error, $this->ssf_sat_used->Errors->ToString());
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

        $this->ssf_sat_nro_resolucion->Show();
        $this->ssf_sat_date_resolucion->Show();
        $this->DatePicker_ssf_sat_date_resolucion1->Show();
        $this->ssf_sat_group->Show();
        $this->ssf_sat_desde->Show();
        $this->ssf_sat_hasta->Show();
        $this->lstSatType->Show();
        $this->ssf_sat_type->Show();
        $this->Button_Insert->Show();
        $this->Button_Update->Show();
        $this->Button_Delete->Show();
        $this->Button_Cancel->Show();
        $this->ssf_sat_date->Show();
        $this->ssf_sat_used->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

} //End ssf_tkt_resolucion_sat1 Class @62-FCB6E20C

class clsssf_tkt_resolucion_sat1DataSource extends clsDBConnection1 {  //ssf_tkt_resolucion_sat1DataSource Class @62-5D0922CA

//DataSource Variables @62-E5F6C415
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
    public $ssf_sat_nro_resolucion;
    public $ssf_sat_date_resolucion;
    public $ssf_sat_group;
    public $ssf_sat_desde;
    public $ssf_sat_hasta;
    public $lstSatType;
    public $ssf_sat_type;
    public $ssf_sat_date;
    public $ssf_sat_used;
//End DataSource Variables

//DataSourceClass_Initialize Event @62-3CB6AE85
    function clsssf_tkt_resolucion_sat1DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Record ssf_tkt_resolucion_sat1/Error";
        $this->Initialize();
        $this->ssf_sat_nro_resolucion = new clsField("ssf_sat_nro_resolucion", ccsText, "");
        $this->ssf_sat_date_resolucion = new clsField("ssf_sat_date_resolucion", ccsText, "");
        $this->ssf_sat_group = new clsField("ssf_sat_group", ccsText, "");
        $this->ssf_sat_desde = new clsField("ssf_sat_desde", ccsFloat, "");
        $this->ssf_sat_hasta = new clsField("ssf_sat_hasta", ccsFloat, "");
        $this->lstSatType = new clsField("lstSatType", ccsText, "");
        $this->ssf_sat_type = new clsField("ssf_sat_type", ccsText, "");
        $this->ssf_sat_date = new clsField("ssf_sat_date", ccsText, "");
        $this->ssf_sat_used = new clsField("ssf_sat_used", ccsText, "");

        $this->InsertFields["ssf_sat_nro_resolucion"] = array("Name" => "ssf_sat_nro_resolucion", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ssf_sat_date_resolucion"] = array("Name" => "ssf_sat_date_resolucion", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ssf_sat_group"] = array("Name" => "ssf_sat_group", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ssf_sat_desde"] = array("Name" => "ssf_sat_desde", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["ssf_sat_hasta"] = array("Name" => "ssf_sat_hasta", "Value" => "", "DataType" => ccsFloat);
        $this->InsertFields["ssf_sat_type"] = array("Name" => "ssf_sat_type", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->InsertFields["ssf_sat_date"] = array("Name" => "ssf_sat_date", "Value" => "", "DataType" => ccsText);
        $this->InsertFields["ssf_sat_used"] = array("Name" => "ssf_sat_used", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ssf_sat_nro_resolucion"] = array("Name" => "ssf_sat_nro_resolucion", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ssf_sat_date_resolucion"] = array("Name" => "ssf_sat_date_resolucion", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ssf_sat_group"] = array("Name" => "ssf_sat_group", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ssf_sat_desde"] = array("Name" => "ssf_sat_desde", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["ssf_sat_hasta"] = array("Name" => "ssf_sat_hasta", "Value" => "", "DataType" => ccsFloat);
        $this->UpdateFields["ssf_sat_type"] = array("Name" => "ssf_sat_type", "Value" => "", "DataType" => ccsText, "OmitIfEmpty" => 1);
        $this->UpdateFields["ssf_sat_date"] = array("Name" => "ssf_sat_date", "Value" => "", "DataType" => ccsText);
        $this->UpdateFields["ssf_sat_used"] = array("Name" => "ssf_sat_used", "Value" => "", "DataType" => ccsText);
    }
//End DataSourceClass_Initialize Event

//Prepare Method @62-2E6C5499
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urlssf_sat_nro_resolucion", ccsText, "", "", $this->Parameters["urlssf_sat_nro_resolucion"], "", false);
        $this->AllParametersSet = $this->wp->AllParamsSet();
        $this->wp->Criterion[1] = $this->wp->Operation(opEqual, "ssf_sat_nro_resolucion", $this->wp->GetDBValue("1"), $this->ToSQL($this->wp->GetDBValue("1"), ccsText),false);
        $this->Where = 
             $this->wp->Criterion[1];
    }
//End Prepare Method

//Open Method @62-FFA65A6D
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->SQL = "SELECT * \n\n" .
        "FROM ssf_tkt_resolucion_sat {SQL_Where} {SQL_OrderBy}";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        $this->PageSize = 1;
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
    }
//End Open Method

//SetValues Method @62-F98FF17E
    function SetValues()
    {
        $this->ssf_sat_nro_resolucion->SetDBValue($this->f("ssf_sat_nro_resolucion"));
        $this->ssf_sat_date_resolucion->SetDBValue($this->f("ssf_sat_date_resolucion"));
        $this->ssf_sat_group->SetDBValue($this->f("ssf_sat_group"));
        $this->ssf_sat_desde->SetDBValue(trim($this->f("ssf_sat_desde")));
        $this->ssf_sat_hasta->SetDBValue(trim($this->f("ssf_sat_hasta")));
        $this->lstSatType->SetDBValue($this->f("ssf_sat_type"));
        $this->ssf_sat_date->SetDBValue($this->f("ssf_sat_date"));
        $this->ssf_sat_used->SetDBValue($this->f("ssf_sat_used"));
    }
//End SetValues Method

//Insert Method @62-35A98FFD
    function Insert()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildInsert", $this->Parent);
        $this->InsertFields["ssf_sat_nro_resolucion"]["Value"] = $this->ssf_sat_nro_resolucion->GetDBValue(true);
        $this->InsertFields["ssf_sat_date_resolucion"]["Value"] = $this->ssf_sat_date_resolucion->GetDBValue(true);
        $this->InsertFields["ssf_sat_group"]["Value"] = $this->ssf_sat_group->GetDBValue(true);
        $this->InsertFields["ssf_sat_desde"]["Value"] = $this->ssf_sat_desde->GetDBValue(true);
        $this->InsertFields["ssf_sat_hasta"]["Value"] = $this->ssf_sat_hasta->GetDBValue(true);
        $this->InsertFields["ssf_sat_type"]["Value"] = $this->lstSatType->GetDBValue(true);
        $this->InsertFields["ssf_sat_date"]["Value"] = $this->ssf_sat_date->GetDBValue(true);
        $this->InsertFields["ssf_sat_used"]["Value"] = $this->ssf_sat_used->GetDBValue(true);
        $this->SQL = CCBuildInsert("ssf_tkt_resolucion_sat", $this->InsertFields, $this);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteInsert", $this->Parent);
        if($this->Errors->Count() == 0 && $this->CmdExecution) {
            $this->query($this->SQL);
            $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteInsert", $this->Parent);
        }
    }
//End Insert Method

//Update Method @62-495C929F
    function Update()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildUpdate", $this->Parent);
        $this->UpdateFields["ssf_sat_nro_resolucion"]["Value"] = $this->ssf_sat_nro_resolucion->GetDBValue(true);
        $this->UpdateFields["ssf_sat_date_resolucion"]["Value"] = $this->ssf_sat_date_resolucion->GetDBValue(true);
        $this->UpdateFields["ssf_sat_group"]["Value"] = $this->ssf_sat_group->GetDBValue(true);
        $this->UpdateFields["ssf_sat_desde"]["Value"] = $this->ssf_sat_desde->GetDBValue(true);
        $this->UpdateFields["ssf_sat_hasta"]["Value"] = $this->ssf_sat_hasta->GetDBValue(true);
        $this->UpdateFields["ssf_sat_type"]["Value"] = $this->lstSatType->GetDBValue(true);
        $this->UpdateFields["ssf_sat_date"]["Value"] = $this->ssf_sat_date->GetDBValue(true);
        $this->UpdateFields["ssf_sat_used"]["Value"] = $this->ssf_sat_used->GetDBValue(true);
        $this->SQL = CCBuildUpdate("ssf_tkt_resolucion_sat", $this->UpdateFields, $this);
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

//Delete Method @62-6EDDD26F
    function Delete()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->CmdExecution = true;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildDelete", $this->Parent);
        $this->SQL = "DELETE FROM ssf_tkt_resolucion_sat";
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

} //End ssf_tkt_resolucion_sat1DataSource Class @62-FCB6E20C

//Initialize Page @1-2FB2A104
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
$TemplateFileName = "SSFIngresoResolucionSAT.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../../";
//End Initialize Page

//Authenticate User @1-4A6E95C3
CCSecurityRedirect("", "../../Security/Login.php");
//End Authenticate User

//Include events file @1-493E591C
include("./SSFIngresoResolucionSAT_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-275ADA33
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$ssf_tkt_resolucion_sat = new clsGridssf_tkt_resolucion_sat("", $MainPage);
$ssf_tkt_resolucion_sat1 = new clsRecordssf_tkt_resolucion_sat1("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->ssf_tkt_resolucion_sat = & $ssf_tkt_resolucion_sat;
$MainPage->ssf_tkt_resolucion_sat1 = & $ssf_tkt_resolucion_sat1;
$ssf_tkt_resolucion_sat->Initialize();
$ssf_tkt_resolucion_sat1->Initialize();

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

//Execute Components @1-B0D25C78
$SSFSpiritHeader->Operations();
$ssf_tkt_resolucion_sat1->Operation();
//End Execute Components

//Go to destination page @1-BD53DBE5
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($ssf_tkt_resolucion_sat);
    unset($ssf_tkt_resolucion_sat1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-85965D1B
$SSFSpiritHeader->Show();
$ssf_tkt_resolucion_sat->Show();
$ssf_tkt_resolucion_sat1->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-49DC34C9
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($ssf_tkt_resolucion_sat);
unset($ssf_tkt_resolucion_sat1);
unset($Tpl);
//End Unload Page


?>
