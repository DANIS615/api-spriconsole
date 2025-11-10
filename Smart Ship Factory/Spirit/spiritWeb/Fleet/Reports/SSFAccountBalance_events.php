<?php
//BindEvents Method @1-7D8C229A
function BindEvents()
{
    global $ssf_flt_customers_account;
    global $btnPrint;
    global $ViewMode;
    global $ssf_flt_customers_account1;
    global $CCSEvents;
    $ssf_flt_customers_account->CCSEvents["BeforeShow"] = "ssf_flt_customers_account_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_flt_customers_account1->Detail->CCSEvents["BeforeShow"] = "ssf_flt_customers_account1_Detail_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_flt_customers_account_BeforeShow @24-004B9B08
function ssf_flt_customers_account_BeforeShow(& $sender)
{
    $ssf_flt_customers_account_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_customers_account; //Compatibility
//End ssf_flt_customers_account_BeforeShow

//Hide-Show Component @31-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Hide-Show Component

//Close ssf_flt_customers_account_BeforeShow @24-BCB71BB8
    return $ssf_flt_customers_account_BeforeShow;
}
//End Close ssf_flt_customers_account_BeforeShow

//btnPrint_BeforeShow @63-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @66-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close btnPrint_BeforeShow @63-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//ViewMode_BeforeShow @64-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @65-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @64-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//DEL  

//ssf_flt_customers_account1_Detail_BeforeShow @34-355C9D02
function ssf_flt_customers_account1_Detail_BeforeShow(& $sender)
{
    $ssf_flt_customers_account1_Detail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_customers_account1; //Compatibility
//End ssf_flt_customers_account1_Detail_BeforeShow

//Custom Code @74-2A29BDB7
if ($ssf_flt_customers_account1->day_amount_bal->GetValue() < 0) 
	$ssf_flt_customers_account1->Attributes->SetValue("day_amount_negbal","color:red") ;
else
	$ssf_flt_customers_account1->Attributes->SetValue("day_amount_negbal","") ;

if ($ssf_flt_customers_account1->month_amount_bal->GetValue() < 0) 
	$ssf_flt_customers_account1->Attributes->SetValue("month_amount_nebal","color:red") ;
else
	$ssf_flt_customers_account1->Attributes->SetValue("month_amount_nebal","") ;

if ($ssf_flt_customers_account1->day_volume_bal->GetValue() < 0) 
	$ssf_flt_customers_account1->Attributes->SetValue("day_volume_negbal","color:red") ;
else
	$ssf_flt_customers_account1->Attributes->SetValue("day_volume_negbal","") ;

if ($ssf_flt_customers_account1->month_volume_bal->GetValue() < 0) 
	$ssf_flt_customers_account1->Attributes->SetValue("month_volume_negbal","color:red") ;
else
	$ssf_flt_customers_account1->Attributes->SetValue("month_volume_negbal","") ;

//End Custom Code

//Close ssf_flt_customers_account1_Detail_BeforeShow @34-0F8E4322
    return $ssf_flt_customers_account1_Detail_BeforeShow;
}
//End Close ssf_flt_customers_account1_Detail_BeforeShow

//Page_AfterInitialize @1-AFD5445A
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFAccountBalance; //Compatibility
//End Page_AfterInitialize

//Custom Code @67-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_REP_ACCBAL") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize
?>
