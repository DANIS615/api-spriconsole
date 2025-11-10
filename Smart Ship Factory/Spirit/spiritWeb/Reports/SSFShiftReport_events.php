<?php
//BindEvents Method @1-1A831C8B
function BindEvents()
{
    global $ShiftReport_Header;
    global $ShiftReport_ByType;
    global $ShiftReport_ByPayment;
    global $ShiftReport_ByGrade;
    global $ShiftReport_ByPump;
    global $ssf_pump_sales_ssf_pump_g;
    $ShiftReport_Header->period_type->CCSEvents["BeforeShow"] = "ShiftReport_Header_period_type_BeforeShow";
    $ShiftReport_Header->period_start_date->CCSEvents["BeforeShow"] = "ShiftReport_Header_period_start_date_BeforeShow";
    $ShiftReport_Header->period_start_time->CCSEvents["BeforeShow"] = "ShiftReport_Header_period_start_time_BeforeShow";
    $ShiftReport_Header->period_end_date->CCSEvents["BeforeShow"] = "ShiftReport_Header_period_end_date_BeforeShow";
    $ShiftReport_Header->period_end_time->CCSEvents["BeforeShow"] = "ShiftReport_Header_period_end_time_BeforeShow";
    $ShiftReport_Header->lblTotalofTransactions->CCSEvents["BeforeShow"] = "ShiftReport_Header_lblTotalofTransactions_BeforeShow";
    $ShiftReport_ByType->sale_type->CCSEvents["BeforeShow"] = "ShiftReport_ByType_sale_type_BeforeShow";
    $ShiftReport_ByType->ds->CCSEvents["BeforeBuildSelect"] = "ShiftReport_ByType_ds_BeforeBuildSelect";
    $ShiftReport_ByPayment->pay_payment_type->CCSEvents["BeforeShow"] = "ShiftReport_ByPayment_pay_payment_type_BeforeShow";
    $ShiftReport_ByPayment->ds->CCSEvents["BeforeBuildSelect"] = "ShiftReport_ByPayment_ds_BeforeBuildSelect";
    $ShiftReport_ByGrade->grade_id->CCSEvents["BeforeShow"] = "ShiftReport_ByGrade_grade_id_BeforeShow";
    $ShiftReport_ByGrade->ds->CCSEvents["BeforeBuildSelect"] = "ShiftReport_ByGrade_ds_BeforeBuildSelect";
    $ShiftReport_ByPump->hose_id->CCSEvents["BeforeShow"] = "ShiftReport_ByPump_hose_id_BeforeShow";
    $ShiftReport_ByPump->sale_type->CCSEvents["BeforeShow"] = "ShiftReport_ByPump_sale_type_BeforeShow";
    $ShiftReport_ByPump->ds->CCSEvents["BeforeBuildSelect"] = "ShiftReport_ByPump_ds_BeforeBuildSelect";
    $ssf_pump_sales_ssf_pump_g->pump_group_name->CCSEvents["BeforeShow"] = "ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow";
    $ssf_pump_sales_ssf_pump_g->ReportLabel1->CCSEvents["BeforeShow"] = "ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow";
    $ssf_pump_sales_ssf_pump_g->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect";
}
//End BindEvents Method

//ShiftReport_Header_period_type_BeforeShow @168-E6BE9BB3
function ShiftReport_Header_period_type_BeforeShow(& $sender)
{
    $ShiftReport_Header_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_period_type_BeforeShow

//Custom Code @181-2A29BDB7
// -------------------------
    // Write your own code here.
	switch($ShiftReport_Header->period_type->getValue())
	{
	case "S":
		$ShiftReport_Header->period_type->setValue("Turno");
		break;
	case "D":
		$ShiftReport_Header->period_type->setValue("Dia");
		break;
	case "M":
		$ShiftReport_Header->period_type->setValue("Mes");
		break;
	case "Y":
		$ShiftReport_Header->period_type->setValue("Año");
		break;
	}
// -------------------------
//End Custom Code

//Close ShiftReport_Header_period_type_BeforeShow @168-CFD89EEC
    return $ShiftReport_Header_period_type_BeforeShow;
}
//End Close ShiftReport_Header_period_type_BeforeShow

//ShiftReport_Header_period_start_date_BeforeShow @170-9E9476DD
function ShiftReport_Header_period_start_date_BeforeShow(& $sender)
{
    $ShiftReport_Header_period_start_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_period_start_date_BeforeShow

//Custom Code @179-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ShiftReport_Header->period_start_date->getValue();
	$ShiftReport_Header->period_start_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
// -------------------------
//End Custom Code

//Close ShiftReport_Header_period_start_date_BeforeShow @170-CF270ED7
    return $ShiftReport_Header_period_start_date_BeforeShow;
}
//End Close ShiftReport_Header_period_start_date_BeforeShow

