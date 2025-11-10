<?php
define("RelativePath", "..");
include_once(RelativePath . "/Common.php");

/*	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_unit_option = CCGetParam("s_unit_option",1) ;
	$s_rep_option = CCGetParam("s_rep_option",1) ; */

class ProductData {
	
	function GetProductsNames() {
		$ssfQuery = " select param_value from config_values ";
		$ssfQuery .= " where library = 'product' ";
		$ssfQuery .= " and groupname = 'general' ";
		$ssfQuery .= " and parameter = 'ID' ";

		$p_str = "" ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
			$p_str .= $db->f("param_value")."|" ;
			$result = $db->next_record(); 
		}
		$db->Close() ;  
		//$p_str = "hola" ;
		return $p_str ;
	}
		
}

?>