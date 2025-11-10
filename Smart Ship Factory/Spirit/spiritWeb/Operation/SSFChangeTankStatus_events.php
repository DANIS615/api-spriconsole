<?php
//BindEvents Method @1-65FAC023
function BindEvents()
{
    global $config_valuesSearch;
    global $config_values;
    global $config_values1;
    global $CCSEvents;
    $config_valuesSearch->s_param_value->ds->CCSEvents["BeforeBuildSelect"] = "config_valuesSearch_s_param_value_ds_BeforeBuildSelect";
    $config_values->status->CCSEvents["BeforeShow"] = "config_values_status_BeforeShow";
    $config_values->ds->CCSEvents["BeforeBuildSelect"] = "config_values_ds_BeforeBuildSelect";
    $config_values1->Label1->CCSEvents["BeforeShow"] = "config_values1_Label1_BeforeShow";
    $config_values1->Image1->CCSEvents["BeforeShow"] = "config_values1_Image1_BeforeShow";
    $config_values1->Button_Update->CCSEvents["BeforeShow"] = "config_values1_Button_Update_BeforeShow";
    $config_values1->CCSEvents["BeforeShow"] = "config_values1_BeforeShow";
    $config_values1->CCSEvents["OnValidate"] = "config_values1_OnValidate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//config_valuesSearch_s_param_value_ds_BeforeBuildSelect @4-A88B64F3
function config_valuesSearch_s_param_value_ds_BeforeBuildSelect(& $sender)
{
    $config_valuesSearch_s_param_value_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_valuesSearch; //Compatibility
//End config_valuesSearch_s_param_value_ds_BeforeBuildSelect

//Custom Code @5-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("param_value","'99'") ;
//End Custom Code

//Close config_valuesSearch_s_param_value_ds_BeforeBuildSelect @4-AA7ACE7D
    return $config_valuesSearch_s_param_value_ds_BeforeBuildSelect;
}
//End Close config_valuesSearch_s_param_value_ds_BeforeBuildSelect

//config_values_status_BeforeShow @14-95007F37
function config_values_status_BeforeShow(& $sender)
{
    $config_values_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_status_BeforeShow

//Custom Code @15-2A29BDB7

	global $tank_status ;
	$tank_id = $config_values->param_value->GetValue();
	$db = new clsDBConnection1() ;
	$ssfQuery = " select probe_status from ssf_tank_actual_info where tank_id = ".$tank_id ;
	$db->query($ssfQuery) ;
	$result = $db->next_record() ;
	if ($result) {
		$status = $db->f("probe_status") ;
		$image = "" ;
		$tipText = "" ;
		GetStatusImage($status,$image,$tipText  ) ;
		$Component->SetValue($tipText) ;
	}
	$tank_status[$tank_id] = array("status"=>$status) ;
//End Custom Code

//Close config_values_status_BeforeShow @14-28B25936
    return $config_values_status_BeforeShow;
}
//End Close config_values_status_BeforeShow

//config_values_ds_BeforeBuildSelect @10-4480C083
function config_values_ds_BeforeBuildSelect(& $sender)
{
    $config_values_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_ds_BeforeBuildSelect

//Custom Code @18-2A29BDB7
	$Component->DataSource->Order = ReplaceNumberConvertion("param_value","'99'") ;
//End Custom Code

//Close config_values_ds_BeforeBuildSelect @10-42E4CDCD
    return $config_values_ds_BeforeBuildSelect;
}
//End Close config_values_ds_BeforeBuildSelect

//config_values1_Label1_BeforeShow @35-FECF31E7
function config_values1_Label1_BeforeShow(& $sender)
{
    $config_values1_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_Label1_BeforeShow

//Custom Code @36-2A29BDB7
global $tank_status ;
global $CCSLocales ;
	$tank_id = $config_values1->param_value->GetValue() ;
	$status = $tank_status[$tank_id]["status"] ;
	if ($status == 4)
		$Component->SetValue(" (".$CCSLocales->GetText("ssf_open").")") ;
	else
		$Component->SetValue(" (".$CCSLocales->GetText("ssf_close").")") ;
//End Custom Code

//Close config_values1_Label1_BeforeShow @35-FB2576F3
    return $config_values1_Label1_BeforeShow;
}
//End Close config_values1_Label1_BeforeShow

//config_values1_Image1_BeforeShow @37-3FB30217
function config_values1_Image1_BeforeShow(& $sender)
{
    $config_values1_Image1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_Image1_BeforeShow

//Custom Code @38-2A29BDB7
  global $tank_status ;
  global $CCSLocales ;

  	$tank_id = $config_values1->h_tank_id->GetValue() ;
  	$status = $tank_status[$tank_id]["status"] ;
	$config_values1->h_status->SetValue($status) ;
  	$image = "" ;
  	$tipText = "" ;
  	GetStatusImage($status,$image,$tipText  ) ;
  	$config_values1->status->SetValue($CCSLocales->GetText("status")." : ".$tipText) ;
	$Component->SetValue($image) ;
//End Custom Code

//Close config_values1_Image1_BeforeShow @37-7B1EEBCB
    return $config_values1_Image1_BeforeShow;
}
//End Close config_values1_Image1_BeforeShow

//config_values1_Button_Update_BeforeShow @30-0112213B
function config_values1_Button_Update_BeforeShow(& $sender)
{
    $config_values1_Button_Update_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_Button_Update_BeforeShow

//Custom Code @41-2A29BDB7
global $EditisAllowed ;
if (!$EditisAllowed)
	$Component->Visible = false ;
//End Custom Code

//Close config_values1_Button_Update_BeforeShow @30-300EDA42
    return $config_values1_Button_Update_BeforeShow;
}
//End Close config_values1_Button_Update_BeforeShow

//DEL  

//config_values1_BeforeShow @25-413013C5
function config_values1_BeforeShow(& $sender)
{
    $config_values1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_BeforeShow

//Custom Code @31-2A29BDB7
if (CCGetParam("param_value") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close config_values1_BeforeShow @25-4B7971C8
    return $config_values1_BeforeShow;
}
//End Close config_values1_BeforeShow

//config_values1_OnValidate @25-B7802FC7
function config_values1_OnValidate(& $sender)
{
    $config_values1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values1; //Compatibility
//End config_values1_OnValidate

//Custom Code @32-2A29BDB7
global $CCSLocales ;
if (CCGetParam("Button_Update") != "" ) {
    	$tank_id = $config_values1->h_tank_id->GetValue() ;
    	$ssfRtrClnt = new SSFRouterClient();
		$status_to_change = "" ;
		if ($config_values1->h_status->GetValue() == "4" )
			$status_to_change = "OPEN" ;
		else
			$status_to_change = "CLOSE" ;

    	$returncode = $ssfRtrClnt->SendReqTankChangeStatus($tank_id, $status_to_change);	
		
		if ($returncode != "OK") { 
			$config_values1->Errors->addError($CCSLocales->GetText($returncode)) ;
		}
		// No devuelve ningún mensaje.
}
//End Custom Code

//Close config_values1_OnValidate @25-74821541
    return $config_values1_OnValidate;
}
//End Close config_values1_OnValidate

//Page_AfterInitialize @1-A61DE763
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFChangeTankStatus; //Compatibility
//End Page_AfterInitialize

//Custom Code @40-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_OPE_TCHS") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,false,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  



?>
