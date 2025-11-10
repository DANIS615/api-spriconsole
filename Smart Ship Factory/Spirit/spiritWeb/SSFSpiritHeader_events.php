<?php
include(RelativePath . "/Communication/SSFRouterClient.php");
include(RelativePath . "/Security/accessmanager.php");
include_once(RelativePath . "/Myfunctions.php");
// //Events @1-F81417CB

//SSFSpiritHeader_lbluser_BeforeShow @16-2B68A86A
function SSFSpiritHeader_lbluser_BeforeShow(& $sender)
{
    $SSFSpiritHeader_lbluser_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_lbluser_BeforeShow

//Custom Code @17-2A29BDB7
   $SSFSpiritHeader->lbluser->SetValue(CCGetSession("UserID") . " (".CCGetSession("locale") . ")");
//End Custom Code

//Close SSFSpiritHeader_lbluser_BeforeShow @16-35EEE544
    return $SSFSpiritHeader_lbluser_BeforeShow;
}
//End Close SSFSpiritHeader_lbluser_BeforeShow

//SSFSpiritHeader_lblSiteName_BeforeShow @21-467FFBD1
function SSFSpiritHeader_lblSiteName_BeforeShow(& $sender)
{
    $SSFSpiritHeader_lblSiteName_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_lblSiteName_BeforeShow

//Custom Code @23-2A29BDB7
	$SSFSpiritHeader->lblSiteName->SetValue(CCGetSession("SiteName"));
//End Custom Code

//Close SSFSpiritHeader_lblSiteName_BeforeShow @21-4EF812C5
    return $SSFSpiritHeader_lblSiteName_BeforeShow;
}
//End Close SSFSpiritHeader_lblSiteName_BeforeShow

//SSFSpiritHeader_lblSiteNumber_BeforeShow @20-69817865
function SSFSpiritHeader_lblSiteNumber_BeforeShow(& $sender)
{
    $SSFSpiritHeader_lblSiteNumber_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_lblSiteNumber_BeforeShow

//Custom Code @22-2A29BDB7
 	$SSFSpiritHeader->lblSiteNumber->SetValue(str_pad(CCGetSession("SiteNumber"),5,"0",STR_PAD_LEFT));
//End Custom Code

//Close SSFSpiritHeader_lblSiteNumber_BeforeShow @20-3D49464D
    return $SSFSpiritHeader_lblSiteNumber_BeforeShow;
}
//End Close SSFSpiritHeader_lblSiteNumber_BeforeShow

//SSFSpiritHeader_lblScriptforDateTime_BeforeShow @25-AFB72CA7
function SSFSpiritHeader_lblScriptforDateTime_BeforeShow(& $sender)
{
    $SSFSpiritHeader_lblScriptforDateTime_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_lblScriptforDateTime_BeforeShow

//Custom Code @26-2A29BDB7
$mydate = date("U");
$scrtmp = "<script type=\"text/javascript\">" ;
$scrtmp .= " var servertimeOBJ = new Date((".$mydate.")*1000);" ;
$scrtmp .= " if (servertimeOBJ != null){ " ;
$scrtmp .="        var SpiritTime = servertimeOBJ; ";
$scrtmp .= " } " ;
$scrtmp .= " else{ " ;
$scrtmp .= "        var SpiritTime = new Date(); " ;
$scrtmp .= " } " ;
$scrtmp .= " </script> " ;
	$SSFSpiritHeader->lblScriptforDateTime->SetValue($scrtmp) ;
//End Custom Code

//Close SSFSpiritHeader_lblScriptforDateTime_BeforeShow @25-6E59302D
    return $SSFSpiritHeader_lblScriptforDateTime_BeforeShow;
}
//End Close SSFSpiritHeader_lblScriptforDateTime_BeforeShow

