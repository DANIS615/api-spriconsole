<?php
//BindEvents Method @1-CBF23730
function BindEvents()
{
    global $ssf_tkt_plu_grades;
    global $ssf_tkt_plu_grades1;
    global $CCSEvents;
    $ssf_tkt_plu_grades->plu_grades_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow";
    $ssf_tkt_plu_grades1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_plu_grades1_ds_AfterExecuteSelect";
    $ssf_tkt_plu_grades1->CCSEvents["BeforeShow"] = "ssf_tkt_plu_grades1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow @6-AFBDF06C
function ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_grades; //Compatibility
//End ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow

//Custom Code @34-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow @6-6D016ECF
    return $ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow;
}
//End Close ssf_tkt_plu_grades_plu_grades_Insert_BeforeShow

//ssf_tkt_plu_grades1_ds_AfterExecuteSelect @17-84E478DD
function ssf_tkt_plu_grades1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_plu_grades1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_grades1; //Compatibility
//End ssf_tkt_plu_grades1_ds_AfterExecuteSelect

//Custom Code @35-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_plu_grades1_ds_AfterExecuteSelect @17-987AD487
    return $ssf_tkt_plu_grades1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_plu_grades1_ds_AfterExecuteSelect

//ssf_tkt_plu_grades1_BeforeShow @17-83C1D081
function ssf_tkt_plu_grades1_BeforeShow(& $sender)
{
    $ssf_tkt_plu_grades1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_grades1; //Compatibility
//End ssf_tkt_plu_grades1_BeforeShow

//Custom Code @36-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_plu_id") != "" || CCGetParam("plu_grades_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_plu_id") != "" ) {
		$Tpl->setvar("readonlyparam", "readonly") ;
		$ssf_tkt_plu_grades1->Link1->Visible = false ;
	} else {
		$Tpl->setvar("readonlyparam", "") ;
		$ssf_tkt_plu_grades1->Link1->Visible = true ;
	}
//End Custom Code

//Close ssf_tkt_plu_grades1_BeforeShow @17-2FCAA722
    return $ssf_tkt_plu_grades1_BeforeShow;
}
//End Close ssf_tkt_plu_grades1_BeforeShow

//Page_AfterInitialize @1-7AB8EBAF
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketMapGrades; //Compatibility
//End Page_AfterInitialize

//Custom Code @33-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_MAPG_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_MAPG_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
