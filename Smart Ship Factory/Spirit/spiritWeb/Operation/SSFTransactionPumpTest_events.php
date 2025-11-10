<?php
//BindEvents Method @1-4E135E99
function BindEvents()
{
    global $config_values_ssf_addin_p1;
    global $ssf_pump_sales;
    global $CCSEvents;
    $config_values_ssf_addin_p1->config_values_ssf_addin_p1_TotalRecords->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow";
    $config_values_ssf_addin_p1->end_date->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p1_end_date_BeforeShow";
    $config_values_ssf_addin_p1->end_time->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p1_end_time_BeforeShow";
    $ssf_pump_sales->CCSEvents["BeforeShow"] = "ssf_pump_sales_BeforeShow";
    $ssf_pump_sales->CCSEvents["OnValidate"] = "ssf_pump_sales_OnValidate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//DEL  	$strActualValue = $config_values_ssf_addin_p1->end_time->getValue();
//DEL  	$config_values_ssf_addin_p1->end_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
//DEL  

//config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow @119-0DC1C592
function config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p1; //Compatibility
//End config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow

//Retrieve number of records @120-ABE656B4
    $Component->SetValue($Container->DataSource->RecordsCount);
//End Retrieve number of records

//Close config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow @119-3B0A519F
    return $config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow;
}
//End Close config_values_ssf_addin_p1_config_values_ssf_addin_p1_TotalRecords_BeforeShow

//config_values_ssf_addin_p1_end_date_BeforeShow @130-5089EA04
function config_values_ssf_addin_p1_end_date_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p1_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p1; //Compatibility
//End config_values_ssf_addin_p1_end_date_BeforeShow

//Custom Code @156-2A29BDB7
	$strActualValue = $config_values_ssf_addin_p1->end_date->getValue();
  	$config_values_ssf_addin_p1->end_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));

//End Custom Code

//Close config_values_ssf_addin_p1_end_date_BeforeShow @130-0870812E
    return $config_values_ssf_addin_p1_end_date_BeforeShow;
}
//End Close config_values_ssf_addin_p1_end_date_BeforeShow

//config_values_ssf_addin_p1_end_time_BeforeShow @131-5718CAEF
function config_values_ssf_addin_p1_end_time_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p1_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p1; //Compatibility
//End config_values_ssf_addin_p1_end_time_BeforeShow

//Custom Code @157-2A29BDB7
  	$strActualValue = $config_values_ssf_addin_p1->end_time->getValue();
  	$config_values_ssf_addin_p1->end_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
//End Custom Code

//Close config_values_ssf_addin_p1_end_time_BeforeShow @131-5E220F3C
    return $config_values_ssf_addin_p1_end_time_BeforeShow;
}
//End Close config_values_ssf_addin_p1_end_time_BeforeShow

//ssf_pump_sales_BeforeShow @61-348CFAA0
function ssf_pump_sales_BeforeShow(& $sender)
{
    $ssf_pump_sales_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_BeforeShow

//Custom Code @88-2A29BDB7
	global $EditisAllowed ;
	if ($EditisAllowed == false)
		$ssf_pump_sales->Visible = false ;
//End Custom Code

//Close ssf_pump_sales_BeforeShow @61-99A21D78
    return $ssf_pump_sales_BeforeShow;
}
//End Close ssf_pump_sales_BeforeShow

//ssf_pump_sales_OnValidate @61-C23CC6A2
function ssf_pump_sales_OnValidate(& $sender)
{
    $ssf_pump_sales_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_OnValidate

//Custom Code @151-2A29BDB7
global $CCSLocales ;
if (CCGetParam("btnSendREQ") != "" ) {
		$sale_id = CCGetParam("pump_sale_id") ;
		$pump_id = CCGetParam("pump_pump_id") ;
		$ssfRtrClnt = new SSFRouterClient();
		$returncode = $ssfRtrClnt->SendReqPumpTest($sale_id, $pump_id, $Parameters);
		$ssf_pump_sales->Errors->addError($CCSLocales->GetText($returncode));
}
//End Custom Code

//Close ssf_pump_sales_OnValidate @61-A65979F1
    return $ssf_pump_sales_OnValidate;
}
//End Close ssf_pump_sales_OnValidate

//Page_AfterInitialize @1-1D773810
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTransactionPumpTest; //Compatibility
//End Page_AfterInitialize

//Custom Code @87-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_MAN_TRX_TO_TEST_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_MAN_TRX_TO_TEST_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-4B59F7D0
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTransactionPumpTest; //Compatibility
//End Page_BeforeShow

//Custom Code @150-2A29BDB7

	
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
