<?php
//Include Common Files @1-97292CC8
define("RelativePath", "..");
define("PathToCurrentPage", "/Operation/");
define("FileName", "SSFDuplicateTankCT.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Initialize Page @1-552AC594
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
$TemplateFileName = "SSFDuplicateTankCT.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-8B60F8E3
$DBConnection1 = new clsDBConnection1();
$MainPage->Connections["Connection1"] = & $DBConnection1;
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", ccsGet, NULL), $MainPage);
$txtNewID = new clsControl(ccsListBox, "txtNewID", "txtNewID", ccsText, "", CCGetRequestParam("txtNewID", ccsGet, NULL), $MainPage);
$txtNewID->DSType = dsSQL;
list($txtNewID->BoundColumn, $txtNewID->TextColumn, $txtNewID->DBFormat) = array("tank_id", "tank_id", "");
$txtNewID->DataSource = new clsDBConnection1();
$txtNewID->ds = & $txtNewID->DataSource;
$txtNewID->DataSource->SQL = "SELECT param_value AS tank_id \n" .
"FROM config_values\n" .
"WHERE ( library = 'tank' )\n" .
"AND ( groupname = 'general' )\n" .
"AND ( parameter = 'ID' ) ";
$txtNewID->DataSource->Order = "";
$btnSubmitImplementation = new clsButton("btnSubmitImplementation", ccsGet, $MainPage);
$btnCancel = new clsButton("btnCancel", ccsGet, $MainPage);
$MainPage->Label2 = & $Label2;
$MainPage->txtNewID = & $txtNewID;
$MainPage->btnSubmitImplementation = & $btnSubmitImplementation;
$MainPage->btnCancel = & $btnCancel;
if(!is_array($Label2->Value) && !strlen($Label2->Value) && $Label2->Value !== false)
    $Label2->SetText($CCSLocales->GetText("tank_id"));

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

//Show Page @1-A1B113E5
$txtNewID->Prepare();
$txtNewID->Show();
$btnSubmitImplementation->Show();
$btnCancel->Show();
$Label2->Show();
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
