<?php
include(RelativePath . "/Reports/jpgraph/FC_Colors.php");
//BindEvents Method @1-1D074B25
function BindEvents()
{
    global $ssf_pump_salesSearch;
    global $Label1;
    global $lblChart;
    global $CCSEvents;
    $ssf_pump_salesSearch->lblTitle->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_lblTitle_BeforeShow";
    $ssf_pump_salesSearch->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect";
    $ssf_pump_salesSearch->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_BeforeShow";
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $lblChart->CCSEvents["BeforeShow"] = "lblChart_BeforeShow";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_pump_salesSearch_lblTitle_BeforeShow @4-B7779450
function ssf_pump_salesSearch_lblTitle_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_lblTitle_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_lblTitle_BeforeShow

//Custom Code @5-2A29BDB7
global $CCSLocales ;
$title = $CCSLocales->GetText("ssf_pump_sales")." " ;
$title .= $CCSLocales->GetText("pump")."/".$CCSLocales->GetText("ssf_time") ;
$Component->SetValue($title) ;
//End Custom Code

//Close ssf_pump_salesSearch_lblTitle_BeforeShow @4-6724D918
    return $ssf_pump_salesSearch_lblTitle_BeforeShow;
}
//End Close ssf_pump_salesSearch_lblTitle_BeforeShow

//ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @10-85B4C078
function ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect

//Custom Code @23-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("id","'99'") ;
//End Custom Code

//Close ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @10-41A4844B
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

//Hide-Show Component @14-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_pump_salesSearch_BeforeShow @3-DCE80D86
    return $ssf_pump_salesSearch_BeforeShow;
}
//End Close ssf_pump_salesSearch_BeforeShow

//Label1_BeforeShow @19-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @20-2A29BDB7
  global $CCSLocales ;
 	$Component->SetValue($CCSLocales->GetText("ssf_reportpumphour_note")) ; 
//End Custom Code

//Close Label1_BeforeShow @19-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//lblChart_BeforeShow @15-56771C02
function lblChart_BeforeShow(& $sender)
{
    $lblChart_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblChart; //Compatibility
//End lblChart_BeforeShow

//Custom Code @16-2A29BDB7


//End Custom Code

//Close lblChart_BeforeShow @15-D9EF0181
    return $lblChart_BeforeShow;
}
//End Close lblChart_BeforeShow

//Page_BeforeShow @1-0B976746
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxChartbyPumpHour; //Compatibility
//End Page_BeforeShow

//Custom Code @17-2A29BDB7
global $Tpl ;
	$Tpl->setvar("phpdata", "SSFTrxChartbyPumpHourData.php?s_date_to=".CCGetParam("s_date_to")."&s_date_from=".CCGetParam("s_date_from")."&s_pump_id=".CCGetParam("s_pump_id")."&s_unit_option=".CCGetParam("btnUintOption",1)."&s_rep_option=".CCGetParam("s_rep_option",1)."&s_scale_option=".CCGetParam("s_scale_option",2)  ) ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_AfterInitialize @1-969C8473
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTrxChartbyPumpHour; //Compatibility
//End Page_AfterInitialize

//Custom Code @18-2A29BDB7

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

?>
