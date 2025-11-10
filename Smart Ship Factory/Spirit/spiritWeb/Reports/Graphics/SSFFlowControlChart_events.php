<?php
//BindEvents Method @1-903A57D1
function BindEvents()
{
    global $Label1;
    global $ssf_addin_flow_control_da;
    global $chartdetail;
    global $chartdetail_product;
    global $CCSEvents;
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $ssf_addin_flow_control_da->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect";
    $chartdetail->imgChartDetail->CCSEvents["BeforeShow"] = "chartdetail_imgChartDetail_BeforeShow";
    $chartdetail->EmptyRow->CCSEvents["BeforeShow"] = "chartdetail_EmptyRow_BeforeShow";
    $chartdetail->CCSEvents["BeforeShowRow"] = "chartdetail_BeforeShowRow";
    $chartdetail->ds->CCSEvents["BeforeBuildSelect"] = "chartdetail_ds_BeforeBuildSelect";
    $chartdetail_product->imgChartDetail_product->CCSEvents["BeforeShow"] = "chartdetail_product_imgChartDetail_product_BeforeShow";
    $chartdetail_product->EmptyRow->CCSEvents["BeforeShow"] = "chartdetail_product_EmptyRow_BeforeShow";
    $chartdetail_product->CCSEvents["BeforeShowRow"] = "chartdetail_product_BeforeShowRow";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//Label1_BeforeShow @13-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @14-2A29BDB7
	//$Component->SetValue($_COOKIE["SPIRITWEB"]) ;
	$Component->Visible = false ;
//End Custom Code

//Close Label1_BeforeShow @13-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect @8-961F9013
function ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_flow_control_da; //Compatibility
//End ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect

//Custom Code @43-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("id","'99'") ;
//End Custom Code

//Close ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect @8-7ADF36B1
    return $ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_addin_flow_control_da_s_pump_id_ds_BeforeBuildSelect

//chartdetail_imgChartDetail_BeforeShow @23-5708A0E5
function chartdetail_imgChartDetail_BeforeShow(& $sender)
{
    $chartdetail_imgChartDetail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail; //Compatibility
//End chartdetail_imgChartDetail_BeforeShow

//Custom Code @24-2A29BDB7
if (CCGetParam("see_details",0) == 1)
	$chartdetail->imgChartDetail->SetValue("SSFFlowControlChartData.php?s_date_from=".CCGetParam("s_date_from")."&s_date_to=".CCGetParam("s_date_to")."&s_pump_id=".$chartdetail->id->GetValue()."&s_grade_id=".CCGetParam("s_grade_id")."&btnrepoption=".CCGetParam("btnrepoption",1)."&isdetail=1" ) ;
//End Custom Code

//Close chartdetail_imgChartDetail_BeforeShow @23-ED658210
    return $chartdetail_imgChartDetail_BeforeShow;
}
//End Close chartdetail_imgChartDetail_BeforeShow

//chartdetail_EmptyRow_BeforeShow @20-E45A2FD9
function chartdetail_EmptyRow_BeforeShow(& $sender)
{
    $chartdetail_EmptyRow_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail; //Compatibility
//End chartdetail_EmptyRow_BeforeShow

//Custom Code @21-2A29BDB7
global $chartdetail;
global $ColumnCounter;

	$EmptyTDs = "";
	while ($ColumnCounter % 3 <> 0) {
		$EmptyTDs .= "<td>&nbsp;</td>";
		$ColumnCounter++;
	}
	$chartdetail->EmptyRow->SetValue($EmptyTDs);
//End Custom Code

//Close chartdetail_EmptyRow_BeforeShow @20-4A53F6D6
    return $chartdetail_EmptyRow_BeforeShow;
}
//End Close chartdetail_EmptyRow_BeforeShow

//chartdetail_BeforeShowRow @15-780E5A38
function chartdetail_BeforeShowRow(& $sender)
{
    $chartdetail_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail; //Compatibility
//End chartdetail_BeforeShowRow

//Custom Code @22-2A29BDB7
global $chartdetail;
global $ColumnCounter;

	$ColumnCounter++;
	if ($ColumnCounter % 3 == 0) {
	    $chartdetail->RowSeparator->Visible = true;
	} else {
    	$chartdetail->RowSeparator->Visible = false;
	}

//End Custom Code

//Close chartdetail_BeforeShowRow @15-53A3A28C
    return $chartdetail_BeforeShowRow;
}
//End Close chartdetail_BeforeShowRow

//chartdetail_ds_BeforeBuildSelect @15-F8CC75B7
function chartdetail_ds_BeforeBuildSelect(& $sender)
{
    $chartdetail_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail; //Compatibility
//End chartdetail_ds_BeforeBuildSelect

//Custom Code @44-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("a.id","'99'") ;
//End Custom Code

//Close chartdetail_ds_BeforeBuildSelect @15-98CC2ACC
    return $chartdetail_ds_BeforeBuildSelect;
}
//End Close chartdetail_ds_BeforeBuildSelect

//DEL  

//chartdetail_product_imgChartDetail_product_BeforeShow @31-77EC3C73
function chartdetail_product_imgChartDetail_product_BeforeShow(& $sender)
{
    $chartdetail_product_imgChartDetail_product_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail_product; //Compatibility
//End chartdetail_product_imgChartDetail_product_BeforeShow

//Custom Code @32-2A29BDB7
if (CCGetParam("see_details",0) == 1)
	$chartdetail_product->imgChartDetail_product->SetValue("SSFFlowControlChartData.php?s_date_from=".CCGetParam("s_date_from")."&s_date_to=".CCGetParam("s_date_to")."&s_pump_id=".CCGetParam("s_pump_id")."&s_grade_id=".$chartdetail_product->id->GetValue()."&btnrepoption=".CCGetParam("btnrepoption",2)."&isdetail=1" ) ;

//End Custom Code

//Close chartdetail_product_imgChartDetail_product_BeforeShow @31-6DD4A410
    return $chartdetail_product_imgChartDetail_product_BeforeShow;
}
//End Close chartdetail_product_imgChartDetail_product_BeforeShow

//chartdetail_product_EmptyRow_BeforeShow @36-39A50ECD
function chartdetail_product_EmptyRow_BeforeShow(& $sender)
{
    $chartdetail_product_EmptyRow_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail_product; //Compatibility
//End chartdetail_product_EmptyRow_BeforeShow

//Custom Code @37-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close chartdetail_product_EmptyRow_BeforeShow @36-37ADE7F5
    return $chartdetail_product_EmptyRow_BeforeShow;
}
//End Close chartdetail_product_EmptyRow_BeforeShow

//chartdetail_product_BeforeShowRow @30-ABA2A0F5
function chartdetail_product_BeforeShowRow(& $sender)
{
    $chartdetail_product_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $chartdetail_product; //Compatibility
//End chartdetail_product_BeforeShowRow

//Custom Code @39-2A29BDB7
global $ColumnCounter;

	$ColumnCounter++;
	if ($ColumnCounter % 3 == 0) {
	    $chartdetail_product->RowSeparator->Visible = true;
	} else {
    	$chartdetail_product->RowSeparator->Visible = false;
	}
//End Custom Code

//Close chartdetail_product_BeforeShowRow @30-1FC98E2E
    return $chartdetail_product_BeforeShowRow;
}
//End Close chartdetail_product_BeforeShowRow

//DEL  

//Page_BeforeShow @1-71CF202B
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFlowControlChart; //Compatibility
//End Page_BeforeShow

//Custom Code @12-2A29BDB7
global $Tpl;
	$Tpl->setvar("phpdata", "SSFFlowControlChartData.php?s_date_from=".CCGetParam("s_date_from")."&s_date_to=".CCGetParam("s_date_to")."&s_pump_id=".CCGetParam("s_pump_id")."&s_grade_id=".CCGetParam("s_grade_id")."&btnrepoption=".CCGetParam("btnrepoption",1) ) ;

global $chartdetail ;
global $chartdetail_product ;

$chartdetail_product->Visible = false ;
$chartdetail->Visible = false ;

if (CCGetParam("see_details",0) == 1 ) {
	if (CCGetParam("btnrepoption",1) == 1 )
		$chartdetail->Visible = true ;
	else
		$chartdetail_product->Visible = true ;
}

//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

?>
