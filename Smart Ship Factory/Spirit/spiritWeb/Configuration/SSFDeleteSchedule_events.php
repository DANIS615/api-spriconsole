<?php
//BindEvents Method @1-842EAF06
function BindEvents()
{
    global $ssf_delete_schedule;
    global $ssf_delete_schedule1;
    global $CCSEvents;
    $ssf_delete_schedule->del_description->CCSEvents["BeforeShow"] = "ssf_delete_schedule_del_description_BeforeShow";
    $ssf_delete_schedule->CCSEvents["BeforeShowRow"] = "ssf_delete_schedule_BeforeShowRow";
    $ssf_delete_schedule->ds->CCSEvents["BeforeExecuteSelect"] = "ssf_delete_schedule_ds_BeforeExecuteSelect";
    $ssf_delete_schedule1->del_description->CCSEvents["BeforeShow"] = "ssf_delete_schedule1_del_description_BeforeShow";
    $ssf_delete_schedule1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_delete_schedule1_ds_AfterExecuteSelect";
    $ssf_delete_schedule1->CCSEvents["BeforeShow"] = "ssf_delete_schedule1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_delete_schedule_del_description_BeforeShow @13-4D943621
function ssf_delete_schedule_del_description_BeforeShow(& $sender)
{
    $ssf_delete_schedule_del_description_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule; //Compatibility
//End ssf_delete_schedule_del_description_BeforeShow

//Custom Code @38-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText($Component->GetValue())) ;
//End Custom Code

//Close ssf_delete_schedule_del_description_BeforeShow @13-B54679FF
    return $ssf_delete_schedule_del_description_BeforeShow;
}
//End Close ssf_delete_schedule_del_description_BeforeShow

//ssf_delete_schedule_BeforeShowRow @3-D8DFB5CB
function ssf_delete_schedule_BeforeShowRow(& $sender)
{
    $ssf_delete_schedule_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule; //Compatibility
//End ssf_delete_schedule_BeforeShowRow

//Custom Code @40-2A29BDB7
global $thistype ;
global $CCSLocales ;
	if ($ssf_delete_schedule->del_module->GetValue() != $thistype ) {
		$thistype = $ssf_delete_schedule->del_module->GetValue() ;
		$tabla = " <tr class=\"Row\"> ".
		" <td colspan=\"5\" style=\"FONT-WEIGHT: bold;background-color:9CA9CE\" align=\"left\">".$CCSLocales->GetText($thistype."_MODULE")."</td> ".
		" </tr> " ;
		$ssf_delete_schedule->Attributes->SetValue("newrow",$tabla) ;
	} else {
		$ssf_delete_schedule->Attributes->SetValue("newrow","") ;
	}
//End Custom Code

//Close ssf_delete_schedule_BeforeShowRow @3-63A4F245
    return $ssf_delete_schedule_BeforeShowRow;
}
//End Close ssf_delete_schedule_BeforeShowRow

//ssf_delete_schedule_ds_BeforeExecuteSelect @3-D54742CD
function ssf_delete_schedule_ds_BeforeExecuteSelect(& $sender)
{
    $ssf_delete_schedule_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule; //Compatibility
//End ssf_delete_schedule_ds_BeforeExecuteSelect

//Custom Code @44-2A29BDB7
	$Component->DataSource->Where = " del_module = 'GENERIC' " ;
	if ( CCGetSession("POSMOD") == "Y" )	
		$Component->DataSource->Where .= " or del_module = 'TICKET' " ;
	if ( CCGetSession("TanksMenu") == "Y" )	
		$Component->DataSource->Where .= " or del_module = 'TANK' " ;


//End Custom Code

//Close ssf_delete_schedule_ds_BeforeExecuteSelect @3-98CB4D75
    return $ssf_delete_schedule_ds_BeforeExecuteSelect;
}
//End Close ssf_delete_schedule_ds_BeforeExecuteSelect

//ssf_delete_schedule1_del_description_BeforeShow @25-333A0B36
function ssf_delete_schedule1_del_description_BeforeShow(& $sender)
{
    $ssf_delete_schedule1_del_description_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule1; //Compatibility
//End ssf_delete_schedule1_del_description_BeforeShow

//Custom Code @39-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText($Component->GetValue())) ;
//End Custom Code

//Close ssf_delete_schedule1_del_description_BeforeShow @25-18D58EF7
    return $ssf_delete_schedule1_del_description_BeforeShow;
}
//End Close ssf_delete_schedule1_del_description_BeforeShow

//ssf_delete_schedule1_ds_AfterExecuteSelect @17-3C30E22E
function ssf_delete_schedule1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_delete_schedule1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule1; //Compatibility
//End ssf_delete_schedule1_ds_AfterExecuteSelect

//Custom Code @30-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_delete_schedule1_ds_AfterExecuteSelect @17-8D4D61F7
    return $ssf_delete_schedule1_ds_AfterExecuteSelect;
}
//End Close ssf_delete_schedule1_ds_AfterExecuteSelect

//ssf_delete_schedule1_BeforeShow @17-228BD6DC
function ssf_delete_schedule1_BeforeShow(& $sender)
{
    $ssf_delete_schedule1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_delete_schedule1; //Compatibility
//End ssf_delete_schedule1_BeforeShow

//Custom Code @31-2A29BDB7

	if (CCGetParam("del_id") != "" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

//End Custom Code

//Close ssf_delete_schedule1_BeforeShow @17-88CBBFF1
    return $ssf_delete_schedule1_BeforeShow;
}
//End Close ssf_delete_schedule1_BeforeShow

//Page_AfterInitialize @1-3DCBB013
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFDeleteSchedule; //Compatibility
//End Page_AfterInitialize

//Custom Code @32-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_MAN_DEL_SCH_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_MAN_DEL_SCH_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
