<?php
//BindEvents Method @1-D51195DF
function BindEvents()
{
    global $period_search;
    $period_search->s_period_type->CCSEvents["BeforeShow"] = "period_search_s_period_type_BeforeShow";
}
//End BindEvents Method

//period_search_s_period_type_BeforeShow @70-DD00D7B1
function period_search_s_period_type_BeforeShow(& $sender)
{
    $period_search_s_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $period_search; //Compatibility
//End period_search_s_period_type_BeforeShow

//Custom Code @71-2A29BDB7
if (CCGetParam("s_period_type") == "" )
	$Component->SetValue("S") ;
else
	$Component->SetValue(CCGetParam("s_period_type")) ;

//End Custom Code

//Close period_search_s_period_type_BeforeShow @70-872856EB
    return $period_search_s_period_type_BeforeShow;
}
//End Close period_search_s_period_type_BeforeShow


?>
