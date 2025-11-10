<?php
//BindEvents Method @1-844EB848
function BindEvents()
{
    global $ssf_pump_sales;
    global $Label1;
    global $btnPrint;
    global $ViewMode;
    global $Report1;
    global $rptByGrade;
    global $rptByPumpGrade;
    global $CCSEvents;
    $ssf_pump_sales->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect";
    $ssf_pump_sales->s_unit_id->CCSEvents["BeforeShow"] = "ssf_pump_sales_s_unit_id_BeforeShow";
    $ssf_pump_sales->CCSEvents["BeforeShow"] = "ssf_pump_sales_BeforeShow";
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Report1->CCSEvents["BeforeShow"] = "Report1_BeforeShow";
    $Report1->ds->CCSEvents["BeforeExecuteSelect"] = "Report1_ds_BeforeExecuteSelect";
    $rptByGrade->CCSEvents["BeforeShow"] = "rptByGrade_BeforeShow";
    $rptByGrade->ds->CCSEvents["BeforeExecuteSelect"] = "rptByGrade_ds_BeforeExecuteSelect";
    $rptByPumpGrade->CCSEvents["BeforeShow"] = "rptByPumpGrade_BeforeShow";
    $rptByPumpGrade->ds->CCSEvents["BeforeExecuteSelect"] = "rptByPumpGrade_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect @42-857E9C1D
function ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect

//Custom Code @138-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("id","'99'") ;
//End Custom Code

//Close ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect @42-EECDD3A5
    return $ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_pump_sales_s_pump_id_ds_BeforeBuildSelect

//ssf_pump_sales_s_unit_id_BeforeShow @127-A1D4639D
function ssf_pump_sales_s_unit_id_BeforeShow(& $sender)
{
    $ssf_pump_sales_s_unit_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_s_unit_id_BeforeShow

//Custom Code @128-2A29BDB7
/*global $DBConnection1 ;
	if (CCGetParam("s_unit_id") == "" ) {
      $default_value = CCDLookUp("default_value", "config_param", " module='Grade' AND type='grade' AND subgroup='general' AND name='vol_unit_desc' ", $DBConnection1);
		  $Component->SetValue($default_value) ;
	}*/
//End Custom Code

//Close ssf_pump_sales_s_unit_id_BeforeShow @127-47C0841F
    return $ssf_pump_sales_s_unit_id_BeforeShow;
}
//End Close ssf_pump_sales_s_unit_id_BeforeShow

//ssf_pump_sales_BeforeShow @38-348CFAA0
function ssf_pump_sales_BeforeShow(& $sender)
{
    $ssf_pump_sales_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_sales; //Compatibility
//End ssf_pump_sales_BeforeShow

//Custom Code @51-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close ssf_pump_sales_BeforeShow @38-99A21D78
    return $ssf_pump_sales_BeforeShow;
}
//End Close ssf_pump_sales_BeforeShow

//DEL    global $CCSLocales ;
//DEL   	$Component->SetValue($CCSLocales->GetText("ssf_reportpumphour_note")) ;

//DEL    global $CCSLocales ;
//DEL   	$Component->SetValue($CCSLocales->GetText("ssf_reportpumphour_note")) ; 

//Label1_BeforeShow @136-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @137-2A29BDB7

  global $CCSLocales ;
 	$Component->SetValue($CCSLocales->GetText("ssf_reportpumphour_note")) ; 
    
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) 
        $Component->Visible = false;

//End Custom Code

