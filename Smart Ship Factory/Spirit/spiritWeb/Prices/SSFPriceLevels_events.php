<?php
//BindEvents Method @1-2B02231E
function BindEvents()
{
    global $ssf_device_data;
    global $CCSEvents;
    $ssf_device_data->attr_value->CCSEvents["OnValidate"] = "ssf_device_data_attr_value_OnValidate";
    $ssf_device_data->CCSEvents["BeforeShow"] = "ssf_device_data_BeforeShow";
    $ssf_device_data->ds->CCSEvents["BeforeExecuteSelect"] = "ssf_device_data_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_device_data_attr_value_OnValidate @23-BECB081A
function ssf_device_data_attr_value_OnValidate(& $sender)
{
    $ssf_device_data_attr_value_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_device_data; //Compatibility
//End ssf_device_data_attr_value_OnValidate

//Custom Code @30-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	global $CCSLocales;
	if(CCGetParam("Button_Submit") != "")
	{
    	$ssfRtrClnt = new SSFRouterClient();
		$ssfWhere = "device_id = '".$Container->h_device_id->GetValue()."' and attr_name = 'PumpPriceLevel'";
		if($sender->GetValue() != CCDLookUp("attr_value","ssf_device_data",$ssfWhere,$DBConnection1))
		{
	    	$returncode = $ssfRtrClnt->SendReqPumpPriceLevelChange($Container->h_device_id->GetValue(),$sender->GetValue());	
			if($returncode != "OK")
			$ssf_device_data->Errors->addError($CCSLocales->GetText($returncode));
		}
	}
// -------------------------
//End Custom Code

//Close ssf_device_data_attr_value_OnValidate @23-8C71F43C
    return $ssf_device_data_attr_value_OnValidate;
}
//End Close ssf_device_data_attr_value_OnValidate

//ssf_device_data_BeforeShow @16-02B75919
function ssf_device_data_BeforeShow(& $sender)
{
    $ssf_device_data_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_device_data; //Compatibility
//End ssf_device_data_BeforeShow

//Custom Code @32-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed;
	global $Tpl;
	if($EditisAllowed == false)
		$Tpl->setvar("ssf_disabled","disabled");
// -------------------------
//End Custom Code

//Close ssf_device_data_BeforeShow @16-E57DE633
    return $ssf_device_data_BeforeShow;
}
//End Close ssf_device_data_BeforeShow

//ssf_device_data_ds_BeforeExecuteSelect @16-3C429AE7
function ssf_device_data_ds_BeforeExecuteSelect(& $sender)
{
    $ssf_device_data_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_device_data; //Compatibility
//End ssf_device_data_ds_BeforeExecuteSelect

//Custom Code @33-2A29BDB7
	$ssf_device_data->DataSource->Order = ReplaceNumberConvertion($ssf_device_data->DataSource->Order,"'99'") ;
//End Custom Code

//Close ssf_device_data_ds_BeforeExecuteSelect @16-6007CE2D
    return $ssf_device_data_ds_BeforeExecuteSelect;
}
//End Close ssf_device_data_ds_BeforeExecuteSelect


//Page_AfterInitialize @1-1A1E2BA8
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPriceLevels; //Compatibility
//End Page_AfterInitialize

//Custom Code @13-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("REQ_PUMP_SET_PRICE_LEVEL_ID_") ;
// -------------------------
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