//SSFSpiritHeader_lblDummyForMainMenu_BeforeShow @18-98D7A3C3
function SSFSpiritHeader_lblDummyForMainMenu_BeforeShow(& $sender)
{
    $SSFSpiritHeader_lblDummyForMainMenu_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_lblDummyForMainMenu_BeforeShow

//Custom Code @19-2A29BDB7
  // -------------------------
      // Write your own code here.
  	global $PathToRoot;
  	global $MenuAndStringMenu;
	global $CCSLocales ;
  	$MenuAndStringMenu = array() ;
  	CheckAccess_andReturnMenus() ;
  	//$prueba = " \"target=\"_blank\" onClick=\"return popup(this, notes)\" " ;
  	//echo " Prueba Es " .$prueba ;
  	$ssfMenuScript = "<script language=\"JavaScript\" src=\"".$PathToRoot."menu.js\"></script>";
  	$ssfMenuScript .= "<script language=\"JavaScript\" src=\"".$PathToRoot."menu_tpl.js\"></script>";
  	$ssfMenuScript .= "<script language=\"JavaScript\">";
	$ssfMenuScript .= " clock () ; ";
  	$ssfMenuScript .= "var MENU_ITEMS = [";
  	//$ssfMenuScript .= "['Home', '".$PathToRoot."index.php'],";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_GEN"] ;
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_DEV"] ;
  	//$ssfMenuScript .= "],";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_maintenance")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_MAN_ORIG_CONF"] ;
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_chk_config")."',\" javascript:popup('".$PathToRoot."Configuration/popupwindow.php?action=chkconfig','notes');\"],";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_apply_config")."',\" javascript:popup('".$PathToRoot."Configuration/popupwindow.php?action=appconfig','notes');\"],";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_delete_schedule")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_MAN_DEL_SCH"] ;
	$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_DEL_TBL"] ;
	$ssfMenuScript .= "]," ;
	$ssfMenuScript .= "]," ;
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_PAY"] ;
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prices")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_CHP_CHP"] ; 
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_grade_prices")."','".$PathToRoot. "Prices/SSFActualPrices.php']," ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_price_levels")."','".$PathToRoot. "Prices/SSFPriceLevels.php']," ;
  	$ssfMenuScript .= "],";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_conf_others")."', null, null ,";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_conf_pump_group")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_PUMP_GROUP"] ; 
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_PUMP_GROUP_DET"] ; 
	$ssfMenuScript .= "],";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_conf_events")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_EVENT"] ; 
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_EVENT_VIEWER"] ; 
	$ssfMenuScript .= "],";
	$ssfMenuScript .= "],"; // end Others
  	$ssfMenuScript .= "],"; // end Configuración
	
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_operations")."', null, null ,";
  	$ssfMenuScript .= "['Consola', '".$PathToRoot."smartConsole/console.php'],";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_sales")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_MAN_TRX_TO_TEST"] ;
	$ssfMenuScript .= "],";
	if (CCGetSession("TanksMenu") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tanks")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_CONF_TCT"] ;
		$ssfMenuScript .=  "['".$CCSLocales->GetText("ssf_tank_conversion_table_ref_val")."','".$PathToRoot."Operation/SSFTankCTView.php']," ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_TDR"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_TDEL"] ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_actual_forecourt_status")."','".$PathToRoot. "Reports/Graphics/SSFTankStatusView.php']," ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_TCHS"] ;
		//$ssfMenuScript .= "['Prueba','".$PathToRoot. "Misc/prueba.php']," ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_DLN"] ;
		$ssfMenuScript .= "],";
	}
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_forecourt")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_FOR_STA"] ;
	$ssfMenuScript .= "],";
	if (CCGetSession("POSMOD") != "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_closes")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_CIE_PER"] ;
		$ssfMenuScript .= "],";
	}
	if (CCGetSession("HOMOD") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_services")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_SER_BCH"] ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_comunications")."', null, null ,";
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_execute_process")."','".$PathToRoot. "Service/SSFRunAdHocInterface.php']," ;
		$ssfMenuScript .= "],";
		$ssfMenuScript .= "],";
	}
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_masters")."', null, null ,";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_EXM"] ;
	$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_IMM"] ;
	$ssfMenuScript .= "],";
	if (CCGetSession("CONVOL") == "Y") {
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_convol")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_CON_GPGPKEY"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_CON_CLOSE"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_OPE_CON_EXFILE"] ;
		$ssfMenuScript .= "],";
	}
	$ssfMenuScript .= "],";
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_reports")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_PER"] ;
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_TRX"] ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_misc_reports")."', null, null ,";
  		$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_VER"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_CONF"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_SEG"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_EVENT"] ;
	$ssfMenuScript .= "],"; // Miscelaneos
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_price_change_rep")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_CHP"] ;
	$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_CHPBD"] ;
	$ssfMenuScript .= "],"; // Cambio de Precios
	if (CCGetSession("TanksMenu") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tanks")."', null, null ,";
		$begin_month = date("Ymd", mktime(0, 0, 0, date("m")  , "01" , date("Y")));
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tank_daily_report")."','".$PathToRoot. "Reports/SSFTanksDailyReport.php?s_date_from=".$begin_month."&s_date_to=".GetDaysfromNow("0")."']," ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_manual_readings")."','".$PathToRoot. "Reports/SSFTanksManualReadings.php?s_date_from=".$begin_month."&s_date_to=".GetDaysfromNow("0")."']," ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_tank_deliveries")."','".$PathToRoot. "Reports/SSFTankDeliveries.php?s_date_from=".$begin_month."&s_date_to=".GetDaysfromNow("0")."']," ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_deep_deliveries")."','".$PathToRoot. "Reports/SSFDeliveryNotes.php?s_start_date=".$begin_month."&s_end_date=".GetDaysfromNow("0")."']," ;
	  	$ssfMenuScript .= "],";
	}
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_graphics")."', null, null ,";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_sales")."', null, null ,";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_sales_by_prods")."','".$PathToRoot. "Reports/Graphics/SSFTrxChartbyProduct.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_trx_byhourpump")."','".$PathToRoot. "Reports/Graphics/SSFTrxChartbyPumpHour.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_saleshourgrade")."','".$PathToRoot. "Reports/Graphics/SSFTrxChartbyGradeHour.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_sales_forecast")."','".$PathToRoot. "Reports/Graphics/SSFTankFutureSales.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
  	$ssfMenuScript .= "],";
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_flow_pump")."','".$PathToRoot. "Reports/Graphics/SSFFlowControlChart.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("1", false)."']," ;
	if (CCGetSession("TanksMenu") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tanks")."', null, null ,";
		$drdiff = $CCSLocales->GetText("ssf_deep_reading_difference") ;
		$ssfMenuScript .= "['".$drdiff."','".$PathToRoot. "Reports/Graphics/SSFTankDeepReadingDiff.php?s_date_from=".$begin_month."&s_date_to=".GetDaysfromNow("0")."']," ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_stock_forecast")."','".$PathToRoot. "Reports/Graphics/SSFTankFutureStock.php?s_date_from=".GetDaysfromNow("15", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
	  	$ssfMenuScript .= "],";
	}
  	$ssfMenuScript .= "],";
	$ssfMenuScript .= "],";
	if (CCGetSession("POSMOD") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_ticket_module")."', null, null ,";
		$ssfMenuScript .=  "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."...', null, null ," ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CONF"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_ROB"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TEN"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRT"] ;
		if(CCGetSession("SSFCustomizationGroup") == "GUATEMALA001") {
			$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SAT_ING_RES"]; }
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_speed_key")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SKG"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SKP"] ;
		$ssfMenuScript .= "]," ;
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_maintenance")."', null, null ,";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_apply_config")."',\" javascript:popup('".$PathToRoot."Configuration/popupwindow.php?action=aplPOSconfig','notes');\"],";
		$ssfMenuScript .= "]," ;
		$ssfMenuScript .= "]," ;
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_operations")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CIE"] ; 
		$ssfMenuScript .= "]," ;
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_inventory")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_JER"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRO"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRI"] ; 
		//$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_LPRI"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_MAPG"] ;
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_taxes")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TAX"] ; 
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TAX_GRP"] ; 
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_customers")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS"] ; 
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_cust_accounts")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS_ACCNT"] ; 
		//$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS_PROD"] ; 
		$ssfMenuScript .= "],";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS_TAX"] ; 
		$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_receipts")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_REC"] ; 
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_reports")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRO_REP"] ; 
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TAX_REP"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PER_REP"] ; 
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prices")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRI_REP"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRBD_REP"] ; 
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_transactions")."...', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TXH_REP"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TXR_REP"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SBP_REP"] ; 
	  	$ssfMenuScript .= "],";
		if(CCGetSession("SSFCustomizationGroup") == "GUATEMALA001") {
		  	$ssfMenuScript .= "['Bitacoras SAT...', null, null ,";
		  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SAT_TRX_REP"] ; 
			$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_SAT_RES_REP"] ; 
		  	$ssfMenuScript .= "],";
		}
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "],";
	}
	if (CCGetSession("FLEETMOD") == "Y") {
		$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_fleet_module")."', null, null ,";
		$ssfMenuScript .=  "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."...', null, null ," ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_PRMOD"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_PRPRO"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_TMPRO"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_LIPRO"] ;
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_ZOPRO"] ;
	  	$ssfMenuScript .= "],";
		if (CCGetSession("POSMOD") != "Y") {
		  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_inventory")."', null, null ,";
		  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_JER"] ; 
			$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_PRO"] ; 
			$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_MAPG"] ;
		  	$ssfMenuScript .= "],";
		  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_taxes")."', null, null ,";
		  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TAX"] ; 
		  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_TAX_GRP"] ; 
		  	$ssfMenuScript .= "],";
		}
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_customers")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS"] ; 
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_flt_cust_accounts")."', null, null ,";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_CUS_ACCNT"] ; 
		//$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS_PROD"] ; 
		$ssfMenuScript .= "],";
	  	$ssfMenuScript .= $MenuAndStringMenu["SSF_TKT_CUS_TAX"] ; 
		$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_tkt_reports")."', null, null ,";
		$ssfMenuScript .= $MenuAndStringMenu["SSF_REP_TAG_SALE"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_REP_ACCBAL"] ; 
		$ssfMenuScript .= $MenuAndStringMenu["SSF_FLT_REP_SUBACCBAL"] ; 
	  	$ssfMenuScript .= "],";
	  	$ssfMenuScript .= "],";

	} // END FLOTAS
  	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_security_rep")."', null, null ,";
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_SEG_USR"] ;
	if (CCGetSession("ATTAGMOD") == "Y") {
		$ssfMenuScript .= $MenuAndStringMenu["SSF_SEG_USR_TAG"] ;
	}
  	$ssfMenuScript .= $MenuAndStringMenu["SSF_SEG_ROL"] ;
	$ssfMenuScript .= "['".$CCSLocales->GetText("ssf_mnu_password_change")."', '".$PathToRoot."Security/SSFChangePassword.php'],";
	$ssfMenuScript .= $MenuAndStringMenu["SSF_MES_REV"] ;
  	$ssfMenuScript .= "],";
  	$ssfMenuScript .= "];";
  	$ssfMenuScript .= "</script>";
  	$ssfMenuScript .= "<script language=\"JavaScript\">new menu (MENU_ITEMS, MENU_POS);</script>";
	GetMenuTitles($ssfMenuScript) ;
  	$SSFSpiritHeader->lblDummyForMainMenu->SetValue($ssfMenuScript);
  // -------------------------


