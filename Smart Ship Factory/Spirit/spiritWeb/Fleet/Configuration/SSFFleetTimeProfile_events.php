<?php
//BindEvents Method @1-63EA54FB
function BindEvents()
{
    global $ssf_flt_time_profile;
    global $ssf_flt_time_profile1;
    global $ssf_flt_time_profile2;
    global $ssf_flt_time_profile3;
    global $CCSEvents;
    $ssf_flt_time_profile->ssf_flt_time_profile_Insert->CCSEvents["BeforeShow"] = "ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow";
    $ssf_flt_time_profile1->Label1->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_Label1_BeforeShow";
    $ssf_flt_time_profile1->tp_week_day->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_tp_week_day_BeforeShow";
    $ssf_flt_time_profile1->Label2->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_Label2_BeforeShow";
    $ssf_flt_time_profile1->t_tp_time_from->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_t_tp_time_from_BeforeShow";
    $ssf_flt_time_profile1->t_tp_time_to->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_t_tp_time_to_BeforeShow";
    $ssf_flt_time_profile1->CCSEvents["BeforeShow"] = "ssf_flt_time_profile1_BeforeShow";
    $ssf_flt_time_profile1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_flt_time_profile1_ds_AfterExecuteSelect";
    $ssf_flt_time_profile1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_flt_time_profile1_ds_BeforeExecuteDelete";
    $ssf_flt_time_profile2->ssf_flt_profile2_Insert->CCSEvents["BeforeShow"] = "ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow";
    $ssf_flt_time_profile2->CCSEvents["BeforeShow"] = "ssf_flt_time_profile2_BeforeShow";
    $ssf_flt_time_profile3->tp_profile_id->CCSEvents["BeforeShow"] = "ssf_flt_time_profile3_tp_profile_id_BeforeShow";
    $ssf_flt_time_profile3->CCSEvents["BeforeShow"] = "ssf_flt_time_profile3_BeforeShow";
    $ssf_flt_time_profile3->ds->CCSEvents["AfterExecuteSelect"] = "ssf_flt_time_profile3_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow @9-C354E3F9
function ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow(& $sender)
{
    $ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile; //Compatibility
//End ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow

//Custom Code @33-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow @9-52CA54F3
    return $ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow;
}
//End Close ssf_flt_time_profile_ssf_flt_time_profile_Insert_BeforeShow

//ssf_flt_time_profile1_Label1_BeforeShow @28-8B4AB0ED
function ssf_flt_time_profile1_Label1_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_Label1_BeforeShow

//Custom Code @29-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText("day")) ;
if (CCGetParam("tp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;
//End Custom Code

//Close ssf_flt_time_profile1_Label1_BeforeShow @28-2F22BF97
    return $ssf_flt_time_profile1_Label1_BeforeShow;
}
//End Close ssf_flt_time_profile1_Label1_BeforeShow

//ssf_flt_time_profile1_tp_week_day_BeforeShow @23-D3A97014
function ssf_flt_time_profile1_tp_week_day_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_tp_week_day_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_tp_week_day_BeforeShow

//Custom Code @35-2A29BDB7
if (CCGetParam("tp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_flt_time_profile1_tp_week_day_BeforeShow @23-2C28F3C9
    return $ssf_flt_time_profile1_tp_week_day_BeforeShow;
}
//End Close ssf_flt_time_profile1_tp_week_day_BeforeShow

//ssf_flt_time_profile1_Label2_BeforeShow @30-35F07450
function ssf_flt_time_profile1_Label2_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_Label2_BeforeShow

//Custom Code @31-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText("ssf_time_range")) ;
if (CCGetParam("tp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_flt_time_profile1_Label2_BeforeShow @30-53439A4C
    return $ssf_flt_time_profile1_Label2_BeforeShow;
}
//End Close ssf_flt_time_profile1_Label2_BeforeShow

//ssf_flt_time_profile1_t_tp_time_from_BeforeShow @25-236AD88E
function ssf_flt_time_profile1_t_tp_time_from_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_t_tp_time_from_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_t_tp_time_from_BeforeShow

//Custom Code @36-2A29BDB7
if (CCGetParam("tp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_flt_time_profile1_t_tp_time_from_BeforeShow @25-F11D3C37
    return $ssf_flt_time_profile1_t_tp_time_from_BeforeShow;
}
//End Close ssf_flt_time_profile1_t_tp_time_from_BeforeShow

//ssf_flt_time_profile1_t_tp_time_to_BeforeShow @26-9B220AB8
function ssf_flt_time_profile1_t_tp_time_to_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_t_tp_time_to_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_t_tp_time_to_BeforeShow

//Custom Code @37-2A29BDB7
if (CCGetParam("tp_profile_id") != "") 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_flt_time_profile1_t_tp_time_to_BeforeShow @26-05FF1963
    return $ssf_flt_time_profile1_t_tp_time_to_BeforeShow;
}
//End Close ssf_flt_time_profile1_t_tp_time_to_BeforeShow

//ssf_flt_time_profile1_BeforeShow @15-FC3D91A5
function ssf_flt_time_profile1_BeforeShow(& $sender)
{
    $ssf_flt_time_profile1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_BeforeShow

//Custom Code @24-2A29BDB7
global $Weekdays ;
$ssf_flt_time_profile1->tp_week_day->Values = array(array("MON",$Weekdays[1]), array("TUE",$Weekdays[2]), array("WED",$Weekdays[3]), array("THU",$Weekdays[4]), array("FRI",$Weekdays[5]), array("SAT",$Weekdays[6]), array("SUN",$Weekdays[0])) ;

global $Tpl ;
	if (CCGetParam("tp_profile_id") != "" || CCGetParam("ssf_flt_time_profile_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tp_profile_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;

//End Custom Code

//Close ssf_flt_time_profile1_BeforeShow @15-28FFD14D
    return $ssf_flt_time_profile1_BeforeShow;
}
//End Close ssf_flt_time_profile1_BeforeShow

//ssf_flt_time_profile1_ds_AfterExecuteSelect @15-0F3A7C8A
function ssf_flt_time_profile1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_flt_time_profile1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_ds_AfterExecuteSelect

//Custom Code @73-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_flt_time_profile1_ds_AfterExecuteSelect @15-CE62CF22
    return $ssf_flt_time_profile1_ds_AfterExecuteSelect;
}
//End Close ssf_flt_time_profile1_ds_AfterExecuteSelect

//ssf_flt_time_profile1_ds_BeforeExecuteDelete @15-55F1CD5A
function ssf_flt_time_profile1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_flt_time_profile1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile1; //Compatibility
//End ssf_flt_time_profile1_ds_BeforeExecuteDelete

//Custom Code @82-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;

	// chequeo relación con el modelo de flotas
	$table = "ssf_flt_profile_model" ;
	$where = " pm_time_prof_id = '".$ssf_flt_time_profile1->tp_profile_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("pm_time_prof_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_flt_time_profile1_ds_BeforeExecuteDelete @15-A1016128
    return $ssf_flt_time_profile1_ds_BeforeExecuteDelete;
}
//End Close ssf_flt_time_profile1_ds_BeforeExecuteDelete

//ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow @43-C4C4B80B
function ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow(& $sender)
{
    $ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile2; //Compatibility
//End ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow

//Custom Code @72-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow @43-E06D6C9F
    return $ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow;
}
//End Close ssf_flt_time_profile2_ssf_flt_profile2_Insert_BeforeShow

//ssf_flt_time_profile2_BeforeShow @39-9ABCA6B6
function ssf_flt_time_profile2_BeforeShow(& $sender)
{
    $ssf_flt_time_profile2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile2; //Compatibility
//End ssf_flt_time_profile2_BeforeShow

//Custom Code @76-2A29BDB7
if (CCGetParam("tp_profile_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_flt_time_profile2_BeforeShow @39-549EF496
    return $ssf_flt_time_profile2_BeforeShow;
}
//End Close ssf_flt_time_profile2_BeforeShow

//ssf_flt_time_profile3_tp_profile_id_BeforeShow @64-F1A76D38
function ssf_flt_time_profile3_tp_profile_id_BeforeShow(& $sender)
{
    $ssf_flt_time_profile3_tp_profile_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile3; //Compatibility
//End ssf_flt_time_profile3_tp_profile_id_BeforeShow

//Custom Code @75-2A29BDB7
$Component->SetValue(CCGetParam("tp_profile_id")) ;
//End Custom Code

//Close ssf_flt_time_profile3_tp_profile_id_BeforeShow @64-03F0D14E
    return $ssf_flt_time_profile3_tp_profile_id_BeforeShow;
}
//End Close ssf_flt_time_profile3_tp_profile_id_BeforeShow

//ssf_flt_time_profile3_BeforeShow @57-B8C3B447
function ssf_flt_time_profile3_BeforeShow(& $sender)
{
    $ssf_flt_time_profile3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile3; //Compatibility
//End ssf_flt_time_profile3_BeforeShow

//Custom Code @68-2A29BDB7
global $Weekdays ;
$ssf_flt_time_profile3->s_tp_week_day->Values = array(array("MON",$Weekdays[1]), array("TUE",$Weekdays[2]), array("WED",$Weekdays[3]), array("THU",$Weekdays[4]), array("FRI",$Weekdays[5]), array("SAT",$Weekdays[6]), array("SUN",$Weekdays[0])) ;

global $Tpl ;
	if (CCGetParam("tp_week_day") != "" || CCGetParam("ssf_flt_profile2_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tp_week_day") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_flt_time_profile3_BeforeShow @57-C99115E0
    return $ssf_flt_time_profile3_BeforeShow;
}
//End Close ssf_flt_time_profile3_BeforeShow

//ssf_flt_time_profile3_ds_AfterExecuteSelect @57-93A8DC59
function ssf_flt_time_profile3_ds_AfterExecuteSelect(& $sender)
{
    $ssf_flt_time_profile3_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_flt_time_profile3; //Compatibility
//End ssf_flt_time_profile3_ds_AfterExecuteSelect

//Custom Code @74-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_flt_time_profile3_ds_AfterExecuteSelect @57-5E04E97F
    return $ssf_flt_time_profile3_ds_AfterExecuteSelect;
}
//End Close ssf_flt_time_profile3_ds_AfterExecuteSelect

//Page_AfterInitialize @1-CE0B0B75
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFFleetTimeProfile; //Compatibility
//End Page_AfterInitialize

//Custom Code @32-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_FLT_TMPRO_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_FLT_TMPRO_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
