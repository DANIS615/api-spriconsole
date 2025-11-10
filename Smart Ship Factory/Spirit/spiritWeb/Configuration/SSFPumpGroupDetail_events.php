<?php
//BindEvents Method @1-94A423AB
function BindEvents()
{
    global $config_values_ssf_pump_gr;
    global $ssf_pump_group_details;
    global $CCSEvents;
    $config_values_ssf_pump_gr->ssf_pump_Insert->CCSEvents["BeforeShow"] = "config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow";
    $config_values_ssf_pump_gr->CCSEvents["BeforeShow"] = "config_values_ssf_pump_gr_BeforeShow";
    $ssf_pump_group_details->pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_pump_group_details_pump_id_ds_BeforeBuildSelect";
    $ssf_pump_group_details->pump_group_id->CCSEvents["BeforeShow"] = "ssf_pump_group_details_pump_group_id_BeforeShow";
    $ssf_pump_group_details->ds->CCSEvents["AfterExecuteSelect"] = "ssf_pump_group_details_ds_AfterExecuteSelect";
    $ssf_pump_group_details->CCSEvents["BeforeShow"] = "ssf_pump_group_details_BeforeShow";
    $ssf_pump_group_details->ds->CCSEvents["BeforeExecuteInsert"] = "ssf_pump_group_details_ds_BeforeExecuteInsert";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow @21-2381C0BA
function config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow(& $sender)
{
    $config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_pump_gr; //Compatibility
//End config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow

//Custom Code @37-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow @21-3DFB1801
    return $config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow;
}
//End Close config_values_ssf_pump_gr_ssf_pump_Insert_BeforeShow

//config_values_ssf_pump_gr_BeforeShow @9-01CD505D
function config_values_ssf_pump_gr_BeforeShow(& $sender)
{
    $config_values_ssf_pump_gr_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values_ssf_pump_gr; //Compatibility
//End config_values_ssf_pump_gr_BeforeShow

//Custom Code @47-2A29BDB7
	if (CCGetParam("pump_group_id") != ""  ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close config_values_ssf_pump_gr_BeforeShow @9-96CA66FE
    return $config_values_ssf_pump_gr_BeforeShow;
}
//End Close config_values_ssf_pump_gr_BeforeShow

//ssf_pump_group_details_pump_id_ds_BeforeBuildSelect @29-71E7324A
function ssf_pump_group_details_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_pump_group_details_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_details; //Compatibility
//End ssf_pump_group_details_pump_id_ds_BeforeBuildSelect

//Custom Code @40-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("param_value","'99'") ;
//End Custom Code

//Close ssf_pump_group_details_pump_id_ds_BeforeBuildSelect @29-552E6352
    return $ssf_pump_group_details_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_pump_group_details_pump_id_ds_BeforeBuildSelect

//ssf_pump_group_details_pump_group_id_BeforeShow @41-77683A8B
function ssf_pump_group_details_pump_group_id_BeforeShow(& $sender)
{
    $ssf_pump_group_details_pump_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_details; //Compatibility
//End ssf_pump_group_details_pump_group_id_BeforeShow

//Custom Code @42-2A29BDB7
if ($Component->GetValue() == "" )
	$Component->SetValue(CCGetParam("pump_group_id")) ;
//End Custom Code

//Close ssf_pump_group_details_pump_group_id_BeforeShow @41-12943261
    return $ssf_pump_group_details_pump_group_id_BeforeShow;
}
//End Close ssf_pump_group_details_pump_group_id_BeforeShow

//ssf_pump_group_details_ds_AfterExecuteSelect @28-07AD52C7
function ssf_pump_group_details_ds_AfterExecuteSelect(& $sender)
{
    $ssf_pump_group_details_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_details; //Compatibility
//End ssf_pump_group_details_ds_AfterExecuteSelect

//Custom Code @45-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}

	if (CCGetParam("pump_id") != "") 
		$Component->UpdateAllowed = false ;

//End Custom Code

//Close ssf_pump_group_details_ds_AfterExecuteSelect @28-0E5F8508
    return $ssf_pump_group_details_ds_AfterExecuteSelect;
}
//End Close ssf_pump_group_details_ds_AfterExecuteSelect

//ssf_pump_group_details_BeforeShow @28-8E0C5120
function ssf_pump_group_details_BeforeShow(& $sender)
{
    $ssf_pump_group_details_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_details; //Compatibility
//End ssf_pump_group_details_BeforeShow

//Custom Code @46-2A29BDB7
global $Tpl ;
	if (CCGetParam("pump_id") != "" || CCGetParam("ssf_pump_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("pump_id") != "" ) 
		$Tpl->setvar("disabledparam", "disabled") ;
//End Custom Code

//Close ssf_pump_group_details_BeforeShow @28-1A9E1819
    return $ssf_pump_group_details_BeforeShow;
}
//End Close ssf_pump_group_details_BeforeShow

//ssf_pump_group_details_ds_BeforeExecuteInsert @28-49A2D076
function ssf_pump_group_details_ds_BeforeExecuteInsert(& $sender)
{
    $ssf_pump_group_details_ds_BeforeExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_pump_group_details; //Compatibility
//End ssf_pump_group_details_ds_BeforeExecuteInsert

//Custom Code @48-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_pump_group_details" ;
	$where = " pump_id = ".$ssf_pump_group_details->pump_id->GetValue() ;
	$ExistRelation = CCDLookUp("pump_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_pump_association_exist")) ;	
	}
//End Custom Code

//Close ssf_pump_group_details_ds_BeforeExecuteInsert @28-2977F24A
    return $ssf_pump_group_details_ds_BeforeExecuteInsert;
}
//End Close ssf_pump_group_details_ds_BeforeExecuteInsert

//Page_AfterInitialize @1-9830E540
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPumpGroupDetail; //Compatibility
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
