<?php
//BindEvents Method @1-6F20559E
function BindEvents()
{
    global $ssf_pump_group_header;
    global $ssf_pump_group_header1;
    global $CCSEvents;
    $ssf_pump_group_header->ssf_pump_group_header_Insert->CCSEvents["BeforeShow"] = "ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow";
    $ssf_pump_group_header1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_pump_group_header1_ds_AfterExecuteSelect";
    $ssf_pump_group_header1->CCSEvents["BeforeShow"] = "ssf_pump_group_header1_BeforeShow";
    $ssf_pump_group_header1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_pump_group_header1_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow @8-1550A9CF
function ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow(& $sender)
{
    $ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_header; //Compatibility
//End ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow

//Custom Code @24-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow @8-ADA805B5
    return $ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow;
}
//End Close ssf_pump_group_header_ssf_pump_group_header_Insert_BeforeShow

//ssf_pump_group_header1_ds_AfterExecuteSelect @15-E2987F21
function ssf_pump_group_header1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_pump_group_header1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_header1; //Compatibility
//End ssf_pump_group_header1_ds_AfterExecuteSelect

//Custom Code @25-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_pump_group_header1_ds_AfterExecuteSelect @15-BF11F443
    return $ssf_pump_group_header1_ds_AfterExecuteSelect;
}
//End Close ssf_pump_group_header1_ds_AfterExecuteSelect

//ssf_pump_group_header1_BeforeShow @15-D2F73203
function ssf_pump_group_header1_BeforeShow(& $sender)
{
    $ssf_pump_group_header1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_header1; //Compatibility
//End ssf_pump_group_header1_BeforeShow

//Custom Code @27-2A29BDB7
global $Tpl ;
	if (CCGetParam("pump_group_id") != "" || CCGetParam("ssf_pump_group_header_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("pump_group_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_pump_group_header1_BeforeShow @15-59BB932F
    return $ssf_pump_group_header1_BeforeShow;
}
//End Close ssf_pump_group_header1_BeforeShow

//ssf_pump_group_header1_ds_BeforeExecuteDelete @15-EEF2008E
function ssf_pump_group_header1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_pump_group_header1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_header1; //Compatibility
//End ssf_pump_group_header1_ds_BeforeExecuteDelete

//Custom Code @28-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_pump_group_details" ;
	$where = " pump_group_id = '".$ssf_pump_group_header1->pump_group_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("pump_group_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_pump_group_header1_ds_BeforeExecuteDelete @15-9BC543DD
    return $ssf_pump_group_header1_ds_BeforeExecuteDelete;
}
//End Close ssf_pump_group_header1_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-C298BE21
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPumpGroupHeader; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_PUMP_GROUP_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_PUMP_GROUP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
