<?php
//BindEvents Method @1-F4B2CD09
function BindEvents()
{
    global $ssf_pump_sales;
    global $btnPrint;
    global $ViewMode;
    global $Report1;
    global $ssf_pump_sales1;
    global $CCSEvents;
    $ssf_pump_sales->CCSEvents["BeforeShow"] = "ssf_pump_sales_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Report1->end_date->CCSEvents["BeforeShow"] = "Report1_end_date_BeforeShow";
    $Report1->end_time->CCSEvents["BeforeShow"] = "Report1_end_time_BeforeShow";
    $Report1->ds->CCSEvents["BeforeBuildSelect"] = "Report1_ds_BeforeBuildSelect";
    $Report1->CCSEvents["BeforeShow"] = "Report1_BeforeShow";
    $Report1->ds->CCSEvents["BeforeExecuteSelect"] = "Report1_ds_BeforeExecuteSelect";
    $ssf_pump_sales1->end_date->CCSEvents["BeforeShow"] = "ssf_pump_sales1_end_date_BeforeShow";
    $ssf_pump_sales1->CCSEvents["BeforeShow"] = "ssf_pump_sales1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//DEL  	if (CCGetParam("rbtReportopt") == "" )
//DEL  		$Component->SetValue(1) ;

//ssf_pump_sales_BeforeShow @36-348CFAA0
function ssf_pump_sales_BeforeShow(& $sender)
{
    $ssf_pump_sales_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_BeforeShow

//Custom Code @43-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText) || CCGetParam("rbtReportopt","1") == "2" )
        $Component->Visible = false;
//End Custom Code

//Close ssf_pump_sales_BeforeShow @36-99A21D78
    return $ssf_pump_sales_BeforeShow;
}
//End Close ssf_pump_sales_BeforeShow

//btnPrint_BeforeShow @35-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @44-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close btnPrint_BeforeShow @35-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//ViewMode_BeforeShow @87-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @88-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @87-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//DEL  	$Component->SetValue("Print") ;

//Report1_end_date_BeforeShow @30-DBA7D0F4
function Report1_end_date_BeforeShow(& $sender)
{
    $Report1_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_end_date_BeforeShow

//Custom Code @52-2A29BDB7
	$strActualValue = $Component->getValue();
	$Component->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));

//End Custom Code

//Close Report1_end_date_BeforeShow @30-FD79B870
    return $Report1_end_date_BeforeShow;
}
//End Close Report1_end_date_BeforeShow

//Report1_end_time_BeforeShow @31-687548A1
function Report1_end_time_BeforeShow(& $sender)
{
    $Report1_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_end_time_BeforeShow

//Custom Code @53-2A29BDB7
	$strActualValue = $Component->getValue();
	$Component->setValue($strActualValue.":00:00") ;

//End Custom Code

//Close Report1_end_time_BeforeShow @31-AB2B3662
    return $Report1_end_time_BeforeShow;
}
//End Close Report1_end_time_BeforeShow

//Report1_ds_BeforeBuildSelect @3-82DC98AC
function Report1_ds_BeforeBuildSelect(& $sender)
{
    $Report1_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_ds_BeforeBuildSelect

//Custom Code @34-2A29BDB7
	$Report1->DataSource->Order = "a.end_date desc, substr(a.end_time,1,2) " ;
//End Custom Code

//Close Report1_ds_BeforeBuildSelect @3-916FE336
    return $Report1_ds_BeforeBuildSelect;
}
//End Close Report1_ds_BeforeBuildSelect

//Report1_BeforeShow @3-8434EA22
function Report1_BeforeShow(& $sender)
{
    $Report1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_BeforeShow

//Custom Code @85-2A29BDB7
	if (CCGetParam("rbtReportopt") == "2" )
		$Component->Visible = true ;
	else
		$Component->Visible = false ;

//End Custom Code

//Close Report1_BeforeShow @3-6D32545D
    return $Report1_BeforeShow;
}
//End Close Report1_BeforeShow

