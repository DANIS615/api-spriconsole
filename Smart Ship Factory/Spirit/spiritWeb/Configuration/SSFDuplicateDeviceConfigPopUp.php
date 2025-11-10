<?php
//Include Common Files @1-A87589D6
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFDuplicateDeviceConfigPopUp.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Initialize Page @1-6E8D2CBA
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
$TemplateFileName = "SSFDuplicateDeviceConfigPopUp.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-FF8507E4
include("./SSFDuplicateDeviceConfigPopUp_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-3E5C536A
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$p_type = new clsControl(ccsTextBox, "p_type", "p_type", ccsText, "", CCGetRequestParam("p_type", ccsGet, NULL), $MainPage);
$Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", ccsGet, NULL), $MainPage);
$txtNewID = new clsControl(ccsTextBox, "txtNewID", "txtNewID", ccsText, "", CCGetRequestParam("txtNewID", ccsGet, NULL), $MainPage);
$btnSubmitImplementation = new clsButton("btnSubmitImplementation", ccsGet, $MainPage);
$btnCancel = new clsButton("btnCancel", ccsGet, $MainPage);
$MainPage->p_type = & $p_type;
$MainPage->Label2 = & $Label2;
$MainPage->txtNewID = & $txtNewID;
$MainPage->btnSubmitImplementation = & $btnSubmitImplementation;
$MainPage->btnCancel = & $btnCancel;
if(!is_array($Label2->Value) && !strlen($Label2->Value) && $Label2->Value !== false)
    $Label2->SetText($CCSLocales->GetText("device_id"));

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

//Go to destination page @1-FBA93089
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A36ABEF3
$btnSubmitImplementation->Show();
$btnCancel->Show();
$p_type->Show();
$Label2->Show();
$txtNewID->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-74A7C1E7
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
unset($Tpl);
//End Unload Page


?>