//ShiftReport_Header_period_start_time_BeforeShow @171-B0119BCD
function ShiftReport_Header_period_start_time_BeforeShow(& $sender)
{
    $ShiftReport_Header_period_start_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_period_start_time_BeforeShow

//Custom Code @177-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ShiftReport_Header->period_start_time->getValue();
	$ShiftReport_Header->period_start_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
// -------------------------
//End Custom Code

//Close ShiftReport_Header_period_start_time_BeforeShow @171-997580C5
    return $ShiftReport_Header_period_start_time_BeforeShow;
}
//End Close ShiftReport_Header_period_start_time_BeforeShow

//ShiftReport_Header_period_end_date_BeforeShow @172-DBAA68B3
function ShiftReport_Header_period_end_date_BeforeShow(& $sender)
{
    $ShiftReport_Header_period_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_period_end_date_BeforeShow

//Custom Code @180-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ShiftReport_Header->period_end_date->getValue();
	if($strActualValue != "")
		$ShiftReport_Header->period_end_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
// -------------------------
//End Custom Code

//Close ShiftReport_Header_period_end_date_BeforeShow @172-F79506CA
    return $ShiftReport_Header_period_end_date_BeforeShow;
}
//End Close ShiftReport_Header_period_end_date_BeforeShow

//ShiftReport_Header_period_end_time_BeforeShow @173-4B4FFE89
function ShiftReport_Header_period_end_time_BeforeShow(& $sender)
{
    $ShiftReport_Header_period_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_period_end_time_BeforeShow

//Custom Code @178-2A29BDB7
// -------------------------
    // Write your own code here.
	$strActualValue = $ShiftReport_Header->period_end_time->getValue();
	if($strActualValue != "")
		$ShiftReport_Header->period_end_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
// -------------------------
//End Custom Code

//Close ShiftReport_Header_period_end_time_BeforeShow @173-A1C788D8
    return $ShiftReport_Header_period_end_time_BeforeShow;
}
//End Close ShiftReport_Header_period_end_time_BeforeShow

//ShiftReport_Header_lblTotalofTransactions_BeforeShow @193-DC1ED020
function ShiftReport_Header_lblTotalofTransactions_BeforeShow(& $sender)
{
    $ShiftReport_Header_lblTotalofTransactions_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_Header; //Compatibility
//End ShiftReport_Header_lblTotalofTransactions_BeforeShow

//Custom Code @194-2A29BDB7
	$min_sale_id = $ShiftReport_Header->period_start_trans_id->GetValue() ;
	$max_sale_id = $ShiftReport_Header->period_end_trans_id->GetValue() ;

	$db = new clsDBConnection1() ;
	$ssfQuery = " Select count(*) as cuenta from ssf_pump_sales where sale_id >= ".$min_sale_id  ;
	$ssfQuery .= " and (sale_id <= ".$max_sale_id." or ".$max_sale_id." = 0 )" ;
	$db->query($ssfQuery) ;
	$result = $db->next_record();
	if ($result) {
		$Component->SetValue($db->f("cuenta")) ;
	}
	
	$db->Close() ;

//End Custom Code

//Close ShiftReport_Header_lblTotalofTransactions_BeforeShow @193-4DD9FEC6
    return $ShiftReport_Header_lblTotalofTransactions_BeforeShow;
}
//End Close ShiftReport_Header_lblTotalofTransactions_BeforeShow 

//ShiftReport_ByType_sale_type_BeforeShow @81-39C22081
function ShiftReport_ByType_sale_type_BeforeShow(& $sender)
{
    $ShiftReport_ByType_sale_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByType; //Compatibility
//End ShiftReport_ByType_sale_type_BeforeShow

//Custom Code @84-2A29BDB7
// -------------------------
    // Write your own code here.
	switch($ShiftReport_ByType->sale_type->getValue())
	{
	case 0:
		$ShiftReport_ByType->sale_type->setValue("Ventas sin Control");
		break;
	case 1:
		$ShiftReport_ByType->sale_type->setValue("Ventas");
		break;
	case 2:
		$ShiftReport_ByType->sale_type->setValue("Pruebas de Surtidor");
		break;
	}
// -------------------------
//End Custom Code

//Close ShiftReport_ByType_sale_type_BeforeShow @81-9246FA85
    return $ShiftReport_ByType_sale_type_BeforeShow;
}
//End Close ShiftReport_ByType_sale_type_BeforeShow

