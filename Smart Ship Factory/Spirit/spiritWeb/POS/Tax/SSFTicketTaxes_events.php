<?php
//BindEvents Method @1-A97C60C4
function BindEvents()
{
    global $ssf_tkt_catalog_ssf_tkt_t1;
    global $ssf_tkt_taxes;
    global $CCSEvents;
    $ssf_tkt_catalog_ssf_tkt_t1->taxes_insert->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow";
    $ssf_tkt_taxes->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_taxes_ds_AfterExecuteSelect";
    $ssf_tkt_taxes->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_BeforeShow";
    $ssf_tkt_taxes->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_taxes_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow @16-32E30C05
function ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow(& $sender)
{
    $ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog_ssf_tkt_t1; //Compatibility
//End ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow

//Custom Code @65-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow @16-C44D21AD
    return $ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow;
}
//End Close ssf_tkt_catalog_ssf_tkt_t1_taxes_insert_BeforeShow

//ssf_tkt_taxes_ds_AfterExecuteSelect @29-3ED4038E
function ssf_tkt_taxes_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_taxes_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes; //Compatibility
//End ssf_tkt_taxes_ds_AfterExecuteSelect

//Custom Code @66-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_taxes_ds_AfterExecuteSelect @29-EFFC2BBD
    return $ssf_tkt_taxes_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_taxes_ds_AfterExecuteSelect

//ssf_tkt_taxes_BeforeShow @29-B72DD41C
function ssf_tkt_taxes_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes; //Compatibility
//End ssf_tkt_taxes_BeforeShow

//Custom Code @67-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_tax_id") != "" || CCGetParam("taxes_insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_tax_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_taxes_BeforeShow @29-F3AB474E
    return $ssf_tkt_taxes_BeforeShow;
}
//End Close ssf_tkt_taxes_BeforeShow

//ssf_tkt_taxes_ds_BeforeExecuteDelete @29-2F662929
function ssf_tkt_taxes_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_taxes_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes; //Compatibility
//End ssf_tkt_taxes_ds_BeforeExecuteDelete

//Custom Code @70-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_taxes_group" ;
	$where = " tkt_tax_tax_id = '".$ssf_tkt_taxes->tkt_tax_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_tax_group_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_taxes_ds_BeforeExecuteDelete @29-C1907119
    return $ssf_tkt_taxes_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_taxes_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-1E26A6C3
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTaxes; //Compatibility
//End Page_AfterInitialize

//Custom Code @64-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_TAX_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TAX_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
