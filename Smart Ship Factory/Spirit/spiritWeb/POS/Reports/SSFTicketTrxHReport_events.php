<?php
//BindEvents Method @1-A4108310
function BindEvents()
{
    global $ssf_tkt_trx_headerSearch;
    global $lnkExcel;
    global $Button1;
    global $ViewMode;
    global $ssf_tkt_trx_header;
    global $CCSEvents;
    $ssf_tkt_trx_headerSearch->CCSEvents["BeforeShow"] = "ssf_tkt_trx_headerSearch_BeforeShow";
    $lnkExcel->CCSEvents["BeforeShow"] = "lnkExcel_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_tkt_trx_header->ssf_tkt_trx_header_TotalRecords->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow";
    $ssf_tkt_trx_header->lblTotalLabel->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_lblTotalLabel_BeforeShow";
    $ssf_tkt_trx_header->lblSubTotalNetAmount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow";
    $ssf_tkt_trx_header->lblTotalNetAmount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow";
    $ssf_tkt_trx_header->lblSubTotalTaxAmount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow";
    $ssf_tkt_trx_header->lblSubTotalAmount->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow";
    $ssf_tkt_trx_header->Report_CurrentDateTime->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow";
    $ssf_tkt_trx_header->ds->CCSEvents["BeforeExecuteSelect"] = "ssf_tkt_trx_header_ds_BeforeExecuteSelect";
    $ssf_tkt_trx_header->CCSEvents["BeforeShowRow"] = "ssf_tkt_trx_header_BeforeShowRow";
    $ssf_tkt_trx_header->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_trx_header_ds_AfterExecuteSelect";
    $ssf_tkt_trx_header->CCSEvents["BeforeShow"] = "ssf_tkt_trx_header_BeforeShow";
    $ssf_tkt_trx_header->CCSEvents["BeforeSelect"] = "ssf_tkt_trx_header_BeforeSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_tkt_trx_headerSearch_BeforeShow @6-6166E8A9
function ssf_tkt_trx_headerSearch_BeforeShow(& $sender)
{
    $ssf_tkt_trx_headerSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_headerSearch; //Compatibility
//End ssf_tkt_trx_headerSearch_BeforeShow

//Hide-Show Component @17-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tkt_trx_headerSearch_BeforeShow @6-E4927FDD
    return $ssf_tkt_trx_headerSearch_BeforeShow;
}
//End Close ssf_tkt_trx_headerSearch_BeforeShow

//lnkExcel_BeforeShow @187-2C9D6EA9
function lnkExcel_BeforeShow(& $sender)
{
    $lnkExcel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lnkExcel; //Compatibility
//End lnkExcel_BeforeShow

//Custom Code @190-2A29BDB7
       $Parameter1 = CCGetParam("ViewMode", "");
       $Parameter2 = "Print";
       if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	   		$Component->Visible = false ;

global $ssf_tkt_trx_header ;
if ($ssf_tkt_trx_header->PageNumber > 1 ) {
	$Component->Visible = false ;
}
//End Custom Code

//Close lnkExcel_BeforeShow @187-54E205B5
    return $lnkExcel_BeforeShow;
}
//End Close lnkExcel_BeforeShow

//Button1_BeforeShow @138-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @162-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
global $ssf_tkt_trx_header ;
if ($ssf_tkt_trx_header->PageNumber > 1 ) {
	$Component->Visible = false ;
}
//End Custom Code

//Close Button1_BeforeShow @138-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @139-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @140-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @139-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow @79-C4826FA6
function ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow

//Retrieve number of records @80-ABE656B4
    $Component->SetValue($Container->DataSource->RecordsCount);
//End Retrieve number of records

//Close ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow @79-A285E1AE
    return $ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow;
}
//End Close ssf_tkt_trx_header_ssf_tkt_trx_header_TotalRecords_BeforeShow

//ssf_tkt_trx_header_lblTotalLabel_BeforeShow @176-631B707D
function ssf_tkt_trx_header_lblTotalLabel_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_lblTotalLabel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_lblTotalLabel_BeforeShow