//Report1_ds_BeforeExecuteSelect @3-BE5EDA92
function Report1_ds_BeforeExecuteSelect(& $sender)
{
    $Report1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_ds_BeforeExecuteSelect

//Custom Code @133-2A29BDB7
	$Component->DataSource->SQL = "" ;
	$Component->DataSource->SQL = "SELECT min(a.sale_id) as max_sale_id, max(a.sale_id) as min_sale_id, a.end_date, substr(a.end_time,1,2) as end_time,\n" .
        "sum(a.money) as money, sum(a.volume) as volume, count(*) as total_trans\n" .
		" , (Select min(b.sale_id) FROM ssf_pump_sales b where b.end_date = a.end_date ) as min_end_sale_id,\n".
 		" (Select max(c.sale_id) FROM ssf_pump_sales c where c.end_date = a.end_date ) as max_end_sale_id\n".
        "FROM ssf_pump_sales a, config_values b, config_values c\n" .
		"WHERE a.end_date >= '" . CCGetParam("s_date_from") . "'\n" ;
		if ( CCGetParam("s_date_to") != "" )
        	$Component->DataSource->SQL .= "AND a.end_date <= '" . CCGetParam("s_date_to") . "' \n" ;

		$Component->DataSource->SQL .= 	" and b.library = 'grade' and b.groupname = 'general' ".
						" and b.parameter = 'number' and b.param_value = a.grade_id ".
						" and c.library = b.library and c.groupname = b.groupname ".
						" and b.id =  c.id and c.parameter = 'vol_unit_desc' " ;
		if (CCGetParam("s_unit_id") != "" )
        	$Component->DataSource->SQL .= "AND c.param_value = '" . CCGetParam("s_unit_id") . "' \n" ;
        $Component->DataSource->SQL .= "group by  a.end_date, substr(a.end_time,1,2)";

//End Custom Code

//Close Report1_ds_BeforeExecuteSelect @3-14BF4803
    return $Report1_ds_BeforeExecuteSelect;
}
//End Close Report1_ds_BeforeExecuteSelect

//ssf_pump_sales1_end_date_BeforeShow @79-96AAD2A6
function ssf_pump_sales1_end_date_BeforeShow(& $sender)
{
    $ssf_pump_sales1_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales1; //Compatibility
//End ssf_pump_sales1_end_date_BeforeShow

//Custom Code @82-2A29BDB7
	$strActualValue = $Component->getValue();
	$Component->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));

//End Custom Code

//Close ssf_pump_sales1_end_date_BeforeShow @79-EC6BED93
    return $ssf_pump_sales1_end_date_BeforeShow;
}
//End Close ssf_pump_sales1_end_date_BeforeShow

//ssf_pump_sales1_BeforeShow @56-7E6E1AA3
function ssf_pump_sales1_BeforeShow(& $sender)
{
    $ssf_pump_sales1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales1; //Compatibility
//End ssf_pump_sales1_BeforeShow

//Custom Code @86-2A29BDB7
	if (CCGetParam("rbtReportopt") == "1" || CCGetParam("rbtReportopt") == ""  )
		$Component->Visible = true ;
	else
		$Component->Visible = false ;

//End Custom Code

//Close ssf_pump_sales1_BeforeShow @56-69131FFB
    return $ssf_pump_sales1_BeforeShow;
}
//End Close ssf_pump_sales1_BeforeShow

//Page_AfterInitialize @1-4578C0B0
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxGroupByDate; //Compatibility
//End Page_AfterInitialize

//Custom Code @45-2A29BDB7
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

//Page_BeforeShow @1-839A6C76
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxGroupByDate; //Compatibility
//End Page_BeforeShow

//Custom Code @89-2A29BDB7
global $Report1 ;
global $ssf_pump_sales1 ;

	if (CCGetParam("rbtReportopt","1") == "1" )
		$Report1->Visible = false ;
	else
		$ssf_pump_sales1->Visible = false ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//DEL  



?>
