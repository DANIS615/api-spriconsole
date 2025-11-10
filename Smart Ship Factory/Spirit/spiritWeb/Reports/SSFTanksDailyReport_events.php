<?php
//BindEvents Method @1-2B6D220D
function BindEvents()
{
    global $ssf_tank_day_diff_ssf_tan;
    global $Button1;
    global $ViewMode;
    global $ssf_tank_day_sales_ssf_ta;
    global $CCSEvents;
    $ssf_tank_day_diff_ssf_tan->CCSEvents["BeforeShow"] = "ssf_tank_day_diff_ssf_tan_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_tank_day_sales_ssf_ta->stock_final->CCSEvents["BeforeShow"] = "ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow";
    $ssf_tank_day_sales_ssf_ta->Detail->CCSEvents["BeforeShow"] = "ssf_tank_day_sales_ssf_ta_Detail_BeforeShow";
    $ssf_tank_day_sales_ssf_ta->ssf_tank_day_sales_tank_id_Footer->CCSEvents["BeforeShow"] = "ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow";
    $ssf_tank_day_sales_ssf_ta->Report_Footer->CCSEvents["BeforeShow"] = "ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method
global $ini_stock ;
global $tank_id ;
global $total_ini_stock ;
$ini_stock = 0;
$tank_id = 0 ;
$total_ini_stock = 0 ;
//ssf_tank_day_diff_ssf_tan_BeforeShow @19-87653109
function ssf_tank_day_diff_ssf_tan_BeforeShow(& $sender)
{
    $ssf_tank_day_diff_ssf_tan_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_day_diff_ssf_tan; //Compatibility
//End ssf_tank_day_diff_ssf_tan_BeforeShow

//Hide-Show Component @26-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tank_day_diff_ssf_tan_BeforeShow @19-7333D099
    return $ssf_tank_day_diff_ssf_tan_BeforeShow;
}
//End Close ssf_tank_day_diff_ssf_tan_BeforeShow

//Button1_BeforeShow @79-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @82-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @79-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @80-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @81-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @80-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow @62-F8510CB1
function ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow(& $sender)
{
    $ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_day_sales_ssf_ta; //Compatibility
//End ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow

//Custom Code @69-2A29BDB7
	$total = 0 ;
	$total = $ssf_tank_day_sales_ssf_ta->initial_stock->GetValue() + $ssf_tank_day_sales_ssf_ta->total_deliveries->GetValue() ;
	$total = $total - ($ssf_tank_day_sales_ssf_ta->accum_sales->GetValue() + $ssf_tank_day_sales_ssf_ta->accum_diff->GetValue()) ;
	$Component->SetValue($total) ;
//End Custom Code

//Close ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow @62-34E8BD73
    return $ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow;
}
//End Close ssf_tank_day_sales_ssf_ta_stock_final_BeforeShow

//DEL  //

//ssf_tank_day_sales_ssf_ta_Detail_BeforeShow @31-57FCC653
function ssf_tank_day_sales_ssf_ta_Detail_BeforeShow(& $sender)
{
    $ssf_tank_day_sales_ssf_ta_Detail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_day_sales_ssf_ta; //Compatibility
//End ssf_tank_day_sales_ssf_ta_Detail_BeforeShow

//Custom Code @73-2A29BDB7
	global $ini_stock ;
	global $tank_id ;
	global $total_ini_stock ;
	if ($tank_id != $ssf_tank_day_sales_ssf_ta->ssf_tank_day_sales_tank_id->GetValue() ) {
		$tank_id = $ssf_tank_day_sales_ssf_ta->ssf_tank_day_sales_tank_id->GetValue() ;
		$ini_stock = $ssf_tank_day_sales_ssf_ta->initial_stock->GetValue() ;
		$total_ini_stock += $ini_stock ;
	}//End Custom Code

//Close ssf_tank_day_sales_ssf_ta_Detail_BeforeShow @31-55F7D798
    return $ssf_tank_day_sales_ssf_ta_Detail_BeforeShow;
}
//End Close ssf_tank_day_sales_ssf_ta_Detail_BeforeShow

//DEL  	

//ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow @32-69E5818E
function ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow(& $sender)
{
    $ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_day_sales_ssf_ta; //Compatibility
//End ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow

//Custom Code @71-2A29BDB7
global $ini_stock ;
	$total = 0 ;
	$total = $ini_stock + $ssf_tank_day_sales_ssf_ta->Sum_total_deliveries->GetValue() ;
	$total = $total - ($ssf_tank_day_sales_ssf_ta->Sum_accum_sales->GetValue() + $ssf_tank_day_sales_ssf_ta->Sum_accum_diff->GetValue()) ;

$ssf_tank_day_sales_ssf_ta->first_stock->SetValue($ini_stock) ;
$ssf_tank_day_sales_ssf_ta->sum_stock_final->SetValue($total) ;


//End Custom Code

//Close ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow @32-E1985F15
    return $ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow;
}
//End Close ssf_tank_day_sales_ssf_ta_ssf_tank_day_sales_tank_id_Footer_BeforeShow

//ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow @33-A22D17C9
function ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow(& $sender)
{
    $ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_day_sales_ssf_ta; //Compatibility
//End ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow

//Custom Code @75-2A29BDB7
global $total_ini_stock ;
	$total = 0 ;
	$total = $total_ini_stock + $ssf_tank_day_sales_ssf_ta->TotalSum_total_deliveries->GetValue() ;
	$total = $total - ($ssf_tank_day_sales_ssf_ta->TotalSum_accum_sales->GetValue() + $ssf_tank_day_sales_ssf_ta->TotalSum_accum_diff->GetValue()) ;

$ssf_tank_day_sales_ssf_ta->total_stock_final->SetValue($total) ;
$ssf_tank_day_sales_ssf_ta->total_first_stock->SetValue($total_ini_stock) ;
//End Custom Code

//Close ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow @33-8AE5701C
    return $ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow;
}
//End Close ssf_tank_day_sales_ssf_ta_Report_Footer_BeforeShow

//Page_AfterInitialize @1-C3BD3380
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTanksDailyReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @78-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
