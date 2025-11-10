<?php
//BindEvents Method @1-036A3791
function BindEvents()
{
    global $ssf_tkt_customers_account3;
    global $ssf_tkt_customers_account1;
    global $ssf_tkt_customers_account4;
    global $ssf_flt_tags_data;
    global $CCSEvents;
    $ssf_tkt_customers_account3->tkt_accnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account3_tkt_accnt_id_BeforeShow";
    $ssf_tkt_customers_account3->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account3_BeforeShowRow";
    $ssf_tkt_customers_account1->tkt_subaccnt_active->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_tkt_subaccnt_active_BeforeShow";
    $ssf_tkt_customers_account1->subaccnt_insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account1_subaccnt_insert_BeforeShow";
    $ssf_tkt_customers_account1->CCSEvents["BeforeShowRow"] = "ssf_tkt_customers_account1_BeforeShowRow";
    $ssf_tkt_customers_account4->tkt_accnt_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow";
    $ssf_tkt_customers_account4->CCSEvents["BeforeShow"] = "ssf_tkt_customers_account4_BeforeShow";
    $ssf_tkt_customers_account4->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_account4_ds_AfterExecuteSelect";
    $ssf_flt_tags_data->ftd_subaccnt_id->CCSEvents["BeforeShow"] = "ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow";
    $ssf_flt_tags_data->ftd_accnt_id->CCSEvents["BeforeShow"] = "ssf_flt_tags_data_ftd_accnt_id_BeforeShow";
    $ssf_flt_tags_data->CCSEvents["BeforeShow"] = "ssf_flt_tags_data_BeforeShow";
    $ssf_flt_tags_data->ds->CCSEvents["BeforeExecuteInsert"] = "ssf_flt_tags_data_ds_BeforeExecuteInsert";
    $ssf_flt_tags_data->CCSEvents["OnValidateRow"] = "ssf_flt_tags_data_OnValidateRow";
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

/*	$balance = $ssf_tkt_customers_account3->tkt_accnt_credit_limit->GetValue() - $ssf_tkt_customers_account3->tkt_accnt_credit_balance->GetValue() ;
	$ssf_tkt_customers_account3->lblaccntbalance->SetValue($balance ) ;
	if ($balance < 0 ) {
		 $ssf_tkt_customers_account3->Attributes->SetValue('accntnegbalance','color:red') ;
	} */
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

//DEL  $Component->SetValue($ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->GetValue() - $ssf_tkt_customers_account2->h_credit_balance->GetValue() ) ;
//DEL  $ssf_tkt_customers_account2->Attributes->SetValue('subaccntnegbalance','color:red') ;


//ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow @113-5C37C944
function ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account4; //Compatibility
//End ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow

//Custom Code @114-2A29BDB7
global $Tpl;
global $PathToRoot ;

	if (CCGetParam("subaccnt_insert") == "insert" && $Component->GetValue() == "" ) {
		$cust_id = CCGetParam("tkt_subaccnt_cust_id") ;
		$cuenta = MaxSubAccount($cust_id) ;
		$cuenta++ ;
		$subaccount_parsed = str_pad($cuenta,4,"0",STR_PAD_LEFT) ;
		$subaccount_id = str_pad($cust_id,15,"0",STR_PAD_LEFT)."/".$subaccount_parsed ;
		$Component->SetValue($subaccount_id) ;
		$ssf_tkt_customers_account4->tkt_accnt_active->SetValue("Y") ;
		$ssf_tkt_customers_account4->tkt_accnt_cust_id->SetValue($cust_id) ;
	}


	if ($ssf_tkt_customers_account4->tkt_accnt_active->GetValue() == "Y" ) {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/yep.ico") ;
	} else {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/nop.ico") ;
	}
//End Custom Code

//Close ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow @113-7837996A
    return $ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow;
}
//End Close ssf_tkt_customers_account4_tkt_accnt_id_BeforeShow

