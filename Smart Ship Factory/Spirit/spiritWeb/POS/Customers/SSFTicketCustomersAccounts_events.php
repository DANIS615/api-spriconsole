<?php
//BindEvents Method @1-75402661
function BindEvents()
{
    global $ssf_tkt_customers_account1;
    global $ssf_tkt_customers_account2;
    global $CCSEvents;
    $ssf_tkt_customers_account1->tkt_accnt_active->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow";
    $ssf_tkt_customers_account1->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account1_BeforeShowRow";
    $ssf_tkt_customers_account2->tkt_accnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow";
    $ssf_tkt_customers_account2->Button1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_Button1_BeforeShow";
    $ssf_tkt_customers_account2->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_BeforeShow";
    $ssf_tkt_customers_account2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_account2_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow @30-740893FA
function ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow

//Custom Code @48-2A29BDB7
global $CCSLocales ;
	$Component->SetValue($Component->GetValue() == "Y" ? $CCSLocales->GetText("ssf_yes") : $CCSLocales->GetText("ssf_no") ) ;

//End Custom Code

//Close ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow @30-E9CE50F8
    return $ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow;
}
//End Close ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow

//ssf_tkt_customers_account1_BeforeShowRow @3-17A86762
function ssf_tkt_customers_account1_BeforeShowRow(& $sender)
{
    $ssf_tkt_customers_account1_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_BeforeShowRow

//Custom Code @49-2A29BDB7
if ($ssf_tkt_customers_account1->tkt_accnt_active->GetValue() == "N" ) {
	$Component->Attributes->SetValue('stylenotactive', 'color:red');
} else {
	$Component->Attributes->SetValue('stylenotactive', '');
}
//End Custom Code

//Close ssf_tkt_customers_account1_BeforeShowRow @3-6D2FDB9E
    return $ssf_tkt_customers_account1_BeforeShowRow;
}
//End Close ssf_tkt_customers_account1_BeforeShowRow

//ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow @33-E6FC3DA6
function ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow

//Custom Code @51-2A29BDB7
global $Tpl;
global $PathToRoot ;

	if ($ssf_tkt_customers_account2->tkt_accnt_active->GetValue() == "Y" ) {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/yep.ico") ;
	} else {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/nop.ico") ;
	}
//End Custom Code

//Close ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow @33-C46EC4AD
    return $ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow;
}
//End Close ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow

//DEL  //

//ssf_tkt_customers_account2_Button1_BeforeShow @61-D2E5639A
function ssf_tkt_customers_account2_Button1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_Button1_BeforeShow

//Custom Code @62-2A29BDB7
global $CustProdAllowed ;
$Component->Visible = $CustProdAllowed ;
//End Custom Code

//Close ssf_tkt_customers_account2_Button1_BeforeShow @61-A1BA289C
    return $ssf_tkt_customers_account2_Button1_BeforeShow;
}
//End Close ssf_tkt_customers_account2_Button1_BeforeShow

//DEL  

//ssf_tkt_customers_account2_BeforeShow @32-1EEB1346
function ssf_tkt_customers_account2_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_BeforeShow

//Custom Code @53-2A29BDB7
	if (CCGetParam("tkt_accnt_cust_id") != "" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

$balance = $ssf_tkt_customers_account2->tkt_accnt_credit_limit->GetValue() - $ssf_tkt_customers_account2->h_credit_balance->GetValue()  ;
$ssf_tkt_customers_account2->lblsaldo->SetValue($balance) ;
if ($balance < 0)
	$ssf_tkt_customers_account2->Attributes->SetValue('accntnegbalance','color:red') ;

//End Custom Code

//Close ssf_tkt_customers_account2_BeforeShow @32-7A0B378E
    return $ssf_tkt_customers_account2_BeforeShow;
}
//End Close ssf_tkt_customers_account2_BeforeShow

//ssf_tkt_customers_account2_ds_AfterExecuteSelect @32-35783B92
function ssf_tkt_customers_account2_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers_account2_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_ds_AfterExecuteSelect

//Custom Code @54-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_account2_ds_AfterExecuteSelect @32-10CC9E48
    return $ssf_tkt_customers_account2_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers_account2_ds_AfterExecuteSelect

//Page_AfterInitialize @1-8EEDA25C
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketCustomersAccounts; //Compatibility
//End Page_AfterInitialize

//Custom Code @52-2A29BDB7
	global $EditisAllowed ;
	global $CustProdAllowed ;	

	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_ACCNT_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_ACCNT_VIEW") ;
	$CustProdAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_PROD_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
