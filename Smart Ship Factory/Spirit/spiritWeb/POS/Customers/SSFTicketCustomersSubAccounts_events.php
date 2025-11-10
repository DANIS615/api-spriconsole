<?php
//BindEvents Method @1-00177483
function BindEvents()
{
    global $ssf_tkt_customers_account3;
    global $ssf_tkt_customers_account1;
    global $ssf_tkt_customers_account2;
    global $CCSEvents;
    $ssf_tkt_customers_account3->tkt_accnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow";
    $ssf_tkt_customers_account3->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account3_BeforeShowRow";
    $ssf_tkt_customers_account1->tkt_subaccnt_active->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow";
    $ssf_tkt_customers_account1->subaccnt_insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_subaccnt_insert_BeforeShow";
    $ssf_tkt_customers_account1->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account1_BeforeShowRow";
    $ssf_tkt_customers_account2->tkt_subaccnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow";
    $ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow";
    $ssf_tkt_customers_account2->tkt_subaccnt_balance->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow";
    $ssf_tkt_customers_account2->lblsaldo->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_lblsaldo_BeforeShow";
    $ssf_tkt_customers_account2->Button1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_Button1_BeforeShow";
    $ssf_tkt_customers_account2->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_BeforeShow";
    $ssf_tkt_customers_account2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_account2_ds_AfterExecuteSelect";
    $ssf_tkt_customers_account2->CCSEvents["OnValidate"] = "ssf_tkt_customers_account2_OnValidate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow @87-64F069B6
function ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account3; //Compatibility
//End ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow

//Custom Code @94-2A29BDB7
global $Tpl;
global $PathToRoot ;
	if ($ssf_tkt_customers_account3->tkt_accnt_active->GetValue() == "Y" ) {
		$Tpl->SetVar("imgaccntactive", $PathToRoot."/Styles/images/yep.ico") ;
	} else {
		$Tpl->SetVar("imgaccntactive", $PathToRoot."/Styles/images/nop.ico") ;
	}
//End Custom Code

//Close ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow @87-AAE2DFEC
    return $ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow;
}
//End Close ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow

//DEL  //

//ssf_tkt_customers_account3_BeforeShowRow @86-09E61CCE
function ssf_tkt_customers_account3_BeforeShowRow(& $sender)
{
    $ssf_tkt_customers_account3_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account3; //Compatibility
//End ssf_tkt_customers_account3_BeforeShowRow

//Custom Code @98-2A29BDB7
	$balance = $ssf_tkt_customers_account3->tkt_accnt_credit_limit->GetValue() - $ssf_tkt_customers_account3->tkt_accnt_credit_balance->GetValue() ;
	$ssf_tkt_customers_account3->lblaccntbalance->SetValue($balance ) ;
	if ($balance < 0 ) {
		 $ssf_tkt_customers_account3->Attributes->SetValue('accntnegbalance','color:red') ;
	}
//End Custom Code

//Close ssf_tkt_customers_account3_BeforeShowRow @86-B9134B59
    return $ssf_tkt_customers_account3_BeforeShowRow;
}
//End Close ssf_tkt_customers_account3_BeforeShowRow

//ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow @30-1D2AFAE7
function ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow

//Custom Code @48-2A29BDB7
global $CCSLocales ;
	$Component->SetValue($Component->GetValue() == "Y" ? $CCSLocales->GetText("ssf_yes") : $CCSLocales->GetText("ssf_no") ) ;

//End Custom Code

//Close ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow @30-E045476F
    return $ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow;
}
//End Close ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow

//ssf_tkt_customers_account1_subaccnt_insert_BeforeShow @62-5D258B03
function ssf_tkt_customers_account1_subaccnt_insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account1_subaccnt_insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_subaccnt_insert_BeforeShow

//Custom Code @64-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_account1_subaccnt_insert_BeforeShow @62-0554AE7B
    return $ssf_tkt_customers_account1_subaccnt_insert_BeforeShow;
}
//End Close ssf_tkt_customers_account1_subaccnt_insert_BeforeShow

//ssf_tkt_customers_account1_BeforeShowRow @3-17A86762
function ssf_tkt_customers_account1_BeforeShowRow(& $sender)
{
    $ssf_tkt_customers_account1_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_BeforeShowRow

//Custom Code @49-2A29BDB7
if ($ssf_tkt_customers_account1->tkt_subaccnt_active->GetValue() == "N" ) {
	$Component->Attributes->SetValue('stylenotactive', 'color:red');
} else {
	$Component->Attributes->SetValue('stylenotactive', '');
}
//End Custom Code

//Close ssf_tkt_customers_account1_BeforeShowRow @3-6D2FDB9E
    return $ssf_tkt_customers_account1_BeforeShowRow;
}
//End Close ssf_tkt_customers_account1_BeforeShowRow

//ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow @33-83CAE30C
function ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow

//Custom Code @51-2A29BDB7
global $Tpl;
global $PathToRoot ;

	if (CCGetParam("subaccnt_insert") == "insert" && $Component->GetValue() == "" ) {
		$cust_id = CCGetParam("tkt_subaccnt_cust_id") ;
		$cuenta = MaxSubAccount($cust_id) ;
		$cuenta++ ;
		$subaccount_parsed = str_pad($cuenta,4,"0",STR_PAD_LEFT) ;
		$subaccount_id = str_pad($cust_id,15,"0",STR_PAD_LEFT)."/".$subaccount_parsed ;
		$Component->SetValue($subaccount_id) ;
		$ssf_tkt_customers_account2->tkt_accnt_active->SetValue("Y") ;
		$ssf_tkt_customers_account2->tkt_subaccnt_balance->SetValue(0) ;
		$ssf_tkt_customers_account2->h_credit_balance->SetValue(0) ;
		$ssf_tkt_customers_account2->tkt_subaccnt_cust_id->SetValue($cust_id) ;
	}


	if ($ssf_tkt_customers_account2->tkt_accnt_active->GetValue() == "Y" ) {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/yep.ico") ;
	} else {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/nop.ico") ;
	}

//End Custom Code

//Close ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow @33-62C4B868
    return $ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow;
}
//End Close ssf_tkt_customers_account2_tkt_subaccnt_id_BeforeShow

//ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow @34-74F5A199
function ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow

//Custom Code @104-2A29BDB7
if ($Component->GetValue() == "")
	$Component->SetValue(0) ;

//End Custom Code

//Close ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow @34-B3403040
    return $ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow;
}
//End Close ssf_tkt_customers_account2_tkt_subaccnt_credit_limit_BeforeShow

//ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow @35-2FFA80EB
function ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow

//Custom Code @77-2A29BDB7
//if (!$Component->GetValue() != "" )
//	$Component->SetValue(0) ;
//End Custom Code

//Close ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow @35-ECFC846B
    return $ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow;
}
//End Close ssf_tkt_customers_account2_tkt_subaccnt_balance_BeforeShow

//ssf_tkt_customers_account2_lblsaldo_BeforeShow @45-5EDFFCD2
function ssf_tkt_customers_account2_lblsaldo_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_lblsaldo_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_lblsaldo_BeforeShow

//Custom Code @46-2A29BDB7
$Component->SetValue($ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->GetValue() - $ssf_tkt_customers_account2->h_credit_balance->GetValue() ) ;
$ssf_tkt_customers_account2->Attributes->SetValue('subaccntnegbalance','color:red') ;
//End Custom Code

//Close ssf_tkt_customers_account2_lblsaldo_BeforeShow @45-E70E30CB
    return $ssf_tkt_customers_account2_lblsaldo_BeforeShow;
}
//End Close ssf_tkt_customers_account2_lblsaldo_BeforeShow

//ssf_tkt_customers_account2_Button1_BeforeShow @102-D2E5639A
function ssf_tkt_customers_account2_Button1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_Button1_BeforeShow

//Custom Code @103-2A29BDB7
global $CustProdAllowed ;
$Component->Visible = $CustProdAllowed ;
//End Custom Code

//Close ssf_tkt_customers_account2_Button1_BeforeShow @102-A1BA289C
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
	if ( (CCGetParam("tkt_subaccnt_cust_id") != "" && CCGetParam("tkt_subaccnt_id") != "" )    || CCGetParam("subaccnt_insert") == "insert") 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

$balance  = $ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->GetValue() - $ssf_tkt_customers_account2->h_credit_balance->GetValue() ;
$ssf_tkt_customers_account2->lblsaldo->SetValue($balance) ;
if ($balance < 0)
	$ssf_tkt_customers_account2->Attributes->SetValue('subaccntnegbalance','color:red') ;

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

//ssf_tkt_customers_account2_OnValidate @32-F03B3B01
function ssf_tkt_customers_account2_OnValidate(& $sender)
{
    $ssf_tkt_customers_account2_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_OnValidate

//Custom Code @85-2A29BDB7
global $CCSLocales ;

$active = "N" ;
$credit_limit = 0 ;
$customer = $ssf_tkt_customers_account2->tkt_subaccnt_cust_id->GetValue() ;
CheckAccountData ($customer, & $active, & $credit_limit ) ;


if ($credit_limit < $ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->GetValue() ) {
	$Component->Errors->addError($CCSLocales->GetText("ssf_subaccount_limit_overflow")) ;
}

//End Custom Code

//Close ssf_tkt_customers_account2_OnValidate @32-45F05307
    return $ssf_tkt_customers_account2_OnValidate;
}
//End Close ssf_tkt_customers_account2_OnValidate

//Page_AfterInitialize @1-09A3358A
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketCustomersSubAccounts; //Compatibility
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

function MaxSubAccount ($customer) {
	$cuenta = 0 ;
	$ssfQuery = " Select count(*) as cuenta from ssf_tkt_customers_subaccounts where tkt_subaccnt_cust_id = '".$customer."' " ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$result = $db->next_record() ;
	if ($result)
		$cuenta =  $db->f("cuenta") ;
	$db->Close() ;
	return $cuenta ;
	
}

function CheckAccountData ($customer, & $active, & $credit_limit ) {
	$cuenta = 0 ;
	$ssfQuery = " Select * from ssf_tkt_customers_accounts where tkt_accnt_cust_id = '".$customer."' " ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$result = $db->next_record() ;
	if ($result) {
		$active =  $db->f("tkt_accnt_active") ;
		$credit_limit = $db->f("tkt_accnt_credit_limit") ;
	}
	$db->Close() ;
}


?>