//ssf_tkt_customers_account4_BeforeShow @112-7BDD5B61
function ssf_tkt_customers_account4_BeforeShow(& $sender)
{
    $ssf_tkt_customers_account4_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account4; //Compatibility
//End ssf_tkt_customers_account4_BeforeShow

//Custom Code @144-2A29BDB7
	if ( (CCGetParam("tkt_subaccnt_cust_id") != "" && CCGetParam("tkt_subaccnt_id") != "" )    || CCGetParam("subaccnt_insert") == "insert") 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

/*$balance  = $ssf_tkt_customers_account2->tkt_subaccnt_credit_limit->GetValue() - $ssf_tkt_customers_account2->h_credit_balance->GetValue() ;
$ssf_tkt_customers_account2->lblsaldo->SetValue($balance) ;
if ($balance < 0)
	$ssf_tkt_customers_account2->Attributes->SetValue('subaccntnegbalance','color:red') ;
*/

if (CCGetParam("tkt_subaccnt_cust_id") != "" && CCGetParam("tkt_subaccnt_id") != "" ) {
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
	GetBalances(CCGetParam("tkt_subaccnt_cust_id"),CCGetParam("tkt_subaccnt_id"), $balances, $fleetmodelid) ;
	global $Limits ;
	$Limits = array() ;
	$Limits["lp_day_qty_trx"] = 0 ;
	$Limits["lp_day_limit_amount"] = 0 ;
	$Limits["lp_month_limit_amount"] = 0 ;
	$Limits["lp_trx_limit_amount"] = 0 ;
	$Limits["lp_day_limit_volume"] = 0 ;
	$Limits["lp_month_limit_volume"] = 0 ;
	$Limits["lp_trx_limit_volume"] = 0 ;
	GetLimits(CCGetParam("tkt_subaccnt_cust_id"), $Limits, $fleetmodelid) ;
}


$ssf_tkt_customers_account4->fca_day_qty_trx_bal->SetValue($balances["fca_day_qty_trx_bal"]) ;
$ssf_tkt_customers_account4->fca_day_amount_bal->SetValue($balances["fca_day_amount_bal"]) ;
$ssf_tkt_customers_account4->fca_month_amount_bal->SetValue($balances["fca_month_amount_bal"]) ;
$ssf_tkt_customers_account4->fca_day_volume_bal->SetValue($balances["fca_day_volume_bal"]) ;
$ssf_tkt_customers_account4->fca_month_volume_bal->SetValue($balances["fca_month_volume_bal"]) ;

$ssf_tkt_customers_account4->lp_day_qty_trx->SetValue($Limits["lp_day_qty_trx"]) ;
$ssf_tkt_customers_account4->lp_day_limit_amount->SetValue($Limits["lp_day_limit_amount"]) ;
$ssf_tkt_customers_account4->lp_month_limit_amount->SetValue($Limits["lp_month_limit_amount"]) ;
$ssf_tkt_customers_account4->lp_trx_limit_amount->SetValue($Limits["lp_trx_limit_amount"]) ;
$ssf_tkt_customers_account4->lp_day_limit_volume->SetValue($Limits["lp_day_limit_volume"]) ;
$ssf_tkt_customers_account4->lp_month_limit_volume->SetValue($Limits["lp_month_limit_volume"]) ;
$ssf_tkt_customers_account4->lp_trx_limit_volume->SetValue($Limits["lp_trx_limit_volume"]) ;



$ssf_tkt_customers_account4->lbl_day_qty_trx_bal->SetValue($Limits["lp_day_qty_trx"] - $balances["fca_day_qty_trx_bal"]) ;

if ($Limits["lp_day_limit_amount"] != 0) {
	if ($balances["fca_day_amount_bal"] > $Limits["lp_day_limit_amount"]) 
		$ssf_tkt_customers_account4->Attributes->SetValue('lbl_day_amount_negbal','color:red') ; 
	$ssf_tkt_customers_account4->lbl_day_amount_bal->SetValue($Limits["lp_day_limit_amount"] - $balances["fca_day_amount_bal"]) ;
} else {
	$ssf_tkt_customers_account4->lbl_day_amount_bal->SetValue("") ;
}

if ($Limits["lp_month_limit_amount"] != 0) {
	if ($balances["fca_month_amount_bal"] > $Limits["lp_month_limit_amount"]) 
		$ssf_tkt_customers_account4->Attributes->SetValue('lbl_month_amount_negbal','color:red') ; 
	$ssf_tkt_customers_account4->lbl_month_amount_bal->SetValue($Limits["lp_month_limit_amount"] - $balances["fca_month_amount_bal"]) ;
} else {
	$ssf_tkt_customers_account4->lbl_month_amount_bal->SetValue("") ;
}

if ($Limits["lp_day_limit_volume"] != 0) {
	if ($balances["fca_day_volume_bal"] > $Limits["lp_day_limit_volume"]) 
		$ssf_tkt_customers_account4->Attributes->SetValue('lbl_day_volume_negbal','color:red') ; 
	$ssf_tkt_customers_account4->lbl_day_volume_bal->SetValue($Limits["lp_day_limit_volume"] - $balances["fca_day_volume_bal"]) ;
} else {
	$ssf_tkt_customers_account4->lbl_day_volume_bal->SetValue("") ;
}

if ($Limits["lp_month_limit_volume"] != 0) {
	if ($balances["fca_month_volume_bal"] > $Limits["lp_month_limit_volume"]) 
		$ssf_tkt_customers_account4->Attributes->SetValue('lbl_month_volume_negbal','color:red') ; 
	$ssf_tkt_customers_account4->lbl_month_volume_bal->SetValue($Limits["lp_month_limit_volume"] - $balances["fca_month_volume_bal"]) ;
} else {
	$ssf_tkt_customers_account4->lbl_month_volume_bal->SetValue("") ;
}


//End Custom Code

//Close ssf_tkt_customers_account4_BeforeShow @112-82C97C38
    return $ssf_tkt_customers_account4_BeforeShow;
}
//End Close ssf_tkt_customers_account4_BeforeShow