//ShiftReport_ByType_ds_BeforeBuildSelect @61-54A92009
function ShiftReport_ByType_ds_BeforeBuildSelect(& $sender)
{
    $ShiftReport_ByType_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByType; //Compatibility
//End ShiftReport_ByType_ds_BeforeBuildSelect

//Custom Code @190-2A29BDB7
	$end_sale_id = CCGetParam("p_end_id",0) ;
	if ($Component->DataSource->Where != "" )
		$Component->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$Component->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	
//End Custom Code

//Close ShiftReport_ByType_ds_BeforeBuildSelect @61-0B5B8F44
    return $ShiftReport_ByType_ds_BeforeBuildSelect;
}
//End Close ShiftReport_ByType_ds_BeforeBuildSelect

//ShiftReport_ByPayment_pay_payment_type_BeforeShow @110-292C4050
function ShiftReport_ByPayment_pay_payment_type_BeforeShow(& $sender)
{
    $ShiftReport_ByPayment_pay_payment_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByPayment; //Compatibility
//End ShiftReport_ByPayment_pay_payment_type_BeforeShow

//Custom Code @113-2A29BDB7
// -------------------------
    // Write your own code here.
	if( $ShiftReport_ByPayment->pay_payment_type->getValue() == "" )
	{
		$ShiftReport_ByPayment->pay_payment_type->setValue("IMPAGO");
	}
// -------------------------
//End Custom Code

//Close ShiftReport_ByPayment_pay_payment_type_BeforeShow @110-05BB5F20
    return $ShiftReport_ByPayment_pay_payment_type_BeforeShow;
}
//End Close ShiftReport_ByPayment_pay_payment_type_BeforeShow

//ShiftReport_ByPayment_ds_BeforeBuildSelect @86-5D466FAA
function ShiftReport_ByPayment_ds_BeforeBuildSelect(& $sender)
{
    $ShiftReport_ByPayment_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByPayment; //Compatibility
//End ShiftReport_ByPayment_ds_BeforeBuildSelect

//Custom Code @191-2A29BDB7
	$end_sale_id = CCGetParam("p_end_id",0) ;
	if ($Component->DataSource->Where != "" )
		$Component->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$Component->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	
//End Custom Code

//Close ShiftReport_ByPayment_ds_BeforeBuildSelect @86-BA279D68
    return $ShiftReport_ByPayment_ds_BeforeBuildSelect;
}
//End Close ShiftReport_ByPayment_ds_BeforeBuildSelect

//ShiftReport_ByGrade_grade_id_BeforeShow @58-917E03AB
function ShiftReport_ByGrade_grade_id_BeforeShow(& $sender)
{
    $ShiftReport_ByGrade_grade_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByGrade; //Compatibility
//End ShiftReport_ByGrade_grade_id_BeforeShow

//Custom Code @85-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$ShiftReport_ByGrade->grade_id->setValue(CCDLookUp("id","config_values","library='grade' AND parameter='number' AND param_value='" . $ShiftReport_ByGrade->grade_id->getValue() . "'", $DBConnection1));
// -------------------------
//End Custom Code

//Close ShiftReport_ByGrade_grade_id_BeforeShow @58-34BB0519
    return $ShiftReport_ByGrade_grade_id_BeforeShow;
}
//End Close ShiftReport_ByGrade_grade_id_BeforeShow

//ShiftReport_ByGrade_ds_BeforeBuildSelect @38-86F02794
function ShiftReport_ByGrade_ds_BeforeBuildSelect(& $sender)
{
    $ShiftReport_ByGrade_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByGrade; //Compatibility
//End ShiftReport_ByGrade_ds_BeforeBuildSelect

//Custom Code @192-2A29BDB7
	$end_sale_id = CCGetParam("p_end_id",0) ;
	if ($Component->DataSource->Where != "" )
		$Component->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$Component->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	
//End Custom Code

//Close ShiftReport_ByGrade_ds_BeforeBuildSelect @38-82DE6A24
    return $ShiftReport_ByGrade_ds_BeforeBuildSelect;
}
//End Close ShiftReport_ByGrade_ds_BeforeBuildSelect

