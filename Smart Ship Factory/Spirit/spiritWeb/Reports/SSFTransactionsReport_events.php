<?php
//BindEvents Method @1-1D35D9F2
function BindEvents()
{
    global $ssf_pump_salesSearch;
    global $lnkExcel;
    global $btnPrint;
    global $config_values_ssf_addin_p;
    global $CCSEvents;
    $ssf_pump_salesSearch->s_time_from_tmp->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_s_time_from_tmp_BeforeShow";
    $ssf_pump_salesSearch->s_time_to_tmp->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_s_time_to_tmp_BeforeShow";
    $ssf_pump_salesSearch->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect";
    $ssf_pump_salesSearch->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_BeforeShow";
    $lnkExcel->CCSEvents["BeforeShow"] = "lnkExcel_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $config_values_ssf_addin_p->config_values_ssf_addin_p_TotalRecords->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow";
    $config_values_ssf_addin_p->ViewMode->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_ViewMode_BeforeShow";
    $config_values_ssf_addin_p->end_date->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_end_date_BeforeShow";
    $config_values_ssf_addin_p->end_time->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_end_time_BeforeShow";
    $config_values_ssf_addin_p->initial_volume->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_initial_volume_BeforeShow";
    $config_values_ssf_addin_p->final_volume->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_final_volume_BeforeShow";
    $config_values_ssf_addin_p->sale_type->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_sale_type_BeforeShow";
    $config_values_ssf_addin_p->lblTotalFooter->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_lblTotalFooter_BeforeShow";
    $config_values_ssf_addin_p->Report_CurrentDateTime->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow";
    $config_values_ssf_addin_p->Report_CurrentPage->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_Report_CurrentPage_BeforeShow";
    $config_values_ssf_addin_p->Report_TotalPages->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_Report_TotalPages_BeforeShow";
    $config_values_ssf_addin_p->CCSEvents["BeforeSelect"] = "config_values_ssf_addin_p_BeforeSelect";
    $config_values_ssf_addin_p->CCSEvents["BeforeShow"] = "config_values_ssf_addin_p_BeforeShow";
    $config_values_ssf_addin_p->ds->CCSEvents["AfterExecuteSelect"] = "config_values_ssf_addin_p_ds_AfterExecuteSelect";
    $config_values_ssf_addin_p->CCSEvents["BeforeShowRow"] = "config_values_ssf_addin_p_BeforeShowRow";
    $config_values_ssf_addin_p->ds->CCSEvents["BeforeBuildSelect"] = "config_values_ssf_addin_p_ds_BeforeBuildSelect";
    $config_values_ssf_addin_p->ds->CCSEvents["BeforeExecuteSelect"] = "config_values_ssf_addin_p_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_pump_salesSearch_s_time_from_tmp_BeforeShow @307-7E9AE67C
function ssf_pump_salesSearch_s_time_from_tmp_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_s_time_from_tmp_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_s_time_from_tmp_BeforeShow

//Custom Code @313-2A29BDB7
	if (CCGetParam("s_time_from") != "") {
		$strActualValue = CCGetParam("s_time_from") ;
		$Component->setValue(mktime(CCSubStr($strActualValue,0,2),CCSubStr($strActualValue,2,2),CCSubStr($strActualValue,4,2),0,0,0) ) ;
	}
//End Custom Code

//Close ssf_pump_salesSearch_s_time_from_tmp_BeforeShow @307-745B8AE5
    return $ssf_pump_salesSearch_s_time_from_tmp_BeforeShow;
}
//End Close ssf_pump_salesSearch_s_time_from_tmp_BeforeShow

//ssf_pump_salesSearch_s_time_to_tmp_BeforeShow @308-B7DAC25D
function ssf_pump_salesSearch_s_time_to_tmp_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_s_time_to_tmp_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_s_time_to_tmp_BeforeShow

