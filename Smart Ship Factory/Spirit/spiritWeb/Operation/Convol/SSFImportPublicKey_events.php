<?php
//BindEvents Method @1-BC8466A4
function BindEvents()
{
    global $NewRecord1;
    global $CCSEvents;
    $NewRecord1->Label2->CCSEvents["BeforeShow"] = "NewRecord1_Label2_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//NewRecord1_Label2_BeforeShow @6-F318C7FE
function NewRecord1_Label2_BeforeShow(& $sender)
{
    $NewRecord1_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $NewRecord1; //Compatibility
//End NewRecord1_Label2_BeforeShow

//Custom Code @7-2A29BDB7
	$Component->SetValue("(GnuPGPEMEX.gpg)") ;
//End Custom Code

//Close NewRecord1_Label2_BeforeShow @6-DA1490B4
    return $NewRecord1_Label2_BeforeShow;
}
//End Close NewRecord1_Label2_BeforeShow

//Page_AfterInitialize @1-DE420B52
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFImportPublicKey; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	
	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_OPE_CON_GPGPKEY") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;

	if ( strtolower($_FILES['FileUpload1_File']['name']) == "gnupgpemex.gpg" ) {
		$gpgfile = $PathToRoot."data/convol/inbox/gnupgpemex.gpg" ;
		 move_uploaded_file($_FILES['FileUpload1_File']['tmp_name'], $gpgfile) ;
	}
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-AC838E7B
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFImportPublicKey; //Compatibility
//End Page_BeforeShow

//Custom Code @11-2A29BDB7
	global $PathToRoot ;
	CreateDir($PathToRoot."data/convol/inbox") ;
	CreateDir($PathToRoot."data/convol/outbox") ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

	function CreateDir($dir_name) {
		do {
		   $dir = $dir_name;
		   while (!is_dir($dir)) {
		       $basedir = dirname($dir);
		       if ($basedir == '/' || is_dir($basedir))
		           CheckandCreate($dir) ;
		       else
		           $dir=$basedir;
		  }
		} while ($dir != $dir_name);
	}

	function CheckandCreate($dir_name) {
		if (!file_exists($dir_name)) {
			mkdir($dir_name) ;
		}
	}
?>
