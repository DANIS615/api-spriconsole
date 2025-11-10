<?php
//BindEvents Method @1-A2BE637B
function BindEvents()
{
    global $ssf_flt_customers_account;
    global $btnPrint;
    global $ViewMode;
    global $ssf_flt_customers_subacco;
    global $CCSEvents;
    $ssf_flt_customers_account->CCSEvents["BeforeShow"] = "ssf_flt_customers_account_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_flt_customers_subacco->Detail->CCSEvents["BeforeShow"] = "ssf_flt_customers_subacco_Detail_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_flt_customers_account_BeforeShow @31-004B9B08
function ssf_flt_customers_account_BeforeShow(& $sender)
{
    $ssf_flt_customers_account_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_customers_account; //Compatibility
//End ssf_flt_customers_account_BeforeShow

//Custom Code @80-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close ssf_flt_customers_account_BeforeShow @31-BCB71BB8
    return $ssf_flt_customers_account_BeforeShow;
}
//End Close ssf_flt_customers_account_BeforeShow

//btnPrint_BeforeShow @81-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @84-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close btnPrint_BeforeShow @81-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//ViewMode_BeforeShow @82-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @83-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @82-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_flt_customers_subacco_Detail_BeforeShow @43-0F692CD1
function ssf_flt_customers_subacco_Detail_BeforeShow(& $sender)
{
    $ssf_flt_customers_subacco_Detail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_customers_subacco; //Compatibility
//End ssf_flt_customers_subacco_Detail_BeforeShow

//Custom Code @111-2A29BDB7
if ($ssf_flt_customers_subacco->day_amount_bal->GetValue() < 0) 
	$ssf_flt_customers_subacco->Attributes->SetValue("day_amount_negbal","color:red") ;
else
	$ssf_flt_customers_subacco->Attributes->SetValue("day_amount_negbal","") ;

if ($ssf_flt_customers_subacco->month_amount_bal->GetValue() < 0) 
	$ssf_flt_customers_subacco->Attributes->SetValue("month_amount_negbal","color:red") ;
else
	$ssf_flt_customers_subacco->Attributes->SetValue("month_amount_negbal","") ;

if ($ssf_flt_customers_subacco->day_volume_bal->GetValue() < 0) 
	$ssf_flt_customers_subacco->Attributes->SetValue("day_volume_negbal","color:red") ;
else
	$ssf_flt_customers_subacco->Attributes->SetValue("day_volume_negbal","") ;

if ($ssf_flt_customers_subacco->month_volume_bal->GetValue() < 0) 
	$ssf_flt_customers_subacco->Attributes->SetValue("month_volume_negbal","color:red") ;
else
	$ssf_flt_customers_subacco->Attributes->SetValue("month_volume_negbal","") ;
//End Custom Code

//Close ssf_flt_customers_subacco_Detail_BeforeShow @43-ECBC060D
    return $ssf_flt_customers_subacco_Detail_BeforeShow;
}
//End Close ssf_flt_customers_subacco_Detail_BeforeShow

//Page_AfterInitialize @1-661A61BC
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSubAccountBalance; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_REP_SUBACCBAL") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
