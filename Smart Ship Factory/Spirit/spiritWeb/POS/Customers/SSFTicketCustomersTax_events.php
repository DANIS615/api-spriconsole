<?php
//BindEvents Method @1-11725131
function BindEvents()
{
    global $ssf_tkt_customers_types;
    global $ssf_tkt_customers_types1;
    global $CCSEvents;
    $ssf_tkt_customers_types->customers_types_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_types_customers_types_Insert_BeforeShow";
    $ssf_tkt_customers_types1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_types1_ds_AfterExecuteSelect";
    $ssf_tkt_customers_types1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_types1_BeforeShow";
    $ssf_tkt_customers_types1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_customers_types1_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_types_customers_types_Insert_BeforeShow @10-2A5C255E
function ssf_tkt_customers_types_customers_types_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_types_customers_types_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_types; //Compatibility
//End ssf_tkt_customers_types_customers_types_Insert_BeforeShow

//Custom Code @40-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_types_customers_types_Insert_BeforeShow @10-2768D677
    return $ssf_tkt_customers_types_customers_types_Insert_BeforeShow;
}
//End Close ssf_tkt_customers_types_customers_types_Insert_BeforeShow

//ssf_tkt_customers_types1_ds_AfterExecuteSelect @19-CCD960D6
function ssf_tkt_customers_types1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers_types1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_types1; //Compatibility
//End ssf_tkt_customers_types1_ds_AfterExecuteSelect

//Custom Code @41-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_types1_ds_AfterExecuteSelect @19-A3053439
    return $ssf_tkt_customers_types1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers_types1_ds_AfterExecuteSelect

//ssf_tkt_customers_types1_BeforeShow @19-0A707DBA
function ssf_tkt_customers_types1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_types1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_types1; //Compatibility
//End ssf_tkt_customers_types1_BeforeShow

//Custom Code @42-2A29BDB7
global $Tpl ; 
	if (CCGetParam("tkt_cust_type_id") != "" || CCGetParam("customers_types_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_cust_type_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code
//End Custom Code

//Close ssf_tkt_customers_types1_BeforeShow @19-030D5448
    return $ssf_tkt_customers_types1_BeforeShow;
}
//End Close ssf_tkt_customers_types1_BeforeShow

//ssf_tkt_customers_types1_ds_BeforeExecuteDelete @19-3923A161
function ssf_tkt_customers_types1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_customers_types1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_types1; //Compatibility
//End ssf_tkt_customers_types1_ds_BeforeExecuteDelete

//Custom Code @43-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_customers" ;
	$where = " tkt_cust_type = '".$ssf_tkt_customers_types1->tkt_cust_type_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_cust_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_customers_types1_ds_BeforeExecuteDelete @19-2B09CF3F
    return $ssf_tkt_customers_types1_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_customers_types1_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-7B615204
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketCustomersTax; //Compatibility
//End Page_AfterInitialize

//Custom Code @39-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_TAX_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_TAX_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
