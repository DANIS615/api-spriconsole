<?php
include(RelativePath . "/Security/accessmanager.php");
include(RelativePath . "/POS/SSFTicketConfig.php");
include(RelativePath . "/Communication/SSFRouterClient.php");
//BindEvents Method @1-17538124
function BindEvents()
{
    global $Login;
    global $CCSEvents;
    $Login->Button_DoLogin->CCSEvents["OnClick"] = "Login_Button_DoLogin_OnClick";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Login_Button_DoLogin_OnClick @3-1454CF55
function Login_Button_DoLogin_OnClick(& $sender)
{
    $Login_Button_DoLogin_OnClick = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Login; //Compatibility
//End Login_Button_DoLogin_OnClick

//Login @4-AF70F5F5
    global $CCSLocales;
    global $Login;
	$loginErrorMessage="";
	if(!CheckLogin($Container->login->GetValue(), $Container->password->GetValue(),& $loginErrorMessage))
    {
        $Container->Errors->addError($CCSLocales->GetText($loginErrorMessage));
        $Container->password->SetValue("");
        $Login_Button_DoLogin_OnClick = false;
    }
    else
    {
        global $Redirect;
        $Redirect = CCGetParam("ret_link", $Redirect);
        $Login_Button_DoLogin_OnClick = true;
    }
//End Login

//Close Login_Button_DoLogin_OnClick @3-0EB5DCFE
    return $Login_Button_DoLogin_OnClick;
}
//End Close Login_Button_DoLogin_OnClick

//DEL  

//Page_AfterInitialize @1-6230D25B
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Login; //Compatibility
//End Page_AfterInitialize

//Logout @8-28FD9694
    $LogParam = CCGetParam("logout", false);
	if ($LogParam != false ) {
    	CCLogoutUser();
		$Redirect = "Login.php" ;
	}
//End Logout

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Check Login 

function CheckLogin($user, $pass, & $message)
{
	ClearSession() ;
	if ($user != "GUEST") {
		$ssfRouter = new SSFRouterClient();
		$res = $ssfRouter->doLogin($user,$pass,& $message);
		if ($res==true) {
			CCSetSession("UserID", $user);
	        CCSetSession("UserLogin", $user);
			ValidateModules(& $ssfRouter) ;
		}	
	} else {
		$res = true ;	
		CCSetSession("UserID", $user);
        CCSetSession("UserLogin", $user);
		//Para total seguridad, esta linea de abajo hay que borrarla
		// cuando se pone en producción.
		ValidateModules($res, true) ;
    }
	if ($res == true ) {
		$accmgr = new AccessManager() ;
		$accmgr->CheckObjectsExistance();
		$accmgr->CreateDeleteSchedule() ;
		$tktcnf = new TicketConfig() ;
		$tktcnf->CheckCatalogExistance() ;
		$tktcnf->InsertPriceList() ;
		$s_name = "" ;
		$s_number = "" ;
		$accmgr->GetSiteNameandNumber($s_name, $s_number) ;
		CCSetSession("SiteName", $s_name);
		CCSetSession("SiteNumber", $s_number);
		if (CCGetSession("HOMOD") == "Y") {
			$accmgr->InsertGentericFTPParams() ;
		}
		if ($accmgr->GetTanksAvilable()) 
			CCSetSession("TanksMenu", "Y");
		else
			CCSetSession("TanksMenu", "N");
	}
	return $res;
}
// End Check Login


function ValidateModules(& $ssfRouter, $RouterByPass = false) {

	if (!$RouterByPass) {
		if($ssfRouter->getLicenseField("HEADOFFICE", "LICENSE") == "YES")
			CCSetSession("HOMOD", "Y") ;
		else
			CCSetSession("HOMOD", "N") ;
		
		if($ssfRouter->getLicenseField("TICKET", "LICENSE") == "YES")
			CCSetSession("POSMOD", "Y") ;
		else
			CCSetSession("POSMOD", "N") ;

		if($ssfRouter->getLicenseField("CONTROL VOLUMETRICO", "LICENSE") == "YES")
			CCSetSession("CONVOL", "Y") ;
		else
			CCSetSession("CONVOL", "N") ;

		if($ssfRouter->getLicenseField("TAG READER", "LICENSE") == "YES")
			CCSetSession("TAGMOD", "Y") ;
		else
			CCSetSession("TAGMOD", "N") ;

		if($ssfRouter->getLicenseField("FLEET MNGR", "LICENSE") == "YES")
			CCSetSession("FLEETMOD", "Y") ;
		else
			CCSetSession("FLEETMOD", "N") ;

		if($ssfRouter->getLicenseField("ATTENDANT TAGGING", "LICENSE") == "YES")
			CCSetSession("ATTAGMOD", "Y") ;
		else
			CCSetSession("ATTAGMOD", "N") ;

		CCSetSession("SSFCustomizationGroup",$ssfRouter->getLicenseField("TICKET", "CUSTOMIZATION GROUP"));
	} else {
		CCSetSession("HOMOD", "Y") ;
		CCSetSession("POSMOD", "Y") ;
		CCSetSession("CONVOL", "Y") ;
		CCSetSession("TAGMOD", "Y") ;
		CCSetSession("FLEETMOD", "Y") ;
		CCSetSession("ATTAGMOD", "Y") ;
	}
}

function ClearSession() {
	CCSetSession("HOMOD", "N") ;
	CCSetSession("POSMOD", "N") ;
	CCSetSession("CONVOL", "N") ;
	CCSetSession("TAGMOD", "N") ;
	CCSetSession("FLEETMOD", "N") ;
	CCSetSession("ATTAGMOD", "N") ;
	CCSetSession("UserID", "");
    CCSetSession("UserLogin", ""); 
	CCSetSession("TanksMenu", "N");
	CCSetSession("SSFCustomizationGroup","");
}

?>