//Custom Code @177-2A29BDB7
if ($ssf_tkt_trx_header->PageNumber == $ssf_tkt_trx_header->Navigator->TotalPages ) {
	global $CCSLocales ;
	$Component->SetValue($CCSLocales->GetText("CCS_ReportTotal")) ;
}
//End Custom Code

//Close ssf_tkt_trx_header_lblTotalLabel_BeforeShow @176-016AF1EC
    return $ssf_tkt_trx_header_lblTotalLabel_BeforeShow;
}
//End Close ssf_tkt_trx_header_lblTotalLabel_BeforeShow

//ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow @163-7163D2A9
function ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow

//Custom Code @165-2A29BDB7
global $SubNetAmount ;
$Component->SetValue($SubNetAmount) ;
//End Custom Code

//Close ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow @163-56C70910
    return $ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow;
}
//End Close ssf_tkt_trx_header_lblSubTotalNetAmount_BeforeShow

//ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow @178-E5FA7038
function ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow

//Custom Code @181-2A29BDB7
	global $TotalNetAmount ;
	global $TotalTaxAmount ;
	global $TotalAmount ;
	
if ($ssf_tkt_trx_header->PageNumber == $ssf_tkt_trx_header->Navigator->TotalPages ) {
	GetTotals($netAmount,$taxAmount,$t_amount, false ) ;
	$TotalNetAmount = $netAmount ;
	$TotalTaxAmount = $taxAmount ;
	$TotalAmount = $t_amount ;
	$Component->SetValue($TotalNetAmount) ;
	$ssf_tkt_trx_header->lblTotalTaxAmount->SetValue($TotalTaxAmount) ;
	$ssf_tkt_trx_header->lblTotalAmount->SetValue($TotalAmount) ;
}

//End Custom Code

//Close ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow @178-77794D4D
    return $ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow;
}
//End Close ssf_tkt_trx_header_lblTotalNetAmount_BeforeShow

//ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow @166-EAED7440
function ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow

//Custom Code @168-2A29BDB7
global $SubTaxAmount ;
$Component->SetValue($SubTaxAmount) ;
//End Custom Code

//Close ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow @166-A9EC9581
    return $ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow;
}
//End Close ssf_tkt_trx_header_lblSubTotalTaxAmount_BeforeShow

//ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow @167-F9655BFD
function ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow

//Custom Code @169-2A29BDB7
global $SubTotalAmount ;
$Component->SetValue($SubTotalAmount) ;
//End Custom Code

//Close ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow @167-BAB57084
    return $ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow;
}
//End Close ssf_tkt_trx_header_lblSubTotalAmount_BeforeShow

//ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow @20-34AF2032
function ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow

//Custom Code @173-2A29BDB7
	$Component->SetValue(CCFormatDate(CCGetDateArray(), $Component->Format)) ;
//End Custom Code

//Close ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow @20-4C88A418
    return $ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow;
}
//End Close ssf_tkt_trx_header_Report_CurrentDateTime_BeforeShow

//ssf_tkt_trx_header_ds_BeforeExecuteSelect @76-5BE77669
function ssf_tkt_trx_header_ds_BeforeExecuteSelect(& $sender)
{
    $ssf_tkt_trx_header_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_ds_BeforeExecuteSelect

//Custom Code @142-2A29BDB7
	if (CCGetParam("period_shifts") != "") {
		$Shift_Criteria = " tkt_shift_id in (".CCGetParam("period_shifts").")" ; 		
		$Component->DataSource->SQL = str_replace("SHIFT_CRITERIA", $Shift_Criteria, $Component->DataSource->SQL); 
		$Component->DataSource->CountSQL = str_replace("SHIFT_CRITERIA", $Shift_Criteria, $Component->DataSource->CountSQL) ;	
	} else {
		$Component->DataSource->SQL = str_replace("SHIFT_CRITERIA", "1=1", $Component->DataSource->SQL); 
		$Component->DataSource->CountSQL = str_replace("SHIFT_CRITERIA", "1=1", $Component->DataSource->CountSQL) ;	
	}

	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	
//End Custom Code

//Close ssf_tkt_trx_header_ds_BeforeExecuteSelect @76-F83866B5
    return $ssf_tkt_trx_header_ds_BeforeExecuteSelect;
}
//End Close ssf_tkt_trx_header_ds_BeforeExecuteSelect