//Custom Code @314-2A29BDB7
	if (CCGetParam("s_time_to") != "") {
		$strActualValue = CCGetParam("s_time_to") ;
		$Component->setValue(mktime(CCSubStr($strActualValue,0,2),CCSubStr($strActualValue,2,2),CCSubStr($strActualValue,4,2),0,0,0) ) ;
	}
//End Custom Code

//Close ssf_pump_salesSearch_s_time_to_tmp_BeforeShow @308-500865B0
    return $ssf_pump_salesSearch_s_time_to_tmp_BeforeShow;
}
//End Close ssf_pump_salesSearch_s_time_to_tmp_BeforeShow

//ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @107-85B4C078
function ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect

//Custom Code @327-2A29BDB7
	$strSelect = ReplaceNumberConvertion("ID","'99'") ;
    $ssf_pump_salesSearch->s_pump_id->DataSource->SQL = "Select ".$strSelect. " as ID from config_values \n" .
    "where library = 'pump' and groupname = 'general'\n" .
    "and parameter = 'ID' {SQL_OrderBy}";
    $ssf_pump_salesSearch->s_pump_id->DataSource->Order = "id";
//End Custom Code

//Close ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @107-41A4844B
    return $ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect


//ssf_pump_salesSearch_BeforeShow @3-FF8423C0
function ssf_pump_salesSearch_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_BeforeShow

//Hide-Show Component @12-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
    $Parameter1 = CCGetParam("noheader", "");
    $Parameter2 = "1";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_pump_salesSearch_BeforeShow @3-DCE80D86
    return $ssf_pump_salesSearch_BeforeShow;
}
//End Close ssf_pump_salesSearch_BeforeShow

//DEL  //

//lnkExcel_BeforeShow @176-2C9D6EA9
function lnkExcel_BeforeShow(& $sender)
{
    $lnkExcel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lnkExcel; //Compatibility
//End lnkExcel_BeforeShow

//Custom Code @177-2A29BDB7
       $Parameter1 = CCGetParam("ViewMode", "");
       $Parameter2 = "Print";
       if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	   		$Component->Visible = false ;
//End Custom Code

//Close lnkExcel_BeforeShow @176-54E205B5
    return $lnkExcel_BeforeShow;
}
//End Close lnkExcel_BeforeShow

//btnPrint_BeforeShow @127-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @128-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$btnPrint->Visible = false ;
//End Custom Code

//Close btnPrint_BeforeShow @127-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow @209-3F6B5A68
function config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow

//Retrieve number of records @210-ABE656B4
    $Component->SetValue($Container->DataSource->RecordsCount);
//End Retrieve number of records

//Close config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow @209-5C820CD4
    return $config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow;
}
//End Close config_values_ssf_addin_p_config_values_ssf_addin_p_TotalRecords_BeforeShow

//config_values_ssf_addin_p_ViewMode_BeforeShow @268-F868A924
function config_values_ssf_addin_p_ViewMode_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_ViewMode_BeforeShow

//Custom Code @269-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close config_values_ssf_addin_p_ViewMode_BeforeShow @268-87D36706
    return $config_values_ssf_addin_p_ViewMode_BeforeShow;
}
//End Close config_values_ssf_addin_p_ViewMode_BeforeShow

//config_values_ssf_addin_p_end_date_BeforeShow @236-8D5C925E
function config_values_ssf_addin_p_end_date_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_end_date_BeforeShow

//Custom Code @273-2A29BDB7
	$strActualValue = $Component->getValue();
  	$Component->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
//End Custom Code

//Close config_values_ssf_addin_p_end_date_BeforeShow @236-77A53DE5
    return $config_values_ssf_addin_p_end_date_BeforeShow;
}
//End Close config_values_ssf_addin_p_end_date_BeforeShow

//config_values_ssf_addin_p_end_time_BeforeShow @238-17043417
function config_values_ssf_addin_p_end_time_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_end_time_BeforeShow

//Custom Code @274-2A29BDB7
	$strActualValue = $Component->getValue();
	$Component->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));

//End Custom Code

//Close config_values_ssf_addin_p_end_time_BeforeShow @238-21F7B3F7
    return $config_values_ssf_addin_p_end_time_BeforeShow;
}
//End Close config_values_ssf_addin_p_end_time_BeforeShow

