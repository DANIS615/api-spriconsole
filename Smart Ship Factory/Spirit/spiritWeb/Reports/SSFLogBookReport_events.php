<?php
//BindEvents Method @1-C4326484
function BindEvents()
{
    global $ssf_addin_slb_events_conf;
    global $Button1;
    global $ViewMode;
    global $ssf_addin_slb_events_log;
    global $CCSEvents;
    $ssf_addin_slb_events_conf->CCSEvents["BeforeShow"] = "ssf_addin_slb_events_conf_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_addin_slb_events_log->ds->CCSEvents["BeforeExecuteSelect"] = "ssf_addin_slb_events_log_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_slb_events_conf_BeforeShow @14-8B92AB80
function ssf_addin_slb_events_conf_BeforeShow(& $sender)
{
    $ssf_addin_slb_events_conf_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_slb_events_conf; //Compatibility
//End ssf_addin_slb_events_conf_BeforeShow

//Custom Code @72-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close ssf_addin_slb_events_conf_BeforeShow @14-E5675918
    return $ssf_addin_slb_events_conf_BeforeShow;
}
//End Close ssf_addin_slb_events_conf_BeforeShow

//Button1_BeforeShow @68-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @69-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close Button1_BeforeShow @68-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @70-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @71-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @70-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_addin_slb_events_log_ds_BeforeExecuteSelect @3-67FBE059
function ssf_addin_slb_events_log_ds_BeforeExecuteSelect(& $sender)
{
    $ssf_addin_slb_events_log_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_slb_events_log; //Compatibility
//End ssf_addin_slb_events_log_ds_BeforeExecuteSelect

//Custom Code @67-2A29BDB7
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close ssf_addin_slb_events_log_ds_BeforeExecuteSelect @3-21C9B95C
    return $ssf_addin_slb_events_log_ds_BeforeExecuteSelect;
}
//End Close ssf_addin_slb_events_log_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-3D4693A2
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFLogBookReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @73-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