//ssf_tkt_trx_header_BeforeShowRow @76-C7962AAB
function ssf_tkt_trx_header_BeforeShowRow(& $sender)
{
    $ssf_tkt_trx_header_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_BeforeShowRow

//Custom Code @164-2A29BDB7
global $SubNetAmount ;
global $SubTaxAmount ;
global $SubTotalAmount ;

$SubNetAmount += $ssf_tkt_trx_header->tkt_net_amount->GetValue() ;
$SubTaxAmount += $ssf_tkt_trx_header->tkt_tax_amount->GetValue() ;
$SubTotalAmount += $ssf_tkt_trx_header->tkt_total_amount->GetValue() ;

//End Custom Code

//Close ssf_tkt_trx_header_BeforeShowRow @76-AC9F951E
    return $ssf_tkt_trx_header_BeforeShowRow;
}
//End Close ssf_tkt_trx_header_BeforeShowRow

//ssf_tkt_trx_header_ds_AfterExecuteSelect @76-A143A108
function ssf_tkt_trx_header_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_trx_header_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_ds_AfterExecuteSelect

//Custom Code @170-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 != CCCompareValues($Parameter1, $Parameter2, ccsText))
	{
		$Component->col1->SetValue(true) ;
		$Component->col2->SetValue(true) ;
		$Component->col3->SetValue(true) ;
		$Component->col4->SetValue(true) ;
		$Component->col5->SetValue(true) ;
		$Component->col6->SetValue(true) ;	
		$Component->col7->SetValue(true) ;	
		$Component->col8->SetValue(true) ;	
		$Component->col9->SetValue(true) ;
		$Component->col10->SetValue(true) ;
		$Component->col11->SetValue(true) ;
		$Component->col12->SetValue(true) ;
		$Component->col13->SetValue(true) ;
	}

//End Custom Code

//Close ssf_tkt_trx_header_ds_AfterExecuteSelect @76-AC9171FB
    return $ssf_tkt_trx_header_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_trx_header_ds_AfterExecuteSelect

//ssf_tkt_trx_header_BeforeShow @76-1B0FC198
function ssf_tkt_trx_header_BeforeShow(& $sender)
{
    $ssf_tkt_trx_header_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_BeforeShow

//Custom Code @172-2A29BDB7
	global $lblPrintTable ;
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
	//$export = CCGetParam("export","0") ;
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) {
		$Component->Visible = false ;
		global $cols ;
		$cols = array() ;
		FillCols() ;
		$lblPrintTable->SetValue(DrawTable());
	}

//End Custom Code

//Close ssf_tkt_trx_header_BeforeShow @76-F2718512
    return $ssf_tkt_trx_header_BeforeShow;
}
//End Close ssf_tkt_trx_header_BeforeShow

//ssf_tkt_trx_header_BeforeSelect @76-4ABED5E7
function ssf_tkt_trx_header_BeforeSelect(& $sender)
{
    $ssf_tkt_trx_header_BeforeSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_trx_header; //Compatibility
//End ssf_tkt_trx_header_BeforeSelect

//Custom Code @175-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) 
		$Component->DataSource->PageSize = 10000;

 	If(CCGetParam("export") != "") {
		//Show up to 10,000 records
	    $Component->PageSize = 10000;
	    $Component->ds->PageSize = 10000;
		//Hide the Navigator
	    $Component->Navigator->Visible = false ;
	} 
//End Custom Code

//Close ssf_tkt_trx_header_BeforeSelect @76-4AF2CE05
    return $ssf_tkt_trx_header_BeforeSelect;
}
//End Close ssf_tkt_trx_header_BeforeSelect

