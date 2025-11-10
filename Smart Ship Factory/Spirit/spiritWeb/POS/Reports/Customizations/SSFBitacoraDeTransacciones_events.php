<?php
//BindEvents Method @1-7167C734
function BindEvents()
{
    global $ssf_tkt_trx_headerSearch;
    global $Report_Print;
    global $ssf_tkt_trx_header;
    global $CCSEvents;
    $ssf_tkt_trx_headerSearch->CCSEvents["BeforeShow"] = "ssf_tkt_trx_headerSearch_BeforeShow";
    $Report_Print->CCSEvents["BeforeShow"] = "Report_Print_BeforeShow";
    $ssf_tkt_trx_header->tkt_date->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_date_BeforeShow";
    $ssf_tkt_trx_header->tkt_type->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_type_BeforeShow";
    $ssf_tkt_trx_header->tkt_refunded->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_refunded_BeforeShow";
    $ssf_tkt_trx_header->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_trx_headerSearch_BeforeShow @3-6166E8A9
function ssf_tkt_trx_headerSearch_BeforeShow(& $sender)
{
    $ssf_tkt_trx_headerSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_headerSearch; //Compatibility
//End ssf_tkt_trx_headerSearch_BeforeShow

//Hide-Show Component @10-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tkt_trx_headerSearch_BeforeShow @3-E4927FDD
    return $ssf_tkt_trx_headerSearch_BeforeShow;
}
//End Close ssf_tkt_trx_headerSearch_BeforeShow

//Report_Print_BeforeShow @7-6CD7E3F9
function Report_Print_BeforeShow(& $sender)
{
    $Report_Print_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report_Print; //Compatibility
//End Report_Print_BeforeShow

//Hide-Show Component @9-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close Report_Print_BeforeShow @7-0DD1CC60
    return $Report_Print_BeforeShow;
}
//End Close Report_Print_BeforeShow

//ssf_tkt_trx_header_tkt_date_BeforeShow @28-B511757F
function ssf_tkt_trx_header_tkt_date_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_date_BeforeShow

//Custom Code @44-2A29BDB7
// -------------------------
    // Write your own code here.
	$strUnformattedValue = $Component->GetValue();
	$Component->SetValue(substr($strUnformattedValue,6,2)."-".substr($strUnformattedValue,4,2)."-".substr($strUnformattedValue,0,4));
// -------------------------
//End Custom Code

//Close ssf_tkt_trx_header_tkt_date_BeforeShow @28-43C0B331
    return $ssf_tkt_trx_header_tkt_date_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_date_BeforeShow

//ssf_tkt_trx_header_tkt_type_BeforeShow @48-47036460
function ssf_tkt_trx_header_tkt_type_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_type_BeforeShow

//Custom Code @50-2A29BDB7
// -------------------------
    // Write your own code here.
	if($Component->GetValue() == "INVOICE")
		$Component->SetValue("Factura");
	else
		$Component->SetValue("Nota de Crédito");
// -------------------------
//End Custom Code

//Close ssf_tkt_trx_header_tkt_type_BeforeShow @48-4BD9EEFE
    return $ssf_tkt_trx_header_tkt_type_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_type_BeforeShow

//ssf_tkt_trx_header_tkt_refunded_BeforeShow @32-BB4FE98B
function ssf_tkt_trx_header_tkt_refunded_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_refunded_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_refunded_BeforeShow

//Custom Code @35-2A29BDB7
// -------------------------
    // Write your own code here.
	if($Component->GetValue() == "Y")
		$Component->SetValue("ANULADO");
	else
		$Component->SetValue("ACTIVO");
// -------------------------
//End Custom Code

//Close ssf_tkt_trx_header_tkt_refunded_BeforeShow @32-A95F54EA
    return $ssf_tkt_trx_header_tkt_refunded_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_refunded_BeforeShow

//ssf_tkt_trx_header_BeforeShow @2-1B0FC198
function ssf_tkt_trx_header_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_BeforeShow

//Custom Code @47-2A29BDB7
// -------------------------
    // Write your own code here.
	global $Tpl;
	if(CCGetParam("s_tkt_type")=="INVOICE")
		$Tpl->SetVar("ssf_hdr_title","Facturas");
	else
		if(CCGetParam("s_tkt_type")=="CREDIT")
			$Tpl->SetVar("ssf_hdr_title","Notas de Crédito");
		else
			$Tpl->SetVar("ssf_hdr_title","Facturas y Notas de Crédito");
		
// -------------------------
//End Custom Code

//Close ssf_tkt_trx_header_BeforeShow @2-F2718512
    return $ssf_tkt_trx_header_BeforeShow;
}
//End Close ssf_tkt_trx_header_BeforeShow

//Page_AfterInitialize @1-880050A0
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFBitacoraDeTransacciones; //Compatibility
//End Page_AfterInitialize

//Custom Code @37-2A29BDB7
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
