<?php
//BindEvents Method @1-954F1096
function BindEvents()
{
    global $Button1;
    global $ViewMode;
    global $ssf_addin_shifts_data;
    global $Panel1;
    global $Report1;
    global $Report2;
    global $Report6;
    global $Report3;
    global $Report4;
    global $Pump_Group;
    global $CCSEvents;
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_addin_shifts_data->period_type->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_type_BeforeShow";
    $ssf_addin_shifts_data->period_status->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_status_BeforeShow";
    $ssf_addin_shifts_data->lblqtytransactions->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_lblqtytransactions_BeforeShow";
    $Panel1->CCSEvents["BeforeShow"] = "Panel1_BeforeShow";
    $Report1->ds->CCSEvents["BeforeExecuteSelect"] = "Report1_ds_BeforeExecuteSelect";
    $Report2->ds->CCSEvents["BeforeExecuteSelect"] = "Report2_ds_BeforeExecuteSelect";
    $Report6->qty_diff->CCSEvents["BeforeShow"] = "Report6_qty_diff_BeforeShow";
    $Report6->TotalSum_total_amount_diff->CCSEvents["BeforeShow"] = "Report6_TotalSum_total_amount_diff_BeforeShow";
    $Report6->lnkperiod_sales1->CCSEvents["BeforeShow"] = "Report6_lnkperiod_sales1_BeforeShow";
    $Report6->lnkperiod_pump1->CCSEvents["BeforeShow"] = "Report6_lnkperiod_pump1_BeforeShow";
    $Report6->ds->CCSEvents["BeforeExecuteSelect"] = "Report6_ds_BeforeExecuteSelect";
    $Report6->CCSEvents["BeforeShow"] = "Report6_BeforeShow";
    $Report3->ds->CCSEvents["BeforeExecuteSelect"] = "Report3_ds_BeforeExecuteSelect";
    $Report4->ds->CCSEvents["BeforeExecuteSelect"] = "Report4_ds_BeforeExecuteSelect";
    $Pump_Group->pump_group_name->CCSEvents["BeforeShow"] = "Pump_Group_pump_group_name_BeforeShow";
    $Pump_Group->sub_pump_group_name->CCSEvents["BeforeShow"] = "Pump_Group_sub_pump_group_name_BeforeShow";
    $Pump_Group->ds->CCSEvents["BeforeExecuteSelect"] = "Pump_Group_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//DEL      $Parameter1 = CCGetParam("ViewMode", "");
//DEL      $Parameter2 = "Print";
//DEL      if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
//DEL          $Component->Visible = false;

//DEL  

//Button1_BeforeShow @72-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @76-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @72-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @73-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @74-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @73-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_addin_shifts_data_period_type_BeforeShow @23-C91175EA
function ssf_addin_shifts_data_period_type_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_type_BeforeShow

//Custom Code @33-2A29BDB7
global $CCSLocales ;
	switch($Component->getValue())
	{
	case "S":
		$Component->setValue($CCSLocales->GetText("Shift"));
		break;
	case "D":
		$Component->setValue($CCSLocales->GetText("day"));
		break;
	case "M":
		$Component->setValue($CCSLocales->GetText("month"));
		break;
	case "Y":
		$Component->setValue($CCSLocales->GetText("year"));
		break;
	}
//End Custom Code

//Close ssf_addin_shifts_data_period_type_BeforeShow @23-4FBD4818
    return $ssf_addin_shifts_data_period_type_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_type_BeforeShow

//ssf_addin_shifts_data_period_status_BeforeShow @24-3AD21AA3
function ssf_addin_shifts_data_period_status_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_status_BeforeShow

//Custom Code @34-2A29BDB7
global $CCSLocales ;
	switch($Component->getValue())
	{
	case "C":
		$Component->setValue($CCSLocales->GetText("closed"));
		break;
	case "O":
		$Component->setValue($CCSLocales->GetText("opened"));
		break;
	}
//End Custom Code

//Close ssf_addin_shifts_data_period_status_BeforeShow @24-E2D3F073
    return $ssf_addin_shifts_data_period_status_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_status_BeforeShow

//ssf_addin_shifts_data_lblqtytransactions_BeforeShow @35-F943AC97
function ssf_addin_shifts_data_lblqtytransactions_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_lblqtytransactions_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_lblqtytransactions_BeforeShow

//Custom Code @36-2A29BDB7

	$period_id = $ssf_addin_shifts_data->period_id->GetValue() ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;
	
	global $min_date ;
	global $max_date ;
	global $s_date_from ;
	global $s_date_to ;
	global $s_time_from ;
	global $s_time_to ;

	$s_date_from = $ssf_addin_shifts_data->DataSource->period_start_date->GetDBValue();
	$s_time_from = $ssf_addin_shifts_data->DataSource->period_start_time->GetDBValue() ;
	$min_date = $s_date_from.$s_time_from ;
	
	$s_date_to = $ssf_addin_shifts_data->DataSource->period_end_date->GetDBValue() ;
	$s_time_to = $ssf_addin_shifts_data->DataSource->period_end_time->GetDBValue() ; 
	$max_date = $s_date_to.$s_time_to ;

	
	$db = new clsDBConnection1() ;

	if ($period_type == "S") {
		$ssfQuery = " Select count(*) as cuenta from ssf_tkt_trx_header where tkt_period_group ='".$period_group."'"  ;
	} else {
		$ssfQuery = " Select count(*) as cuenta from ssf_tkt_trx_header where 1 = 1 " ;
	}
	$ssfQuery .= " and tkt_date ". ReplaceSqlConcat("SQLConcat")." tkt_time >= '".$min_date."'" ;
	$ssfQuery .= " and tkt_date ". ReplaceSqlConcat("SQLConcat")." tkt_time <= '".$max_date."'" ;

	$db->query($ssfQuery) ;
	$result = $db->next_record();
	if ($result) {
		$Component->SetValue($db->f("cuenta")) ;
	}
	
	$db->Close() ;
//End Custom Code

//Close ssf_addin_shifts_data_lblqtytransactions_BeforeShow @35-87C71092
    return $ssf_addin_shifts_data_lblqtytransactions_BeforeShow;
}
//End Close ssf_addin_shifts_data_lblqtytransactions_BeforeShow

