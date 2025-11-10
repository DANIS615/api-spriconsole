<?php
//Include Common Files @1-2247E598
define("RelativePath", "..");
define("PathToCurrentPage", "/Configuration/");
define("FileName", "SSFDeviceConfig.php");
include(RelativePath . "/Common.php");
include(RelativePath . "/Template.php");
include(RelativePath . "/Sorter.php");
include(RelativePath . "/Navigator.php");
//End Include Common Files

//Include Page implementation @19-698CFA3F
include_once(RelativePath . "/SSFSpiritHeader.php");
//End Include Page implementation

//Initialize Page @1-01AC8627
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
$TemplateFileName = "SSFDeviceConfig.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$PathToRoot = "../";
//End Initialize Page

//Authenticate User @1-E377F909
CCSecurityRedirect("", "../Security/Login.php");
//End Authenticate User

//Include events file @1-690A1F45
include("./SSFDeviceConfig_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-BCFD8ACF
$Attributes = new clsAttributes("page:");
$MainPage->Attributes = & $Attributes;

// Controls
$SSFSpiritHeader = new clsSSFSpiritHeader("../", "SSFSpiritHeader", $MainPage);
$SSFSpiritHeader->Initialize();
$lblDummyForTypeGrid = new clsControl(ccsLabel, "lblDummyForTypeGrid", "lblDummyForTypeGrid", ccsText, "", CCGetRequestParam("lblDummyForTypeGrid", ccsGet, NULL), $MainPage);
$lblDummyForTypeGrid->HTML = true;
$p_type = new clsControl(ccsTextBox, "p_type", "p_type", ccsText, "", CCGetRequestParam("p_type", ccsGet, NULL), $MainPage);
$p_module = new clsControl(ccsTextBox, "p_module", "p_module", ccsText, "", CCGetRequestParam("p_module", ccsGet, NULL), $MainPage);
$p_newid = new clsControl(ccsTextBox, "p_newid", "p_newid", ccsText, "", CCGetRequestParam("p_newid", ccsGet, NULL), $MainPage);
$btnModifyRecord = new clsControl(ccsTextBox, "btnModifyRecord", "btnModifyRecord", ccsText, "", CCGetRequestParam("btnModifyRecord", ccsGet, NULL), $MainPage);
$p_id = new clsControl(ccsTextBox, "p_id", "p_id", ccsText, "", CCGetRequestParam("p_id", ccsGet, NULL), $MainPage);
$btnAddRecord = new clsButton("btnAddRecord", ccsGet, $MainPage);
$lblDummyRecord = new clsControl(ccsLabel, "lblDummyRecord", "lblDummyRecord", ccsText, "", CCGetRequestParam("lblDummyRecord", ccsGet, NULL), $MainPage);
$lblDummyRecord->HTML = true;
$btnApplyChanges = new clsButton("btnApplyChanges", ccsGet, $MainPage);
$btnDuplicateRecord = new clsButton("btnDuplicateRecord", ccsGet, $MainPage);
$btnDeleteRecord = new clsButton("btnDeleteRecord", ccsGet, $MainPage);
$btnCancelChanges = new clsButton("btnCancelChanges", ccsGet, $MainPage);
$lblDummyChildsGrid = new clsControl(ccsLabel, "lblDummyChildsGrid", "lblDummyChildsGrid", ccsText, "", CCGetRequestParam("lblDummyChildsGrid", ccsGet, NULL), $MainPage);
$lblDummyChildsGrid->HTML = true;
$lblDummyChildsRecord = new clsControl(ccsLabel, "lblDummyChildsRecord", "lblDummyChildsRecord", ccsText, "", CCGetRequestParam("lblDummyChildsRecord", ccsGet, NULL), $MainPage);
$lblDummyChildsRecord->HTML = true;
$btnModifyChildRecord = new clsButton("btnModifyChildRecord", ccsGet, $MainPage);
$btnApplyChangesChild = new clsButton("btnApplyChangesChild", ccsGet, $MainPage);
$btnCancelChild = new clsButton("btnCancelChild", ccsGet, $MainPage);
$lblDummyChildsGrid1 = new clsControl(ccsLabel, "lblDummyChildsGrid1", "lblDummyChildsGrid1", ccsText, "", CCGetRequestParam("lblDummyChildsGrid1", ccsGet, NULL), $MainPage);
$lblDummyChildsGrid1->HTML = true;
$lblDummyChildsRecord1 = new clsControl(ccsLabel, "lblDummyChildsRecord1", "lblDummyChildsRecord1", ccsText, "", CCGetRequestParam("lblDummyChildsRecord1", ccsGet, NULL), $MainPage);
$lblDummyChildsRecord1->HTML = true;
$btnModifyChildRecord1 = new clsButton("btnModifyChildRecord1", ccsGet, $MainPage);
$btnApplyChangesChild1 = new clsButton("btnApplyChangesChild1", ccsGet, $MainPage);
$btnCancelChild1 = new clsButton("btnCancelChild1", ccsGet, $MainPage);
$MainPage->SSFSpiritHeader = & $SSFSpiritHeader;
$MainPage->lblDummyForTypeGrid = & $lblDummyForTypeGrid;
$MainPage->p_type = & $p_type;
$MainPage->p_module = & $p_module;
$MainPage->p_newid = & $p_newid;
$MainPage->btnModifyRecord = & $btnModifyRecord;
$MainPage->p_id = & $p_id;
$MainPage->btnAddRecord = & $btnAddRecord;
$MainPage->lblDummyRecord = & $lblDummyRecord;
$MainPage->btnApplyChanges = & $btnApplyChanges;
$MainPage->btnDuplicateRecord = & $btnDuplicateRecord;
$MainPage->btnDeleteRecord = & $btnDeleteRecord;
$MainPage->btnCancelChanges = & $btnCancelChanges;
$MainPage->lblDummyChildsGrid = & $lblDummyChildsGrid;
$MainPage->lblDummyChildsRecord = & $lblDummyChildsRecord;
$MainPage->btnModifyChildRecord = & $btnModifyChildRecord;
$MainPage->btnApplyChangesChild = & $btnApplyChangesChild;
$MainPage->btnCancelChild = & $btnCancelChild;
$MainPage->lblDummyChildsGrid1 = & $lblDummyChildsGrid1;
$MainPage->lblDummyChildsRecord1 = & $lblDummyChildsRecord1;
$MainPage->btnModifyChildRecord1 = & $btnModifyChildRecord1;
$MainPage->btnApplyChangesChild1 = & $btnApplyChangesChild1;
$MainPage->btnCancelChild1 = & $btnCancelChild1;

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

//Show Page @1-DBB6DA6E
$SSFSpiritHeader->Show();
$btnAddRecord->Show();
$btnApplyChanges->Show();
$btnDuplicateRecord->Show();
$btnDeleteRecord->Show();
$btnCancelChanges->Show();
$btnModifyChildRecord->Show();
$btnApplyChangesChild->Show();
$btnCancelChild->Show();
$btnModifyChildRecord1->Show();
$btnApplyChangesChild1->Show();
$btnCancelChild1->Show();
$lblDummyForTypeGrid->Show();
$p_type->Show();
$p_module->Show();
$p_newid->Show();
$btnModifyRecord->Show();
$p_id->Show();
$lblDummyRecord->Show();
$lblDummyChildsGrid->Show();
$lblDummyChildsRecord->Show();
$lblDummyChildsGrid1->Show();
$lblDummyChildsRecord1->Show();
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
