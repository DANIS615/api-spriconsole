<?php
class clsRecordSSFReportSiteDataHeaderfrmDatosEstacion { //frmDatosEstacion Class @2-7D8C9575

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

//Class_Initialize Event @2-4EF5E887
    function clsRecordSSFReportSiteDataHeaderfrmDatosEstacion($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record frmDatosEstacion/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "frmDatosEstacion";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->lblNombre = new clsControl(ccsLabel, "lblNombre", "lblNombre", ccsText, "", CCGetRequestParam("lblNombre", $Method, NULL), $this);
            $this->lblDireccion1 = new clsControl(ccsLabel, "lblDireccion1", "lblDireccion1", ccsText, "", CCGetRequestParam("lblDireccion1", $Method, NULL), $this);
            $this->lblDireccion2 = new clsControl(ccsLabel, "lblDireccion2", "lblDireccion2", ccsText, "", CCGetRequestParam("lblDireccion2", $Method, NULL), $this);
            $this->lblDireccion3 = new clsControl(ccsLabel, "lblDireccion3", "lblDireccion3", ccsText, "", CCGetRequestParam("lblDireccion3", $Method, NULL), $this);
            $this->lblNIT = new clsControl(ccsLabel, "lblNIT", "lblNIT", ccsText, "", CCGetRequestParam("lblNIT", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Validate Method @2-367945B8
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @2-7428269D
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->lblNombre->Errors->Count());
        $errors = ($errors || $this->lblDireccion1->Errors->Count());
        $errors = ($errors || $this->lblDireccion2->Errors->Count());
        $errors = ($errors || $this->lblDireccion3->Errors->Count());
        $errors = ($errors || $this->lblNIT->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @2-82225C24
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        $Redirect = $FileName . "?" . CCGetQueryString("QueryString", array("ccsForm"));
    }
//End Operation Method

//Show Method @2-29F4548F
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

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->lblNombre->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblDireccion1->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblDireccion2->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblDireccion3->Errors->ToString());
            $Error = ComposeStrings($Error, $this->lblNIT->Errors->ToString());
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

        $this->lblNombre->Show();
        $this->lblDireccion1->Show();
        $this->lblDireccion2->Show();
        $this->lblDireccion3->Show();
        $this->lblNIT->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End frmDatosEstacion Class @2-FCB6E20C

class clsSSFReportSiteDataHeader { //SSFReportSiteDataHeader class @1-530B9D7A

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

//Class_Initialize Event @1-E23CD919
    function clsSSFReportSiteDataHeader($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "SSFReportSiteDataHeader.php";
        $this->Redirect = "";
        $this->TemplateFileName = "SSFReportSiteDataHeader.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-527A433C
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
        unset($this->frmDatosEstacion);
    }
//End Class_Terminate Event

//BindEvents Method @1-6FA26379
    function BindEvents()
    {
        $this->frmDatosEstacion->lblNombre->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow";
        $this->frmDatosEstacion->lblDireccion1->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow";
        $this->frmDatosEstacion->lblDireccion2->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow";
        $this->frmDatosEstacion->lblDireccion3->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow";
        $this->frmDatosEstacion->lblNIT->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow";
        $this->frmDatosEstacion->CCSEvents["BeforeShow"] = "SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInitialize", $this);
    }
//End BindEvents Method

//Operations Method @1-A98DCDE4
    function Operations()
    {
        global $Redirect;
        if(!$this->Visible)
            return "";
        $this->frmDatosEstacion->Operation();
    }
//End Operations Method

//Initialize Method @1-0115BFD7
    function Initialize()
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        if(!$this->Visible)
            return "";
        $this->Attributes = & $this->Parent->Attributes;

        // Create Components
        $this->frmDatosEstacion = new clsRecordSSFReportSiteDataHeaderfrmDatosEstacion($this->RelativePath, $this);
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
    }
//End Initialize Method

//Show Method @1-BA76CE86
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        $block_path = $Tpl->block_path;
        $Tpl->LoadTemplate("/Reports/" . $this->TemplateFileName, $this->ComponentName, $this->TemplateEncoding, "remove");
        $Tpl->block_path = $Tpl->block_path . "/" . $this->ComponentName;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $Tpl->block_path = $block_path;
            $Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Attributes->Show();
        $this->frmDatosEstacion->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $Tpl->SetVar($this->ComponentName, $Tpl->GetVar($this->ComponentName));
    }
//End Show Method

} //End SSFReportSiteDataHeader Class @1-FCB6E20C

//Include Event File @1-483D8E00
include(RelativePath . "/Reports/SSFReportSiteDataHeader_events.php");
//End Include Event File


?>