//Panel1_BeforeShow @220-AAD8AF72
function Panel1_BeforeShow(& $sender)
{
    $Panel1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel1; //Compatibility
//End Panel1_BeforeShow

//Custom Code @222-2A29BDB7
     $Parameter1 = CCGetParam("ViewMode", "");
      $Parameter2 = "Print";
     if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
         $Component->Visible = false;
 
//End Custom Code

//Close Panel1_BeforeShow @220-D21EBA68
    return $Panel1_BeforeShow;
}
//End Close Panel1_BeforeShow

//DEL  		
//DEL  

//Report1_ds_BeforeExecuteSelect @48-BE5EDA92
function Report1_ds_BeforeExecuteSelect(& $sender)
{
    $Report1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_ds_BeforeExecuteSelect

//Custom Code @70-2A29BDB7
  	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

  	 if ($Component->ds->Where != "") 
  	     $Component->ds->Where .= " AND ";
	
	$Component->ds->Where .=  " ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "")
		$Component->ds->Where .=  " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Component->ds->Where .= " and  ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;  

  	$Component->ds->Where .= " GROUP BY tkt_receipt_type " ;


  	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
  	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
  	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	

//End Custom Code

//Close Report1_ds_BeforeExecuteSelect @48-14BF4803
    return $Report1_ds_BeforeExecuteSelect;
}
//End Close Report1_ds_BeforeExecuteSelect

//Report2_ds_BeforeExecuteSelect @77-A3FEEEB8
function Report2_ds_BeforeExecuteSelect(& $sender)
{
    $Report2_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report2; //Compatibility
//End Report2_ds_BeforeExecuteSelect

//Custom Code @91-2A29BDB7
  	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

  	 if ($Component->ds->Where != "") 
  	     $Component->ds->Where .= " AND ";
	
	$Component->ds->Where .= " ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "")
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;  

  	$Component->ds->Where .= " group by ssf_tkt_trx_tender.tkt_tender_id" ;
  	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
  	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
  	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	

//End Custom Code

//Close Report2_ds_BeforeExecuteSelect @77-E6E8A5FB
    return $Report2_ds_BeforeExecuteSelect;
}
//End Close Report2_ds_BeforeExecuteSelect

