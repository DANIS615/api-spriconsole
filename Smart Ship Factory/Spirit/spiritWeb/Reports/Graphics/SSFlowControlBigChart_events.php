<?php
//BindEvents Method @1-1C86564F
function BindEvents()
{
    global $Image1;
    $Image1->CCSEvents["BeforeShow"] = "Image1_BeforeShow";
}
//End BindEvents Method

//Image1_BeforeShow @2-BCE9B184
function Image1_BeforeShow(& $sender)
{
    $Image1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Image1; //Compatibility
//End Image1_BeforeShow

//Custom Code @3-2A29BDB7
	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_grade_id = CCGetParam("s_grade_id") ;
	$btnrepoption = CCGetParam("btnrepoption",1) ;

	$Component->SetValue("SSFFlowControlChartData.php?s_date_from=".$s_date_from."&s_date_to=".$s_date_to."&s_pump_id=".$s_pump_id."&s_grade_id=".$s_grade_id."&btnrepoption=".$btnrepoption) ;	
//End Custom Code

//Close Image1_BeforeShow @2-34B6646C
    return $Image1_BeforeShow;
}
//End Close Image1_BeforeShow


?>
