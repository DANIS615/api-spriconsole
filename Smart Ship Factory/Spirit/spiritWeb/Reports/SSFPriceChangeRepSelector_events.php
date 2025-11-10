<?php
//BindEvents Method @1-7FD14B56
function BindEvents()
{
    global $Link1;
    global $Link2;
    $Link1->CCSEvents["BeforeShow"] = "Link1_BeforeShow";
    $Link2->CCSEvents["BeforeShow"] = "Link2_BeforeShow";
}
//End BindEvents Method

//Link1_BeforeShow @3-73B4F52C
function Link1_BeforeShow(& $sender)
{
    $Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Link1; //Compatibility
//End Link1_BeforeShow

//Custom Code @4-2A29BDB7
	$s_date = GetDaysfromNow("15",false) ;
	$e_date = GetDaysfromNow("15") ;
	$Link1->Parameters = CCAddParam($Link1->Parameters, "s_application_date", $s_date);
	$Link1->Parameters = CCAddParam($Link1->Parameters, "e_application_date", $e_date);
//End Custom Code

//Close Link1_BeforeShow @3-368844F2
    return $Link1_BeforeShow;
}
//End Close Link1_BeforeShow

//Link2_BeforeShow @5-F04391AF
function Link2_BeforeShow(& $sender)
{
    $Link2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Link2; //Compatibility
//End Link2_BeforeShow

//Custom Code @6-2A29BDB7
	$s_date = GetDaysfromNow("15",false) ;
	$e_date = GetDaysfromNow("15") ;
	$Link2->Parameters = CCAddParam($Link2->Parameters, "s_application_date", $s_date);
	$Link2->Parameters = CCAddParam($Link2->Parameters, "e_application_date", $e_date);
//End Custom Code

//Close Link2_BeforeShow @5-4AE96129
    return $Link2_BeforeShow;
}
//End Close Link2_BeforeShow

?>
