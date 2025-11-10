<?php
//BindEvents Method @1-0B255B1B
function BindEvents()
{
    global $ssf_tkt_prices;
    global $ssf_tkt_prices1;
    global $CCSEvents;
    $ssf_tkt_prices->ssf_tkt_prices_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow";
    $ssf_tkt_prices1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_prices1_ds_AfterExecuteSelect";
    $ssf_tkt_prices1->CCSEvents["BeforeShow"] = "ssf_tkt_prices1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow @11-F3B0135A
function ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_prices; //Compatibility
//End ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow

//Custom Code @47-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow @11-F17FE0D2
    return $ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow;
}
//End Close ssf_tkt_prices_ssf_tkt_prices_Insert_BeforeShow


//ssf_tkt_prices1_ds_AfterExecuteSelect @27-79D16513
function ssf_tkt_prices1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_prices1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_prices1; //Compatibility
//End ssf_tkt_prices1_ds_AfterExecuteSelect

//Custom Code @48-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_prices1_ds_AfterExecuteSelect @27-8EACC27C
    return $ssf_tkt_prices1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_prices1_ds_AfterExecuteSelect

//ssf_tkt_prices1_BeforeShow @27-EA729734
function ssf_tkt_prices1_BeforeShow(& $sender)
{
    $ssf_tkt_prices1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_prices1; //Compatibility
//End ssf_tkt_prices1_BeforeShow

//Custom Code @49-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_price_plu_id") != "" || CCGetParam("ssf_tkt_prices_Insert") == "insert" ) 
		$Component->Visible = true ;
	  else 
	 	$Component->Visible = false ;
	

	if (CCGetParam("tkt_price_plu_id") != "" ) {
		$Tpl->setvar("readonlyparam", "readonly") ;
		$ssf_tkt_prices1->Link1->Visible = false ;
		$ssf_tkt_prices1->DatePicker_tkt_price_date1->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_prices1_BeforeShow @27-5007A968
    return $ssf_tkt_prices1_BeforeShow;
}
//End Close ssf_tkt_prices1_BeforeShow

//Page_AfterInitialize @1-3CB60405
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketProductPrices; //Compatibility
//End Page_AfterInitialize

//Custom Code @45-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRI_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRI_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-6A98CBC5
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketProductPrices; //Compatibility
//End Page_BeforeShow

//Custom Code @51-2A29BDB7
global $Tpl ;
global $PathToRoot ;
	$Tpl->SetVar("imgproduct" , $PathToRoot. "/Styles/Spirit/Images/products.jpg" ) ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
