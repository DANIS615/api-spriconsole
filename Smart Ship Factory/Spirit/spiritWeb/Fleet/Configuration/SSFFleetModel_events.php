<?php
//BindEvents Method @1-67410F7B
function BindEvents()
{
    global $ssf_flt_profile_model;
    global $ssf_flt_profile_model1;
    global $CCSEvents;
    $ssf_flt_profile_model->ssf_flt_model_Insert->CCSEvents["BeforeShow"] = "ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow";
    $ssf_flt_profile_model1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_flt_profile_model1_ds_AfterExecuteSelect";
    $ssf_flt_profile_model1->CCSEvents["BeforeShow"] = "ssf_flt_profile_model1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow @10-33B3954F
function ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow(& $sender)
{
    $ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_profile_model; //Compatibility
//End ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow

//Custom Code @36-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow @10-E769B5F3
    return $ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow;
}
//End Close ssf_flt_profile_model_ssf_flt_model_Insert_BeforeShow

//ssf_flt_profile_model1_ds_AfterExecuteSelect @20-750BAA0D
function ssf_flt_profile_model1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_flt_profile_model1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_profile_model1; //Compatibility
//End ssf_flt_profile_model1_ds_AfterExecuteSelect

//Custom Code @37-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_flt_profile_model1_ds_AfterExecuteSelect @20-56E7B35E
    return $ssf_flt_profile_model1_ds_AfterExecuteSelect;
}
//End Close ssf_flt_profile_model1_ds_AfterExecuteSelect

//ssf_flt_profile_model1_BeforeShow @20-8C7DC5B5
function ssf_flt_profile_model1_BeforeShow(& $sender)
{
    $ssf_flt_profile_model1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_profile_model1; //Compatibility
//End ssf_flt_profile_model1_BeforeShow

//Custom Code @38-2A29BDB7
global $Tpl ;
	if (CCGetParam("pm_model_id") != "" || CCGetParam("ssf_flt_model_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("pm_model_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_flt_profile_model1_BeforeShow @20-D1796F64
    return $ssf_flt_profile_model1_BeforeShow;
}
//End Close ssf_flt_profile_model1_BeforeShow

//Page_AfterInitialize @1-B2F2B9B9
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetModel; //Compatibility
//End Page_AfterInitialize

//Custom Code @34-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_FLT_PRMOD_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_PRMOD_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
