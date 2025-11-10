<?php
//BindEvents Method @1-AC888CF8
function BindEvents()
{
    global $ssf_tkt_customers;
    global $ssf_tkt_customers1;
    global $CCSEvents;
    $ssf_tkt_customers->ssf_tkt_customers_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow";
    $ssf_tkt_customers1->lnkAccount->CCSEvents["BeforeShow"] = "ssf_tkt_customers1_lnkAccount_BeforeShow";
    $ssf_tkt_customers1->Button_Account->CCSEvents["BeforeShow"] = "ssf_tkt_customers1_Button_Account_BeforeShow";
    $ssf_tkt_customers1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers1_ds_AfterExecuteSelect";
    $ssf_tkt_customers1->CCSEvents["BeforeShow"] = "ssf_tkt_customers1_BeforeShow";
    $ssf_tkt_customers1->CCSEvents["OnValidate"] = "ssf_tkt_customers1_OnValidate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow @11-C22C91ED
function ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers; //Compatibility
//End ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow

//Custom Code @42-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow @11-C5468C90
    return $ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow;
}
//End Close ssf_tkt_customers_ssf_tkt_customers_Insert_BeforeShow

//ssf_tkt_customers1_lnkAccount_BeforeShow @49-5B6AD0FD
function ssf_tkt_customers1_lnkAccount_BeforeShow(& $sender)
{
    $ssf_tkt_customers1_lnkAccount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers1; //Compatibility
//End ssf_tkt_customers1_lnkAccount_BeforeShow

//Custom Code @50-2A29BDB7
global $AccountExist ;
	if ($AccountExist)
		$Component->Visible = true ;
	else
		$Component->Visible = false ;

//End Custom Code

//Close ssf_tkt_customers1_lnkAccount_BeforeShow @49-5A2BB81C
    return $ssf_tkt_customers1_lnkAccount_BeforeShow;
}
//End Close ssf_tkt_customers1_lnkAccount_BeforeShow

//ssf_tkt_customers1_Button_Account_BeforeShow @46-0E09B2F9
function ssf_tkt_customers1_Button_Account_BeforeShow(& $sender)
{
    $ssf_tkt_customers1_Button_Account_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers1; //Compatibility
//End ssf_tkt_customers1_Button_Account_BeforeShow

//Custom Code @47-2A29BDB7
if (CCGetSession("POSMOD") == "Y") {
	global $CreateAccountAllowed ;
		$Component->Visible = ($CreateAccountAllowed) ;
	
	global $AccountExist ;
		if ($AccountExist)
			$Component->Visible = false ;

	if (CCGetParam("ssf_tkt_customers_Insert") == "insert" )
			$Component->Visible = false ;
} else {
	$Component->Visible = false ;
}
//End Custom Code

//Close ssf_tkt_customers1_Button_Account_BeforeShow @46-9DC38BA1
    return $ssf_tkt_customers1_Button_Account_BeforeShow;
}
//End Close ssf_tkt_customers1_Button_Account_BeforeShow

//ssf_tkt_customers1_ds_AfterExecuteSelect @25-4AFEA4D9
function ssf_tkt_customers1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers1; //Compatibility
//End ssf_tkt_customers1_ds_AfterExecuteSelect

//Custom Code @43-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers1_ds_AfterExecuteSelect @25-5BADB76D
    return $ssf_tkt_customers1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers1_ds_AfterExecuteSelect

//ssf_tkt_customers1_BeforeShow @25-B769E84B
function ssf_tkt_customers1_BeforeShow(& $sender)
{
    $ssf_tkt_customers1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers1; //Compatibility
//End ssf_tkt_customers1_BeforeShow

//Custom Code @44-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_cust_id") != "" || CCGetParam("ssf_tkt_customers_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_cust_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_customers1_BeforeShow @25-56902933
    return $ssf_tkt_customers1_BeforeShow;
}
//End Close ssf_tkt_customers1_BeforeShow

//ssf_tkt_customers1_OnValidate @25-15827355
function ssf_tkt_customers1_OnValidate(& $sender)
{
    $ssf_tkt_customers1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers1; //Compatibility
//End ssf_tkt_customers1_OnValidate

//Custom Code @48-2A29BDB7
if (CCGetParam("Button_Account") != "" ) {
	$cust_id = $ssf_tkt_customers1->tkt_cust_id->GetValue();
	$account_id = str_pad($cust_id,15,"0",STR_PAD_LEFT)."/0000" ;
	$ssfQuery = " insert into ssf_tkt_customers_accounts (tkt_accnt_cust_id,tkt_accnt_id,tkt_accnt_credit_limit,tkt_accnt_credit_balance,tkt_accnt_trx_limit,tkt_accnt_active)";
	$ssfQuery .= " values ('".$cust_id."','".$account_id."',0,0,0,'Y') " ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$db->Close() ;
}

//End Custom Code

//Close ssf_tkt_customers1_OnValidate @25-696B4DBA
    return $ssf_tkt_customers1_OnValidate;
}
//End Close ssf_tkt_customers1_OnValidate

//Page_AfterInitialize @1-6D9CCE53
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketCustomers; //Compatibility
//End Page_AfterInitialize

//Custom Code @41-2A29BDB7
	global $EditisAllowed ;
	global $CreateAccountAllowed ;
	global $AccountExist ;

	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_VIEW") ;
	$CreateAccountAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_ACCNT_EDIT") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

	$AccountExist = ExistAccount(CCGetParam("tkt_cust_id")) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function ExistAccount ($customer) {
	$ssfQuery .= " Select 1 from ssf_tkt_customers_accounts where tkt_accnt_cust_id = '".$customer."' " ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$result = $db->next_record() ;
	$db->Close() ;
	if ($result)
		return true ;
	else
		return false ;
}

?>