//ssf_tkt_customers_account4_ds_AfterExecuteSelect @112-ACB2FA63
function ssf_tkt_customers_account4_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers_account4_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_account4; //Compatibility
//End ssf_tkt_customers_account4_ds_AfterExecuteSelect

//Custom Code @145-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_account4_ds_AfterExecuteSelect @112-7B17F2EE
    return $ssf_tkt_customers_account4_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers_account4_ds_AfterExecuteSelect

//ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow @164-630E5C5E
function ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow(& $sender)
{
    $ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_tags_data; //Compatibility
//End ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow

//Custom Code @173-2A29BDB7
$Component->SetValue(CCGetParam("tkt_subaccnt_id")) ;
//End Custom Code

//Close ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow @164-5089B145
    return $ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow;
}
//End Close ssf_flt_tags_data_ftd_subaccnt_id_BeforeShow

//ssf_flt_tags_data_ftd_accnt_id_BeforeShow @163-4FD6A460
function ssf_flt_tags_data_ftd_accnt_id_BeforeShow(& $sender)
{
    $ssf_flt_tags_data_ftd_accnt_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_tags_data; //Compatibility
//End ssf_flt_tags_data_ftd_accnt_id_BeforeShow

//Custom Code @172-2A29BDB7
$subaccnt = CCGetParam("tkt_subaccnt_id") ;
$accnt = substr($subaccnt,0,15)."/0000" ;
$Component->SetValue($accnt) ;
//End Custom Code

//Close ssf_flt_tags_data_ftd_accnt_id_BeforeShow @163-2078DCC6
    return $ssf_flt_tags_data_ftd_accnt_id_BeforeShow;
}
//End Close ssf_flt_tags_data_ftd_accnt_id_BeforeShow