//config_values_ssf_addin_p_initial_volume_BeforeShow @333-391D28BE
function config_values_ssf_addin_p_initial_volume_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_initial_volume_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_initial_volume_BeforeShow

//Custom Code @334-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close config_values_ssf_addin_p_initial_volume_BeforeShow @333-C0AB38EE
    return $config_values_ssf_addin_p_initial_volume_BeforeShow;
}
//End Close config_values_ssf_addin_p_initial_volume_BeforeShow

//config_values_ssf_addin_p_final_volume_BeforeShow @339-C00E6F4D
function config_values_ssf_addin_p_final_volume_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_final_volume_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_final_volume_BeforeShow

//Custom Code @340-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close config_values_ssf_addin_p_final_volume_BeforeShow @339-056967F8
    return $config_values_ssf_addin_p_final_volume_BeforeShow;
}
//End Close config_values_ssf_addin_p_final_volume_BeforeShow

//config_values_ssf_addin_p_sale_type_BeforeShow @252-FB3BDBAF
function config_values_ssf_addin_p_sale_type_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_sale_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_sale_type_BeforeShow

//Custom Code @275-2A29BDB7
	$Component->setValue(GetSaleType( $Component->GetValue() ));
//End Custom Code

//Close config_values_ssf_addin_p_sale_type_BeforeShow @252-889D2DB9
    return $config_values_ssf_addin_p_sale_type_BeforeShow;
}
//End Close config_values_ssf_addin_p_sale_type_BeforeShow

//config_values_ssf_addin_p_lblTotalFooter_BeforeShow @289-AB802B95
function config_values_ssf_addin_p_lblTotalFooter_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_lblTotalFooter_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_lblTotalFooter_BeforeShow

//Custom Code @290-2A29BDB7
	global $CCSLocales ;
	if ($config_values_ssf_addin_p->PageNumber == $config_values_ssf_addin_p->Navigator->TotalPages ) {
		GetTotals($volume, $money) ;
		$strLabel = $CCSLocales->GetText("total_volume").": ".$volume." ".CCGetParam("s_unit_id")  ;
		$strLabel .= " -- ".$CCSLocales->GetText("money_total").": $ ".$money ;
		$Component->SetValue($strLabel) ;
	}
	else {
		$Component->SetValue(" ") ;
	}
//End Custom Code

//Close config_values_ssf_addin_p_lblTotalFooter_BeforeShow @289-E60FFD6B
    return $config_values_ssf_addin_p_lblTotalFooter_BeforeShow;
}
//End Close config_values_ssf_addin_p_lblTotalFooter_BeforeShow

//config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow @20-54C510B9
function config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow

//Custom Code @277-2A29BDB7
	$Component->SetValue(CCFormatDate(CCGetDateArray(), $Component->Format)) ;
//End Custom Code

//Close config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow @20-6CB64082
    return $config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow;
}
//End Close config_values_ssf_addin_p_Report_CurrentDateTime_BeforeShow

//config_values_ssf_addin_p_Report_CurrentPage_BeforeShow @282-E8B84015
function config_values_ssf_addin_p_Report_CurrentPage_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_Report_CurrentPage_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_Report_CurrentPage_BeforeShow

//Custom Code @284-2A29BDB7
	$Component->SetValue($config_values_ssf_addin_p->Navigator->PageNumber ) ;
//End Custom Code

//Close config_values_ssf_addin_p_Report_CurrentPage_BeforeShow @282-8D471248
    return $config_values_ssf_addin_p_Report_CurrentPage_BeforeShow;
}
//End Close config_values_ssf_addin_p_Report_CurrentPage_BeforeShow

//config_values_ssf_addin_p_Report_TotalPages_BeforeShow @281-5C77B7FB
function config_values_ssf_addin_p_Report_TotalPages_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_Report_TotalPages_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_Report_TotalPages_BeforeShow

