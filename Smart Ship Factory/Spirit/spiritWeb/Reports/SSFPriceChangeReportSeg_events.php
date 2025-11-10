<?php
//BindEvents Method @1-B14892B9
function BindEvents()
{
    global $ssf_addin_prices_change_s;
    global $Report_Print;
    global $btnPrint;
    global $ViewMode;
    global $CCSEvents;
    $ssf_addin_prices_change_s->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_s_BeforeShow";
    $Report_Print->CCSEvents["BeforeShow"] = "Report_Print_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $btnPrint->CCSEvents["OnClick"] = "btnPrint_OnClick";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_prices_change_s_BeforeShow @14-99E77D50
function ssf_addin_prices_change_s_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_s_BeforeShow = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $ssf_addin_prices_change_s; //Compatibility
//End ssf_addin_prices_change_s_BeforeShow

//Hide-Show Component @22-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_addin_prices_change_s_BeforeShow @14-0225B0AC
    return $ssf_addin_prices_change_s_BeforeShow;
}
//End Close ssf_addin_prices_change_s_BeforeShow

//Report_Print_BeforeShow @19-D94C505B
function Report_Print_BeforeShow(& $sender)
{
    $Report_Print_BeforeShow = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $Report_Print; //Compatibility
//End Report_Print_BeforeShow

//Hide-Show Component @21-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close Report_Print_BeforeShow @19-0DD1CC60
    return $Report_Print_BeforeShow;
}
//End Close Report_Print_BeforeShow

//btnPrint_BeforeShow @55-683C941B
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @62-2A29BDB7
	//$Component->Visible = false;
		CCAddParam("All","ViewMode","Print") ;
//End Custom Code

//Close btnPrint_BeforeShow @55-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//btnPrint_OnClick @55-D568B203
function btnPrint_OnClick(& $sender)
{
    $btnPrint_OnClick = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_OnClick

//Custom Code @70-2A29BDB7
	CCAddParam("All","ViewMode","Print") ;
//End Custom Code

//Close btnPrint_OnClick @55-8B90C456
    return $btnPrint_OnClick;
}
//End Close btnPrint_OnClick

//ViewMode_BeforeShow @72-ADF13F78
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @73-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @72-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//DEL  $Component->SetValue("Print") ;

//Page_BeforeShow @1-D2A0E133
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $SSFPriceChangeReportSeg; //Compatibility
//End Page_BeforeShow

//Custom Code @68-2A29BDB7
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_AfterInitialize @1-848E2EF3
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $SSFPriceChangeReportSeg; //Compatibility
//End Page_AfterInitialize

//Custom Code @74-2A29BDB7
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

//DEL  	$Component->SetValue("Print") ;


//DEL  	$Component->SetValue("Print") ;



?>