//Report6_qty_diff_BeforeShow @153-B67F80ED
function Report6_qty_diff_BeforeShow(& $sender)
{
    $Report6_qty_diff_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_qty_diff_BeforeShow

//Custom Code @218-2A29BDB7
global $Tpl ;
if (abs($Component->GetValue()) > 0.5 ) 
	$Tpl->setvar("difcolor","style=\"BACKGROUND-COLOR: efeff9; TEXT-ALIGN: right;color: ff0000\"" ) ;
else
	$Tpl->setvar("difcolor","style=\"BACKGROUND-COLOR: efeff9; TEXT-ALIGN: right\;color: 000000\"" ) ;
//End Custom Code

//Close Report6_qty_diff_BeforeShow @153-A2F102ED
    return $Report6_qty_diff_BeforeShow;
}
//End Close Report6_qty_diff_BeforeShow

//Report6_TotalSum_total_amount_diff_BeforeShow @159-A0F39E12
function Report6_TotalSum_total_amount_diff_BeforeShow(& $sender)
{
    $Report6_TotalSum_total_amount_diff_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_TotalSum_total_amount_diff_BeforeShow

//Custom Code @219-2A29BDB7
global $Tpl ;
if (abs($Component->GetValue()) > 0.5 ) 
	$Tpl->setvar("diftotalcolor","style=\"TEXT-ALIGN: right;color: ff0000\"" ) ;
else
	$Tpl->setvar("diftotalcolor","style=\"TEXT-ALIGN: right;color: 000000\"" ) ;

//End Custom Code

//Close Report6_TotalSum_total_amount_diff_BeforeShow @159-AB499A9F
    return $Report6_TotalSum_total_amount_diff_BeforeShow;
}
//End Close Report6_TotalSum_total_amount_diff_BeforeShow

//Report6_lnkperiod_sales1_BeforeShow @167-46EF752D
function Report6_lnkperiod_sales1_BeforeShow(& $sender)
{
    $Report6_lnkperiod_sales1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_lnkperiod_sales1_BeforeShow

//Custom Code @168-2A29BDB7
	global $s_date_from ;
	global $s_date_to ;
	global $s_time_from ;
	global $s_time_to ;
	$Component->SetLink($Component->GetLink()."?s_date_from=".$s_date_from."&s_date_to=".$s_date_to."&s_time_from=".$s_time_from."&s_time_to=".$s_time_to."&s_plu_type=F") ;

//End Custom Code

//Close Report6_lnkperiod_sales1_BeforeShow @167-366805DE
    return $Report6_lnkperiod_sales1_BeforeShow;
}
//End Close Report6_lnkperiod_sales1_BeforeShow

//Report6_lnkperiod_pump1_BeforeShow @169-1E2A9238
function Report6_lnkperiod_pump1_BeforeShow(& $sender)
{
    $Report6_lnkperiod_pump1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_lnkperiod_pump1_BeforeShow

//Custom Code @170-2A29BDB7
		global $s_date_from ;
		global $s_date_to ;
		global $s_time_from ;
		global $s_time_to ;
		$Component->SetLink($Component->GetLink()."?s_date_from=".$s_date_from."&s_time_from=".$s_time_from."&s_date_to=".$s_date_to."&s_time_to=".$s_time_to ) ;

//End Custom Code

//Close Report6_lnkperiod_pump1_BeforeShow @169-10B5D098
    return $Report6_lnkperiod_pump1_BeforeShow;
}
//End Close Report6_lnkperiod_pump1_BeforeShow