//End Custom Code

//Close SSFSpiritHeader_lblDummyForMainMenu_BeforeShow @18-A5903DF2
    return $SSFSpiritHeader_lblDummyForMainMenu_BeforeShow;
}
//End Close SSFSpiritHeader_lblDummyForMainMenu_BeforeShow

//SSFSpiritHeader_Label1_BeforeShow @29-62004809
function SSFSpiritHeader_Label1_BeforeShow(& $sender)
{
    $SSFSpiritHeader_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_Label1_BeforeShow

//Custom Code @30-2A29BDB7
	$result = SearchPath($_SERVER['SCRIPT_NAME']) ;
	$Component->SetValue($result) ;
//End Custom Code

//Close SSFSpiritHeader_Label1_BeforeShow @29-92392E8C
    return $SSFSpiritHeader_Label1_BeforeShow;
}
//End Close SSFSpiritHeader_Label1_BeforeShow

//SSFSpiritHeader_AfterInitialize @1-F40EF353
function SSFSpiritHeader_AfterInitialize(& $sender)
{
    $SSFSpiritHeader_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_AfterInitialize

//Custom Code @5-2A29BDB7
// -------------------------
    // Write your own code here.
	if(	CCGetSession("ssf_generic_config_modified") &&
		strpos($_SERVER['PHP_SELF'],"SSFGenericConfig.php") === false )
	{
		CCSetSession("ssf_generic_config_modified",false);
		$ssfRtrClnt = new SSFRouterClient();
		$ssfRtrClnt->sendGenericConfigReload();
	}
	
	if(	CCGetSession("ssf_security_modified") &&
		strpos($_SERVER['PHP_SELF'],"Roles.php") === false &&
		strpos($_SERVER['PHP_SELF'],"Users.php") === false &&
		strpos($_SERVER['PHP_SELF'],"SSFChangePassword.php") === false)
	{
		CCSetSession("ssf_security_modified",false);
		$ssfRtrClnt = new SSFRouterClient();
		$resultado = $ssfRtrClnt->sendSecurityReload();
	}

	if(	CCGetSession("ssf_price_change_modified") &&
		strpos($_SERVER['PHP_SELF'],"SSFChgPricesHeader.php") === false )
	{
		CCSetSession("ssf_price_change_modified",false);
		$ssfRtrClnt = new SSFRouterClient();
		$ssfRtrClnt->RealoadPriceChangeTable();
	}

	if(	CCGetSession("ssf_logbook_modified") &&
		strpos($_SERVER['PHP_SELF'],"SSFLogBook.php") === false )
	{
		CCSetSession("ssf_logbook_modified",false);
		$ssfRtrClnt = new SSFRouterClient();
		$ssfRtrClnt->RealoadLogBookTable();
	}


	//$browser = get_browser(null, true);
	//print_r($browser) ;
// -------------------------
//End Custom Code

//Close SSFSpiritHeader_AfterInitialize @1-558B7E50
    return $SSFSpiritHeader_AfterInitialize;
}
//End Close SSFSpiritHeader_AfterInitialize

