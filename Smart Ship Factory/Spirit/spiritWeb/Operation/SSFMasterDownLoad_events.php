<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Page_AfterInitialize @1-6FD0A299
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFMasterDownLoad; //Compatibility
//End Page_AfterInitialize

//Custom Code @2-2A29BDB7

   $filename = CCGetParam("filename") ;
   header('Content-Description: File Transfer');
   header('Content-Type: application/force-download');
   header("Content-Disposition: attachment; filename=\"".basename($filename)."\";");

   header('Content-Length: ' . filesize($filename));
  
	@readfile($filename) ; //OR die(); 
	@unlink($filename) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