//Custom Code @283-2A29BDB7
	$Component->SetValue($config_values_ssf_addin_p->Navigator->TotalPages) ;
//End Custom Code

//Close config_values_ssf_addin_p_Report_TotalPages_BeforeShow @281-54D9D516
    return $config_values_ssf_addin_p_Report_TotalPages_BeforeShow;
}
//End Close config_values_ssf_addin_p_Report_TotalPages_BeforeShow

//DEL  global $Tpl ;
//DEL  	$Tpl->SetVar("Page_URL","nada") ;
//DEL  

//config_values_ssf_addin_p_BeforeSelect @179-C22DDE97
function config_values_ssf_addin_p_BeforeSelect(& $sender)
{
    $config_values_ssf_addin_p_BeforeSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_BeforeSelect

//Custom Code @267-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) 
		$config_values_ssf_addin_p->DataSource->PageSize = 10000;

 	If(CCGetParam("export") != "") {
		//Show up to 10,000 records
	    $Component->PageSize = 10000;
	    $Component->ds->PageSize = 10000;
		//Hide the Navigator
	    $Component->Navigator->Visible = false ;
	} 

//End Custom Code

//Close config_values_ssf_addin_p_BeforeSelect @179-1A93C2FF
    return $config_values_ssf_addin_p_BeforeSelect;
}
//End Close config_values_ssf_addin_p_BeforeSelect

//config_values_ssf_addin_p_BeforeShow @179-BE06C7AC
function config_values_ssf_addin_p_BeforeShow(& $sender)
{
    $config_values_ssf_addin_p_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_BeforeShow

//Custom Code @270-2A29BDB7
	global $lblPrintTable ;
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
	$export = CCGetParam("export","0") ;
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) {
		$Component->Visible = false ;
		global $cols ;
		$cols = array() ;
		FillCols() ;
		$lblPrintTable->SetValue(DrawTable());
	}

//End Custom Code

//Close config_values_ssf_addin_p_BeforeShow @179-E41F350B
    return $config_values_ssf_addin_p_BeforeShow;
}
//End Close config_values_ssf_addin_p_BeforeShow

//config_values_ssf_addin_p_ds_AfterExecuteSelect @179-4D31927A
function config_values_ssf_addin_p_ds_AfterExecuteSelect(& $sender)
{
    $config_values_ssf_addin_p_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_ds_AfterExecuteSelect

//Custom Code @271-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 != CCCompareValues($Parameter1, $Parameter2, ccsText))
	{
		$config_values_ssf_addin_p->col1->SetValue(true) ;
		$config_values_ssf_addin_p->col2->SetValue(true) ;
		$config_values_ssf_addin_p->col3->SetValue(true) ;
		$config_values_ssf_addin_p->col4->SetValue(true) ;
		$config_values_ssf_addin_p->col5->SetValue(true) ;
		$config_values_ssf_addin_p->col6->SetValue(true) ;	
		$config_values_ssf_addin_p->col7->SetValue(true) ;	
		$config_values_ssf_addin_p->col8->SetValue(true) ;	
		$config_values_ssf_addin_p->col9->SetValue(true) ;
		$config_values_ssf_addin_p->col10->SetValue(true) ;
		$config_values_ssf_addin_p->col11->SetValue(true) ;
		$config_values_ssf_addin_p->col12->SetValue(true) ;
		$config_values_ssf_addin_p->col13->SetValue(true) ;
	}

//End Custom Code

//Close config_values_ssf_addin_p_ds_AfterExecuteSelect @179-D9A96216
    return $config_values_ssf_addin_p_ds_AfterExecuteSelect;
}
//End Close config_values_ssf_addin_p_ds_AfterExecuteSelect

