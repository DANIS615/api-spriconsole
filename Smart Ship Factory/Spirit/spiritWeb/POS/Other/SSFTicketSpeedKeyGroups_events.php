<?php
//BindEvents Method @1-AE6C9AE9
function BindEvents()
{
    global $SpeedKey;
    global $ssf_tkt_catalog;
    global $CCSEvents;
    $SpeedKey->SpeedKey_Insert->CCSEvents["BeforeShow"] = "SpeedKey_SpeedKey_Insert_BeforeShow";
    $ssf_tkt_catalog->tkt_catalog_id->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_tkt_catalog_id_BeforeShow";
    $ssf_tkt_catalog->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_catalog_ds_AfterExecuteSelect";
    $ssf_tkt_catalog->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_BeforeShow";
    $ssf_tkt_catalog->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_catalog_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//SpeedKey_SpeedKey_Insert_BeforeShow @32-F69EA589
function SpeedKey_SpeedKey_Insert_BeforeShow(& $sender)
{
    $SpeedKey_SpeedKey_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SpeedKey; //Compatibility
//End SpeedKey_SpeedKey_Insert_BeforeShow

//Custom Code @60-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close SpeedKey_SpeedKey_Insert_BeforeShow @32-101352D7
    return $SpeedKey_SpeedKey_Insert_BeforeShow;
}
//End Close SpeedKey_SpeedKey_Insert_BeforeShow

//ssf_tkt_catalog_tkt_catalog_id_BeforeShow @39-D3AE1346
function ssf_tkt_catalog_tkt_catalog_id_BeforeShow(& $sender)
{
    $ssf_tkt_catalog_tkt_catalog_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog; //Compatibility
//End ssf_tkt_catalog_tkt_catalog_id_BeforeShow

//Custom Code @49-2A29BDB7
	$Component->SetValue("speedkey_group_id") ;
//End Custom Code

//Close ssf_tkt_catalog_tkt_catalog_id_BeforeShow @39-C7A79F4E
    return $ssf_tkt_catalog_tkt_catalog_id_BeforeShow;
}
//End Close ssf_tkt_catalog_tkt_catalog_id_BeforeShow

//ssf_tkt_catalog_ds_AfterExecuteSelect @38-2569221D
function ssf_tkt_catalog_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_catalog_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog; //Compatibility
//End ssf_tkt_catalog_ds_AfterExecuteSelect

//Custom Code @61-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_catalog_ds_AfterExecuteSelect @38-A9A19B8D
    return $ssf_tkt_catalog_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_catalog_ds_AfterExecuteSelect

//ssf_tkt_catalog_BeforeShow @38-6E760CA9
function ssf_tkt_catalog_BeforeShow(& $sender)
{
    $ssf_tkt_catalog_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog; //Compatibility
//End ssf_tkt_catalog_BeforeShow

//Custom Code @62-2A29BDB7
global $Tpl ;
	if (CCGetParam("speedkey") != "" || CCGetParam("SpeedKey_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("speedkey") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_catalog_BeforeShow @38-A56D494E
    return $ssf_tkt_catalog_BeforeShow;
}
//End Close ssf_tkt_catalog_BeforeShow

//ssf_tkt_catalog_ds_BeforeExecuteDelete @38-7339F5B7
function ssf_tkt_catalog_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_catalog_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog; //Compatibility
//End ssf_tkt_catalog_ds_BeforeExecuteDelete

//Custom Code @63-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_speed_keys" ;
	$where = " tkt_speed_id = '".$ssf_tkt_catalog->tkt_catalog_code->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_speed_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_catalog_ds_BeforeExecuteDelete @38-E70F1C05
    return $ssf_tkt_catalog_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_catalog_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-FAA5F73C
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSpeedKeyGroups; //Compatibility
//End Page_AfterInitialize

//Custom Code @59-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_SKG_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_SKG_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
