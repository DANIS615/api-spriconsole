<?php
//BindEvents Method @1-3DF95900
function BindEvents()
{
    global $Button_Duplicate;
    global $ssf_tank_conversion_table1;
    global $CCSEvents;
    $Button_Duplicate->CCSEvents["BeforeShow"] = "Button_Duplicate_BeforeShow";
    $ssf_tank_conversion_table1->lblTank->CCSEvents["BeforeShow"] = "ssf_tank_conversion_table1_lblTank_BeforeShow";
    $ssf_tank_conversion_table1->tank_id->CCSEvents["BeforeShow"] = "ssf_tank_conversion_table1_tank_id_BeforeShow";
    $ssf_tank_conversion_table1->CCSEvents["BeforeShow"] = "ssf_tank_conversion_table1_BeforeShow";
    $ssf_tank_conversion_table1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tank_conversion_table1_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Button_Duplicate_BeforeShow @32-5003DBCA
function Button_Duplicate_BeforeShow(& $sender)
{
    $Button_Duplicate_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button_Duplicate; //Compatibility
//End Button_Duplicate_BeforeShow

//Custom Code @33-2A29BDB7
global $EditisAllowed ;
if (CCGetParam("tank_id") != "" && $EditisAllowed)
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close Button_Duplicate_BeforeShow @32-7714DB44
    return $Button_Duplicate_BeforeShow;
}
//End Close Button_Duplicate_BeforeShow

//ssf_tank_conversion_table1_lblTank_BeforeShow @37-67C0F4C9
function ssf_tank_conversion_table1_lblTank_BeforeShow(& $sender)
{
    $ssf_tank_conversion_table1_lblTank_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_table1; //Compatibility
//End ssf_tank_conversion_table1_lblTank_BeforeShow

//Custom Code @38-2A29BDB7
	$Component->SetValue(CCGetParam("tank_id")) ;
//End Custom Code

//Close ssf_tank_conversion_table1_lblTank_BeforeShow @37-89704577
    return $ssf_tank_conversion_table1_lblTank_BeforeShow;
}
//End Close ssf_tank_conversion_table1_lblTank_BeforeShow

//ssf_tank_conversion_table1_tank_id_BeforeShow @21-D8612E15
function ssf_tank_conversion_table1_tank_id_BeforeShow(& $sender)
{
    $ssf_tank_conversion_table1_tank_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_table1; //Compatibility
//End ssf_tank_conversion_table1_tank_id_BeforeShow

//Custom Code @30-2A29BDB7
	$Component->SetValue(CCGetParam("tank_id")) ;
//End Custom Code

//Close ssf_tank_conversion_table1_tank_id_BeforeShow @21-B190453C
    return $ssf_tank_conversion_table1_tank_id_BeforeShow;
}
//End Close ssf_tank_conversion_table1_tank_id_BeforeShow

//ssf_tank_conversion_table1_BeforeShow @13-EF85DE13
function ssf_tank_conversion_table1_BeforeShow(& $sender)
{
    $ssf_tank_conversion_table1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_table1; //Compatibility
//End ssf_tank_conversion_table1_BeforeShow

//Custom Code @31-2A29BDB7
if (CCGetParam("tank_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;

//End Custom Code

//Close ssf_tank_conversion_table1_BeforeShow @13-1D0C8ABC
    return $ssf_tank_conversion_table1_BeforeShow;
}
//End Close ssf_tank_conversion_table1_BeforeShow

//ssf_tank_conversion_table1_ds_AfterExecuteSelect @13-F3BC1A7C
function ssf_tank_conversion_table1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tank_conversion_table1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tank_conversion_table1; //Compatibility
//End ssf_tank_conversion_table1_ds_AfterExecuteSelect

//Custom Code @36-2A29BDB7
global $EditisAllowed ;
if (!$EditisAllowed) {
	$Component->InsertAllowed = false ;
	$Component->UpdateAllowed = false ;
	$Component->DeleteAllowed = false ;
}
//End Custom Code

//DEL  


//Close ssf_tank_conversion_table1_ds_AfterExecuteSelect @13-A58DA877
    return $ssf_tank_conversion_table1_ds_AfterExecuteSelect;
}
//End Close ssf_tank_conversion_table1_ds_AfterExecuteSelect

//DEL  

//Page_AfterInitialize @1-9D1BB160
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTankConvertTable; //Compatibility
//End Page_AfterInitialize

//Custom Code @35-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_TCT_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_TCT_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

	if(CCGetParam("dup_tank_id") != "" ) 
		DuplicateTCT(CCGetParam("tank_id"),CCGetParam("dup_tank_id")) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function DuplicateTCT($from_tank, $to_tank) {
global $DBConnection1;
	$db = new $DBConnection1 ;
	$sql = " delete from ssf_tank_conversion_table_ref_val where tank_id = ".$to_tank ;
	$db->query($sql) ;

	$sql = " insert into ssf_tank_conversion_table_ref_val select ".$to_tank.",prod_height,prod_volume from ssf_tank_conversion_table_ref_val where tank_id = ".$from_tank ;
	$db->query($sql) ;

	$db->Close () ;
}
?>