//Page_AfterInitialize @1-9A1F7E28
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxHReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @171-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TXH_REP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_OnInitializeView @1-A418AE85
function Page_OnInitializeView(& $sender)
{
    $Page_OnInitializeView = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxHReport; //Compatibility
//End Page_OnInitializeView

//Custom Code @191-2A29BDB7
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

//Page_BeforeShow @1-D8DF27C1
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTrxHReport; //Compatibility
//End Page_BeforeShow

//Custom Code @192-2A29BDB7
global $Tpl ;

 	if (CCGetParam("export") == "") {
		$Tpl->SetVar("page_style","../../Styles/Spiritnew/Style.css") ;
	}
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow
function FillCols() {
	global $cols ;
	for ($i=1;$i<20;$i++) {
		$cols[$i] = ( CCGetParam("col".$i) == "1"  || CCGetParam("export") != "" ) ;
	}

}

function DrawTable() {
	global $CCSLocales ;
	global $ssf_tkt_trx_header ;
	global $cols ;
	$exportExcel = (CCGetParam("export") == "1" ) ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) 
	{
		$rowperpage  = 35 ;
		$rowcount = 0 ;
		$rowcount = $ssf_tkt_trx_header->DataSource->RecordsCount ;
 		$strtemp = " <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"> \n".
    				" <tr> \n".
      					" <td valign=\"top\"> \n".
        				" <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"> \n".
          					" <tr> \n" ;
							if ($exportExcel)
            					$strtemp .= " <td class=\"HeaderLeft\"></td> \n" ;
							else
								$strtemp .= " <td class=\"HeaderLeft\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> \n" ;
            				$strtemp .= " <th> ".$CCSLocales->GetText("CCS_GridFormPrefix").
            				$CCSLocales->GetText("ssf_tkt_trx_header").
            				$CCSLocales->GetText("CCS_GridFormSuffix") . "</th> \n" ;
							if ($exportExcel)
            					$strtemp .= " <td class=\"HeaderRight\"></td> \n" ;
							else
 		            			$strtemp .=  " <td class=\"HeaderRight\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> \n";
				         $strtemp .= " </tr> \n".
        				" </table> \n".
							
 				      	" <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\"> \n ".
	          				" <tr class=\"Row\"> \n".
	            			" <td colspan=\"33\">".	$CCSLocales->GetText("CCS_TotalRecords")."&nbsp;".
	              				$rowcount." </td>\n ".
	          				" </tr>\n " ;
		$rownumber = 0 ;
		
		if ($rowcount > 0 ) {
				$drawfooterexitwhile = true ;
				$ssf_tkt_trx_header->RowNumber = 1 ;
				$rownumber = 1 ;
				$b_header = true ;
				$currentPageint = 0 ;
				$oldPageint = 0 ;
				$ssf_tkt_trx_header->DataSource->next_record();
				while ($rownumber <= $rowcount ) {
					$drawfooterexitwhile = true ;
					if ($b_header) {
						$strtemp .=	DrawHeader() ;
						$b_header = false ;
					}
					$ssf_tkt_trx_header->RowNumber = $rownumber ;
					$ssf_tkt_trx_header->DataSource->SetValues() ;
					$strtemp .=	" <tr class=\"Row\">\n " ;
								if ( $cols[1])
            						$strtemp .= " <td style=\"TEXT-ALIGN: right\">". $ssf_tkt_trx_header->DataSource->tkt_trans_id->GetValue(). " &nbsp; </td>\n" ;
								if ( $cols[2])
					            	$strtemp .= " <td align=\"center\">".$ssf_tkt_trx_header->DataSource->tkt_pos_id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[3])
									$strtemp .= " <td align=\"center\">".$ssf_tkt_trx_header->DataSource->tkt_shift_id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[4])
									$strtemp .= " <td align=\"center\">".GetFormatedDate($ssf_tkt_trx_header->DataSource->tkt_date->GetDBValue()). " &nbsp; </td>\n";
								if (  $cols[5])
									$strtemp .= " <td align=\"center\">". GetFormatedTime($ssf_tkt_trx_header->DataSource->tkt_time->GetDBValue()). " &nbsp; </td>\n";
								if (  $cols[6])
									$strtemp .= " <td>". $ssf_tkt_trx_header->DataSource->tkt_type->GetValue(). " &nbsp; </td>\n";
								if (  $cols[7])
									$strtemp .= " <td>". $ssf_tkt_trx_header->DataSource->tkt_receipt_type->GetValue()."-".$ssf_tkt_trx_header->DataSource->tkt_receipt_group->GetValue()."-".$ssf_tkt_trx_header->DataSource->tkt_receipt_number->GetValue(). " &nbsp; </td>\n";
								if (  $cols[8])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">".  number_format($ssf_tkt_trx_header->DataSource->tkt_net_amount->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n";
								if (  $cols[9])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">".  number_format($ssf_tkt_trx_header->DataSource->tkt_tax_amount->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n";
								if (  $cols[10])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">". number_format($ssf_tkt_trx_header->DataSource->tkt_total_amount->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n" ;
								if (  $cols[11])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">". $ssf_tkt_trx_header->DataSource->tkt_customer_id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[12])
									$strtemp .= " <td style=\"TEXT-ALIGN: left\">". $ssf_tkt_trx_header->DataSource->tkt_customer_name->GetValue(). " &nbsp; </td>\n";
								if (  $cols[13])
									$strtemp .= " <td style=\"TEXT-ALIGN: left\">". $ssf_tkt_trx_header->DataSource->tkt_customer_address->GetValue(). " &nbsp; </td>\n";
          						" </tr>\n" ;
					$rownumber++ ;
					$ssf_tkt_trx_header->DataSource->next_record() ;
					
					$currentPageint = (int) ($rownumber / $rowperpage) ;
					//echo $ssf_tkt_trx_header-> PageSize ;
					if (!$exportExcel) {
						if ($oldPageint !=  $currentPageint) {
							$totalpagenumber = ((int) ($rowcount / $rowperpage)) ;
							$offset = ( ($rowcount / $rowperpage) > $totalpagenumber ? 1 : 0 ) ;
							$totalpagenumber = $totalpagenumber + $offset ;
							$strtemp .= DrawFooter ($currentPageint, $totalpagenumber) ;
							$strtemp .= DoPageBreak() ;
							$b_header = true ;
							$oldPageint = $currentPageint ;
							$drawfooterexitwhile = false ; 
						}
					}
				}
				if (!$exportExcel) {
					if ($drawfooterexitwhile) {
						GetTotals($totalnet, $totaltax, $totamount ) ;
						$strtemp .= " <tr class=\"Footer\"> \n".
	            					" <td colspan=\"7\">&nbsp;</td> \n".
	            					" <td style=\"FONT-WEIGHT: bold\" align=\"right\" >" .$totalnet."</td> \n".
	            					" <td style=\"FONT-WEIGHT: bold\" align=\"right\" >" .$totaltax."</td> \n".
	            					" <td style=\"FONT-WEIGHT: bold\" align=\"right\" >" .$totamount."</td> \n".
									" <td >&nbsp;</td> \n".
									" <td >&nbsp;</td> \n".
									" <td >&nbsp;</td> \n".
									" </tr> \n " ; 
						$strtemp .= DrawFooter ($currentPageint + 1, $totalpagenumber) ;	
					}
		}		}
		$strtemp .=		" </table> \n".
					" </td> \n".
					" </tr> \n".
					" </table> \n" ;

		return $strtemp ;
	}

}

