<?php
define("RelativePath", "../..");
include(RelativePath . "/Common.php");

    $intCounter = 0;
	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_unit_option = CCGetParam("s_unit_option",1) ;
	$s_unit_id = CCGetParam("s_unit_id") ;
	//import_request_variables("gp", "s_") ;
	//setcookie("SPIRITWEB",$s_unit_id) ;
	
	if ($s_unit_option == 1)
   		$ssfQuery = "SELECT grade_id, SUM(volume) as money FROM ssf_pump_sales, config_values b, config_values c  ";
	else
		$ssfQuery = "SELECT grade_id, SUM(money) as money FROM ssf_pump_sales, config_values b, config_values c ";
   $ssfQuery .= " where end_date >= '".$s_date_from. "'" ;
   if  ($s_date_to != "" )
   		$ssfQuery .= " and end_date <= '".$s_date_to. "'" ; 
	if ($s_pump_id != "" )
   		$ssfQuery .= " and pump_id = '".$s_pump_id. "'" ; 	
	$ssfQuery .= " and b.library = 'grade' ".
				 " and b.groupname = 'general' ".
				 " and b.parameter = 'number' ".
				" and b.param_value = grade_id ".
				" and c.library = b.library ".
				" and c.groupname = b.groupname ".
				" and b.id =  c.id ".
				" and c.parameter = 'vol_unit_desc' " ;
	if ($s_unit_id != "" )
		$ssfQuery .= " and c.param_value = '".$s_unit_id."'" ;
   $ssfQuery .= " GROUP BY grade_id  ";
   $db = new clsDBConnection1();
   $db1 = new clsDBConnection1();
   $db2 = new clsDBConnection1();
  
//	setcookie("SPIRITWEB",$ssfQuery) ; 
  // generate the XML for the chart 
 // $strXML = "<graph xAxisName='Producto' shownames='1' showvalues='1' showLegend='1' chartLeftMargin='0' bgcolor='FFFFFF' chartRightMargin='0' chartTopMargin='0' numberPrefix='\$' pieRadius='150' pieYScale='60' canvasbgcolor='FFF4FC' formatNumber='1'
 //decimalPrecision='2' animation='1' showCanvas='0' >";
/*	if ($s_unit_option == 1)
		$numberprefix = "" ;
	else
		$numberprefix = "\$" ; */

	$strXML = "<graph xAxisName='Producto' shownames='1' showvalues='1' showLegend='1' chartLeftMargin='0' bgcolor='FFFFFF' chartRightMargin='0' chartTopMargin='0' numberPrefix=''  canvasbgcolor='FFF4FC' formatNumber='1'
	decimalPrecision='2' animation='1' showCanvas='0' >";



  $db->query($ssfQuery);
  $result = $db->next_record(); 

  while ($result) {
    // increase the counter (range - 1 to intFCColors_count)
    $intCounter = $intCounter + 1;
    // append the data

	$product = "" ;
	$ssfQuery = "select id from config_values where library = 'grade' and groupname = 'general' and parameter = 'number' ";
	$ssfQuery .= " and param_value = '".$db->f("grade_id")."' ";
	$db1->query($ssfQuery);
  	$result1 = $db1->next_record(); 
	if ($result1)
		$product = $db1->f("id") ;
	
	$color = "" ;
	$ssfQuery = "select param_value from config_values where library = 'grade' and groupname = 'general' " ;
	$ssfQuery .= " and parameter = 'color' and id = '".$product."' " ;

	$db2->query($ssfQuery);
  	$result2 = $db2->next_record(); 
	if ($result2)
		$color = $db2->f("param_value") ;
	


     $monto = $db->f("money") ;
    // $strXML = $strXML."<set name='".$product."' value='".$monto."' color='".$arr_FCColors[$intCounter]."'/>";
    $strXML = $strXML."<set name='".$product."' value='".$monto."' color='".$color."'" ;
	$strXML .= " link='../SSFTransactionsReport.php?s_date_from=".$s_date_from."&s_date_to=".$s_date_to ;
	$strXML .= "&s_pump_id=".$s_pump_id."&s_grade_id=".$db->f("grade_id")."&s_unit_id=".$s_unit_id." ' />" ;
    $result = $db->next_record();
  } 
   $db->close() ;
   $db1->close() ;
   $db2->close() ; 

  // close tags 

    /*$strXML = $strXML."<set name='5' value='2.14' color='".$arr_FCColors[1]."'/>";
    $strXML = $strXML."<set name='6' value='3.23' color='".$arr_FCColors[2]."'/>";
    $strXML = $strXML."<set name='7' value='4.32' color='".$arr_FCColors[3]."'/>";
    $strXML = $strXML."<set name='8' value='5' color='".$arr_FCColors[4]."'/>"; */



  $strXML = $strXML."</graph>";
  // output the data
  echo($strXML);

?>