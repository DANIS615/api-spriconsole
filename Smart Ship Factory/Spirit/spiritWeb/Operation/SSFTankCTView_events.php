<?php
//BindEvents Method @1-F9677710
function BindEvents()
{
    global $ssf_tank_conversion_tableSearch;
    global $ssf_tank_conversion_table1;
    $ssf_tank_conversion_tableSearch->CCSEvents["BeforeShow"] = "ssf_tank_conversion_tableSearch_BeforeShow";
    $ssf_tank_conversion_table1->CCSEvents["BeforeShow"] = "ssf_tank_conversion_table1_BeforeShow";
}
//End BindEvents Method

//ssf_tank_conversion_tableSearch_BeforeShow @17-31580188
function ssf_tank_conversion_tableSearch_BeforeShow(& $sender)
{
    $ssf_tank_conversion_tableSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_tableSearch; //Compatibility
//End ssf_tank_conversion_tableSearch_BeforeShow

//Custom Code @28-2A29BDB7
if (CCGetParam("tank_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_tank_conversion_tableSearch_BeforeShow @17-E08CC0F6
    return $ssf_tank_conversion_tableSearch_BeforeShow;
}
//End Close ssf_tank_conversion_tableSearch_BeforeShow

//ssf_tank_conversion_table1_BeforeShow @12-EF85DE13
function ssf_tank_conversion_table1_BeforeShow(& $sender)
{
    $ssf_tank_conversion_table1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_table1; //Compatibility
//End ssf_tank_conversion_table1_BeforeShow

//Custom Code @29-2A29BDB7
if (CCGetParam("tank_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_tank_conversion_table1_BeforeShow @12-1D0C8ABC
    return $ssf_tank_conversion_table1_BeforeShow;
}
//End Close ssf_tank_conversion_table1_BeforeShow


?>
