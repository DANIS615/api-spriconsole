<?php
//BindEvents Method @1-AA96358A
function BindEvents()
{
    global $Label1;
    global $ssf_addin_head_office_bat2;
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $ssf_addin_head_office_bat2->CCSEvents["BeforeShow"] = "ssf_addin_head_office_bat2_BeforeShow";
}
//End BindEvents Method

//Label1_BeforeShow @31-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @32-2A29BDB7
	define('TINYAJAX_PATH', '../tinyajax'); 
    require_once(TINYAJAX_PATH . "/TinyAjax.php"); 

// Extend TinyAjax 
class TinyAjaxInterface extends TinyAjax  
{     
    // Constructor exports the function 
    function __construct() { 
    } 
} 
     
    function callexport($valor) { 
		$old_batch = CCGetParam("ho_batch_id") ; 
		global $CCSLocales ;
		include("SSFScheduleTasks.php") ;
		$schtask = new ScheduleTasks() ;
		$schtask->Export($old_batch) ;
        return $CCSLocales->GetText("ssf_export_done"); 
    } 
     
     
    // Create a instance of our extended TinyAjax-class 
    $ajax = new TinyAjaxInterface(); 
    $ajax->showLoading(true); 
     
    // Export the functions we want to use 
	 $ajax->exportFunction("callexport", "ssf_addin_head_office_bat2","#experror");      
    // Magic 
    $ajax->process(); 
	$ajax->drawJavaScript(true, true); 

//End Custom Code

//Close Label1_BeforeShow @31-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//ssf_addin_head_office_bat2_BeforeShow @21-4308AEF9
function ssf_addin_head_office_bat2_BeforeShow(& $sender)
{
    $ssf_addin_head_office_bat2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_head_office_bat2; //Compatibility
//End ssf_addin_head_office_bat2_BeforeShow

//Custom Code @27-2A29BDB7
if (CCGetParam("ho_batch_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_addin_head_office_bat2_BeforeShow @21-0BEA5DA9
    return $ssf_addin_head_office_bat2_BeforeShow;
}
//End Close ssf_addin_head_office_bat2_BeforeShow


?>
