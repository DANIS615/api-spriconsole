<?php
//BindEvents Method @1-84667D57
function BindEvents()
{
    global $ssf_addin_slb_events_conf2;
    global $CCSEvents;
    $ssf_addin_slb_events_conf2->CCSEvents["BeforeShow"] = "ssf_addin_slb_events_conf2_BeforeShow";
    $ssf_addin_slb_events_conf2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_addin_slb_events_conf2_ds_AfterExecuteSelect";
    $ssf_addin_slb_events_conf2->CCSEvents["AfterUpdate"] = "ssf_addin_slb_events_conf2_AfterUpdate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_slb_events_conf2_BeforeShow @25-AD4658DC
function ssf_addin_slb_events_conf2_BeforeShow(& $sender)
{
    $ssf_addin_slb_events_conf2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_slb_events_conf2; //Compatibility
//End ssf_addin_slb_events_conf2_BeforeShow

//Custom Code @37-2A29BDB7
global $Tpl;
	if (CCGetParam("slb_event_id") != "" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if ($ssf_addin_slb_events_conf2->slb_if_force->GetValue() == "Y" ) {
		$ssf_addin_slb_events_conf2->Button_Update->Visible = false ;
		$Tpl->setvar("disabledparam","disabled") ;
	}
//End Custom Code

//Close ssf_addin_slb_events_conf2_BeforeShow @25-58BC9E3C
    return $ssf_addin_slb_events_conf2_BeforeShow;
}
//End Close ssf_addin_slb_events_conf2_BeforeShow

//ssf_addin_slb_events_conf2_ds_AfterExecuteSelect @25-671DD326
function ssf_addin_slb_events_conf2_ds_AfterExecuteSelect(& $sender)
{
    $ssf_addin_slb_events_conf2_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_slb_events_conf2; //Compatibility
//End ssf_addin_slb_events_conf2_ds_AfterExecuteSelect

//Custom Code @38-2A29BDB7
	global $EditisAllowed ;
	
	if (!$EditisAllowed ) {
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_addin_slb_events_conf2_ds_AfterExecuteSelect @25-D530B06E
    return $ssf_addin_slb_events_conf2_ds_AfterExecuteSelect;
}
//End Close ssf_addin_slb_events_conf2_ds_AfterExecuteSelect

//ssf_addin_slb_events_conf2_AfterUpdate @25-38051921
function ssf_addin_slb_events_conf2_AfterUpdate(& $sender)
{
    $ssf_addin_slb_events_conf2_AfterUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_slb_events_conf2; //Compatibility
//End ssf_addin_slb_events_conf2_AfterUpdate

//Custom Code @39-2A29BDB7
	CCSetSession("ssf_logbook_modified",true);
//End Custom Code

//Close ssf_addin_slb_events_conf2_AfterUpdate @25-99B33B59
    return $ssf_addin_slb_events_conf2_AfterUpdate;
}
//End Close ssf_addin_slb_events_conf2_AfterUpdate

//Page_AfterInitialize @1-5EE61F17
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFLogBook; //Compatibility
//End Page_AfterInitialize

//Custom Code @36-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_EVENT_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_EVENT_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