//config_values_ssf_addin_p_BeforeShowRow @179-42A48236
function config_values_ssf_addin_p_BeforeShowRow(& $sender)
{
    $config_values_ssf_addin_p_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_BeforeShowRow

//Custom Code @272-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
	$export = CCGetParam("export","0") ;
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) {
		if ($export == "0") {
			$config_values_ssf_addin_p->Data_sale_id->Visible = ( CCGetParam("col1") == "1") ;
			$config_values_ssf_addin_p->Data_end_date->Visible = ( CCGetParam("col2") == "1") ;
			$config_values_ssf_addin_p->Data_end_time->Visible = ( CCGetParam("col3") == "1") ;
			$config_values_ssf_addin_p->Data_pump_id->Visible = ( CCGetParam("col4") == "1") ;
			$config_values_ssf_addin_p->Data_hose_id->Visible = ( CCGetParam("col5") == "1") ;
			$config_values_ssf_addin_p->Data_id->Visible = ( CCGetParam("col6") == "1") ;
			$config_values_ssf_addin_p->Data_volume->Visible = ( CCGetParam("col7") == "1") ;
			$config_values_ssf_addin_p->Data_ppu->Visible = ( CCGetParam("col8") == "1") ;
			$config_values_ssf_addin_p->Data_money->Visible = ( CCGetParam("col9") == "1") ;
			$config_values_ssf_addin_p->Data_sale_type->Visible = ( CCGetParam("col10") == "1") ;
			$config_values_ssf_addin_p->Data_pay_payment_type->Visible = ( CCGetParam("col11") == "1") ;
			$config_values_ssf_addin_p->Data_initial_volume->Visible = ( CCGetParam("col12") == "1") ;
			$config_values_ssf_addin_p->Data_final_volume->Visible = ( CCGetParam("col13") == "1") ;
		}
	} 
//End Custom Code

//Close config_values_ssf_addin_p_BeforeShowRow @179-F1A7EF10
    return $config_values_ssf_addin_p_BeforeShowRow;
}
//End Close config_values_ssf_addin_p_BeforeShowRow

//config_values_ssf_addin_p_ds_BeforeBuildSelect @179-DD53C0A7
function config_values_ssf_addin_p_ds_BeforeBuildSelect(& $sender)
{
    $config_values_ssf_addin_p_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_ds_BeforeBuildSelect

//Custom Code @305-2A29BDB7
	$end_sale_id = CCGetParam("p_sale_end") ;
	if ($end_sale_id == "") 
		$end_sale_id = 0 ;
	if ($Component->DataSource->Where != "" )
		$Component->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$Component->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;

//End Custom Code

//Close config_values_ssf_addin_p_ds_BeforeBuildSelect @179-11805878
    return $config_values_ssf_addin_p_ds_BeforeBuildSelect;
}
//End Close config_values_ssf_addin_p_ds_BeforeBuildSelect

//config_values_ssf_addin_p_ds_BeforeExecuteSelect @179-930D8064
function config_values_ssf_addin_p_ds_BeforeExecuteSelect(& $sender)
{
    $config_values_ssf_addin_p_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_addin_p; //Compatibility
//End config_values_ssf_addin_p_ds_BeforeExecuteSelect

//Custom Code @328-2A29BDB7
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close config_values_ssf_addin_p_ds_BeforeExecuteSelect @179-26F6C063
    return $config_values_ssf_addin_p_ds_BeforeExecuteSelect;
}
//End Close config_values_ssf_addin_p_ds_BeforeExecuteSelect
function FillCols() {
	global $cols ;
	for ($i=1;$i<20;$i++) {
		$cols[$i] = ( CCGetParam("col".$i) == "1"  || CCGetParam("export") != "" ) ;
	}

}

