<?php
//BindEvents Method @1-1DCC56DE
function BindEvents()
{
    global $p_type;
    $p_type->CCSEvents["BeforeShow"] = "p_type_BeforeShow";
}
//End BindEvents Method

//p_type_BeforeShow @9-C8A09008
function p_type_BeforeShow(& $sender)
{
    $p_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $p_type; //Compatibility
//End p_type_BeforeShow

//Custom Code @10-2A29BDB7
// -------------------------
    // Write your own code here.
	$p_type->Value = CCGetParam("p_type");
// -------------------------
//End Custom Code

//Close p_type_BeforeShow @9-C51AE382
    return $p_type_BeforeShow;
}
//End Close p_type_BeforeShow


?>