//SSFSpiritHeader_BeforeShow @1-4BA87A4A
function SSFSpiritHeader_BeforeShow(& $sender)
{
    $SSFSpiritHeader_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSpiritHeader; //Compatibility
//End SSFSpiritHeader_BeforeShow

//Custom Code @13-2A29BDB7
	global $PathToRoot;
	global $Tpl ;
	$Tpl->SetVar("logo_source", $PathToRoot."/Styles/images/smartship.jpg");
	$Tpl->SetVar("logo_cabeza01", $PathToRoot."/Styles/Spirit/Images/base/cabeza_01.gif");
	$Tpl->SetVar("logo_back_medio", $PathToRoot."/Styles/Spirit/Images/base/back_medio.jpg");
	$Tpl->SetVar("logo_cabeza_back01", $PathToRoot."/Styles/Spirit/Images/base/cabeza_back_1.gif");
	$Tpl->SetVar("logo_cabeza_back02", $PathToRoot."/Styles/Spirit/Images/base/cabeza_back_2.gif");
	$Tpl->SetVar("logo_user01", $PathToRoot."/Styles/Spirit/Images/base/user.gif");
	$Tpl->SetVar("logo_logout", $PathToRoot."/Styles/Spirit/Images/base/logout.gif");
	$Tpl->SetVar("spiritstyle" , $PathToRoot. "/Styles/Spirit/Style.css" ) ;
	$Tpl->SetVar("menu_img1" , $PathToRoot. "/Styles/Spirit/Images/lev0_bg1.gif" ) ;
	$Tpl->SetVar("menu_img2" , $PathToRoot. "/Styles/Spirit/Images/lev0_bg2.gif" ) ;
	$Tpl->SetVar("menu_img3" , $PathToRoot. "/Styles/Spirit/Images/lev1_arrow.gif" ) ;

	global $MainPage ;
	$MainPage->Attributes->SetValue("maplink",$PathToRoot."index.php") ;
  
//End Custom Code

//Close SSFSpiritHeader_BeforeShow @1-65914CA3
    return $SSFSpiritHeader_BeforeShow;
}
//End Close SSFSpiritHeader_BeforeShow

function GenerateDeviceMenu() {
	global $CCSLocales;
	global $PathToRoot;
	$ssfQuery = "select distinct type from config_param where name='ID' order by type";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$lblValue = "";
	$Result = $db->next_record();
	while($Result)
	{
		$lblValue .= "['".$CCSLocales->GetText($db->f("type"))."','".$PathToRoot."Configuration/SSFDeviceConfig.php?p_type=".$db->f("type")."'],";
		$Result = $db->next_record();
	}
	return $lblValue ;
}

function GetDaysfromNow( $days_expression, $add=true ) {
	if (!$add) 
		$calculatedDate = date("Ymd", mktime(0, 0, 0, date("m")  , date("d")-$days_expression , date("Y")));
	else
		$calculatedDate = date("Ymd", mktime(0, 0, 0, date("m")  , date("d")+$days_expression , date("Y")));
    return $calculatedDate ;
}

