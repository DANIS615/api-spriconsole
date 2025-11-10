<?php
//Include Common Files @1-5115E18D
define("RelativePath", "..");
define("PathToCurrentPage", "/Reports/");
define("FileName", "SSFConfigReport.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @2-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//Initialize Page @1-23EE5678
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
$TemplateFileName = "SSFConfigReport.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-E27A0631
include("./SSFConfigReport_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-9A15027D
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$Button1 = new clsButton("Button1", ccsGet, $MainPage);
$ViewMode = new clsControl(ccsHidden, "ViewMode", "ViewMode", ccsText, "", CCGetRequestParam("ViewMode", ccsGet, NULL), $MainPage);
$lbltankgrid = new clsControl(ccsLabel, "lbltankgrid", "lbltankgrid", ccsText, "", CCGetRequestParam("lbltankgrid", ccsGet, NULL), $MainPage);
$lbltankgrid->HTML = true;
$lbltanksuction = new clsControl(ccsLabel, "lbltanksuction", "lbltanksuction", ccsText, "", CCGetRequestParam("lbltanksuction", ccsGet, NULL), $MainPage);
$lbltanksuction->HTML = true;
$lblproductgrid = new clsControl(ccsLabel, "lblproductgrid", "lblproductgrid", ccsText, "", CCGetRequestParam("lblproductgrid", ccsGet, NULL), $MainPage);
$lblproductgrid->HTML = true;
$lblgradegrid = new clsControl(ccsLabel, "lblgradegrid", "lblgradegrid", ccsText, "", CCGetRequestParam("lblgradegrid", ccsGet, NULL), $MainPage);
$lblgradegrid->HTML = true;
$lblpump = new clsControl(ccsLabel, "lblpump", "lblpump", ccsText, "", CCGetRequestParam("lblpump", ccsGet, NULL), $MainPage);
$lblpump->HTML = true;
$lblComGrid = new clsControl(ccsLabel, "lblComGrid", "lblComGrid", ccsText, "", CCGetRequestParam("lblComGrid", ccsGet, NULL), $MainPage);
$lblComGrid->HTML = true;
$lblloopgrid = new clsControl(ccsLabel, "lblloopgrid", "lblloopgrid", ccsText, "", CCGetRequestParam("lblloopgrid", ccsGet, NULL), $MainPage);
$lblloopgrid->HTML = true;
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->Button1 = & $Button1;
$MainPage->ViewMode = & $ViewMode;
$MainPage->lbltankgrid = & $lbltankgrid;
$MainPage->lbltanksuction = & $lbltanksuction;
$MainPage->lblproductgrid = & $lblproductgrid;
$MainPage->lblgradegrid = & $lblgradegrid;
$MainPage->lblpump = & $lblpump;
$MainPage->lblComGrid = & $lblComGrid;
$MainPage->lblloopgrid = & $lblloopgrid;

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

//Execute Components @1-0687DBC0
$SSFSpiritHeader->Operations();
//End Execute Components

//Go to destination page @1-0DCBBEF6
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    $SSFSpiritHeader->Class_Terminate();
    unset($SSFSpiritHeader);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-978D6A39
$SSFSpiritHeader->Show();
$Button1->Show();
$ViewMode->Show();
$lbltankgrid->Show();
$lbltanksuction->Show();
$lblproductgrid->Show();
$lblgradegrid->Show();
$lblpump->Show();
$lblComGrid->Show();
$lblloopgrid->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-7AD7810D
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$SSFSpiritHeader->Class_Terminate();
unset($SSFSpiritHeader);
unset($Tpl);
//End Unload Page


?>
