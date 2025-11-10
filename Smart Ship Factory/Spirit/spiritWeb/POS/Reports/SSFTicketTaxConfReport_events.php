<?php
//BindEvents Method @1-21CFAB46
function BindEvents()
{
    global $ssf_tkt_taxes_ssf_tkt_tax;
    global $Button1;
    global $ViewMode;
    global $CCSEvents;
    $ssf_tkt_taxes_ssf_tkt_tax->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_ssf_tkt_tax_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_taxes_ssf_tkt_tax_BeforeShow @15-1011ABC5
function ssf_tkt_taxes_ssf_tkt_tax_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_ssf_tkt_tax_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_ssf_tkt_tax; //Compatibility
//End ssf_tkt_taxes_ssf_tkt_tax_BeforeShow

//Hide-Show Component @21-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tkt_taxes_ssf_tkt_tax_BeforeShow @15-8455FA33
    return $ssf_tkt_taxes_ssf_tkt_tax_BeforeShow;
}
//End Close ssf_tkt_taxes_ssf_tkt_tax_BeforeShow

//Button1_BeforeShow @55-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @59-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Button1->Visible = false ;
//End Custom Code

//Close Button1_BeforeShow @55-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @56-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @57-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @56-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//Page_AfterInitialize @1-80A1B735
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTaxConfReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @58-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TAX_REP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
