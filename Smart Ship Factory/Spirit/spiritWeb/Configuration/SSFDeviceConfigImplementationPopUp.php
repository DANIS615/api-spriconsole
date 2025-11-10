<?php
//Include Common Files @1-CDCF7F9A
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFDeviceConfigImplementationPopUp.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Initialize Page @1-E82758C6
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
$TemplateFileName = "SSFDeviceConfigImplementationPopUp.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Include events file @1-E202115E
include("./SSFDeviceConfigImplementationPopUp_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-CC792021
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$p_type = new clsControl(ccsTextBox, "p_type", "p_type", ccsText, "", CCGetRequestParam("p_type", ccsGet, NULL), $MainPage);
$txtNewID = new clsControl(ccsTextBox, "txtNewID", "txtNewID", ccsText, "", CCGetRequestParam("txtNewID", ccsGet, NULL), $MainPage);
$lstModuleOptions = new clsControl(ccsListBox, "lstModuleOptions", "lstModuleOptions", ccsText, "", CCGetRequestParam("lstModuleOptions", ccsGet, NULL), $MainPage);
$lstModuleOptions->DSType = dsTable;
list($lstModuleOptions->BoundColumn, $lstModuleOptions->TextColumn, $lstModuleOptions->DBFormat) = array("p_new_implementation", "p_new_implementation", "");
$lstModuleOptions->DataSource = new clsDBConnection1();
$lstModuleOptions->ds = & $lstModuleOptions->DataSource;
$lstModuleOptions->DataSource->SQL = "SELECT distinct module AS p_new_implementation \n" .
"FROM config_param {SQL_Where} {SQL_OrderBy}";
$lstModuleOptions->DataSource->Parameters["urlp_type"] = CCGetFromGet("p_type", NULL);
$lstModuleOptions->DataSource->wp = new clsSQLParameters();
$lstModuleOptions->DataSource->wp->AddParameter("1", "urlp_type", ccsText, "", "", $lstModuleOptions->DataSource->Parameters["urlp_type"], "", false);
$lstModuleOptions->DataSource->wp->Criterion[1] = $lstModuleOptions->DataSource->wp->Operation(opEqual, "type", $lstModuleOptions->DataSource->wp->GetDBValue("1"), $lstModuleOptions->DataSource->ToSQL($lstModuleOptions->DataSource->wp->GetDBValue("1"), ccsText),false);
$lstModuleOptions->DataSource->Where = 
     $lstModuleOptions->DataSource->wp->Criterion[1];
$lstModuleOptions->Required = true;
$btnSubmitImplementation = new clsButton("btnSubmitImplementation", ccsGet, $MainPage);
$btnCancel = new clsButton("btnCancel", ccsGet, $MainPage);
$MainPage->p_type = & $p_type;
$MainPage->txtNewID = & $txtNewID;
$MainPage->lstModuleOptions = & $lstModuleOptions;
$MainPage->btnSubmitImplementation = & $btnSubmitImplementation;
$MainPage->btnCancel = & $btnCancel;

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

//Go to destination page @1-41DEE1CC
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBConnection1->close();
    header("Location: " . $Redirect);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-7347745D
$lstModuleOptions->Prepare();
$lstModuleOptions->Show();
$btnSubmitImplementation->Show();
$btnCancel->Show();
$p_type->Show();
$txtNewID->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
$main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-F65F69EC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBConnection1->close();
unset($Tpl);
//End Unload Page


?>
