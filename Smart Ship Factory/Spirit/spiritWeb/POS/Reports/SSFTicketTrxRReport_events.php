<?php
//BindEvents Method @1-C92A0782
function BindEvents()
{
    global $ssf_tkt_trx_headerSearch;
    global $lnkExcel;
    global $Button1;
    global $ViewMode;
    global $Report1;
    global $CCSEvents;
    $ssf_tkt_trx_headerSearch->CCSEvents["BeforeShow"] = "ssf_tkt_trx_headerSearch_BeforeShow";
    $lnkExcel->CCSEvents["BeforeShow"] = "lnkExcel_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Report1->complete_receipt->CCSEvents["BeforeShow"] = "Report1_complete_receipt_BeforeShow";
    $Report1->lnkcomplete_receipt->CCSEvents["BeforeShow"] = "Report1_lnkcomplete_receipt_BeforeShow";
    $Report1->slash1->CCSEvents["BeforeShow"] = "Report1_slash1_BeforeShow";
    $Report1->slash2->CCSEvents["BeforeShow"] = "Report1_slash2_BeforeShow";
    $Report1->ds->CCSEvents["BeforeExecuteSelect"] = "Report1_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
}
//End BindEvents Method

//ssf_tkt_trx_headerSearch_BeforeShow @4-6166E8A9
function ssf_tkt_trx_headerSearch_BeforeShow(& $sender)
{
    $ssf_tkt_trx_headerSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_headerSearch; //Compatibility
//End ssf_tkt_trx_headerSearch_BeforeShow

//Custom Code @87-2A29BDB7
$Parameter1 = CCGetParam("ViewMode", "");
$Parameter2 = "Print";
if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_trx_headerSearch_BeforeShow @4-E4927FDD
    return $ssf_tkt_trx_headerSearch_BeforeShow;
}
//End Close ssf_tkt_trx_headerSearch_BeforeShow

//lnkExcel_BeforeShow @81-2C9D6EA9
function lnkExcel_BeforeShow(& $sender)
{
    $lnkExcel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lnkExcel; //Compatibility
//End lnkExcel_BeforeShow

//Custom Code @82-2A29BDB7
$Parameter1 = CCGetParam("ViewMode", "");
$Parameter2 = "Print";
if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close lnkExcel_BeforeShow @81-54E205B5
    return $lnkExcel_BeforeShow;
}
//End Close lnkExcel_BeforeShow

//Button1_BeforeShow @79-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @86-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;

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

//Custom Code @85-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @80-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//Report1_complete_receipt_BeforeShow @91-ABCE53E7
function Report1_complete_receipt_BeforeShow(& $sender)
{
    $Report1_complete_receipt_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_complete_receipt_BeforeShow

//Custom Code @93-2A29BDB7
$Parameter1 = CCGetParam("ViewMode", "");
$Parameter2 = "Print";
if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	$Component->Visible = true ;
else
	$Component->Visible = false ;

//End Custom Code

//Close Report1_complete_receipt_BeforeShow @91-8259CC1F
    return $Report1_complete_receipt_BeforeShow;
}
//End Close Report1_complete_receipt_BeforeShow

//Report1_lnkcomplete_receipt_BeforeShow @92-34D68834
function Report1_lnkcomplete_receipt_BeforeShow(& $sender)
{
    $Report1_lnkcomplete_receipt_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_lnkcomplete_receipt_BeforeShow

//Custom Code @94-2A29BDB7
$Parameter1 = CCGetParam("ViewMode", "");
$Parameter2 = "Print";
if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	$Component->Visible = false ;
else
	$Component->Visible = true ;
//End Custom Code

//Close Report1_lnkcomplete_receipt_BeforeShow @92-B4259B43
    return $Report1_lnkcomplete_receipt_BeforeShow;
}
//End Close Report1_lnkcomplete_receipt_BeforeShow

//Report1_slash1_BeforeShow @75-BC218263
function Report1_slash1_BeforeShow(& $sender)
{
    $Report1_slash1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_slash1_BeforeShow

//Custom Code @77-2A29BDB7
if ($Report1->tkt_orig_trans_id->GetValue() > 0 )
	$Component->SetValue("-") ;

//End Custom Code

//Close Report1_slash1_BeforeShow @75-526C5FF1
    return $Report1_slash1_BeforeShow;
}
//End Close Report1_slash1_BeforeShow

//Report1_slash2_BeforeShow @76-1AACC2F7
function Report1_slash2_BeforeShow(& $sender)
{
    $Report1_slash2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_slash2_BeforeShow

//Custom Code @78-2A29BDB7
if ($Report1->tkt_orig_trans_id->GetValue() > 0 )
	$Component->SetValue("-") ;

//End Custom Code

//Close Report1_slash2_BeforeShow @76-2E0D7A2A
    return $Report1_slash2_BeforeShow;
}
//End Close Report1_slash2_BeforeShow

//Report1_ds_BeforeExecuteSelect @24-BE5EDA92
function Report1_ds_BeforeExecuteSelect(& $sender)
{
    $Report1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_ds_BeforeExecuteSelect

//Custom Code @90-2A29BDB7
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close Report1_ds_BeforeExecuteSelect @24-14BF4803
    return $Report1_ds_BeforeExecuteSelect;
}
//End Close Report1_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-764268AB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxRReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TXR_REP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-34823142
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxRReport; //Compatibility
//End Page_BeforeShow

//Custom Code @88-2A29BDB7
global $Tpl ;

 	if (CCGetParam("export") == "") {
		$Tpl->SetVar("page_style","../../Styles/Spiritnew/Style.css") ;
	}
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_OnInitializeView @1-4845B806
function Page_OnInitializeView(& $sender)
{
    $Page_OnInitializeView = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxRReport; //Compatibility
//End Page_OnInitializeView

//Custom Code @89-2A29BDB7
global $SSFSpiritHeader ;
global $lnkExcel ;
	$ExportFileName = "Report.xls";
 	if (CCGetParam("export") != "") {
		//Hide the ToExcelLink Link 
		$SSFSpiritHeader->Visible = false;
		$lnkExcel->Visible = false ;
		//Set Content type to Excel
        header("Content-Type: application/vnd.ms-excel");
		//header("Content-Type: application/vnd.notepad");
        //Fix IE 5.0-5.5 bug with Content-Disposition=attachment
		if (strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.5;") || 
            strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.0;")) {
	  		header("Content-Disposition: filename=" . $ExportFileName);
		} else {
	  		header("Content-Disposition: attachment; filename=" . $ExportFileName);
		} 
	}
//End Custom Code

//Close Page_OnInitializeView @1-81DF8332
    return $Page_OnInitializeView;
}
//End Close Page_OnInitializeView


?>