//Report6_ds_BeforeExecuteSelect @143-8E7EA120
function Report6_ds_BeforeExecuteSelect(& $sender)
{
    $Report6_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_ds_BeforeExecuteSelect

//Custom Code @162-2A29BDB7
  	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

 
  	
  	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
  	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
  	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	

	$Wherecriteria_1 .= " where ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "" )
		$Wherecriteria_1 .= " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Wherecriteria_1 .= " and ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;
  	$Wherecriteria_1 .= " group by ssf_tkt_trx_detail.tkt_plu_id,ssf_tkt_plu.tkt_plu_long_desc " ;

	$Wherecriteria_2 = " where ssf_pump_sales.end_date ". ReplaceSqlConcat("SQLConcat")." ssf_pump_sales.end_time >= '".$min_date."'" ;
	if ($max_date != "" )
		$Wherecriteria_2 .= " and ssf_pump_sales.end_date ". ReplaceSqlConcat("SQLConcat")." ssf_pump_sales.end_time <= '".$max_date."'" ;
  	$Wherecriteria_2 .= " group by ssf_tkt_plu.tkt_plu_id,ssf_tkt_plu.tkt_plu_long_desc " ;

	$Component->DataSource->SQL = str_replace("WHERECRITERIA_1",$Wherecriteria_1,$Component->DataSource->SQL) ;
	$Component->DataSource->SQL = str_replace("WHERECRITERIA_2",$Wherecriteria_2,$Component->DataSource->SQL) ;

	$Component->DataSource->CountSQL = str_replace("WHERECRITERIA_1",$Wherecriteria_1,$Component->DataSource->SQL) ;
	$Component->DataSource->CountSQL = str_replace("WHERECRITERIA_2",$Wherecriteria_2,$Component->DataSource->SQL) ;

//End Custom Code

//Close Report6_ds_BeforeExecuteSelect @143-CC7C3325
    return $Report6_ds_BeforeExecuteSelect;
}
//End Close Report6_ds_BeforeExecuteSelect

//Report6_BeforeShow @143-CC556353
function Report6_BeforeShow(& $sender)
{
    $Report6_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report6; //Compatibility
//End Report6_BeforeShow

//Custom Code @176-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) {
		$Report6->lnkperiod_pump1->Visible = false ;
		$Report6->lnkperiod_sales1->Visible = false ;
	}
//End Custom Code

//Close Report6_BeforeShow @143-08FFFE9D
    return $Report6_BeforeShow;
}
//End Close Report6_BeforeShow

//Report3_ds_BeforeExecuteSelect @179-A89EFD5E
function Report3_ds_BeforeExecuteSelect(& $sender)
{
    $Report3_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report3; //Compatibility
//End Report3_ds_BeforeExecuteSelect

//Custom Code @194-2A29BDB7
	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

	 if ($Component->ds->Where != "") 
	     $Component->ds->Where .= " AND ";
	
	$Component->ds->Where .= " ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "")
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;  

	$Component->ds->Where .= " group by ssf_tkt_trx_header.tkt_attendant_id,ssf_tkt_trx_tender.tkt_tender_id " ;
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	

//End Custom Code

//Close Report3_ds_BeforeExecuteSelect @179-01F5036C
    return $Report3_ds_BeforeExecuteSelect;
}
//End Close Report3_ds_BeforeExecuteSelect

//Report4_ds_BeforeExecuteSelect @196-98BE86EC
function Report4_ds_BeforeExecuteSelect(& $sender)
{
    $Report4_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report4; //Compatibility
//End Report4_ds_BeforeExecuteSelect

//Custom Code @214-2A29BDB7
	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

	 if ($Component->ds->Where != "") 
	     $Component->ds->Where .= " AND ";
	
	$Component->ds->Where .= " ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "")
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Component->ds->Where .= " and ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;  

	$Component->ds->Where .= " group by ssf_tkt_trx_header.tkt_pos_id,ssf_tkt_trx_tender.tkt_tender_id " ;
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	

//End Custom Code

//Close Report4_ds_BeforeExecuteSelect @196-D936784A
    return $Report4_ds_BeforeExecuteSelect;
}
//End Close Report4_ds_BeforeExecuteSelect

//Pump_Group_pump_group_name_BeforeShow @262-966D1C48
function Pump_Group_pump_group_name_BeforeShow(& $sender)
{
    $Pump_Group_pump_group_name_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Pump_Group; //Compatibility
//End Pump_Group_pump_group_name_BeforeShow

//Custom Code @287-2A29BDB7
global $CCSLocales ;
if ( $Component->GetValue() == "" )
	$Component->SetValue($CCSLocales->GetText("ssf_not_assigned")) ;
//End Custom Code

//Close Pump_Group_pump_group_name_BeforeShow @262-7391DD1C
    return $Pump_Group_pump_group_name_BeforeShow;
}
//End Close Pump_Group_pump_group_name_BeforeShow

//DEL  

