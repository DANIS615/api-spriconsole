<?php
//BindEvents Method @1-54A14D88
function BindEvents()
{
    global $ssf_flt_product_profile;
    global $ssf_flt_product_profile1;
    global $ssf_flt_product_profile_s;
    global $ssf_flt_product_profile2;
    global $CCSEvents;
    $ssf_flt_product_profile->ssf_flt_profile_Insert->CCSEvents["BeforeShow"] = "ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow";
    $ssf_flt_product_profile1->Label1->CCSEvents["BeforeShow"] = "ssf_flt_product_profile1_Label1_BeforeShow";
    $ssf_flt_product_profile1->pp_tkt_plu_id->CCSEvents["BeforeShow"] = "ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow";
    $ssf_flt_product_profile1->Link1->CCSEvents["BeforeShow"] = "ssf_flt_product_profile1_Link1_BeforeShow";
    $ssf_flt_product_profile1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_flt_product_profile1_ds_AfterExecuteSelect";
    $ssf_flt_product_profile1->CCSEvents["BeforeShow"] = "ssf_flt_product_profile1_BeforeShow";
    $ssf_flt_product_profile1->ds->CCSEvents["AfterExecuteDelete"] = "ssf_flt_product_profile1_ds_AfterExecuteDelete";
    $ssf_flt_product_profile1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_flt_product_profile1_ds_BeforeExecuteDelete";
    $ssf_flt_product_profile_s->ssf_flt_product_Insert->CCSEvents["BeforeShow"] = "ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow";
    $ssf_flt_product_profile_s->CCSEvents["BeforeShow"] = "ssf_flt_product_profile_s_BeforeShow";
    $ssf_flt_product_profile2->pp_profile_id->CCSEvents["BeforeShow"] = "ssf_flt_product_profile2_pp_profile_id_BeforeShow";
    $ssf_flt_product_profile2->CCSEvents["BeforeShow"] = "ssf_flt_product_profile2_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow @10-DA1C2B00
function ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow(& $sender)
{
    $ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile; //Compatibility
//End ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow

//Custom Code @27-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow @10-C4B73C81
    return $ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow;
}
//End Close ssf_flt_product_profile_ssf_flt_profile_Insert_BeforeShow

//ssf_flt_product_profile1_Label1_BeforeShow @35-179600A0
function ssf_flt_product_profile1_Label1_BeforeShow(& $sender)
{
    $ssf_flt_product_profile1_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_Label1_BeforeShow

//Custom Code @36-2A29BDB7
global $CCSLocales ;
$Component->SetText($CCSLocales->GetText("grade_id")) ;
if (CCGetParam("pp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;
//End Custom Code

//Close ssf_flt_product_profile1_Label1_BeforeShow @35-1D27EB5E
    return $ssf_flt_product_profile1_Label1_BeforeShow;
}
//End Close ssf_flt_product_profile1_Label1_BeforeShow

//ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow @32-C0EBD3D8
function ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow(& $sender)
{
    $ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow

//Custom Code @38-2A29BDB7
if (CCGetParam("pp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;
//End Custom Code

//Close ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow @32-BC498B52
    return $ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow;
}
//End Close ssf_flt_product_profile1_pp_tkt_plu_id_BeforeShow

//ssf_flt_product_profile1_Link1_BeforeShow @34-BDD767C7
function ssf_flt_product_profile1_Link1_BeforeShow(& $sender)
{
    $ssf_flt_product_profile1_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_Link1_BeforeShow

//Custom Code @37-2A29BDB7
if (CCGetParam("pp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_flt_product_profile1_Link1_BeforeShow @34-20341D1E
    return $ssf_flt_product_profile1_Link1_BeforeShow;
}
//End Close ssf_flt_product_profile1_Link1_BeforeShow

//ssf_flt_product_profile1_ds_AfterExecuteSelect @16-F1E41551
function ssf_flt_product_profile1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_flt_product_profile1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_ds_AfterExecuteSelect

//Custom Code @30-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_flt_product_profile1_ds_AfterExecuteSelect @16-1B324D07
    return $ssf_flt_product_profile1_ds_AfterExecuteSelect;
}
//End Close ssf_flt_product_profile1_ds_AfterExecuteSelect

//ssf_flt_product_profile1_BeforeShow @16-896D7A4B
function ssf_flt_product_profile1_BeforeShow(& $sender)
{
    $ssf_flt_product_profile1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_BeforeShow

//Custom Code @31-2A29BDB7
global $Tpl ;
	if (CCGetParam("pp_profile_id") != "" || CCGetParam("ssf_flt_profile_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("pp_profile_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_flt_product_profile1_BeforeShow @16-625A3B70
    return $ssf_flt_product_profile1_BeforeShow;
}
//End Close ssf_flt_product_profile1_BeforeShow

//ssf_flt_product_profile1_ds_AfterExecuteDelete @16-C8B13BFD
function ssf_flt_product_profile1_ds_AfterExecuteDelete(& $sender)
{
    $ssf_flt_product_profile1_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_ds_AfterExecuteDelete

//Custom Code @75-2A29BDB7
	$Component->DataSource->SQL = "DELETE FROM ssf_flt_product_profile where pp_profile_id ='".$ssf_flt_product_profile1->pp_profile_id->GetValue()."'" ;
	$Component->DataSource->query($Component->DataSource->SQL);
//End Custom Code

//Close ssf_flt_product_profile1_ds_AfterExecuteDelete @16-BD66D354
    return $ssf_flt_product_profile1_ds_AfterExecuteDelete;
}
//End Close ssf_flt_product_profile1_ds_AfterExecuteDelete

//ssf_flt_product_profile1_ds_BeforeExecuteDelete @16-A81D17E0
function ssf_flt_product_profile1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_flt_product_profile1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile1; //Compatibility
//End ssf_flt_product_profile1_ds_BeforeExecuteDelete

//Custom Code @76-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;

	// chequeo relación con el modelo de flotas
	$table = "ssf_flt_profile_model" ;
	$where = " pm_product_prof_id = '".$ssf_flt_product_profile1->pp_profile_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("pm_model_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_flt_product_profile1_ds_BeforeExecuteDelete @16-EAD0E5ED
    return $ssf_flt_product_profile1_ds_BeforeExecuteDelete;
}
//End Close ssf_flt_product_profile1_ds_BeforeExecuteDelete

//ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow @51-5E166EF1
function ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow(& $sender)
{
    $ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile_s; //Compatibility
//End ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow

//Custom Code @69-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow @51-7568E3FC
    return $ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow;
}
//End Close ssf_flt_product_profile_s_ssf_flt_product_Insert_BeforeShow

//ssf_flt_product_profile_s_BeforeShow @42-62ADF21B
function ssf_flt_product_profile_s_BeforeShow(& $sender)
{
    $ssf_flt_product_profile_s_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile_s; //Compatibility
//End ssf_flt_product_profile_s_BeforeShow

//Custom Code @68-2A29BDB7
if (CCGetParam("pp_profile_id") != "" ) 
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_flt_product_profile_s_BeforeShow @42-68A90125
    return $ssf_flt_product_profile_s_BeforeShow;
}
//End Close ssf_flt_product_profile_s_BeforeShow

//ssf_flt_product_profile2_pp_profile_id_BeforeShow @65-44ADB2D3
function ssf_flt_product_profile2_pp_profile_id_BeforeShow(& $sender)
{
    $ssf_flt_product_profile2_pp_profile_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile2; //Compatibility
//End ssf_flt_product_profile2_pp_profile_id_BeforeShow

//Custom Code @73-2A29BDB7
$Component->SetValue(CCGetParam("pp_profile_id")) ;
//End Custom Code

//Close ssf_flt_product_profile2_pp_profile_id_BeforeShow @65-7489956E
    return $ssf_flt_product_profile2_pp_profile_id_BeforeShow;
}
//End Close ssf_flt_product_profile2_pp_profile_id_BeforeShow

//ssf_flt_product_profile2_BeforeShow @58-B762E68F
function ssf_flt_product_profile2_BeforeShow(& $sender)
{
    $ssf_flt_product_profile2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_product_profile2; //Compatibility
//End ssf_flt_product_profile2_BeforeShow

//Custom Code @74-2A29BDB7
	if (CCGetParam("pp_tkt_plu_id") != "" || CCGetParam("ssf_flt_product_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_flt_product_profile2_BeforeShow @58-1E3B1EAB
    return $ssf_flt_product_profile2_BeforeShow;
}
//End Close ssf_flt_product_profile2_BeforeShow

//Page_AfterInitialize @1-CD7133AA
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetProducts; //Compatibility
//End Page_AfterInitialize

//Custom Code @26-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_FLT_PRPRO_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_PRPRO_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