//ShiftReport_ByPump_hose_id_BeforeShow @148-0A3B788F
function ShiftReport_ByPump_hose_id_BeforeShow(& $sender)
{
    $ShiftReport_ByPump_hose_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByPump; //Compatibility
//End ShiftReport_ByPump_hose_id_BeforeShow

//Custom Code @153-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$ShiftReport_ByPump->hose_id->setValue("" . $ShiftReport_ByPump->hose_id->getValue(). "-" . CCDLookUp("param_value","config_values","library='pump' AND parameter='grade' AND device_id = 'hose" . $ShiftReport_ByPump->hose_id->getValue() . "' AND id = '" . $ShiftReport_ByPump->pump_id->getValue() . "'", $DBConnection1));
// -------------------------
//End Custom Code

//Close ShiftReport_ByPump_hose_id_BeforeShow @148-A045C518
    return $ShiftReport_ByPump_hose_id_BeforeShow;
}
//End Close ShiftReport_ByPump_hose_id_BeforeShow

//ShiftReport_ByPump_sale_type_BeforeShow @149-50161D41
function ShiftReport_ByPump_sale_type_BeforeShow(& $sender)
{
    $ShiftReport_ByPump_sale_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByPump; //Compatibility
//End ShiftReport_ByPump_sale_type_BeforeShow

//Custom Code @152-2A29BDB7
// -------------------------
    // Write your own code here.
	switch($ShiftReport_ByPump->sale_type->getValue())
	{
	case 0:
		$ShiftReport_ByPump->sale_type->setValue("Ventas SC");
		break;
	case 1:
		$ShiftReport_ByPump->sale_type->setValue("Ventas");
		break;
	case 2:
		$ShiftReport_ByPump->sale_type->setValue("Pruebas de Surtidor");
		break;
	}
// -------------------------
//End Custom Code

//Close ShiftReport_ByPump_sale_type_BeforeShow @149-31D8C0CB
    return $ShiftReport_ByPump_sale_type_BeforeShow;
}
//End Close ShiftReport_ByPump_sale_type_BeforeShow

//ShiftReport_ByPump_ds_BeforeBuildSelect @114-3D7D1DC9
function ShiftReport_ByPump_ds_BeforeBuildSelect(& $sender)
{
    $ShiftReport_ByPump_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ShiftReport_ByPump; //Compatibility
//End ShiftReport_ByPump_ds_BeforeBuildSelect

//Custom Code @189-2A29BDB7
	$end_sale_id = CCGetParam("p_end_id",0) ;
	if ($ShiftReport_ByPump->DataSource->Where != "" )
		$ShiftReport_ByPump->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$ShiftReport_ByPump->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	
//End Custom Code

//Close ShiftReport_ByPump_ds_BeforeBuildSelect @114-A8C5B50A
    return $ShiftReport_ByPump_ds_BeforeBuildSelect;
}
//End Close ShiftReport_ByPump_ds_BeforeBuildSelect

//ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow @257-74A78EE7
function ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow(& $sender)
{
    $ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales_ssf_pump_g; //Compatibility
//End ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow

//Custom Code @258-2A29BDB7
global $CCSLocales ;
if ( $Component->GetValue() == "" )
	$Component->SetValue($CCSLocales->GetText("ssf_not_assigned")) ;
//End Custom Code

//Close ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow @257-A1893C10
    return $ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow;
}
//End Close ssf_pump_sales_ssf_pump_g_pump_group_name_BeforeShow

//DEL  $Component->SetValue($Component->GetValue(). " - ".$ssf_pump_sales_ssf_pump_g->pump_group_name->GetValue() ) ;

//DEL  //

//ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow @256-A91171EA
function ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow(& $sender)
{
    $ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales_ssf_pump_g; //Compatibility
//End ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow

//Custom Code @259-2A29BDB7
global $CCSLocales ;
if ( $Component->GetValue() == "" )
	$Component->SetValue($CCSLocales->GetText("ssf_not_assigned")) ;
//End Custom Code

//Close ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow @256-8ACC6437
    return $ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow;
}
//End Close ssf_pump_sales_ssf_pump_g_ReportLabel1_BeforeShow

//ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect @199-243B3B7F
function ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales_ssf_pump_g; //Compatibility
//End ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect

//Custom Code @252-2A29BDB7
	$end_sale_id = CCGetParam("p_end_id",0) ;
	if ($Component->DataSource->Where != "" )
		$Component->DataSource->Where .= " and (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	else
		$Component->DataSource->Where = " (sale_id <= ".$end_sale_id." or ".$end_sale_id." = 0 ) " ;
	
//End Custom Code

//Close ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect @199-0010A3CA
    return $ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect;
}
//End Close ssf_pump_sales_ssf_pump_g_ds_BeforeBuildSelect




?>
