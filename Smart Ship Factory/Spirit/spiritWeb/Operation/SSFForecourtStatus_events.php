<?php
//BindEvents Method @1-BEB04B0E
function BindEvents()
{
    global $config_valuesSearch;
    global $config_values;
    global $config_values1;
    $config_valuesSearch->s_param_value->ds->CCSEvents["BeforeBuildSelect"] = "config_valuesSearch_s_param_value_ds_BeforeBuildSelect";
    $config_values->status->CCSEvents["BeforeShow"] = "config_values_status_BeforeShow";
    $config_values->ds->CCSEvents["BeforeBuildSelect"] = "config_values_ds_BeforeBuildSelect";
    $config_values1->status->CCSEvents["BeforeShow"] = "config_values1_status_BeforeShow";
    $config_values1->CCSEvents["BeforeShow"] = "config_values1_BeforeShow";
    $config_values1->CCSEvents["OnValidate"] = "config_values1_OnValidate";
}
//End BindEvents Method

//config_valuesSearch_s_param_value_ds_BeforeBuildSelect @11-A88B64F3
function config_valuesSearch_s_param_value_ds_BeforeBuildSelect(& $sender)
{
    $config_valuesSearch_s_param_value_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_valuesSearch; //Compatibility
//End config_valuesSearch_s_param_value_ds_BeforeBuildSelect

//Custom Code @37-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("param_value","'99'") ;
//End Custom Code

//Close config_valuesSearch_s_param_value_ds_BeforeBuildSelect @11-AA7ACE7D
    return $config_valuesSearch_s_param_value_ds_BeforeBuildSelect;
}
//End Close config_valuesSearch_s_param_value_ds_BeforeBuildSelect

$pump_status = array() ;

//config_values_status_BeforeShow @30-95007F37
function config_values_status_BeforeShow(& $sender)
{
    $config_values_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_status_BeforeShow

//Custom Code @31-2A29BDB7
  	global $CCSLocales ;
	global $Tpl ;
	global $pump_status ;
	$pump_id = $config_values->param_value->GetValue();
	$ssfRtrClnt = new SSFRouterClient();
	$returncode = $ssfRtrClnt->SendReqPumpStatus($pump_id);
	$status = trim(getParameterValue($returncode,"ST")) ;
		if ($status == "" )
			$status = $CCSLocales->GetText("ssf_no_answer") ;
	$status = strtolower($status) ;
	$Component->SetValue($CCSLocales->GetText($status)) ;
	$substatus = strtolower(trim(getParameterValue($returncode,"SU"))) ;
	$config_values->substatus->SetValue($CCSLocales->GetText($substatus)) ;
	$pump_status[$pump_id] = array("status"=>$status,"substatus"=>$substatus) ;
//End Custom Code

//Close config_values_status_BeforeShow @30-28B25936
    return $config_values_status_BeforeShow;
}
//End Close config_values_status_BeforeShow

//config_values_ds_BeforeBuildSelect @3-4480C083
function config_values_ds_BeforeBuildSelect(& $sender)
{
    $config_values_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_ds_BeforeBuildSelect

//Custom Code @38-2A29BDB7
	$config_values->DataSource->Order =  ReplaceNumberConvertion("param_value","'99'") ;
//End Custom Code

//Close config_values_ds_BeforeBuildSelect @3-42E4CDCD
    return $config_values_ds_BeforeBuildSelect;
}
//End Close config_values_ds_BeforeBuildSelect

//config_values1_status_BeforeShow @33-16150F9C
function config_values1_status_BeforeShow(& $sender)
{
    $config_values1_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_status_BeforeShow

//Custom Code @34-2A29BDB7
global $pump_status ;
global $CCSLocales ;
	$pump_id = $config_values1->param_value->GetValue() ;
	$status = $pump_status[$pump_id]["status"] ;
	$config_values1->h_status->SetValue($status) ;
	$config_values1->status->SetValue($CCSLocales->GetText($status)) ;
//End Custom Code

//Close config_values1_status_BeforeShow @33-CE37DF2B
    return $config_values1_status_BeforeShow;
}
//End Close config_values1_status_BeforeShow

//DEL  //

//config_values1_BeforeShow @18-413013C5
function config_values1_BeforeShow(& $sender)
{
    $config_values1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_BeforeShow

//Custom Code @28-2A29BDB7
if (CCGetParam("param_value") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close config_values1_BeforeShow @18-4B7971C8
    return $config_values1_BeforeShow;
}
//End Close config_values1_BeforeShow

//config_values1_OnValidate @18-B7802FC7
function config_values1_OnValidate(& $sender)
{
    $config_values1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_OnValidate

//Custom Code @35-2A29BDB7
if (CCGetParam("Button_Update") != "" ) {
    	$pump_id = $config_values1->param_value->GetValue();
    	$ssfRtrClnt = new SSFRouterClient();
		$status_to_change = "" ;
		if ($config_values1->h_status->GetValue() == "closed" )
			$status_to_change = "OPEN" ;
		else
			$status_to_change = "CLOSE" ;
    	$returncode = $ssfRtrClnt->SendReqPumpChangeStatus($pump_id,$status_to_change);	
		//$config_values1->Errors->addError($returncode.$status_to_change) ;
}
//End Custom Code

//Close config_values1_OnValidate @18-74821541
    return $config_values1_OnValidate;
}
//End Close config_values1_OnValidate

function getParameterValue($message, $p_parameterName)
{
	$pos = strpos($message,"|".$p_parameterName."=");
	if( $pos === false )
		return "";
	$finalPos = strpos($message,"|",$pos+1);
	if( $finalPos === false )
		return "";
	return substr($message,$pos+strlen($p_parameterName)+2,($finalPos-($pos+2))-strlen($p_parameterName));
}

?>
