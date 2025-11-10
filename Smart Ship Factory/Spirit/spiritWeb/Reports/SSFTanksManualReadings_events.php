<?php
//BindEvents Method @1-ADF734C7
function BindEvents()
{
    global $ssf_tank_manual_readingsSearch;
    global $Button1;
    global $ViewMode;
    global $Link1;
    global $CCSEvents;
    $ssf_tank_manual_readingsSearch->CCSEvents["BeforeShow"] = "ssf_tank_manual_readingsSearch_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Link1->CCSEvents["BeforeShow"] = "Link1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tank_manual_readingsSearch_BeforeShow @17-FA7D19CB
function ssf_tank_manual_readingsSearch_BeforeShow(& $sender)
{
    $ssf_tank_manual_readingsSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_manual_readingsSearch; //Compatibility
//End ssf_tank_manual_readingsSearch_BeforeShow

//Hide-Show Component @24-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tank_manual_readingsSearch_BeforeShow @17-C9C19E9B
    return $ssf_tank_manual_readingsSearch_BeforeShow;
}
//End Close ssf_tank_manual_readingsSearch_BeforeShow

//Button1_BeforeShow @68-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @71-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @68-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @69-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @70-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @69-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//Link1_BeforeShow @73-73B4F52C
function Link1_BeforeShow(& $sender)
{
    $Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Link1; //Compatibility
//End Link1_BeforeShow

//Custom Code @77-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Link1_BeforeShow @73-368844F2
    return $Link1_BeforeShow;
}
//End Close Link1_BeforeShow

//Page_AfterInitialize @1-42039D22
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTanksManualReadings; //Compatibility
//End Page_AfterInitialize

//Custom Code @72-2A29BDB7
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
