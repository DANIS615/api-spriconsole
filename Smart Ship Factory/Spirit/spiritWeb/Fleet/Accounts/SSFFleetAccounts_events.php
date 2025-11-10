<?php
//BindEvents Method @1-9590009B
function BindEvents()
{
    global $ssf_tkt_customers_account1;
    global $ssf_tkt_customers_account2;
    global $CCSEvents;
    $ssf_tkt_customers_account1->tkt_accnt_active->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_tkt_accnt_active_BeforeShow";
    $ssf_tkt_customers_account1->ssf_tkt_fleet_account_insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow";
    $ssf_tkt_customers_account1->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account1_BeforeShowRow";
    $ssf_tkt_customers_account2->tkt_accnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_tkt_accnt_id_BeforeShow";
    $ssf_tkt_customers_account2->t_tkt_accnt_cust_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow";
    $ssf_tkt_customers_account2->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account2_Link1_BeforeShow";
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

//ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow @66-FFA1A94C
function ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account1; //Compatibility
//End ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow

//Custom Code @68-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow @66-401E8312
    return $ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow;
}
//End Close ssf_tkt_customers_account1_ssf_tkt_fleet_account_insert_BeforeShow

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

//ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow @69-E571979A
function ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow

//Custom Code @73-2A29BDB7
	if ( CCGetParam("ssf_tkt_fleet_account_insert") == "insert") 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow @69-231CC5B0
    return $ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow;
}
//End Close ssf_tkt_customers_account2_t_tkt_accnt_cust_id_BeforeShow

//ssf_tkt_customers_account2_Link1_BeforeShow @70-62BF37A0
function ssf_tkt_customers_account2_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_Link1_BeforeShow

//Custom Code @72-2A29BDB7
	if ( CCGetParam("ssf_tkt_fleet_account_insert") == "insert") 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_customers_account2_Link1_BeforeShow @70-ABD81279
    return $ssf_tkt_customers_account2_Link1_BeforeShow;
}
//End Close ssf_tkt_customers_account2_Link1_BeforeShow


//ssf_tkt_customers_account2_BeforeShow @32-1EEB1346
function ssf_tkt_customers_account2_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account2; //Compatibility
//End ssf_tkt_customers_account2_BeforeShow

//Custom Code @53-2A29BDB7
	if (CCGetParam("tkt_accnt_cust_id") != "" || CCGetParam("ssf_tkt_fleet_account_insert") == "insert") 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

if (CCGetParam("tkt_accnt_cust_id") != "" ) {
	global $balances ;
	$balances = array() ;
	$balances["fca_day_qty_trx_bal"] = 0 ;
	$balances["fca_day_amount_bal"] = 0 ;
	$balances["fca_month_amount_bal"] = 0 ;
	$balances["fca_trx_amount_bal"] = 0 ;
	$balances["fca_day_volume_bal"] = 0 ;
	$balances["fca_month_volume_bal"] = 0 ;
	$balances["fca_trx_volume_bal"] = 0 ;
	$fleetmodelid = "" ;
	GetBalances(CCGetParam("tkt_accnt_cust_id") ,$balances, $fleetmodelid) ;
	global $Limits ;
	$Limits = array() ;
	$Limits["lp_day_qty_trx"] = 0 ;
	$Limits["lp_day_limit_amount"] = 0 ;
	$Limits["lp_month_limit_amount"] = 0 ;
	$Limits["lp_trx_limit_amount"] = 0 ;
	$Limits["lp_day_limit_volume"] = 0 ;
	$Limits["lp_month_limit_volume"] = 0 ;
	$Limits["lp_trx_limit_volume"] = 0 ;
	GetLimits(CCGetParam("tkt_accnt_cust_id") ,$Limits, $fleetmodelid) ;
}


$ssf_tkt_customers_account2->fca_day_qty_trx_bal->SetValue($balances["fca_day_qty_trx_bal"]) ;
$ssf_tkt_customers_account2->fca_day_amount_bal->SetValue($balances["fca_day_amount_bal"]) ;
$ssf_tkt_customers_account2->fca_month_amount_bal->SetValue($balances["fca_month_amount_bal"]) ;
$ssf_tkt_customers_account2->fca_day_volume_bal->SetValue($balances["fca_day_volume_bal"]) ;
$ssf_tkt_customers_account2->fca_month_volume_bal->SetValue($balances["fca_month_volume_bal"]) ;

$ssf_tkt_customers_account2->lp_day_qty_trx->SetValue($Limits["lp_day_qty_trx"]) ;
$ssf_tkt_customers_account2->lp_day_limit_amount->SetValue($Limits["lp_day_limit_amount"]) ;
$ssf_tkt_customers_account2->lp_month_limit_amount->SetValue($Limits["lp_month_limit_amount"]) ;
$ssf_tkt_customers_account2->lp_trx_limit_amount->SetValue($Limits["lp_trx_limit_amount"]) ;
$ssf_tkt_customers_account2->lp_day_limit_volume->SetValue($Limits["lp_day_limit_volume"]) ;
$ssf_tkt_customers_account2->lp_month_limit_volume->SetValue($Limits["lp_month_limit_volume"]) ;
$ssf_tkt_customers_account2->lp_trx_limit_volume->SetValue($Limits["lp_trx_limit_volume"]) ;