function DrawFooter($currentpage, $totalpages) {
global $CCSLocales ;
global $ssf_tkt_trx_header ;

	//echo "page".$totalpages ;
	return " <tr class=\"Footer\">\n".
           " <td colspan=\"3\"> ". CCFormatDate(CCGetDateArray(), $ssf_tkt_trx_header->Report_CurrentDateTime->Format) ."&nbsp; </td> \n".
           " <td align=\"right\" colspan=\"10\">&nbsp;".$CCSLocales->GetText("CCS_ReportPageNumber1")." \n".
		    $currentpage." ".$CCSLocales->GetText("CCS_ReportPageNumber2")." \n".
            "  &nbsp;".$totalpages. "&nbsp;</td> \n". 
            " </tr> \n" ; 
          

}

function DoPageBreak() {
  return 	" </table> \n".
			" </td> \n".
			" </tr> \n".
			" </table> \n".
  		    " <p style=\"PAGE-BREAK-AFTER: always\"></p> \n".
  		    " <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n".
    	    "   <tr> ".
      		" <td valign=\"top\"> \n".
			" <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\"> \n " ;
}

function DrawHeader() {
global $CCSLocales ;
global $cols ;
	$strtemp = " <tr class=\"Caption\">\n ";
			if ($cols[1])
        		$strtemp .= " <th> ".$CCSLocales->GetText("tkt_trans_id"). "</th>\n";
			if ($cols[2])
        		$strtemp .= " <th> ".$CCSLocales->GetText("tkt_pos_id"). "</th>\n";
			if ($cols[3])
        		$strtemp .= " <th> ".$CCSLocales->GetText("tkt_shift_id"). "</th>\n";
			if ($cols[4])
        		$strtemp .= " <th> ".$CCSLocales->GetText("tkt_date"). "</th>\n";
			if ($cols[5])
        		$strtemp .= " <th> ".$CCSLocales->GetText("tkt_time"). "</th>\n";
			if ($cols[6])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_type"). "</th>\n";
			if ($cols[7])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_receipt_type"). "</th>\n";
			if ($cols[8])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_net_amount"). "</th>\n";
			if ($cols[9])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_tax_amount"). "</th>\n";
			if ($cols[10])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_total_amount"). "</th>\n";
			if ($cols[11])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_cust_id"). "</th>\n";
			if ($cols[12])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_cust_name"). "</th>\n";
			if ($cols[13])
				$strtemp .= " <th> ".$CCSLocales->GetText("tkt_cust_address"). "</th>\n";
		$strtemp .=  " </tr> \n" ;
		return $strtemp ;
}

