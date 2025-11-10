<?php
//Include Common Files @1-8EA4DA83
define("RelativePath", "..");
define("PathToCurrentPage", "/Security/");
define("FileName", "SSFChangePassword.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

class clsRecordpswchange { //pswchange Class @3-A3FED7A5

//Variables @3-9E315808

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

//Class_Initialize Event @3-2F9E01EE
    function clsRecordpswchange($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record pswchange/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "pswchange";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = split(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->txtuserid = new clsControl(ccsTextBox, "txtuserid", "txtuserid", ccsText, "", CCGetRequestParam("txtuserid", $Method, NULL), $this);
            $this->txtoldpsw = new clsControl(ccsTextBox, "txtoldpsw", "txtoldpsw", ccsText, "", CCGetRequestParam("txtoldpsw", $Method, NULL), $this);
            $this->txtnewpsw = new clsControl(ccsTextBox, "txtnewpsw", $CCSLocales->GetText("new_password"), ccsText, "", CCGetRequestParam("txtnewpsw", $Method, NULL), $this);
            $this->txtconfirmpsw = new clsControl(ccsTextBox, "txtconfirmpsw", $CCSLocales->GetText("password_confirm"), ccsText, "", CCGetRequestParam("txtconfirmpsw", $Method, NULL), $this);
            $this->btnModify = new clsButton("btnModify", $Method, $this);
        }
    }
//End Class_Initialize Event

//Validate Method @3-C0D82DA3
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->txtuserid->Validate() && $Validation);
        $Validation = ($this->txtoldpsw->Validate() && $Validation);
        $Validation = ($this->txtnewpsw->Validate() && $Validation);
        $Validation = ($this->txtconfirmpsw->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->txtuserid->Errors->Count() == 0);
        $Validation =  $Validation && ($this->txtoldpsw->Errors->Count() == 0);
        $Validation =  $Validation && ($this->txtnewpsw->Errors->Count() == 0);
        $Validation =  $Validation && ($this->txtconfirmpsw->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @3-B574A766
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->txtuserid->Errors->Count());
        $errors = ($errors || $this->txtoldpsw->Errors->Count());
        $errors = ($errors || $this->txtnewpsw->Errors->Count());
        $errors = ($errors || $this->txtconfirmpsw->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @3-7E7E44C4
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
            $this->PressedButton = "btnModify";
            if($this->btnModify->Pressed) {
                $this->PressedButton = "btnModify";
            }
        }
        $Redirect = $FileName . "?" . CCGetQueryString("All", array("ccsForm"));
        if($this->Validate()) {
            if($this->PressedButton == "btnModify") {
                if(!CCGetEvent($this->btnModify->CCSEvents, "OnClick", $this->btnModify)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @3-3209BDFC
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
            $Error = ComposeStrings($Error, $this->txtuserid->Errors->ToString());
            $Error = ComposeStrings($Error, $this->txtoldpsw->Errors->ToString());
            $Error = ComposeStrings($Error, $this->txtnewpsw->Errors->ToString());
            $Error = ComposeStrings($Error, $this->txtconfirmpsw->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        if($this->FormSubmitted || CCGetFromGet("ccsForm")) {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        } else {
            $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("All", ""), "ccsForm", $CCSForm);
        }
        $Tpl->SetVar("Action", $this->HTMLFormAction);
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->txtuserid->Show();
        $this->txtoldpsw->Show();
        $this->txtnewpsw->Show();
        $this->txtconfirmpsw->Show();
        $this->btnModify->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End pswchange Class @3-FCB6E20C

//Initialize Page @1-A266F42D
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
$TemplateFileName = "SSFChangePassword.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-CB8BA60F
include("./SSFChangePassword_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-5E9ABE7A
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$pswchange = new clsRecordpswchange("", $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->pswchange = & $pswchange;

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

//Execute Components @1-F8A7E888
$SSFSpiritHeader->Operations();
$pswchange->Operation();
//End Execute Components

//Go to destination page @1-4178D82E
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($pswchange);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-1E09C2B8
$SSFSpiritHeader->Show();
$pswchange->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-F3EFAB63
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($pswchange);
unset($Tpl);
//End Unload Page


?>
