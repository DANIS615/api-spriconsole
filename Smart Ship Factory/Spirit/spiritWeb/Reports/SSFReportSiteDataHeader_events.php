<?php
// //Events @1-F81417CB

//SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow @3-C12FF244
function SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow

//Custom Code @4-2A29BDB7
// -------------------------
    // Write your own code here.
  	global $DBConnection1;
  	$Component->SetValue(CCDLookUp("param_value","ssf_generic_config_values","library = 'ForecourtManager' AND parameter = 'station_name'",$DBConnection1));
// -------------------------
//End Custom Code

//Close SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow @3-FFE6971F
    return $SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_lblNombre_BeforeShow

//SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow @5-763E0E85
function SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow

//Custom Code @6-2A29BDB7
// -------------------------
    // Write your own code here.
  	global $DBConnection1;
  	$Component->SetValue(CCDLookUp("param_value","ssf_generic_config_values","library = 'ForecourtManager' AND parameter = 'station_address'",$DBConnection1));
// -------------------------
//End Custom Code

//Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow @5-D93C21F9
    return $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion1_BeforeShow

//SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow @7-7B232ABD
function SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow

//Custom Code @8-2A29BDB7
// -------------------------
    // Write your own code here.
  	global $DBConnection1;
  	$Component->SetValue(CCDLookUp("param_value","ssf_generic_config_values","library = 'ForecourtManager' AND parameter = 'station_address2'",$DBConnection1));
// -------------------------
//End Custom Code

//Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow @7-A55D0422
    return $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion2_BeforeShow

//SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow @9-7FD7C955
function SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow

//Custom Code @10-2A29BDB7
// -------------------------
    // Write your own code here.
  	global $DBConnection1;
  	$Component->SetValue(CCDLookUp("param_value","ssf_generic_config_values","library = 'ForecourtManager' AND parameter = 'station_address3'",$DBConnection1));
// -------------------------
//End Custom Code

//Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow @9-3852E554
    return $SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_lblDireccion3_BeforeShow

//SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow @11-27ACF790
function SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow

//Custom Code @12-2A29BDB7
// -------------------------
    // Write your own code here.
  	global $DBConnection1;
  	$Component->SetValue(CCDLookUp("param_value","ssf_generic_config_values","library = 'ForecourtManager' AND parameter = 'station_fiscal_id'",$DBConnection1));
// -------------------------
//End Custom Code

//Close SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow @11-C2E67A18
    return $SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_lblNIT_BeforeShow

//SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow @2-2998A71C
function SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow(& $sender)
{
    $SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFReportSiteDataHeader; //Compatibility
//End SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow

//Hide-Show Component @13-88116078
    $Parameter1 = CCGetFromGet("ViewMode", "");
    $Parameter2 = "Print";
    if (0 != CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow @2-1A87335E
    return $SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow;
}
//End Close SSFReportSiteDataHeader_frmDatosEstacion_BeforeShow


?>