function CheckAccess_andReturnMenus() {
	global $MenuAndStringMenu  ;
	$MenuAndPermission = array(	"SSF_CONF_GEN"=>"WEB_CONF_GEN_VIEW",
								"SSF_CONF_DEV"=>"WEB_CONF_DEV_VIEW",
								"SSF_CONF_TCT"=>"WEB_CONF_TCT_VIEW",
								"SSF_OPE_TDR"=>"REQ_TANKS_MANUAL_READINGS",
								"SSF_CONF_MAN_ORIG_CONF"=>"WEB_CONF_MAN_ORIG_CONF_VIEW",
								"SSF_CONF_MAN_TRX_TO_TEST"=>"WEB_CONF_MAN_TRX_TO_TEST_VIEW",
								"SSF_CONF_MAN_DEL_SCH"=>"WEB_CONF_MAN_DEL_SCH_VIEW",
								"SSF_CONF_PAY"=>"WEB_CONF_PAY_VIEW",
								"SSF_CONF_PUMP_GROUP"=>"WEB_CONF_PUMP_GROUP_VIEW",
								"SSF_CONF_PUMP_GROUP_DET"=>"WEB_CONF_PUMP_GROUP_VIEW",
								"SSF_CONF_EVENT"=>"WEB_CONF_EVENT_VIEW",
								"SSF_CONF_EVENT_VIEWER"=>"WEB_CONF_EVENT_VIEW",
								"SSF_OPE_TDEL"=>"WEB_OPE_TDEL", 
								"SSF_OPE_TCHS"=>"WEB_OPE_TCHS",
								"SSF_OPE_DLN"=>"WEB_OPE_DLN", 
								"SSF_OPE_CIE_PER"=>"WEB_OPE_CIE_PER", 
								"SSF_OPE_FOR_STA"=>"WEB_OPE_FOR_STA", 
								"SSF_OPE_SER_BCH"=>"WEB_OPE_SER_BCH", 
								"SSF_OPE_EXM"=>"WEB_OPE_EXM",
								"SSF_OPE_IMM"=>"WEB_OPE_IMM",
								"SSF_OPE_DEL_TBL"=>"WEB_OPE_DEL_TBL",
								"SSF_OPE_CON_GPGPKEY"=>"WEB_OPE_CON_GPGPKEY",
								"SSF_OPE_CON_CLOSE"=>"WEB_OPE_CON_CLOSE_VIEW",
								"SSF_OPE_CON_EXFILE"=>"WEB_OPE_CON_EXFILE",
								"SSF_REP_PER"=>"WEB_REP_PER", 
								"SSF_REP_TRX"=>"WEB_REP_TRX",
								"SSF_REP_VER"=>"WEB_REP_VER",
								"SSF_REP_CHP"=>"WEB_REP_CHP",
								"SSF_REP_CHPBD"=>"WEB_REP_CHP",
								"SSF_REP_CONF"=>"WEB_REP_CONF",
								"SSF_REP_EVENT"=>"WEB_CONF_EVENT_VIEW",
								"SSF_REP_TAG_SALE"=>"WEB_REP_TAG_SALE",
								"SSF_TKT_CONF"=>"WEB_TKT_CONF",
								"SSF_TKT_ROB"=>"WEB_TKT_ROB_VIEW",
								"SSF_TKT_SAT_ING_RES"=>"WEB_TKT_SAT_ING_RES",
								"SSF_TKT_JER"=>"WEB_TKT_JER_VIEW",
								"SSF_TKT_PRO"=>"WEB_TKT_PRO_VIEW",
								"SSF_TKT_PRI"=>"WEB_TKT_PRI_VIEW",
								"SSF_TKT_LPRI"=>"WEB_TKT_LPRI_VIEW",
								"SSF_TKT_TAX"=>"WEB_TKT_TAX_VIEW",
								"SSF_TKT_TAX_GRP"=>"WEB_TKT_TAX_GRP_VIEW",
								"SSF_TKT_CUS"=>"WEB_TKT_CUS_VIEW",
								"SSF_TKT_CUS_ACCNT"=>"WEB_TKT_CUS_ACCNT_VIEW",
								"SSF_TKT_CUS_TAX"=>"WEB_TKT_CUS_TAX_VIEW",
								"SSF_TKT_TEN"=>"WEB_TKT_TEN_VIEW",
								"SSF_TKT_REC"=>"WEB_TKT_REC_VIEW",
								"SSF_TKT_SKG"=>"WEB_TKT_SKG_VIEW",
								"SSF_TKT_SKP"=>"WEB_TKT_SKP_VIEW",
								"SSF_TKT_MAPG"=>"WEB_TKT_MAPG_VIEW",
								"SSF_TKT_TAX_REP"=>"WEB_TKT_TAX_REP_VIEW",
								"SSF_TKT_PRO_REP"=>"WEB_TKT_PRO_REP_VIEW",
								"SSF_TKT_PRI_REP"=>"WEB_TKT_PRI_REP_VIEW",
								"SSF_TKT_PRBD_REP"=>"WEB_TKT_PRI_REP_VIEW",
								"SSF_TKT_TXH_REP"=>"WEB_TKT_TXH_REP_VIEW",
								"SSF_TKT_TXR_REP"=>"WEB_TKT_TXR_REP_VIEW",
								"SSF_TKT_SBP_REP"=>"WEB_TKT_SBP_REP_VIEW",
								"SSF_TKT_SAT_TRX_REP"=>"WEB_TKT_SAT_TRX_REP_VIEW",
								"SSF_TKT_SAT_RES_REP"=>"WEB_TKT_SAT_RES_REP_VIEW",
								"SSF_TKT_PER_REP"=>"WEB_TKT_PER_REP_VIEW",
								"SSF_TKT_PRT"=>"WEB_TKT_PRT_VIEW",
								"SSF_TKT_CIE"=>"WEB_TKT_CIE_VIEW",
								"SSF_FLT_PRMOD"=>"WEB_FLT_PRMOD_VIEW",
								"SSF_FLT_PRPRO"=>"WEB_FLT_PRPRO_VIEW",
								"SSF_FLT_TMPRO"=>"WEB_FLT_TMPRO_VIEW",
								"SSF_FLT_LIPRO"=>"WEB_FLT_LIPRO_VIEW",
								"SSF_FLT_ZOPRO"=>"WEB_FLT_ZOPRO_VIEW",
								"SSF_FLT_CUS_ACCNT"=>"WEB_FLT_CUS_ACCNT_VIEW",
								"SSF_FLT_REP_ACCBAL"=>"WEB_FLT_REP_ACCBAL",
								"SSF_FLT_REP_SUBACCBAL"=>"WEB_FLT_REP_SUBACCBAL",
								"SSF_REP_SEG"=>"WEB_REP_SEG",
								"SSF_CHP_CHP"=>"WEB_CHANGEPRICE_VIEW",
								"SSF_SEG_USR"=>"WEB_SEG_USR",
								"SSF_SEG_USR_TAG"=>"WEB_SEG_USR_TAG_VIEW",
								"SSF_SEG_ROL"=>"WEB_SEG_ROL") ;

	$db = new clsDBConnection1();
	$accmgr = new AccessManager() ;
	$accmgr->GetAllPermissionsforUser($db, $Result);
	while($Result)
	{
		$key = array() ;
		//$key = array_search ($db->f("action_id"),$MenuAndPermission ) ;
		$key = array_keys ($MenuAndPermission,$db->f("action_id")) ;
		if ($key != false ) {
			//$MenuAndStringMenu[$key] = GetMenuString($key) ;
			for ($i=0;$i<count($key);$i++) {
				$MenuAndStringMenu[$key[$i]] = GetMenuString($key[$i]) ;
			}
		}
		$Result = $db->next_record();
	}	
	$db->close();
	//print_r($MenuAndStringMenu) ;
	$user = CCGetSession("UserID");
	if (strtolower($user) == "ssf" ) {
		$MenuAndStringMenu["SSF_MES_REV"] = GetMenuString("SSF_MES_REV") ;
	}
}

