<?php
//BindEvents Method @1-ED0BC54D
function BindEvents()
{
    global $Report_Print;
    global $ssf_tkt_resolucion_sat;
    global $CCSEvents;
    $Report_Print->CCSEvents["BeforeShow"] = "Report_Print_BeforeShow";
    $ssf_tkt_resolucion_sat->ssf_sat_type->CCSEvents["BeforeShow"] = "ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow";
    $ssf_tkt_resolucion_sat->CCSEvents["BeforeShow"] = "ssf_tkt_resolucion_sat_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Report_Print_BeforeShow @3-6CD7E3F9
function Report_Print_BeforeShow(& $sender)
{
    $Report_Print_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report_Print; //Compatibility
//End Report_Print_BeforeShow

//Hide-Show Component @5-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close Report_Print_BeforeShow @3-0DD1CC60
    return $Report_Print_BeforeShow;
}
//End Close Report_Print_BeforeShow

//ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow @35-0879D81D
function ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow(& $sender)
{
    $ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat; //Compatibility
//End ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow

//Custom Code @37-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	$Component->SetValue($CCSLocales->GetText($Component->GetValue()));
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow @35-1D54B53B
    return $ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow;
}
//End Close ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow

//ssf_tkt_resolucion_sat_BeforeShow @2-7751CF83
function ssf_tkt_resolucion_sat_BeforeShow(& $sender)
{
    $ssf_tkt_resolucion_sat_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat; //Compatibility
//End ssf_tkt_resolucion_sat_BeforeShow

//Custom Code @38-2A29BDB7
// -------------------------
    // Write your own code here.
	global $Tpl;
	if(CCGetParam("s_ssf_sat_type")=="FACT")
		$Tpl->SetVar("ssf_hdr_title","Facturas");
	else
		if(CCGetParam("s_ssf_sat_type")=="CRED")
			$Tpl->SetVar("ssf_hdr_title","Notas de Crédito");
		else
			$Tpl->SetVar("ssf_hdr_title","Facturas y Notas de Crédito");
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat_BeforeShow @2-6B41B815
    return $ssf_tkt_resolucion_sat_BeforeShow;
}
//End Close ssf_tkt_resolucion_sat_BeforeShow

//Page_AfterInitialize @1-62F0ECB0
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFBitacoraDeResoluciones; //Compatibility
//End Page_AfterInitialize

//Custom Code @28-2A29BDB7
// -------------------------
    // Write your own code here.
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
// -------------------------
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
