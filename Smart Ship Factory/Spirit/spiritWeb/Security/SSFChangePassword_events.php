<?php
//BindEvents Method @1-195ED19C
function BindEvents()
{
    global $pswchange;
    $pswchange->txtuserid->CCSEvents["BeforeShow"] = "pswchange_txtuserid_BeforeShow";
    $pswchange->CCSEvents["OnValidate"] = "pswchange_OnValidate";
}
//End BindEvents Method

//pswchange_txtuserid_BeforeShow @4-8D9D87AB
function pswchange_txtuserid_BeforeShow(& $sender)
{
    $pswchange_txtuserid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $pswchange; //Compatibility
//End pswchange_txtuserid_BeforeShow

//Custom Code @11-2A29BDB7
	$Component->SetValue(CCGetSession("UserID"));
//End Custom Code

//Close pswchange_txtuserid_BeforeShow @4-1BDB4C92
    return $pswchange_txtuserid_BeforeShow;
}
//End Close pswchange_txtuserid_BeforeShow

//pswchange_OnValidate @3-513AEF97
function pswchange_OnValidate(& $sender)
{
    $pswchange_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $pswchange; //Compatibility
//End pswchange_OnValidate

//Custom Code @16-2A29BDB7
	global $CCSLocales;
	
	if ($pswchange->txtnewpsw->Errors->Count() > 0 || $pswchange->txtconfirmpsw->Errors->Count() > 0 )
		return false;

	$psw = $pswchange->txtnewpsw->GetValue() ;
	$conpsw = $pswchange->txtconfirmpsw->GetValue() ;

	if ($psw != $conpsw) {
		$pswchange->Errors->addError($CCSLocales->GetText("ssf_conpwdnotpsw"))   ;
	} else {
		if (CCGetParam("btnModify") != "" ) {
			$userid = CCGetSession("UserID") ;
			$oldpsw = $pswchange->txtoldpsw->GetValue() ;
			$newpsw = $psw ;
			$ssfRtrClnt = new SSFRouterClient();
			$returncode = $ssfRtrClnt->SendReqPasswordChange($userid, $oldpsw, $newpsw);
			if ($returncode != "OK" )
				$pswchange->Errors->addError($CCSLocales->GetText($returncode));	
			else
				CCSetSession("ssf_security_modified",true);		
		}
	}
//End Custom Code

//Close pswchange_OnValidate @3-D46F084A
    return $pswchange_OnValidate;
}
//End Close pswchange_OnValidate

//DEL  //



?>
