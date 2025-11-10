<?php

class clsSSFSpiritHeader { //SSFSpiritHeader class @1-BB6A73FB

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

//Class_Initialize Event @1-BCE27A92
    function clsSSFSpiritHeader($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "SSFSpiritHeader.php";
        $this->Redirect = "";
        $this->TemplateFileName = "SSFSpiritHeader.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-32FD4740
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
    }
//End Class_Terminate Event

//BindEvents Method @1-3C545E06
    function BindEvents()
    {
        $this->lbluser->CCSEvents["BeforeShow"] = "SSFSpiritHeader_lbluser_BeforeShow";
        $this->lblSiteName->CCSEvents["BeforeShow"] = "SSFSpiritHeader_lblSiteName_BeforeShow";
        $this->lblSiteNumber->CCSEvents["BeforeShow"] = "SSFSpiritHeader_lblSiteNumber_BeforeShow";
        $this->lblScriptforDateTime->CCSEvents["BeforeShow"] = "SSFSpiritHeader_lblScriptforDateTime_BeforeShow";
        $this->lblDummyForMainMenu->CCSEvents["BeforeShow"] = "SSFSpiritHeader_lblDummyForMainMenu_BeforeShow";
        $this->Label1->CCSEvents["BeforeShow"] = "SSFSpiritHeader_Label1_BeforeShow";
        $this->CCSEvents["AfterInitialize"] = "SSFSpiritHeader_AfterInitialize";
        $this->CCSEvents["BeforeShow"] = "SSFSpiritHeader_BeforeShow";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInitialize", $this);
    }
//End BindEvents Method

//Operations Method @1-7E2A14CF
    function Operations()
    {
        global $Redirect;
        if(!$this->Visible)
            return "";
    }
//End Operations Method

//Initialize Method @1-EB0881A9
    function Initialize()
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        if(!$this->Visible)
            return "";
        $this->Attributes = & $this->Parent->Attributes;

        // Create Components
        $this->lbluser = new clsControl(ccsLabel, "lbluser", "lbluser", ccsText, "", CCGetRequestParam("lbluser", ccsGet, NULL), $this);
        $this->lblSiteName = new clsControl(ccsLabel, "lblSiteName", "lblSiteName", ccsText, "", CCGetRequestParam("lblSiteName", ccsGet, NULL), $this);
        $this->lblSiteNumber = new clsControl(ccsLabel, "lblSiteNumber", "lblSiteNumber", ccsText, "", CCGetRequestParam("lblSiteNumber", ccsGet, NULL), $this);
        $this->Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $this);
        $this->Link2->Page = $this->RelativePath . "Security/Login.php";
        $this->lblScriptforDateTime = new clsControl(ccsLabel, "lblScriptforDateTime", "lblScriptforDateTime", ccsText, "", CCGetRequestParam("lblScriptforDateTime", ccsGet, NULL), $this);
        $this->lblScriptforDateTime->HTML = true;
        $this->lblDummyForMainMenu = new clsControl(ccsLabel, "lblDummyForMainMenu", "lblDummyForMainMenu", ccsText, "", CCGetRequestParam("lblDummyForMainMenu", ccsGet, NULL), $this);
        $this->lblDummyForMainMenu->HTML = true;
        $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $this);
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
        $this->Link2->Parameters = "";
        $this->Link2->Parameters = CCAddParam($this->Link2->Parameters, "logout", true);
    }
//End Initialize Method

//Show Method @1-FA40DEED
    function Show()
    {
        global $Tpl;
        global $CCSLocales;
        $block_path = $Tpl->block_path;
        $Tpl->LoadTemplate("/" . $this->TemplateFileName, $this->ComponentName, $this->TemplateEncoding, "remove");
        $Tpl->block_path = $Tpl->block_path . "/" . $this->ComponentName;
        $this->Attributes->SetValue("maplink", "");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $Tpl->block_path = $block_path;
            $Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Attributes->Show();
        $this->lbluser->Show();
        $this->lblSiteName->Show();
        $this->lblSiteNumber->Show();
        $this->Link2->Show();
        $this->lblScriptforDateTime->Show();
        $this->lblDummyForMainMenu->Show();
        $this->Label1->Show();
        $Tpl->Parse();
        $Tpl->block_path = $block_path;
        $Tpl->SetVar($this->ComponentName, $Tpl->GetVar($this->ComponentName));
    }
//End Show Method

} //End SSFSpiritHeader Class @1-FCB6E20C

//Include Event File @1-5D204191
include(RelativePath . "/SSFSpiritHeader_events.php");
//End Include Event File


?>
