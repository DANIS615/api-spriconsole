<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Page_AfterInitialize @1-C043AFCF
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFRunAdHocInterface; //Compatibility
//End Page_AfterInitialize

//Custom Code @6-2A29BDB7
/*if (CCGetParam("Button_Export") != "" ) {
	global $CCSLocales ;
	global $export ;
	$exportfile = CCGetParam("exportfile") ;
	include("SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	$schtask->Export(0,$exportfile) ;
	$export->Errors->addError($CCSLocales->GetText("ssf_export_done")) ;
}
if (CCGetParam("Button_Import") != "" ) {
	global $CCSLocales ;
	global $import ;
	$importfile = CCGetParam("importfile") ;
	include("SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	$schtask->Import($importfile) ;
	$import->Errors->addError($CCSLocales->GetText("ssf_import_done")) ;
}
if (CCGetParam("Button_FTP") != "" ) {
	global $CCSLocales ;
	global $ftp ;
	$action = CCGetParam("ftpaction") ;
	include("SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	if ($action != "") {
		$schtask->FTPAction($action) ;
	} else {
		$schtask->FTPAction("IMP") ;
		$schtask->FTPAction("EXP") ;
	}

	$ftp->Errors->addError($CCSLocales->GetText("ssf_import_done")) ;
} */
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

	define('TINYAJAX_PATH', '../tinyajax'); 
    require_once(TINYAJAX_PATH . "/TinyAjax.php"); 

// Extend TinyAjax 
class TinyAjaxInterface extends TinyAjax  
{     
    // Constructor exports the function 
    function __construct() { 
    } 
} 

     
    function callimport($valor) { 
		$values = split("!",$valor) ;
		global $CCSLocales ;
		$importfile = $values[2] ;
		include("SSFScheduleTasks.php") ;
		$schtask = new ScheduleTasks() ;
		$schtask->Import($importfile) ; 
        return $CCSLocales->GetText("ssf_import_done")." ".$importfile; 
    } 
    function callexport($valor) { 
		$values = split("!",$valor) ;
		global $CCSLocales ;
		$exportfile = $values[2] ;
		include("SSFScheduleTasks.php") ;
		$schtask = new ScheduleTasks() ;
		$schtask->Export(0,$exportfile) ;
        return $CCSLocales->GetText("ssf_export_done"); //." ".$exportfile; 
    } 

    function callftp($valor) { 
		$values = split("!",$valor) ;
		global $CCSLocales ;
		$action = $values[2] ;
		include("SSFScheduleTasks.php") ;
		$schtask = new ScheduleTasks() ;
		if ($action != "") {
			$schtask->FTPAction($action) ;
		} else {
			$schtask->FTPAction("IMP") ;
			$schtask->FTPAction("EXP") ;
		}
        return $CCSLocales->GetText("ssf_import_done") ;//." ".$action; 
    } 
     
     
    // Create a instance of our extended TinyAjax-class 
    $ajax = new TinyAjaxInterface(); 
    $ajax->showLoading(true); 
     
    // Export the functions we want to use 
    $ajax->exportFunction("callexport", "export","#experror");      
	 $ajax->exportFunction("callimport", "import","#imperror");      
    $ajax->exportFunction("callftp", "ftp","#ftperror");      
    // Magic 
    $ajax->process(); 

?>
<? $ajax->drawJavaScript(true, true); ?> 