function GetTotals(& $netamount, & $taxamount, & $totamount, $formatted = true) {
	global $ssf_tkt_trx_header ;
	global $CCSLocales ;
		$netamount = 0 ;
		$taxamount = 0 ;
		$totamount = 0 ; 
		$len = strlen($ssf_tkt_trx_header->DataSource->SQL) ;
		$strSQL = substr($ssf_tkt_trx_header->DataSource->SQL,0,$len - 13) ;
		$pos1 = strpos($strSQL,"FROM") ;
		//echo $strSQL ;
		$strToNumber = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
		$tmpstrSQL = " Select sum(tkt_net_amount * ".$strToNumber.") AS tkt_net_amount, " ;
		$tmpstrSQL .= " sum(tkt_tax_amount * ".$strToNumber.") AS tkt_tax_amount, " ;
  		$tmpstrSQL .= " sum(tkt_total_amount * ".$strToNumber.") AS tkt_total_amount " ;
		$tmpstrSQL .= " ".substr($strSQL,$pos1) ;
		$strSQL = $tmpstrSQL ;
		//echo $strSQL ;
		$db = new clsDBConnection1();
		$db->query($strSQL);
		$Result = $db->next_record();
		if ($Result) {
				$netamount = $db->f("tkt_net_amount") ;
				$taxamount = $db->f("tkt_tax_amount") ;
				$totamount = $db->f("tkt_total_amount") ;
			if ($formatted) {
				$netamount = number_format($db->f("tkt_net_amount"),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
				$taxamount = number_format($db->f("tkt_tax_amount"),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
				$totamount = number_format($db->f("tkt_total_amount"),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
			}
		}
		$db->Close() ;
		return true ;
}

function GetFormatedDate ($strActualValue) {
	return CCSubStr($strActualValue,6,2)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,0,4);
}

function GetFormatedTime ($strActualValue) {
	return CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2);
}


?>