//ssf_flt_tags_data_BeforeShow @152-8DBE5E36
function ssf_flt_tags_data_BeforeShow(& $sender)
{
    $ssf_flt_tags_data_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_tags_data; //Compatibility
//End ssf_flt_tags_data_BeforeShow

//Custom Code @171-2A29BDB7
	if ( (CCGetParam("tkt_subaccnt_cust_id") != "" && CCGetParam("tkt_subaccnt_id") != "" ) ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_flt_tags_data_BeforeShow @152-CCB84D41
    return $ssf_flt_tags_data_BeforeShow;
}
//End Close ssf_flt_tags_data_BeforeShow

//ssf_flt_tags_data_ds_BeforeExecuteInsert @152-0125C0C9
function ssf_flt_tags_data_ds_BeforeExecuteInsert(& $sender)
{
    $ssf_flt_tags_data_ds_BeforeExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_tags_data; //Compatibility
//End ssf_flt_tags_data_ds_BeforeExecuteInsert

//Custom Code @174-2A29BDB7
if ($ssf_flt_tags_data->ftd_tag_id->GetValue() == "")
	$ssf_flt_tags_data->DataSource->SQL = "" ;
//End Custom Code

//Close ssf_flt_tags_data_ds_BeforeExecuteInsert @152-3FB7E4FA
    return $ssf_flt_tags_data_ds_BeforeExecuteInsert;
}
//End Close ssf_flt_tags_data_ds_BeforeExecuteInsert

//DEL  

//ssf_flt_tags_data_OnValidateRow @152-83B52D0B
function ssf_flt_tags_data_OnValidateRow(& $sender)
{
    $ssf_flt_tags_data_OnValidateRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_tags_data; //Compatibility
//End ssf_flt_tags_data_OnValidateRow

//Custom Code @176-2A29BDB7
global $DBConnection1 ;
global $CCSLocales ;
	$account = $ssf_flt_tags_data->ftd_accnt_id->GetValue() ;
	$subaccount = $ssf_flt_tags_data->ftd_subaccnt_id->GetValue() ;
	$tagid = $ssf_flt_tags_data->ftd_tag_id->GetValue() ;
	if (CheckTagExist($account, $subaccount, $tagid) ) {
     	$ssf_flt_tags_data->RowErrors->addError($CCSLocales->GetText("ssf_tag_duplicated"));
	}
//End Custom Code

//Close ssf_flt_tags_data_OnValidateRow @152-E6E4879C
    return $ssf_flt_tags_data_OnValidateRow;
}
//End Close ssf_flt_tags_data_OnValidateRow

//Page_AfterInitialize @1-FBD18E7E
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetSubAccounts; //Compatibility
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

function MaxSubAccount ($customer) {
	$cuenta = 0 ;
	$ssfQuery = " Select count(*) as cuenta from ssf_flt_customers_subaccounts where fcs_subaccnt_cust_id = '".$customer."' " ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$result = $db->next_record() ;
	if ($result)
		$cuenta =  $db->f("cuenta") ;
	$db->Close() ;
	return $cuenta ;
	
}

function GetBalances($account, $subaccount, & $a_balances, & $fleetmodelid) {
	global $DBConnection1  ;
	$db = New $DBConnection1 ;
	
	$sql = "Select * from ssf_flt_customers_subaccounts where fcs_subaccnt_cust_id = '".$account."' and fcs_subaccnt_id='".$subaccount."'" ;
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) {
		$a_balances["fca_day_qty_trx_bal"] = $db->f("fcs_day_qty_trx_bal") ;
		$a_balances["fca_day_amount_bal"] = $db->f("fcs_day_amount_bal") ;
		$a_balances["fca_month_amount_bal"] = $db->f("fcs_month_amount_bal") ;
		$a_balances["fca_trx_amount_bal"] = $db->f("fcs_trx_amount_bal") ;
		$a_balances["fca_day_volume_bal"] = $db->f("fcs_day_volume_bal") ;
		$a_balances["fca_month_volume_bal"] = $db->f("fcs_month_volume_bal") ;
		$a_balances["fca_trx_volume_bal"] = $db->f("fcs_trx_volume_bal") ;		
		$fleetmodelid = $db->f("fcs_fleet_model_id") ;	
		if ($fleetmodelid == "") {
			$sql = "Select * from ssf_flt_customers_accounts where fca_accnt_cust_id = '".$account."'" ;
			$db->query($sql) ;
			$result = $db->next_record() ;
			if ($result) {
				$fleetmodelid = $db->f("fca_fleet_model_id") ;	
			}
		}
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

function CheckTagExist($account, $subaccount, $tagid) {
	global $DBConnection1  ;
	$db = New $DBConnection1 ;
	$retorno = false ;
	$sql = "Select * from ssf_flt_tags_data where ftd_subaccnt_id <> '".$subaccount."'" ;
	$sql .= " and ftd_tag_id = '".$tagid."'" ;
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) 
		$retorno =  true;
	else
		$retorno =  false;
	$db->Close() ;
	return $retorno ;
}

?>
