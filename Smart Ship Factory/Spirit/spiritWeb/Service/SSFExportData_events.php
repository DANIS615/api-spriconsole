<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Page_AfterInitialize @1-A6495B63
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $SSFExportData; //Compatibility
//End Page_AfterInitialize

//Custom Code @6-2A29BDB7
if (CCGetParam("Button_Export") != "" ) {
	global $CCSLocales ;
	global $export ;
	$exportfile = CCGetParam("exportfile") ;
	include("SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	$schtask->Export(0,$exportfile) ;
	$export->Errors->addError($CCSLocales->GetText("ssf_export_done")." ".$exportfile) ;
}
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
