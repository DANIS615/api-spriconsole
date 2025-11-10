<?php
//BindEvents Method @1-299567A9
function BindEvents()
{
    global $Button1;
    global $ssf_grade_prices;
    global $CCSEvents;
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ssf_grade_prices->ViewMode->CCSEvents["BeforeShow"] = "ssf_grade_prices_ViewMode_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Button1_BeforeShow @29-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @32-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @29-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ssf_grade_prices_ViewMode_BeforeShow @30-EC23158B
function ssf_grade_prices_ViewMode_BeforeShow(& $sender)
{
    $ssf_grade_prices_ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_grade_prices; //Compatibility
//End ssf_grade_prices_ViewMode_BeforeShow

//Custom Code @31-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ssf_grade_prices_ViewMode_BeforeShow @30-67B3FB3E
    return $ssf_grade_prices_ViewMode_BeforeShow;
}
//End Close ssf_grade_prices_ViewMode_BeforeShow

//Page_AfterInitialize @1-DBB38FD3
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFActualPrices; //Compatibility
//End Page_AfterInitialize

//Custom Code @28-2A29BDB7
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


?>
