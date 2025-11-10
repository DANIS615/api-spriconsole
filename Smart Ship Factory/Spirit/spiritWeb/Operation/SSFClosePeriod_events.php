<?php
//BindEvents Method @1-C444BC5A
function BindEvents()
{
    global $s_shift_selection;
    global $ssf_addin_shifts_data;
    global $btnClose;
    global $ssf_addin_shifts_data1;
    global $CCSEvents;
    $s_shift_selection->s_period_type->CCSEvents["BeforeShow"] = "s_shift_selection_s_period_type_BeforeShow";
    $ssf_addin_shifts_data->period_type->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_type_BeforeShow";
    $ssf_addin_shifts_data->period_status->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_status_BeforeShow";
    $ssf_addin_shifts_data->period_start_date->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_start_date_BeforeShow";
    $ssf_addin_shifts_data->period_start_time->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data_period_start_time_BeforeShow";
    $btnClose->CCSEvents["BeforeShow"] = "btnClose_BeforeShow";
    $ssf_addin_shifts_data1->period_type->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_type_BeforeShow";
    $ssf_addin_shifts_data1->period_status->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_status_BeforeShow";
    $ssf_addin_shifts_data1->period_start_date->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_start_date_BeforeShow";
    $ssf_addin_shifts_data1->period_start_time->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_start_time_BeforeShow";
    $ssf_addin_shifts_data1->period_end_date->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_end_date_BeforeShow";
    $ssf_addin_shifts_data1->period_end_time->CCSEvents["BeforeShow"] = "ssf_addin_shifts_data1_period_end_time_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//s_shift_selection_s_period_type_BeforeShow @24-56D992F1
function s_shift_selection_s_period_type_BeforeShow(& $sender)
{
    $s_shift_selection_s_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $s_shift_selection; //Compatibility
//End s_shift_selection_s_period_type_BeforeShow

//Custom Code @52-2A29BDB7
	if (CCGetParam("s_period_type") != "" )
		$Component->SetValue(CCGetParam("s_period_type")) ;
//End Custom Code

//Close s_shift_selection_s_period_type_BeforeShow @24-378FBA9F
    return $s_shift_selection_s_period_type_BeforeShow;
}
//End Close s_shift_selection_s_period_type_BeforeShow

//DEL  //

//ssf_addin_shifts_data_period_type_BeforeShow @36-C91175EA
function ssf_addin_shifts_data_period_type_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_type_BeforeShow

//Custom Code @37-2A29BDB7
	GetPeriodType(& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data_period_type_BeforeShow @36-4FBD4818
    return $ssf_addin_shifts_data_period_type_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_type_BeforeShow

//ssf_addin_shifts_data_period_status_BeforeShow @29-3AD21AA3
function ssf_addin_shifts_data_period_status_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_status_BeforeShow

//Custom Code @33-2A29BDB7
	GetPeriodStatus(& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data_period_status_BeforeShow @29-E2D3F073
    return $ssf_addin_shifts_data_period_status_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_status_BeforeShow

//ssf_addin_shifts_data_period_start_date_BeforeShow @31-D1FCDE09
function ssf_addin_shifts_data_period_start_date_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_start_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_start_date_BeforeShow

//Custom Code @34-2A29BDB7
	GetFormatedDate (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data_period_start_date_BeforeShow @31-AA5CC390
    return $ssf_addin_shifts_data_period_start_date_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_start_date_BeforeShow

//ssf_addin_shifts_data_period_start_time_BeforeShow @32-D8BA8B3A
function ssf_addin_shifts_data_period_start_time_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data_period_start_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data; //Compatibility
//End ssf_addin_shifts_data_period_start_time_BeforeShow

//Custom Code @35-2A29BDB7
	GetFormatedTime (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data_period_start_time_BeforeShow @32-FC0E4D82
    return $ssf_addin_shifts_data_period_start_time_BeforeShow;
}
//End Close ssf_addin_shifts_data_period_start_time_BeforeShow

//btnClose_BeforeShow @51-0186FF8C
function btnClose_BeforeShow(& $sender)
{
    $btnClose_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnClose; //Compatibility
//End btnClose_BeforeShow

//Custom Code @62-2A29BDB7
global $EditisAllowed ;
	if (!$EditisAllowed)
		$Component->Visible = false ;
//End Custom Code

//Close btnClose_BeforeShow @51-0BBDEAA6
    return $btnClose_BeforeShow;
}
//End Close btnClose_BeforeShow

//ssf_addin_shifts_data1_period_type_BeforeShow @39-54160B2E
function ssf_addin_shifts_data1_period_type_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_type_BeforeShow

//Custom Code @40-2A29BDB7
	GetPeriodType(& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_type_BeforeShow @39-E3DD7750
    return $ssf_addin_shifts_data1_period_type_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_type_BeforeShow

//ssf_addin_shifts_data1_period_status_BeforeShow @41-7214C533
function ssf_addin_shifts_data1_period_status_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_status_BeforeShow

//Custom Code @42-2A29BDB7
	GetPeriodStatus(& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_status_BeforeShow @41-6C15B423
    return $ssf_addin_shifts_data1_period_status_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_status_BeforeShow

//ssf_addin_shifts_data1_period_start_date_BeforeShow @44-1127F969
function ssf_addin_shifts_data1_period_start_date_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_start_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_start_date_BeforeShow

//Custom Code @45-2A29BDB7
	GetFormatedDate (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_start_date_BeforeShow @44-816237C1
    return $ssf_addin_shifts_data1_period_start_date_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_start_date_BeforeShow

//ssf_addin_shifts_data1_period_start_time_BeforeShow @46-872F1C33
function ssf_addin_shifts_data1_period_start_time_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_start_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_start_time_BeforeShow

//Custom Code @47-2A29BDB7
	GetFormatedTime (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_start_time_BeforeShow @46-D730B9D3
    return $ssf_addin_shifts_data1_period_start_time_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_start_time_BeforeShow

//ssf_addin_shifts_data1_period_end_date_BeforeShow @58-510F8ED9
function ssf_addin_shifts_data1_period_end_date_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_end_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_end_date_BeforeShow

//Custom Code @59-2A29BDB7
	GetFormatedDate (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_end_date_BeforeShow @58-49AD8461
    return $ssf_addin_shifts_data1_period_end_date_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_end_date_BeforeShow

//ssf_addin_shifts_data1_period_end_time_BeforeShow @60-E6DD28E3
function ssf_addin_shifts_data1_period_end_time_BeforeShow(& $sender)
{
    $ssf_addin_shifts_data1_period_end_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_shifts_data1; //Compatibility
//End ssf_addin_shifts_data1_period_end_time_BeforeShow

//Custom Code @61-2A29BDB7
	GetFormatedTime (& $Component) ;
//End Custom Code

//Close ssf_addin_shifts_data1_period_end_time_BeforeShow @60-1FFF0A73
    return $ssf_addin_shifts_data1_period_end_time_BeforeShow;
}
//End Close ssf_addin_shifts_data1_period_end_time_BeforeShow

//Page_AfterInitialize @1-1C9F29FB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFClosePeriod; //Compatibility
//End Page_AfterInitialize

//Custom Code @57-2A29BDB7
global $CCSLocales ;
global $s_shift_selection ;
global $EditisAllowed ;

  if (CCGetParam("btnClose") != "" ) {
  	$period_type = CCGetParam("s_period_type") ;
	if ($period_type == "" )
		$period_type = "S" ;
  	$ssfRtrClnt = new SSFRouterClient();
  	$returncode = $ssfRtrClnt->SendReqClosePeriod($period_type);
  	if ($returncode != "OK" )
  		  $s_shift_selection->Errors->addError($CCSLocales->GetText($returncode));	
  } else {
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("REQ_SHIFT_CLOSE_PERIOD") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,false,$PathToRoot,$Redirect) ;
  }

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetPeriodType(& $Component)  {
	global $CCSLocales ;
	switch  ($Component->GetValue())
	{
	case "S":
		$Component->SetValue($CCSLocales->GetText("Shift")) ;
		break ;
	case "D":
		$Component->SetValue($CCSLocales->GetText("day")) ;
		break ;
	case "M":
		$Component->SetValue($CCSLocales->GetText("month")) ;
		break ;
	case "Y":
		$Component->SetValue($CCSLocales->GetText("year")) ;
		break ;
	}
}

function GetPeriodStatus(& $Component) {
	global $CCSLocales ;
	if ($Component->GetValue() == "O" )
		$Component->SetValue($CCSLocales->GetText("opened")) ;
	else
		$Component->SetValue($CCSLocales->GetText("closed")) ;
}

function GetFormatedDate (& $Component) {
	$strActualValue = $Component->getValue();
	$Component->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));
}

function GetFormatedTime (& $Component) {
	$strActualValue = $Component->getValue();
	$Component->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));
}
?>
