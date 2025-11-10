<?php
//BindEvents Method @1-1B215E60
function BindEvents()
{
    global $ssf_tkt_customers_tags;
    global $ssf_tkt_customers_tags1;
    global $CCSEvents;
    $ssf_tkt_customers_tags->ssf_tkt_customers_tags_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow";
    $ssf_tkt_customers_tags1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_tags1_ds_AfterExecuteSelect";
    $ssf_tkt_customers_tags1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_tags1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow @10-6C5AEA50
function ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_tags; //Compatibility
//End ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow

//Custom Code @33-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow @10-32765B74
    return $ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow;
}
//End Close ssf_tkt_customers_tags_ssf_tkt_customers_tags_Insert_BeforeShow

//DEL  	if (CCGetParam("tkt_tag_id") != "" ) 
//DEL  		$Component->Visible = false ;
//DEL  	 else 
//DEL  	 	$Component->Visible = true ;

//ssf_tkt_customers_tags1_ds_AfterExecuteSelect @20-AE213FA7
function ssf_tkt_customers_tags1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers_tags1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_tags1; //Compatibility
//End ssf_tkt_customers_tags1_ds_AfterExecuteSelect

//Custom Code @35-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_tags1_ds_AfterExecuteSelect @20-37FAC49F
    return $ssf_tkt_customers_tags1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers_tags1_ds_AfterExecuteSelect

//ssf_tkt_customers_tags1_BeforeShow @20-AF681CAB
function ssf_tkt_customers_tags1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_tags1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_tags1; //Compatibility
//End ssf_tkt_customers_tags1_BeforeShow

//Custom Code @36-2A29BDB7
global $Tpl ; 
	if (CCGetParam("tkt_tag_id") != "" || CCGetParam("ssf_tkt_customers_tags_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_tag_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_customers_tags1_BeforeShow @20-1B193480
    return $ssf_tkt_customers_tags1_BeforeShow;
}
//End Close ssf_tkt_customers_tags1_BeforeShow

//Page_AfterInitialize @1-20308151
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTagConfig; //Compatibility
//End Page_AfterInitialize

//Custom Code @32-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_TAG_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_TAG_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
