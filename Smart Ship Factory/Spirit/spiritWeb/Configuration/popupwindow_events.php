<?php
include(RelativePath . "/Communication/SSFRouterClient.php");

//BindEvents Method @1-2F79DDD7
function BindEvents()
{
    global $lblActivity;
    global $btnClose;
    global $CCSEvents;
    $lblActivity->CCSEvents["BeforeShow"] = "lblActivity_BeforeShow";
    $btnClose->CCSEvents["BeforeShow"] = "btnClose_BeforeShow";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//lblActivity_BeforeShow @3-5C6D706F
function lblActivity_BeforeShow(& $sender)
{
    $lblActivity_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblActivity; //Compatibility
//End lblActivity_BeforeShow

//Custom Code @4-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	if( CCGetParam("action") != "" )
	{

		if( CCGetParam("action") == "orgconfig" )
		{
			$lblActivity->Value = $CCSLocales->GetText("ssf_reseting_config");
	    	echo("<SCRIPT LANGUAGE='JavaScript'>
	    	var sure;
			sure = confirm('".$CCSLocales->GetText("ssf_are_u_sure")."');
			if (sure)
				window.location.href = window.location.href.substring(0,window.location.href.indexOf(\"?action=\"))+\"?action=orgconfig_ok\";
	       	else
				window.location.href = window.location.href.substring(0,window.location.href.indexOf(\"?action=\"))+\"?action=orgconfig_cancel\";
			 exit();			
			</SCRIPT>"); 
		}
		if( CCGetParam("action") == "orgconfig_ok" )
		{
			$lblActivity->Value = $CCSLocales->GetText("ssf_reseting_config");
			$Container->hdnActionToPerform->Value = CCGetParam("action");
		}
		else
		{
			$lblActivity->Value = $CCSLocales->GetText("ssf_sending_message");
			$Container->hdnActionToPerform->Value = CCGetParam("action");
		}
	}
	else
	{
		$Container->hdnActionToPerform->Value = "";
	}
// -------------------------
//End Custom Code

//Close lblActivity_BeforeShow @3-7B1DE607
    return $lblActivity_BeforeShow;
}
//End Close lblActivity_BeforeShow

//btnClose_BeforeShow @8-0186FF8C
function btnClose_BeforeShow(& $sender)
{
    $btnClose_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnClose; //Compatibility
//End btnClose_BeforeShow

//Custom Code @9-2A29BDB7
// -------------------------
    // Write your own code here.
	if( CCGetParam("action") != "" )
		$btnClose->Visible = false;
// -------------------------
//End Custom Code

//Close btnClose_BeforeShow @8-0BBDEAA6
    return $btnClose_BeforeShow;
}
//End Close btnClose_BeforeShow

//Page_BeforeShow @1-22B6454C
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $popupwindow; //Compatibility
//End Page_BeforeShow

//Custom Code @7-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	switch(CCGetParam("p_do_action"))
	{
	case "chkconfig":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->CheckConfiguration();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	case "appconfig":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->ApplyConfiguration();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	case "orgconfig_cancel":
		$Container->lblActivity->Value = $CCSLocales->GetText("ssf_configuration_restore_cancelled");
		break;
	case "orgconfig_ok":
		$db = new clsDBConnection1();
		$ssfQuery = "delete from config_values_temp";
		$db->query($ssfQuery);
		$ssfQuery = "insert into config_values_temp select * from config_values";
		$db->query($ssfQuery);
		$db->close();
		$Container->lblActivity->Value = $CCSLocales->GetText("ssf_configuration_restored");
		break;
	case "reload_prices":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->RealoadPriceChangeTable();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	case "reload_payments":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->RefreshGeneralInformation();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	case "reload_TCT":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->RealoadTankConvertionTable();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	case "aplPOSconfig":
    	$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->ApplyPOSConfiguration();
		$Container->lblActivity->Value = $CCSLocales->GetText($message);
		break;
	default:
		break;
	}
// -------------------------
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