function DrawTable() {
	global $CCSLocales ;
	global $config_values_ssf_addin_p ;
	global $cols ;
	$exportExcel = (CCGetParam("export") == "1" ) ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) 
	{
		$rowperpage  = 35 ;
		$rowcount = 0 ;
		$rowcount = $config_values_ssf_addin_p->DataSource->RecordsCount ;
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
            				$CCSLocales->GetText("config_valuesssf_addin_payments_datassf_pump_sales").
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
				$config_values_ssf_addin_p->RowNumber = 1 ;
				$rownumber = 1 ;
				$b_header = true ;
				$currentPageint = 0 ;
				$oldPageint = 0 ;
				$config_values_ssf_addin_p->DataSource->next_record();
				while ($rownumber <= $rowcount ) {
					$drawfooterexitwhile = true ;
					if ($b_header) {
						$strtemp .=	DrawHeader() ;
						$b_header = false ;
					}
					$config_values_ssf_addin_p->RowNumber = $rownumber ;
					$config_values_ssf_addin_p->DataSource->SetValues() ;
					$strtemp .=	" <tr class=\"Row\">\n " ;
								if ( $cols[1])
            						$strtemp .= " <td style=\"TEXT-ALIGN: right\">". $config_values_ssf_addin_p->DataSource->sale_id->GetValue(). " &nbsp; </td>\n" ;
								if ( $cols[2])
					            	$strtemp .= " <td align=\"center\">". GetFormatedDate($config_values_ssf_addin_p->DataSource->end_date->GetValue()). " &nbsp; </td>\n";
								if (  $cols[3])
									$strtemp .= " <td align=\"center\">". GetFormatedTime($config_values_ssf_addin_p->DataSource->end_time->GetValue()). " &nbsp; </td>\n";
								if (  $cols[4])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">". $config_values_ssf_addin_p->DataSource->pump_id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[5])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">". $config_values_ssf_addin_p->DataSource->hose_id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[6])
									$strtemp .= " <td>". $config_values_ssf_addin_p->DataSource->id->GetValue(). " &nbsp; </td>\n";
								if (  $cols[7])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">".  number_format($config_values_ssf_addin_p->DataSource->volume->GetValue(),3,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n";
								if (  $cols[8])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">".  number_format($config_values_ssf_addin_p->DataSource->ppu->GetValue(),3,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n";
								if (  $cols[9])
									$strtemp .= " <td style=\"TEXT-ALIGN: right\">". number_format($config_values_ssf_addin_p->DataSource->money->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). "</td>\n" ;
								if (  $cols[12])
									$strtemp .= " <td align=\"center\">". number_format($config_values_ssf_addin_p->DataSource->initial_volume->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). " &nbsp; </td>\n";
								if (  $cols[13])
									$strtemp .= " <td align=\"center\">". number_format($config_values_ssf_addin_p->DataSource->final_volume->GetValue(),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")). " &nbsp; </td>\n";
								if (  $cols[10])
									$strtemp .= " <td align=\"center\">". GetSaleType($config_values_ssf_addin_p->DataSource->sale_type->GetValue()). " &nbsp; </td>\n";
								if (  $cols[11])
									$strtemp .= " <td align=\"center\">". $config_values_ssf_addin_p->DataSource->pay_payment_type->GetValue(). " &nbsp; </td>\n";
          						" </tr>\n" ;
					$rownumber++ ;
					$config_values_ssf_addin_p->DataSource->next_record() ;
					
					$currentPageint = (int) ($rownumber / $rowperpage) ;
					//echo $config_values_ssf_addin_p-> PageSize ;
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
						GetTotals($totalvolume, $totalmoney) ;
						$strtemp .= " <tr class=\"Footer\"> \n".
	            					" <td colspan=\"3\">&nbsp;</td> \n".
	            					" <td align=\"left\">&nbsp;</td> \n".
	            					" <td style=\"FONT-WEIGHT: bold\" align=\"right\" colspan=\"29\"> \n".
									$CCSLocales->GetText("total_volume").": ".$totalvolume." ".CCGetParam("s_unit_id")." -- ".
									$CCSLocales->GetText("money_total").": $ ".$totalmoney."&nbsp;</td> \n".
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
global $config_values_ssf_addin_p ;

	//echo "page".$totalpages ;
	return " <tr class=\"Footer\">\n".
           " <td colspan=\"3\"> ". CCFormatDate(CCGetDateArray(), $config_values_ssf_addin_p->Report_CurrentDateTime->Format) ."&nbsp; </td> \n".
           " <td align=\"right\" colspan=\"8\">&nbsp;".$CCSLocales->GetText("CCS_ReportPageNumber1")." \n".
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
        		$strtemp .= " <th> ".$CCSLocales->GetText("sale_id"). "</th>\n";
			if ($cols[2])
        		$strtemp .= " <th> ".$CCSLocales->GetText("end_date"). "</th>\n";
			if ($cols[3])
        		$strtemp .= " <th> ".$CCSLocales->GetText("end_time"). "</th>\n";
			if ($cols[4])
        		$strtemp .= " <th> ".$CCSLocales->GetText("pump_id"). "</th>\n";
			if ($cols[5])
        		$strtemp .= " <th> ".$CCSLocales->GetText("hose_id"). "</th>\n";
			if ($cols[6])
				$strtemp .= " <th> ".$CCSLocales->GetText("grade_id"). "</th>\n";
			if ($cols[7])
				$strtemp .= " <th> ".$CCSLocales->GetText("volume"). "</th>\n";
			if ($cols[8])
				$strtemp .= " <th> ".$CCSLocales->GetText("ppu"). "</th>\n";
			if ($cols[9])
				$strtemp .= " <th> ".$CCSLocales->GetText("money"). "</th>\n";
			if ($cols[12])
				$strtemp .= " <th> ".$CCSLocales->GetText("initial_volume"). "</th>\n";
			if ($cols[13])
				$strtemp .= " <th> ".$CCSLocales->GetText("final_volume"). "</th>\n";
			if ($cols[10])
				$strtemp .= " <th> ".$CCSLocales->GetText("sale_type"). "</th>\n";
			if ($cols[11])
				$strtemp .= " <th> ".$CCSLocales->GetText("pay_payment_type"). "</th>\n";
		$strtemp .=  " </tr> \n" ;
		return $strtemp ;
}

//Page_AfterInitialize @1-4A2A326A
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTransactionsReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @135-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
	$Parameter1 = CCGetParam("noheader", "");
    $Parameter2 = "1";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false; 

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_REP_TRX") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_OnInitializeView @1-D7501C1D
function Page_OnInitializeView(& $sender)
{
    $Page_OnInitializeView = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTransactionsReport; //Compatibility
//End Page_OnInitializeView

//Custom Code @174-2A29BDB7
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

//Page_BeforeShow @1-D721D15F
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTransactionsReport; //Compatibility
//End Page_BeforeShow

//Custom Code @306-2A29BDB7
global $Tpl ;

 	if (CCGetParam("export") == "") {
		$Tpl->SetVar("page_style","../Styles/Spiritnew/Style.css") ;
	}
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

function GetFormatedDate ($strActualValue) {
	return CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2);
}

function GetFormatedTime ($strActualValue) {
	return CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2);
}

function GetSaleType ($Value) {
	$strtemp = "" ;
  	switch($Value)
  	{
  	case 0:
  		$strtemp = "Venta sin Control" ;
 		break;
  	case 1:
  		$strtemp = "Venta";
  		break;
  	case 2:
 		$strtemp = "Prueba de Surtidor";
  		break;
  	}
	return $strtemp ;
}

function GetTotals(& $volume, & $money) {
	global $config_values_ssf_addin_p ;
	global $CCSLocales ;
		$volume = 0 ;
		$money = 0 ;
		$len = strlen($config_values_ssf_addin_p->DataSource->SQL) ;
		$strSQL = substr($config_values_ssf_addin_p->DataSource->SQL,0,$len - 13) ;
		$pos1 = strpos($strSQL,"FROM") ;
		//echo $strSQL ;
		$strSQL = " Select sum(money) as summoney, sum(volume) as sumvolume ".substr($strSQL,$pos1) ;
		//$strSQL .= " where ".$config_values_ssf_addin_p->DataSource->Where ;
		//echo $strSQL ;
		$db = new clsDBConnection1();
		$db->query($strSQL);
		$Result = $db->next_record();
		if ($Result) {
			$volume = number_format($db->f("sumvolume"),3,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
			$money = number_format($db->f("summoney"),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
		}
		
		$db->Close() ;
		return true ;
}


?>
