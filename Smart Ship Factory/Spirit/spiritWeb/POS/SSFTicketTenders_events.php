<?php
//BindEvents Method @1-3B40A36E
function BindEvents()
{
    global $ssf_tkt_catalog_ssf_tkt_t1;
    global $ssf_tkt_tender;
    global $CCSEvents;
    $ssf_tkt_catalog_ssf_tkt_t1->tender_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow";
    $ssf_tkt_tender->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_tender_ds_AfterExecuteSelect";
    $ssf_tkt_tender->CCSEvents["BeforeShow"] = "ssf_tkt_tender_BeforeShow";
    $ssf_tkt_tender->CCSEvents["OnValidate"] = "ssf_tkt_tender_OnValidate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow @14-BAB7E1C5
function ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog_ssf_tkt_t1; //Compatibility
//End ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow

//Custom Code @44-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow @14-57804D33
    return $ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow;
}
//End Close ssf_tkt_catalog_ssf_tkt_t1_tender_Insert_BeforeShow

//ssf_tkt_tender_ds_AfterExecuteSelect @25-709F86B9
function ssf_tkt_tender_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_tender_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_tender; //Compatibility
//End ssf_tkt_tender_ds_AfterExecuteSelect

//Custom Code @45-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_tender_ds_AfterExecuteSelect @25-4E0FCEA5
    return $ssf_tkt_tender_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_tender_ds_AfterExecuteSelect

//ssf_tkt_tender_BeforeShow @25-04D0A95D
function ssf_tkt_tender_BeforeShow(& $sender)
{
    $ssf_tkt_tender_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_tender; //Compatibility
//End ssf_tkt_tender_BeforeShow

//Custom Code @46-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_tender_id") != "" || CCGetParam("tender_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_tender_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_tender_BeforeShow @25-E826724D
    return $ssf_tkt_tender_BeforeShow;
}
//End Close ssf_tkt_tender_BeforeShow

//ssf_tkt_tender_OnValidate @25-F260955F
function ssf_tkt_tender_OnValidate(& $sender)
{
    $ssf_tkt_tender_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_tender; //Compatibility
//End ssf_tkt_tender_OnValidate

//Custom Code @47-2A29BDB7
	if ($ssf_tkt_tender->tkt_tender_default->GetValue() == "Y") {
		global $DBConnection1 ;
		global $CCSLocales ;
		$where = " tkt_tender_default = 'Y' and tkt_tender_type ='".$ssf_tkt_tender->tkt_tender_type->GetValue()."' and tkt_tender_id <> '".$ssf_tkt_tender->tkt_tender_id->GetValue()."'" ;
		$ExistOtherDefaultTender = CCDLookUp("tkt_tender_id","ssf_tkt_tender",$where,$DBConnection1) ;
		if ($ExistOtherDefaultTender != "" ) 
			$ssf_tkt_tender->Errors->addError($CCSLocales->GetText("ssf_tender_default_invalid")) ;	
	}
//End Custom Code

//Close ssf_tkt_tender_OnValidate @25-D7DD16C4
    return $ssf_tkt_tender_OnValidate;
}
//End Close ssf_tkt_tender_OnValidate

//Page_AfterInitialize @1-993DC19D
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTenders; //Compatibility
//End Page_AfterInitialize

//Custom Code @43-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_TEN_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TEN_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
