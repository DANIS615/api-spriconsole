<?php
//BindEvents Method @1-A6A5AB18
function BindEvents()
{
    global $ssf_tkt_period_groups;
    global $ssf_tkt_period_groups1;
    global $CCSEvents;
    $ssf_tkt_period_groups->ssf_tkt_period_groups_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow";
    $ssf_tkt_period_groups1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_period_groups1_ds_AfterExecuteSelect";
    $ssf_tkt_period_groups1->CCSEvents["BeforeShow"] = "ssf_tkt_period_groups1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow @5-CB88976D
function ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_period_groups; //Compatibility
//End ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow

//Custom Code @24-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow @5-3CF84484
    return $ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow;
}
//End Close ssf_tkt_period_groups_ssf_tkt_period_groups_Insert_BeforeShow

//ssf_tkt_period_groups1_ds_AfterExecuteSelect @13-2288EC43
function ssf_tkt_period_groups1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_period_groups1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_period_groups1; //Compatibility
//End ssf_tkt_period_groups1_ds_AfterExecuteSelect

//Custom Code @26-2A29BDB7

global $EditisAllowed ;

if (!$EditisAllowed ) {
	$Component->InsertAllowed = false ;
	$Component->DeleteAllowed = false ;
	$Component->UpdateAllowed = false ;
}

//End Custom Code



//Close ssf_tkt_period_groups1_ds_AfterExecuteSelect @13-CEA9C10E
    return $ssf_tkt_period_groups1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_period_groups1_ds_AfterExecuteSelect

//ssf_tkt_period_groups1_BeforeShow @13-CE9B7690
function ssf_tkt_period_groups1_BeforeShow(& $sender)
{
    $ssf_tkt_period_groups1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_period_groups1; //Compatibility
//End ssf_tkt_period_groups1_BeforeShow

//Custom Code @27-2A29BDB7
	if (CCGetParam("tkt_period_group_id") != "" || CCGetParam("ssf_tkt_period_groups_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_period_group_id") != "" ) 
			$Component->tkt_period_group_id->Attributes->SetValue("readonlyparam","readonly") ;
//End Custom Code

//Close ssf_tkt_period_groups1_BeforeShow @13-4E88D92C
    return $ssf_tkt_period_groups1_BeforeShow;
}
//End Close ssf_tkt_period_groups1_BeforeShow

//Page_AfterInitialize @1-D92DC7CB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketPeriodsGroup; //Compatibility
//End Page_AfterInitialize

//Custom Code @23-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_CLG_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_CLG_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