//Close Label1_BeforeShow @136-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//btnPrint_BeforeShow @47-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @48-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close btnPrint_BeforeShow @47-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//ViewMode_BeforeShow @49-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @50-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @49-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//Report1_BeforeShow @3-8434EA22
function Report1_BeforeShow(& $sender)
{
    $Report1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_BeforeShow

//Custom Code @56-2A29BDB7
	if (CCGetParam("rbnGroupOption") == "1" || CCGetParam("rbnGroupOption") == "")
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

//Custom Code @139-2A29BDB7
	$Component->DataSource->SQL = ReplaceSQLSubstr($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSQLSubstr($Component->DataSource->CountSQL) ;	
	$Component->DataSource->Order = ReplaceSQLSubstr($Component->DataSource->Order) ;	
//End Custom Code

//Close Report1_ds_BeforeExecuteSelect @3-14BF4803
    return $Report1_ds_BeforeExecuteSelect;
}
//End Close Report1_ds_BeforeExecuteSelect

//rptByGrade_BeforeShow @58-8CD3C191
function rptByGrade_BeforeShow(& $sender)
{
    $rptByGrade_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $rptByGrade; //Compatibility
//End rptByGrade_BeforeShow

//Custom Code @84-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close rptByGrade_BeforeShow @58-24A76CC8
    return $rptByGrade_BeforeShow;
}
//End Close rptByGrade_BeforeShow

//rptByGrade_ds_BeforeExecuteSelect @58-3F4B94D8
function rptByGrade_ds_BeforeExecuteSelect(& $sender)
{
    $rptByGrade_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $rptByGrade; //Compatibility
//End rptByGrade_ds_BeforeExecuteSelect

//Custom Code @140-2A29BDB7
	$Component->DataSource->SQL = ReplaceSQLSubstr($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSQLSubstr($Component->DataSource->CountSQL) ;	
	$Component->DataSource->Order = ReplaceSQLSubstr($Component->DataSource->Order) ;
//End Custom Code

//Close rptByGrade_ds_BeforeExecuteSelect @58-27D9E1A7
    return $rptByGrade_ds_BeforeExecuteSelect;
}
//End Close rptByGrade_ds_BeforeExecuteSelect

//rptByPumpGrade_BeforeShow @92-2390096E
function rptByPumpGrade_BeforeShow(& $sender)
{
    $rptByPumpGrade_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $rptByPumpGrade; //Compatibility
//End rptByPumpGrade_BeforeShow

//Custom Code @118-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close rptByPumpGrade_BeforeShow @92-9F4CD78C
    return $rptByPumpGrade_BeforeShow;
}
//End Close rptByPumpGrade_BeforeShow

//rptByPumpGrade_ds_BeforeExecuteSelect @92-B803DFF0
function rptByPumpGrade_ds_BeforeExecuteSelect(& $sender)
{
    $rptByPumpGrade_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $rptByPumpGrade; //Compatibility
//End rptByPumpGrade_ds_BeforeExecuteSelect

//Custom Code @141-2A29BDB7
	$Component->DataSource->SQL = ReplaceSQLSubstr($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSQLSubstr($Component->DataSource->CountSQL) ;	
	$Component->DataSource->Order = ReplaceSQLSubstr($Component->DataSource->Order) ;
//End Custom Code

//Close rptByPumpGrade_ds_BeforeExecuteSelect @92-6D253C29
    return $rptByPumpGrade_ds_BeforeExecuteSelect;
}
//End Close rptByPumpGrade_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-03B7F9BE
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxGroupByHourPump; //Compatibility
//End Page_AfterInitialize

//Custom Code @52-2A29BDB7
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

//Page_BeforeShow @1-9EBC1A8B
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxGroupByHourPump; //Compatibility
//End Page_BeforeShow

//Custom Code @57-2A29BDB7
global $Report1 ;
global $rptByGrade ;
global $rptByPumpGrade ;

	$Report1->Visible = false ;
	$rptByGrade->Visible = false ;
	$rptByPumpGrade->Visible = false ;
	if (CCGetParam("rbnGroupOption","1") == "1" )
		$Report1->Visible = true ;
	if (CCGetParam("rbnGroupOption") == "2" )
		$rptByGrade->Visible = true ;
	if (CCGetParam("rbnGroupOption") == "3" )
		$rptByPumpGrade->Visible = true ;

  global $MainPage ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText)) {
		$MainPage->Attributes->SetValue("tableborder", "0");
	} else {
		$MainPage->Attributes->SetValue("tableborder", "1");
	}

//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