function GetMenuString ($MenuCode) {
	global $PathToRoot;
	global $CCSLocales ;
	$strPermission = "" ;

	switch ($MenuCode) {
	case 'SSF_CONF_GEN':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_generic")."','".$PathToRoot."Configuration/SSFGenericConfig.php']," ;
		break;
	case "SSF_CONF_DEV":
		$DeviceMenu = GenerateDeviceMenu();
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_devices")."', null, null ,".$DeviceMenu."],"; 
		break;
	case 'SSF_CONF_TCT':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_calibration")."','".$PathToRoot."Operation/SSFTankConvertTable.php']," ;
		break;
	case 'SSF_OPE_TDR':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_deepreading")."','".$PathToRoot."Operation/SSFTankDeepReading.php']," ;
		break;
	case 'SSF_OPE_DLN':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_DeliveryNotes")."','".$PathToRoot."Operation/SSFDeliveryNotes.php']," ;
		break;
	case 'SSF_OPE_TCHS':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_tank_change_status")."','".$PathToRoot."Operation/SSFChangeTankStatus.php']," ;
		break;
	case 'SSF_OPE_TDEL':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_end_tank_delivery")."','".$PathToRoot."Operation/SSFTankDeliveries.php']," ;
		break;
	case 'SSF_OPE_FOR_STA':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_actual_forecourt_status")."','".$PathToRoot."Operation/SSFForecourtStatus.php']," ;
		break;
	case 'SSF_OPE_SER_BCH':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_admin_batch")."','".$PathToRoot."Service/SSFAdminBatch.php']," ;
		break;
	case 'SSF_OPE_EXM':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_export_masters")."','".$PathToRoot."Operation/SSFExportMasters.php']," ;
		break;
	case 'SSF_OPE_IMM':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_import_masters")."','".$PathToRoot."Operation/SSFImportMasters.php']," ;
		break;
	case 'SSF_OPE_CON_GPGPKEY':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_convol_pkey")."','".$PathToRoot."Operation/Convol/SSFImportPublicKey.php']," ;
		break;
	case 'SSF_OPE_CON_CLOSE':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_convol_close")."','".$PathToRoot."Operation/Convol/SSFConvolCloses.php']," ;
		break;
	case 'SSF_OPE_CON_EXFILE':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_convol_exfile")."','".$PathToRoot."Operation/Convol/SSFConvolManualExport.php']," ;
		break;
	case 'SSF_OPE_DEL_TBL':
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_delete_tables")."','".$PathToRoot."Operation/SSFDeleteTables.php']," ;
		break;
	case "SSF_CONF_MAN_ORIG_CONF":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_original_conf")."',\" javascript:popup('".$PathToRoot."Configuration/popupwindow.php?action=orgconfig','notes');\"]," ;
		break;
	case "SSF_CONF_MAN_TRX_TO_TEST":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_pump_test")."','".$PathToRoot."Operation/SSFTransactionPumpTest.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;
	case "SSF_CONF_MAN_DEL_SCH":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."','".$PathToRoot."Configuration/SSFDeleteSchedule.php']," ;
		break;
	case "SSF_CONF_PAY":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_payment_type")."','".$PathToRoot."Configuration/SSFPaymentType.php']," ;
		break;
	case "SSF_CONF_PUMP_GROUP":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_conf_pump_group_header")."','".$PathToRoot."Configuration/SSFPumpGroupHeader.php']," ;
		break;
	case "SSF_CONF_PUMP_GROUP_DET":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_conf_pump_group_detail")."','".$PathToRoot."Configuration/SSFPumpGroupDetail.php']," ;
		break;
	case "SSF_CONF_EVENT":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."','".$PathToRoot."Configuration/SSFLogBook.php']," ;
		break;
	case "SSF_CONF_EVENT_VIEWER":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_event_viewer")."','".$PathToRoot."Configuration/SSFLogBookViewer.php']," ;
		break;
	case "SSF_OPE_CIE_PER":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_close_periods")."', '".$PathToRoot."Operation/SSFClosePeriod.php'],";
		break;
	case "SSF_REP_PER":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_periods_rep")."','".$PathToRoot."Reports/SSFShiftReport_Selector.php']," ;
		break;
	case "SSF_REP_TRX":
		$strPermission = "['".$CCSLocales->GetText("ssf_mnu_transactions")."...', null, null ," ;
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_all_transactions")."','".$PathToRoot."Reports/SSFTransactionsReport.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_trans_by_date")."','".$PathToRoot."Reports/SSFTrxGroupByDate.php?s_date_from=".GetDaysfromNow("10", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_trans_by_hourpump")."','".$PathToRoot."Reports/SSFTrxGroupByHourPump.php?s_date_from=".GetDaysfromNow("10", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		$strPermission .= "]," ;
		break;
	case "SSF_REP_VER":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_version_rep")."','".$PathToRoot."Reports/SSFModulesVersion.php']," ;
		break;
	case "SSF_REP_CHP":
		$strPermission =  "['".$CCSLocales->GetText("ssf_pcrbyproduct")."','".$PathToRoot."Reports/SSFPriceChangeReport.php?s_application_date=".GetDaysfromNow("15", false)."&e_application_date=".GetDaysfromNow("15")."']," ;
		break;	
	case "SSF_REP_CHPBD":
		$strPermission =  "['".$CCSLocales->GetText("SSF_pcrbyDate")."','".$PathToRoot."Reports/SSFPriceChangeReportbyDate.php?s_application_date=".GetDaysfromNow("15", false)."&e_application_date=".GetDaysfromNow("15")."']," ;
		break;	
	case "SSF_REP_SEG":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_security_rep")."','".$PathToRoot."Reports/SSFSecurityReport.php']," ;
		break;	
	case "SSF_REP_EVENT":
		$strPermission =  "['".$CCSLocales->GetText("ssf_addin_slb_events_config")."','".$PathToRoot."Reports/SSFLogBookReport.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;	
	case "SSF_REP_TAG_SALE":
		$strPermission =  "['".$CCSLocales->GetText("ssf_addin_tag_sale_report")."','".$PathToRoot."Fleet/Reports/SSFTagSaleReport.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;	
	case "SSF_REP_CONF":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."','".$PathToRoot."Reports/SSFConfigReport.php']," ;
		break;	
	case "SSF_CHP_CHP":
		$strPermission =  "['".$CCSLocales->GetText("ssf_addin_prices_change")."','".$PathToRoot."Prices/SSFChgPricesHeader.php']," ;
		break;	
	case "SSF_SEG_USR":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_users")."','".$PathToRoot."Security/Users.php']," ;
		break;	
	case "SSF_SEG_ROL":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_roles")."','".$PathToRoot."Security/Roles.php']," ;
		break;	
	case "SSF_SEG_USR_TAG":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_seg_usr_tag")."','".$PathToRoot."Security/UsersTag.php']," ;
		break;	
	case "SSF_MES_REV":
		$strPermission =  "['".$CCSLocales->GetText("ssf_mnu_spirit_messages")."','".$PathToRoot."Communication/SSFMessageReview.php']," ;
		break;	
	// TICKET
	case "SSF_TKT_CONF":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_pos_config")."','".$PathToRoot."POS/SSFTicketPOS.php']," ;
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_periods_group")."','".$PathToRoot."POS/SSFTicketPeriodsGroup.php']," ;
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_uom_config")."','".$PathToRoot."POS/SSFTicketUOM.php']," ;
		break;
	case "SSF_TKT_ROB":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_rob_config")."','".$PathToRoot."POS/SSFTicketRobot.php']," ;
		break;
	case "SSF_TKT_SAT_ING_RES":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_sat_ing_res")."','".$PathToRoot."POS/Customizations/SSFIngresoResolucionSAT.php']," ;
		break;
	case "SSF_TKT_CIE":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_close_periods")."','".$PathToRoot."POS/Operation/SSFTicketClosePeriod.php']," ;
		break;
	case "SSF_TKT_JER":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_categ_config")."','".$PathToRoot."POS/Products/SSFTicketInvCat.php']," ;
		break;
	case "SSF_TKT_PRO":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prod_config")."','".$PathToRoot."POS/Products/SSFTicketProducts.php']," ;
		break;
	case "SSF_TKT_PRT":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_printer_config")."','".$PathToRoot."POS/Other/SSFTicketPrinter.php']," ;
		break;
	case "SSF_TKT_PRI":
		$strPermission .= "['".$CCSLocales->GetText("ssf_tkt_prices")."','".$PathToRoot."POS/Products/SSFTicketProductPrices.php']," ;
		break;
	case "SSF_TKT_LPRI":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_price_lists")."','".$PathToRoot."POS/Products/SSFTicketPriceList.php']," ;
		break;
	case "SSF_TKT_TAX":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_taxes_config")."','".$PathToRoot."POS/Tax/SSFTicketTaxes.php']," ;
		break;
	case "SSF_TKT_TAX_GRP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_group_taxes_config")."','".$PathToRoot."POS/Tax/SSFTicketTaxGroup.php']," ;
		break;
	case "SSF_TKT_CUS":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_cust_config")."','".$PathToRoot."POS/Customers/SSFTicketCustomers.php']," ;
		break;
	case "SSF_TKT_CUS_ACCNT":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_account")."','".$PathToRoot."POS/Customers/SSFTicketCustomersAccounts.php']," ;
		break;
	case "SSF_TKT_CUS_TAX":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_cust_tax_config")."','".$PathToRoot."POS/Customers/SSFTicketCustomersTax.php']," ;
		break;
	case "SSF_TKT_TEN":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_tender_config")."','".$PathToRoot."POS/SSFTicketTenders.php']," ;
		break;
	case "SSF_TKT_REC":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_config")."','".$PathToRoot."POS/Other/SSFTicketReceipts.php']," ;
		break;
	case "SSF_TKT_SKG":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_spk_group_config")."','".$PathToRoot."POS/Other/SSFTicketSpeedKeyGroups.php']," ;
		break;
	case "SSF_TKT_SKP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_spk_config")."','".$PathToRoot."POS/Other/SSFTicketSpeedKey.php']," ;
		break;
	case "SSF_TKT_MAPG":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prod_mapp_config")."','".$PathToRoot."POS/Other/SSFTicketMapGrades.php']," ;
		break;
	case "SSF_TKT_TAX_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_tax_config")."','".$PathToRoot."POS/Reports/SSFTicketTaxConfReport.php']," ;
		break;
	case "SSF_TKT_PRO_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prod_config")."','".$PathToRoot."POS/Reports/SSFTicketProdReport.php']," ;
		break;
	case "SSF_TKT_PRI_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_tkt_prices")."','".$PathToRoot."POS/Reports/SSFTicketPricesReport.php']," ;
		break;
	case "SSF_TKT_PRBD_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_prices_by_date_rep")."','".$PathToRoot."POS/Reports/SSFTicketPricesByDateReport.php']," ;
		break;
	case "SSF_TKT_TXH_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_all_transactions")."','".$PathToRoot."POS/Reports/SSFTicketTrxHReport.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;
	case "SSF_TKT_TXR_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_report_receipt")."','".$PathToRoot."POS/Reports/SSFTicketTrxRReport.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;
	case "SSF_TKT_SAT_TRX_REP":
		$strPermission .= "['Bitacora de Transacciones','".$PathToRoot."POS/Reports/Customizations/SSFBitacoraDeTransacciones.php']," ;
		break;
	case "SSF_TKT_SAT_RES_REP":
		$strPermission .= "['Bitacora de Resoluciones','".$PathToRoot."POS/Reports/Customizations/SSFBitacoraDeResoluciones.php']," ;
		break;
	case "SSF_TKT_SBP_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_sales_by_prods")."','".$PathToRoot."POS/Reports/SSFTicketSalesbyProd.php?s_date_from=".GetDaysfromNow("3", false)."&s_date_to=".GetDaysfromNow("0")."']," ;
		break;
	case "SSF_TKT_PER_REP":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_periods_rep")."','".$PathToRoot."POS/Reports/SSFTicketPeriods.php']," ;
		break;
	case "SSF_FLT_PRPRO":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_products")."','".$PathToRoot."Fleet/Configuration/SSFFleetProducts.php']," ;
		break;
	case "SSF_FLT_PRMOD":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_model")."','".$PathToRoot."Fleet/Configuration/SSFFleetModel.php']," ;
		break;
	case "SSF_FLT_TMPRO":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_time")."','".$PathToRoot."Fleet/Configuration/SSFFleetTimeProfile.php']," ;
		break;
	case "SSF_FLT_LIPRO":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_limit")."','".$PathToRoot."Fleet/Configuration/SSFFleetLimitProfile.php']," ;
		break;
	case "SSF_FLT_ZOPRO":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_zone")."','".$PathToRoot."Fleet/Configuration/SSFFleetZoneProfile.php']," ;
		break;
	case "SSF_FLT_CUS_ACCNT":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_tkt_account")."','".$PathToRoot."Fleet/Accounts/SSFFleetAccounts.php']," ;
		break;
	case "SSF_FLT_REP_ACCBAL":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_rep_accbal")."','".$PathToRoot."Fleet/Reports/SSFAccountBalance.php']," ;
		break;
	case "SSF_FLT_REP_SUBACCBAL":
		$strPermission .= "['".$CCSLocales->GetText("ssf_mnu_flt_rep_subaccbal")."','".$PathToRoot."Fleet/Reports/SSFSubAccountBalance.php']," ;
		break;
	default:
		$strPermission = "" ;
	}
	return $strPermission ;
}
	//$ssfMenuScript .= "],";


