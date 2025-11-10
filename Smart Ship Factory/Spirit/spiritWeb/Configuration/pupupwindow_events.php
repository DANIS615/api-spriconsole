<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
	
}	
//End BindEvents Method

//Page_AfterInitialize @1-DD1B0D66
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $pupupwindow; //Compatibility
	global $PathToRoot;
//End Page_AfterInitialize

//Custom Code @2-2A29BDB7
	$actionparam = CCGetParam("action") ;
	//echo " actionparam es $actionparam " ;
	switch ($actionparam):
	case "chkconfig":
    	$SktMgr = new SktManager() ;
    	$SktMgr->CheckConfiguration() ;
		break ;
	case "orgconfig":
        	echo("<SCRIPT LANGUAGE='JavaScript'>
        	var sure;
			sure = confirm('Are you sure ?');
			if (sure)
				location.href=\"$PathToRoot"."configuration/popupwindow.php?action=changeconfirmed\" ;
           	else
           		location.href=\"$PathToRoot"."Configuration/popupwindow.php?action=changecancelled\" ;
			 exit();			
			</SCRIPT>"); 
		break ;
	case "changeconfirmed":
    	$SktMgr = new SktManager() ;
    	$SktMgr->ApplyConfiguration() ;
		break ;
	case "abc":
		break ;
    default:
		//echo "entra en default " ;
	endswitch;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
