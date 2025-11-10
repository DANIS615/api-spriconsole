<?php
//BindEvents Method @1-A3CAA41D
function BindEvents()
{
    global $ssf_pump_salesSearch;
    global $Image1;
    $ssf_pump_salesSearch->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect";
    $ssf_pump_salesSearch->Label1->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_Label1_BeforeShow";
    $ssf_pump_salesSearch->CCSEvents["BeforeShow"] = "ssf_pump_salesSearch_BeforeShow";
    $Image1->CCSEvents["BeforeShow"] = "Image1_BeforeShow";
}
//End BindEvents Method

//ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @10-85B4C078
function ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect

//Custom Code @22-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("id","'99'") ;
//End Custom Code

//Close ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect @10-41A4844B
    return $ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_pump_salesSearch_s_pump_id_ds_BeforeBuildSelect

//ssf_pump_salesSearch_Label1_BeforeShow @13-7D03B95C
function ssf_pump_salesSearch_Label1_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_Label1_BeforeShow

//Custom Code @14-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close ssf_pump_salesSearch_Label1_BeforeShow @13-5F0062D0
    return $ssf_pump_salesSearch_Label1_BeforeShow;
}
//End Close ssf_pump_salesSearch_Label1_BeforeShow

//ssf_pump_salesSearch_BeforeShow @3-FF8423C0
function ssf_pump_salesSearch_BeforeShow(& $sender)
{
    $ssf_pump_salesSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_salesSearch; //Compatibility
//End ssf_pump_salesSearch_BeforeShow

//Hide-Show Component @17-286F3E6C
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_pump_salesSearch_BeforeShow @3-DCE80D86
    return $ssf_pump_salesSearch_BeforeShow;
}
//End Close ssf_pump_salesSearch_BeforeShow

//Image1_BeforeShow @18-BCE9B184
function Image1_BeforeShow(& $sender)
{
    $Image1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Image1; //Compatibility
//End Image1_BeforeShow

//Custom Code @19-2A29BDB7
	$Component->SetValue("SSFTrxChartData.php?s_date_to=".CCGetParam("s_date_to")."&s_date_from=".CCGetParam("s_date_from")."&s_time_from=".CCGetParam("s_time_from")."&s_time_to=".CCGetParam("s_time_to")."&s_pump_id=".CCGetParam("s_pump_id")."&s_unit_option=".CCGetParam("btnUintOption",1)."&s_unit_id=".CCGetParam("s_unit_id"))  ;
//End Custom Code

//Close Image1_BeforeShow @18-34B6646C
    return $Image1_BeforeShow;
}
//End Close Image1_BeforeShow


?>
