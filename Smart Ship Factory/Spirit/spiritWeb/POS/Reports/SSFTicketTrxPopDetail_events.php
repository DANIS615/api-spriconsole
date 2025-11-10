<?php
//BindEvents Method @1-28DED920
function BindEvents()
{
    global $ssf_tkt_trx_header;
    global $Button_reprint;
    global $ssf_tkt_trx_detail_ssf_tk;
    global $tkt_ticket;
    global $ssf_tkt_trx_tax;
    global $ssf_tkt_trx_tender;
    global $CCSEvents;
    $ssf_tkt_trx_header->tkt_net_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_net_amount_BeforeShow";
    $ssf_tkt_trx_header->tkt_tax_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_tax_amount_BeforeShow";
    $ssf_tkt_trx_header->tkt_total_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_tkt_total_amount_BeforeShow";
    $ssf_tkt_trx_header->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_BeforeShow";
    $Button_reprint->CCSEvents["BeforeShow"] = "Button_reprint_BeforeShow";
    $ssf_tkt_trx_detail_ssf_tk->tkt_qty->CCSEvents["BeforeShow"] = "ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow";
    $ssf_tkt_trx_detail_ssf_tk->tkt_net_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow";
    $ssf_tkt_trx_detail_ssf_tk->tkt_total_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow";
    $ssf_tkt_trx_detail_ssf_tk->tkt_spirit_sale_id->CCSEvents["BeforeShow"] = "ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow";
    $tkt_ticket->CCSEvents["BeforeShow"] = "tkt_ticket_BeforeShow";
    $ssf_tkt_trx_tax->tkt_tax_amount_incl->CCSEvents["BeforeShow"] = "ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow";
    $ssf_tkt_trx_tax->tkt_tax_amount_extra->CCSEvents["BeforeShow"] = "ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow";
    $ssf_tkt_trx_tender->tkt_tender_amount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_tkt_trx_header_tkt_net_amount_BeforeShow @22-A2B7BC2C
function ssf_tkt_trx_header_tkt_net_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_net_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_net_amount_BeforeShow

//Custom Code @87-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_header_tkt_net_amount_BeforeShow @22-6C8F9A29
    return $ssf_tkt_trx_header_tkt_net_amount_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_net_amount_BeforeShow

//ssf_tkt_trx_header_tkt_tax_amount_BeforeShow @23-EF81D80A
function ssf_tkt_trx_header_tkt_tax_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_tax_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_tax_amount_BeforeShow

//Custom Code @89-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_header_tkt_tax_amount_BeforeShow @23-EB781267
    return $ssf_tkt_trx_header_tkt_tax_amount_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_tax_amount_BeforeShow

//ssf_tkt_trx_header_tkt_total_amount_BeforeShow @24-DCBE367E
function ssf_tkt_trx_header_tkt_total_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_tkt_total_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_tkt_total_amount_BeforeShow

//Custom Code @90-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_header_tkt_total_amount_BeforeShow @24-CBD7367D
    return $ssf_tkt_trx_header_tkt_total_amount_BeforeShow;
}
//End Close ssf_tkt_trx_header_tkt_total_amount_BeforeShow

//DEL  //

//ssf_tkt_trx_header_BeforeShow @3-1B0FC198
function ssf_tkt_trx_header_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_BeforeShow

//Custom Code @88-2A29BDB7
$trx_operation = "" ;
global $operation_factor ;
$operation_factor = 1 ;
$trx_operation = $ssf_tkt_trx_header->tkt_type->GetValue() ;
$db = new clsDBConnection1();
$strSQL = " select tkt_catalog_value from ssf_tkt_catalog where tkt_catalog_id = 'operation_type' and tkt_catalog_code ='".$trx_operation."'" ;
$db->query($strSQL);
$Result = $db->next_record();
if ($Result) {
	$operation_factor = $db->f("tkt_catalog_value") ;
}
$db->Close() ;

//End Custom Code

//Close ssf_tkt_trx_header_BeforeShow @3-F2718512
    return $ssf_tkt_trx_header_BeforeShow;
}
//End Close ssf_tkt_trx_header_BeforeShow

//Button_reprint_BeforeShow @102-3B6EF30E
function Button_reprint_BeforeShow(& $sender)
{
    $Button_reprint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button_reprint; //Compatibility
//End Button_reprint_BeforeShow

//Custom Code @105-2A29BDB7
	global $Tpl;
	global $ReprintAllowed ;
	if ($ReprintAllowed)
		$Tpl->setvar("disabledparam","") ;
	else
		$Tpl->setvar("disabledparam","disabled") ;

//End Custom Code

//Close Button_reprint_BeforeShow @102-1DBF0871
    return $Button_reprint_BeforeShow;
}
//End Close Button_reprint_BeforeShow

//ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow @52-6D06B26A
function ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow(& $sender)
{
    $ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_detail_ssf_tk; //Compatibility
//End ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow

//Custom Code @91-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow @52-286F752C
    return $ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow;
}
//End Close ssf_tkt_trx_detail_ssf_tk_tkt_qty_BeforeShow

//ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow @53-AE0B70CD
function ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_detail_ssf_tk; //Compatibility
//End ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow

//Custom Code @92-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow @53-A4475B98
    return $ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow;
}
//End Close ssf_tkt_trx_detail_ssf_tk_tkt_net_amount_BeforeShow

//ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow @54-11A6D1E4
function ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_detail_ssf_tk; //Compatibility
//End ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow

//Custom Code @93-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow @54-DA6A936A
    return $ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow;
}
//End Close ssf_tkt_trx_detail_ssf_tk_tkt_total_amount_BeforeShow

//ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow @97-7C283C89
function ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow(& $sender)
{
    $ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_detail_ssf_tk; //Compatibility
//End ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow

//Custom Code @100-2A29BDB7
if ($Component->GetValue() > 0)
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow @97-AAC900FC
    return $ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow;
}
//End Close ssf_tkt_trx_detail_ssf_tk_tkt_spirit_sale_id_BeforeShow

//tkt_ticket_BeforeShow @84-4666F1BD
function tkt_ticket_BeforeShow(& $sender)
{
    $tkt_ticket_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $tkt_ticket; //Compatibility
//End tkt_ticket_BeforeShow

//Custom Code @85-2A29BDB7
	$trans_id = CCGetParam("tkt_trans_id") ;
	if ($trans_id != "" ) {
		global $CCSLocales ;
		$ssfRtrClnt = new SSFRouterClient();
		$returncode = $ssfRtrClnt->SendReqGetReceipt($trans_id);
		$returncode = trim($returncode) ;
		/*while ( substr($returncode,-1) == chr(13) ) {
			$returncode = substr($returncode,0,strlen($returncode) - 1) ;
		}*/
		$height = substr_count($returncode, chr(13)) + 2; 
		global $Tpl;
		$Tpl->setvar("t_height",$height) ;
		$Component->SetValue(trim($CCSLocales->GetText($returncode))) ;	
	}
//End Custom Code

//Close tkt_ticket_BeforeShow @84-E374A65D
    return $tkt_ticket_BeforeShow;
}
//End Close tkt_ticket_BeforeShow

//ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow @66-AF0B60AD
function ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow(& $sender)
{
    $ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_tax; //Compatibility
//End ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow

//Custom Code @94-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow @66-A08ABDD8
    return $ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow;
}
//End Close ssf_tkt_trx_tax_tkt_tax_amount_incl_BeforeShow

//ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow @67-28947EDD
function ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow(& $sender)
{
    $ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_tax; //Compatibility
//End ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow

//Custom Code @95-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow @67-86A44980
    return $ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow;
}
//End Close ssf_tkt_trx_tax_tkt_tax_amount_extra_BeforeShow

//ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow @79-59133014
function ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_tender; //Compatibility
//End ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow

//Custom Code @96-2A29BDB7
global $operation_factor ;
$Component->SetValue($Component->GetValue() * $operation_factor) ;
//End Custom Code

//Close ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow @79-BBAA8E98
    return $ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow;
}
//End Close ssf_tkt_trx_tender_tkt_tender_amount_BeforeShow

//Page_AfterInitialize @1-E45F6871
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxPopDetail; //Compatibility
//End Page_AfterInitialize

//Custom Code @33-2A29BDB7
global $SSFSpiritHeader ;
$SSFSpiritHeader->Visible = false;

if (CCGetParam("Button_reprint") != "" ) {
	$trans_id = CCGetParam("tkt_trans_id") ;
	if ($trans_id != "" ) {
		global $CCSLocales ;
		global $lblerror ;
		$ssfRtrClnt = new SSFRouterClient();
		$returncode = $ssfRtrClnt->SendReqTktPrintReceipt($trans_id);
		$returncode = trim($returncode) ;	
		$lblerror->SetValue($CCSLocales->GetText($returncode)) ;
	}
}
	
	global $ReprintAllowed ;
	$accmgr = new AccessManager() ;
	$ReprintAllowed =  $accmgr->CheckUserAction("REQ_TKT_TRX_PRINT_RECEIPT") ;
	
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-79548B44
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxPopDetail; //Compatibility
//End Page_BeforeShow

//Custom Code @82-2A29BDB7
global $Tpl ;
$Tpl->SetVar("imgprint","../../Styles/images/print.gif") ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
