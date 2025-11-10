<?php
//BindEvents Method @1-D9F22107
function BindEvents()
{
    global $ssf_pump_salesSearch;
    global $CCSEvents;
    $ssf_pump_salesSearch->cmdBuscar->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_cmdBuscar_BeforeShow";
    $ssf_pump_salesSearch->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_pump_salesSearch_cmdBuscar_BeforeShow @47-8A4457A2
function ssf_pump_salesSearch_cmdBuscar_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_cmdBuscar_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_cmdBuscar_BeforeShow

//Custom Code @48-2A29BDB7
$Component->SetValue(1) ;

//End Custom Code

//Close ssf_pump_salesSearch_cmdBuscar_BeforeShow @47-8C130088
    return $ssf_pump_salesSearch_cmdBuscar_BeforeShow;
}
//End Close ssf_pump_salesSearch_cmdBuscar_BeforeShow

//ssf_pump_salesSearch_BeforeShow @11-FF8423C0
function ssf_pump_salesSearch_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_BeforeShow

//Custom Code @49-2A29BDB7
if (CCGetParam("cmdBuscar") == 1 )
	$Component->Visible = false ;
//End Custom Code

//Close ssf_pump_salesSearch_BeforeShow @11-DCE80D86
    return $ssf_pump_salesSearch_BeforeShow;
}
//End Close ssf_pump_salesSearch_BeforeShow

//Page_AfterInitialize @1-F533C857
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPalmTrxSales; //Compatibility
//End Page_AfterInitialize

//Custom Code @50-2A29BDB7
	//$browser = get_browser(null, true);
	//echo "browser ".$browser[browser] ;
	//echo "plat ".$browser[platform] ; 

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