$ssf_tkt_customers_account2->lbl_day_qty_trx_bal->SetValue($Limits["lp_day_qty_trx"] - $balances["fca_day_qty_trx_bal"]) ;

if ($Limits["lp_day_limit_amount"] != 0) {
	if ($balances["fca_day_amount_bal"] > $Limits["lp_day_limit_amount"]) 
		$ssf_tkt_customers_account2->Attributes->SetValue('lbl_day_amount_negbal','color:red') ; 
	$ssf_tkt_customers_account2->lbl_day_amount_bal->SetValue($Limits["lp_day_limit_amount"] - $balances["fca_day_amount_bal"]) ;
} else {
	$ssf_tkt_customers_account2->lbl_day_amount_bal->SetValue("") ;
}
if ($Limits["lp_month_limit_amount"] != 0) {
	if ($balances["fca_month_amount_bal"] > $Limits["lp_month_limit_amount"]) 
		$ssf_tkt_customers_account2->Attributes->SetValue('lbl_month_amount_negbal','color:red') ; 
	$ssf_tkt_customers_account2->lbl_month_amount_bal->SetValue($Limits["lp_month_limit_amount"] - $balances["fca_month_amount_bal"]) ;
} else {
		$ssf_tkt_customers_account2->lbl_month_amount_bal->SetValue("") ;
}

if ($Limits["lp_day_limit_volume"] != 0) {
	if ($balances["fca_day_volume_bal"] > $Limits["lp_day_limit_volume"]) 
		$ssf_tkt_customers_account2->Attributes->SetValue('lbl_day_volume_negbal','color:red') ; 
	$ssf_tkt_customers_account2->lbl_day_volume_bal->SetValue($Limits["lp_day_limit_volume"] - $balances["fca_day_volume_bal"]) ;
} else {
	$ssf_tkt_customers_account2->lbl_day_volume_bal->SetValue("") ;
}

if ($Limits["lp_month_limit_volume"] != 0) {
	if ($balances["fca_month_volume_bal"] > $Limits["lp_month_limit_volume"]) 
		$ssf_tkt_customers_account2->Attributes->SetValue('lbl_month_volume_negbal','color:red') ; 
	$ssf_tkt_customers_account2->lbl_month_volume_bal->SetValue($Limits["lp_month_limit_volume"] - $balances["fca_month_volume_bal"]) ;
} else {
	$ssf_tkt_customers_account2->lbl_month_volume_bal->SetValue("") ;
}


//if ($balance < 0)
//	$ssf_tkt_customers_account2->Attributes->SetValue('accntnegbalance','color:red') ;

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

//Page_AfterInitialize @1-251BEB82
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetAccounts; //Compatibility
//End Page_AfterInitialize

//Custom Code @52-2A29BDB7
	global $EditisAllowed ;

	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_FLT_CUS_ACCNT_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_CUS_ACCNT_VIEW") ;
	
	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetBalances($account, & $a_balances, & $fleetmodelid) {
	global $DBConnection1  ;
	$db = New $DBConnection1 ;
	
	$sql = "Select * from ssf_flt_customers_accounts where fca_accnt_cust_id = '".$account."'" ;
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) {
		$a_balances["fca_day_qty_trx_bal"] = $db->f("fca_day_qty_trx_bal") ;
		$a_balances["fca_day_amount_bal"] = $db->f("fca_day_amount_bal") ;
		$a_balances["fca_month_amount_bal"] = $db->f("fca_month_amount_bal") ;
		$a_balances["fca_trx_amount_bal"] = $db->f("fca_trx_amount_bal") ;
		$a_balances["fca_day_volume_bal"] = $db->f("fca_day_volume_bal") ;
		$a_balances["fca_month_volume_bal"] = $db->f("fca_month_volume_bal") ;
		$a_balances["fca_trx_volume_bal"] = $db->f("fca_trx_volume_bal") ;		
		$fleetmodelid = $db->f("fca_fleet_model_id") ;	
	}
	$db->Close() ;
}

function GetLimits($account, & $a_Limits, $fleetmodelid) {
	global $DBConnection1  ;
	$db = New $DBConnection1 ;
	$sql = "Select * from ssf_flt_profile_model where pm_model_id = '".$fleetmodelid."'" ;
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) {
		$pm_limit_prof_id = $db->f("pm_limit_prof_id") ;
		if ($pm_limit_prof_id != "" ) {
				$sql = "Select * from ssf_flt_limit_profile where lp_profile_id = '".$pm_limit_prof_id."'" ;
				$db->query($sql) ;
				$result = $db->next_record() ;
				if ($result) {
					$a_Limits["lp_day_qty_trx"] = $db->f("lp_day_qty_trx") ;
					$a_Limits["lp_day_limit_amount"] = $db->f("lp_day_limit_amount") ;
					$a_Limits["lp_month_limit_amount"] = $db->f("lp_month_limit_amount") ;
					$a_Limits["lp_trx_limit_amount"] = $db->f("lp_trx_limit_amount") ;
					$a_Limits["lp_day_limit_volume"] = $db->f("lp_day_limit_volume") ;
					$a_Limits["lp_month_limit_volume"] = $db->f("lp_month_limit_volume") ;
					$a_Limits["lp_trx_limit_volume"] = $db->f("lp_trx_limit_volume") ;		
				}
		}
	}
	$db->Close() ;
}

?>
