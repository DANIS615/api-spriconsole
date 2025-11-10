<?php
//Include Common Files @1-43A28199
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "popupwindow.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Initialize Page @1-C9301F17
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
$TemplateFileName = "popupwindow.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-C7A201E0
include("./popupwindow_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CB6A97F7
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$lblActivity = new clsControl(ccsLabel, "lblActivity", "lblActivity", ccsText, "", CCGetRequestParam("lblActivity", ccsGet, NULL), $MainPage);
$btnClose = new clsButton("btnClose", ccsGet, $MainPage);
$hdnActionToPerform = new clsControl(ccsHidden, "hdnActionToPerform", "hdnActionToPerform", ccsText, "", CCGetRequestParam("hdnActionToPerform", ccsGet, NULL), $MainPage);
$MainPage->lblActivity = & $lblActivity;
$MainPage->btnClose = & $btnClose;
$MainPage->hdnActionToPerform = & $hdnActionToPerform;

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

//Show Page @1-82ABCBFB
$btnClose->Show();
$lblActivity->Show();
$hdnActionToPerform->Show();
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