//Pump_Group_sub_pump_group_name_BeforeShow @286-1B97981B
function Pump_Group_sub_pump_group_name_BeforeShow(& $sender)
{
    $Pump_Group_sub_pump_group_name_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Pump_Group; //Compatibility
//End Pump_Group_sub_pump_group_name_BeforeShow

//Custom Code @288-2A29BDB7
global $CCSLocales ;
if ( $Component->GetValue() == "" )
	$Component->SetValue($CCSLocales->GetText("ssf_not_assigned")) ;

//End Custom Code

//Close Pump_Group_sub_pump_group_name_BeforeShow @286-CD9FE13A
    return $Pump_Group_sub_pump_group_name_BeforeShow;
}
//End Close Pump_Group_sub_pump_group_name_BeforeShow

//Pump_Group_ds_BeforeExecuteSelect @223-61ACE366
function Pump_Group_ds_BeforeExecuteSelect(& $sender)
{
    $Pump_Group_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Pump_Group; //Compatibility
//End Pump_Group_ds_BeforeExecuteSelect

//Custom Code @271-2A29BDB7
  	
	global $min_date ;
	global $max_date ;
	$period_group = CCGetParam("tkt_period_group") ;
	$period_type = CCGetParam("tkt_period_type","S") ;

 	
  	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
  	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
  	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	


	$Wherecriteria_1 .= " where ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time >= '".$min_date."'" ;
	if ($max_date != "" )
		$Wherecriteria_1 .= " and ssf_tkt_trx_header.tkt_date ". ReplaceSqlConcat("SQLConcat")." ssf_tkt_trx_header.tkt_time <= '".$max_date."'" ;
	if ($period_type == "S" ) 
		$Wherecriteria_1 .= " and ssf_tkt_trx_header.tkt_period_group ='".$period_group."'"  ;
  	$Wherecriteria_1 .= " GROUP BY ssf_pump_group_details.pump_group_id, pump_group_name, ssf_pump_sales.pump_id, tkt_plu_id " ;

	$Wherecriteria_2 = " where ssf_pump_sales.end_date ". ReplaceSqlConcat("SQLConcat")." ssf_pump_sales.end_time >= '".$min_date."'" ;
	if ($max_date != "" )
		$Wherecriteria_2 .= " and ssf_pump_sales.end_date ". ReplaceSqlConcat("SQLConcat")." ssf_pump_sales.end_time <= '".$max_date."'" ;

  	$Wherecriteria_2 .= " group by ssf_pump_group_details.pump_group_id, pump_group_name, ssf_pump_sales.pump_id, ssf_tkt_plu.tkt_plu_id " ;


	$Component->DataSource->SQL = str_replace("WHERECRITERIA_1",$Wherecriteria_1,$Component->DataSource->SQL) ;
	$Component->DataSource->SQL = str_replace("WHERECRITERIA_2",$Wherecriteria_2,$Component->DataSource->SQL) ;

	$Component->DataSource->CountSQL = str_replace("WHERECRITERIA_1",$Wherecriteria_1,$Component->DataSource->SQL) ;
	$Component->DataSource->CountSQL = str_replace("WHERECRITERIA_2",$Wherecriteria_2,$Component->DataSource->SQL) ;

//End Custom Code

//Close Pump_Group_ds_BeforeExecuteSelect @223-A8F5AABC
    return $Pump_Group_ds_BeforeExecuteSelect;
}
//End Close Pump_Group_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-4EDD5AD1
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketPeriodDetail; //Compatibility
//End Page_AfterInitialize

//Custom Code @75-2A29BDB7
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

//Page_BeforeShow @1-D3D6B9E4
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketPeriodDetail; //Compatibility
//End Page_BeforeShow

//Custom Code @178-2A29BDB7
global $Report1 ;
global $Report2 ;
global $Report3 ;
global $Report4 ;
global $Report6 ;
global $Pump_Group ;

	$Report1->Visible = false ;
	$Report2->Visible = false ;
	$Report3->Visible = false ;
	$Report4->Visible = false ;
	$Report6->Visible = false ;
	$Pump_Group->Visible = false ;

	if (CCGetParam("s_rep_option","1") == "1" ) {
		$Report1->Visible = true ;
		$Report2->Visible = true ;
	}
	if (CCGetParam("s_rep_option") == "2" )
		$Report4->Visible = true ;
	if (CCGetParam("s_rep_option") == "3" )
		$Report3->Visible = true ;
	if (CCGetParam("s_rep_option") == "4" )
		$Report6->Visible = true ;
	if (CCGetParam("s_rep_option") == "5" )
		$Pump_Group->Visible = true ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

?>
