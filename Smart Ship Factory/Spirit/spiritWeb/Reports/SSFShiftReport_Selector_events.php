<?php
//BindEvents Method @1-218075B5
function BindEvents()
{
    global $ssf_addin_shifts_data;
    global $CCSEvents;
    $ssf_addin_shifts_data->period_start_date->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_start_date_BeforeShow";
    $ssf_addin_shifts_data->period_start_time->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_start_time_BeforeShow";
    $ssf_addin_shifts_data->period_end_date->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_end_date_BeforeShow";
    $ssf_addin_shifts_data->period_end_time->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_end_time_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_shifts_data_period_start_date_BeforeShow @16-D1FCDE09
function ssf_addin_shifts_data_period_start_date_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_start_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_start_date_BeforeShow

//Custom Code @22-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ssf_addin_shifts_data->period_start_date->getValue();
	$ssf_addin_shifts_data->period_start_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
// -------------------------
//End Custom Code

//Close ssf_addin_shifts_data_period_start_date_BeforeShow @16-AA5CC390
    return $ssf_addin_shifts_data_period_start_date_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_start_date_BeforeShow

//ssf_addin_shifts_data_period_start_time_BeforeShow @17-D8BA8B3A
function ssf_addin_shifts_data_period_start_time_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_start_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_start_time_BeforeShow

//Custom Code @24-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ssf_addin_shifts_data->period_start_time->getValue();
	$ssf_addin_shifts_data->period_start_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
// -------------------------
//End Custom Code

//Close ssf_addin_shifts_data_period_start_time_BeforeShow @17-FC0E4D82
    return $ssf_addin_shifts_data_period_start_time_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_start_time_BeforeShow

//ssf_addin_shifts_data_period_end_date_BeforeShow @18-C0F0110F
function ssf_addin_shifts_data_period_end_date_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_end_date_BeforeShow

//Custom Code @23-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ssf_addin_shifts_data->period_end_date->getValue();
	if($strActualValue != "")
		$ssf_addin_shifts_data->period_end_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
// -------------------------
//End Custom Code

//Close ssf_addin_shifts_data_period_end_date_BeforeShow @18-82A7D27A
    return $ssf_addin_shifts_data_period_end_date_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_end_date_BeforeShow

//ssf_addin_shifts_data_period_end_time_BeforeShow @19-156597AB
function ssf_addin_shifts_data_period_end_time_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_end_time_BeforeShow

//Custom Code @25-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ssf_addin_shifts_data->period_end_time->getValue();
	if($strActualValue != "")
		$ssf_addin_shifts_data->period_end_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
// -------------------------
//End Custom Code

//Close ssf_addin_shifts_data_period_end_time_BeforeShow @19-D4F55C68
    return $ssf_addin_shifts_data_period_end_time_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_end_time_BeforeShow

//Page_AfterInitialize @1-419BCAA1
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFShiftReport_Selector; //Compatibility
//End Page_AfterInitialize

//Custom Code @37-2A29BDB7
	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_REP_PER") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  // -------------------------
//DEL      // Write your own code here.
//DEL  	//if($ssf_addin_shifts_data->DataSource->period_status == "O")
//DEL  		//$ssf_addin_shifts_data->
//DEL  // -------------------------



?>
