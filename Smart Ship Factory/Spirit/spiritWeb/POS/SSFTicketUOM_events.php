<?php
//BindEvents Method @1-F57D6133
function BindEvents()
{
    global $ssf_tkt_measure_units;
    global $ssf_tkt_measure_units1;
    global $CCSEvents;
    $ssf_tkt_measure_units->units_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_measure_units_units_Insert_BeforeShow";
    $ssf_tkt_measure_units1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_measure_units1_ds_AfterExecuteSelect";
    $ssf_tkt_measure_units1->CCSEvents["BeforeShow"] = "ssf_tkt_measure_units1_BeforeShow";
    $ssf_tkt_measure_units1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_measure_units1_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_measure_units_units_Insert_BeforeShow @6-22C20094
function ssf_tkt_measure_units_units_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_measure_units_units_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_measure_units; //Compatibility
//End ssf_tkt_measure_units_units_Insert_BeforeShow

//Custom Code @33-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_measure_units_units_Insert_BeforeShow @6-44205233
    return $ssf_tkt_measure_units_units_Insert_BeforeShow;
}
//End Close ssf_tkt_measure_units_units_Insert_BeforeShow

//ssf_tkt_measure_units1_ds_AfterExecuteSelect @20-3387A2E8
function ssf_tkt_measure_units1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_measure_units1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_measure_units1; //Compatibility
//End ssf_tkt_measure_units1_ds_AfterExecuteSelect

//Custom Code @34-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_measure_units1_ds_AfterExecuteSelect @20-6790C351
    return $ssf_tkt_measure_units1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_measure_units1_ds_AfterExecuteSelect

//ssf_tkt_measure_units1_BeforeShow @20-E0DFCD53
function ssf_tkt_measure_units1_BeforeShow(& $sender)
{
    $ssf_tkt_measure_units1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_measure_units1; //Compatibility
//End ssf_tkt_measure_units1_BeforeShow

//Custom Code @35-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_unit_id") != "" || CCGetParam("units_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_unit_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_tkt_measure_units1_BeforeShow @20-7AA05EA6
    return $ssf_tkt_measure_units1_BeforeShow;
}
//End Close ssf_tkt_measure_units1_BeforeShow

//ssf_tkt_measure_units1_ds_BeforeExecuteDelete @20-8382C2C1
function ssf_tkt_measure_units1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_measure_units1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_measure_units1; //Compatibility
//End ssf_tkt_measure_units1_ds_BeforeExecuteDelete

//Custom Code @36-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_plu" ;
	$where = " tkt_plu_unit = '".$ssf_tkt_measure_units1->tkt_unit_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_plu_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_measure_units1_ds_BeforeExecuteDelete @20-68A4B3A2
    return $ssf_tkt_measure_units1_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_measure_units1_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-6C7D890E
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketUOM; //Compatibility
//End Page_AfterInitialize

//Custom Code @32-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_UOM_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_UOM_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
