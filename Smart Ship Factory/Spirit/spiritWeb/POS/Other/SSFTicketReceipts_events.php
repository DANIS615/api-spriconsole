<?php
//BindEvents Method @1-78902430
function BindEvents()
{
    global $ssf_tkt_receipt_format;
    global $ssf_tkt_receipt_format1;
    global $CCSEvents;
    $ssf_tkt_receipt_format->receipt_format_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow";
    $ssf_tkt_receipt_format1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_receipt_format1_ds_AfterExecuteSelect";
    $ssf_tkt_receipt_format1->CCSEvents["BeforeShow"] = "ssf_tkt_receipt_format1_BeforeShow";
    $ssf_tkt_receipt_format1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_receipt_format1_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow @6-79A1F78F
function ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_receipt_format; //Compatibility
//End ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow

//Custom Code @22-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow @6-376D0527
    return $ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow;
}
//End Close ssf_tkt_receipt_format_receipt_format_Insert_BeforeShow

//ssf_tkt_receipt_format1_ds_AfterExecuteSelect @11-3ADBA95E
function ssf_tkt_receipt_format1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_receipt_format1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_receipt_format1; //Compatibility
//End ssf_tkt_receipt_format1_ds_AfterExecuteSelect

//Custom Code @23-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_receipt_format1_ds_AfterExecuteSelect @11-4B8D8DD6
    return $ssf_tkt_receipt_format1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_receipt_format1_ds_AfterExecuteSelect

//ssf_tkt_receipt_format1_BeforeShow @11-86547F66
function ssf_tkt_receipt_format1_BeforeShow(& $sender)
{
    $ssf_tkt_receipt_format1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_receipt_format1; //Compatibility
//End ssf_tkt_receipt_format1_BeforeShow

//Custom Code @24-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_receipt_id") != "" || CCGetParam("receipt_format_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_receipt_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_receipt_format1_BeforeShow @11-0E288279
    return $ssf_tkt_receipt_format1_BeforeShow;
}
//End Close ssf_tkt_receipt_format1_BeforeShow

//ssf_tkt_receipt_format1_ds_BeforeExecuteDelete @11-59196E19
function ssf_tkt_receipt_format1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_receipt_format1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_receipt_format1; //Compatibility
//End ssf_tkt_receipt_format1_ds_BeforeExecuteDelete

//Custom Code @25-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_customers_types" ;
	$where = " ( tkt_cust_type_sell = '".$ssf_tkt_receipt_format1->tkt_receipt_id->GetValue()."' or tkt_cust_type_credit = '".$ssf_tkt_receipt_format1->tkt_receipt_id->GetValue()."') " ;
	$ExistRelation = CCDLookUp("tkt_cust_type_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_receipt_format1_ds_BeforeExecuteDelete @11-1B54B86F
    return $ssf_tkt_receipt_format1_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_receipt_format1_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-9EA33A70
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketReceipts; //Compatibility
//End Page_AfterInitialize

//Custom Code @20-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_REC_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_REC_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
