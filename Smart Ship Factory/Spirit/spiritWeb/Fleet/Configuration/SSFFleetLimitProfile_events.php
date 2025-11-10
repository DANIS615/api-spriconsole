<?php
//BindEvents Method @1-46D80CF2
function BindEvents()
{
    global $ssf_flt_limit_profile1;
    global $ssf_flt_limit_profile2;
    global $CCSEvents;
    $ssf_flt_limit_profile1->ssf_flt_limit_profile1_Insert->CCSEvents["BeforeShow"] = "ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow";
    $ssf_flt_limit_profile2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_flt_limit_profile2_ds_AfterExecuteSelect";
    $ssf_flt_limit_profile2->CCSEvents["BeforeShow"] = "ssf_flt_limit_profile2_BeforeShow";
    $ssf_flt_limit_profile2->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_flt_limit_profile2_ds_BeforeExecuteDelete";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//DEL  

//ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow @17-C48C40B5
function ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow(& $sender)
{
    $ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_limit_profile1; //Compatibility
//End ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow

//Custom Code @46-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow @17-2A5BEF5B
    return $ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow;
}
//End Close ssf_flt_limit_profile1_ssf_flt_limit_profile1_Insert_BeforeShow

//ssf_flt_limit_profile2_ds_AfterExecuteSelect @28-6E6D9C60
function ssf_flt_limit_profile2_ds_AfterExecuteSelect(& $sender)
{
    $ssf_flt_limit_profile2_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_limit_profile2; //Compatibility
//End ssf_flt_limit_profile2_ds_AfterExecuteSelect

//Custom Code @48-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_flt_limit_profile2_ds_AfterExecuteSelect @28-19447117
    return $ssf_flt_limit_profile2_ds_AfterExecuteSelect;
}
//End Close ssf_flt_limit_profile2_ds_AfterExecuteSelect

//ssf_flt_limit_profile2_BeforeShow @28-614E53E5
function ssf_flt_limit_profile2_BeforeShow(& $sender)
{
    $ssf_flt_limit_profile2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_limit_profile2; //Compatibility
//End ssf_flt_limit_profile2_BeforeShow

//Custom Code @49-2A29BDB7
global $Tpl ;
	if (CCGetParam("lp_profile_id") != "" || CCGetParam("ssf_flt_limit_profile1_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("lp_profile_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_flt_limit_profile2_BeforeShow @28-F36E76B2
    return $ssf_flt_limit_profile2_BeforeShow;
}
//End Close ssf_flt_limit_profile2_BeforeShow

//ssf_flt_limit_profile2_ds_BeforeExecuteDelete @28-D3EB3C8B
function ssf_flt_limit_profile2_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_flt_limit_profile2_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_limit_profile2; //Compatibility
//End ssf_flt_limit_profile2_ds_BeforeExecuteDelete

//Custom Code @50-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;

	// chequeo relación con el modelo de flotas
	$table = "ssf_flt_profile_model" ;
	$where = " pm_limit_prof_id = '".$ssf_flt_limit_profile2->lp_profile_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("pm_limit_prof_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_flt_limit_profile2_ds_BeforeExecuteDelete @28-F76583B5
    return $ssf_flt_limit_profile2_ds_BeforeExecuteDelete;
}
//End Close ssf_flt_limit_profile2_ds_BeforeExecuteDelete

//Page_AfterInitialize @1-F927D2CA
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetLimitProfile; //Compatibility
//End Page_AfterInitialize

//Custom Code @44-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_FLT_LIPRO_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_LIPRO_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