function GetMenuTitles($strMenu) {
	$strMenu = strstr($strMenu, "var MENU_ITEMS =") ;
	$menusArray = array() ;
	global $menufather ;
	$menufather = array() ;
	global $menuson ;
	$menuson = array() ;
    $menusArray = explode("[",$strMenu) ;
	$f = 0 ;
	$s = 0 ;
	$actual_level = 0 ;
	$actual_father = 0 ;
	for ($i=0;$i<=count($menusArray);$i++) {
		if ( strpos($menusArray[$i],"null") > 0 ) {
			$menutext = substr($menusArray[$i],1) ;
			//echo $menutext ;
			if ($actual_level == 0) {
				$father = $actual_level ;
				$master = 1 ;
			} else {
				$father = -1 ;
				$master = 0 ;
			}
			$menufather_pos = strpos($menutext,".") ;
			if ($menufather_pos === false )
				$menufather_pos = strpos($menutext,"'") ;
			$menufather[$f] = array("name"=>substr($menutext,0,$menufather_pos), "father"=>$father,"master"=>$master  ) ;
			$actual_father = $f ;
			$f++ ;
			$actual_level++ ;
			//echo " El nivel actual es ".$actual_level ;

			$closing_levels = substr_count($menusArray[$i], ',]'); 
			if ($closing_levels > 0) {
				//echo " Actual father: ".$actual_father."  Cierro ".$closing_levels." niveles.. f vale ".$f ;
			    $temp_index = $actual_father ;
				for($j=1;$j<=$closing_levels;$j++) {
				    $temp_index1 = $temp_index ;
					$father_index = GetFatherIndex($temp_index1-1,$temp_index) ;
					if ($menufather[$temp_index1]["master"]	== 0) {				
						$menufather[$temp_index1]["father"] = $father_index ;
						//echo " father ".$menufather[$temp_index]["father"]; 
					}
				}
				//echo " Al father ".$actual_father." le pongo el padre ".$father_index ;
				$actual_level = $actual_level - $closing_levels ;
				$actual_father = $father_index ;
			} 

		} else {
			$menuson[$s] = substr($menusArray[$i],1) ;
			$menuname_pos = strpos($menuson[$s],"'") ;
			$menuson_name = substr($menuson[$s],0,$menuname_pos ) ;
			$urlson_name  = substr($menuson[$s],$menuname_pos+1 ) ;
			$closing_levels = substr_count($urlson_name, ',]'); 

			$menuson[$s] = array("son"=>$menuson_name,"url"=>$urlson_name ,"father"=>$actual_father ) ;
			$s++ ;

			if ($closing_levels > 0) {
				//echo " Actual father: ".$actual_father."  Cierro ".$closing_levels." niveles.. f vale ".$f ;
			    $temp_index = $actual_father ;
				for($j=1;$j<=$closing_levels;$j++) {
				    $temp_index1 = $temp_index ;
					$father_index = GetFatherIndex($temp_index1-1,$temp_index) ;
					if ($menufather[$temp_index1]["master"]	== 0) {				
						$menufather[$temp_index1]["father"] = $father_index ;
						//echo " father ".$menufather[$temp_index]["father"]; 
					}
				}
				//echo " Al father ".$actual_father." le pongo el padre ".$father_index ;
				$actual_level = $actual_level - $closing_levels ;
				$actual_father = $father_index ;
			} 
      	}
	}
	//print_r($menufather) ;
	//print_r($menuson) ;
}

function SearchPath($url) {
	global $menufather  ;
	global $menuson  ;
	$result = "" ;
	$url = substr($url,strlen(dirname($url))+1) ;
	for ($i=0;$i<=count($menuson);$i++) {
		//echo $menuson[$i]["url"] ;
		if (strpos($menuson[$i]["url"],$url) !== false ) {
			$result = $i ;
			break ;
		} 
	}
	//print_r($menufather) ;
	//echo "valor ".$url." ".$menuson[$result]["son"]." father ".$menufather[$menuson[$result]["father"]] ;
	if ($result != "") {
		$strfather = "" ;
		$father = $menuson[$result]["father"] ;
		$strfather = $menufather[$father]["name"]." > " ;
		if ( $menufather[$father]["master"] != 1 ) {
			$father = $menufather[$father]["father"] ;
			$master = $menufather[$father]["master"] ;
			while ($master != 1) {
				$strfather = $menufather[$father]["name"]." > ".$strfather ; 
				$father = $menufather[$father]["father"] ;
				$master = $menufather[$father]["master"] ;
			}

			$strfather = $menufather[$father]["name"]." > ".$strfather ; 
		}
		$value = " HOME > ".$strfather.$menuson[$result]["son"] ;
	}
	return $value ;
}

function GetFatherIndex($index, & $res_index) {
	global $menufather ;
	$index_result = 0 ;
	//echo " index ".$index ;
	for ($i=$index;$i>=0; $i--) {
		//echo " y i es ".$i." menufather es ".$menufather[$i]["name"]." y el father es ".$menufather[$i]["father"];
		if ($menufather[$i]["father"] == -1) {
			$index_result = $i ;
			break ;
		}
		if ($menufather[$i]["father"] == 0 && $menufather[$i]["master"] == 1) {
			$index_result = $i ;
			break ;
		}
	}
	
	$res_index = $i ;
	//echo " index_result ".$index_result ;
	return $index_result ;
}

?>
