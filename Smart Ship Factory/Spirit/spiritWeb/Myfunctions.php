<?php

function GetColor($product, & $db_conn) { // for grade
	$color = "#1" ;
	$ssfQuery = "select param_value from config_values where library = 'grade' and groupname = 'general' " ;
	$ssfQuery .= " and parameter = 'color' and id = '".$product."' " ;

	$db_conn->query($ssfQuery);
  	$result2 = $db_conn->next_record(); 
	if ($result2)
		$color = $db_conn->f("param_value") ;
	return "#".$color ;
}

function GetPColor($product, & $db_conn) { // for basic product
	$color = "#1" ;
	$ssfQuery = "select param_value from config_values where library = 'product' and groupname = 'general' " ;
	$ssfQuery .= " and parameter = 'color' and id = '".$product."' " ;

	$db_conn->query($ssfQuery);
  	$result2 = $db_conn->next_record(); 
	if ($result2)
		$color = $db_conn->f("param_value") ;
	return "#".$color ;
}

function GetProductName($prod, & $db_conn) {
	$product = "" ;
	$ssfQuery = "select id from config_values where library = 'grade' and groupname = 'general' and parameter = 'number' ";
	$ssfQuery .= " and param_value = '".$prod."' ";
	$db_conn->query($ssfQuery);
  	$result1 = $db_conn->next_record(); 
	if ($result1)
		$product = $db_conn->f("id") ; 
	return $product ;
}

function datediff($date1, $date2) {
  
  //set the date format first
  // recibe formato yyyymmdd
  $date1= date("Y-m-d", strtotime($date1));
  $date2= date("Y-m-d",strtotime($date2));
  $seconds = strtotime($date2) - strtotime($date1);
  $diff = floor($seconds / 86400);
  //return the +ve integer only
  if ($diff <0)
  {
  $diff= 0-$diff;
  }
  return $diff;
}

function monthdiff($date1, $date2) {
  //set the date format first
  // recibe formato yyyymmdd
	$date1=strtotime($date1);
	$date2=strtotime($date2);

	$monthBegin=(date("Y",$date1)*12)+date("n",$date1);
	$monthEnd=(date("Y",$date2)*12)+ date("n",$date2);
	$monthDiff=$monthEnd-$monthBegin;
	return $monthDiff;  
}

function iniArray(&$data, $bound) {
	for ($i=0;$i<=$bound;$i++) {
		$data[$i] = 0 ;
	} 
}


function DateAdd($v,$d=null , $f="Ymd"){ 
 $d=($d?$d:date("Ymd")); 
 return date($f,strtotime($v." days",strtotime($d))); 
}

function iniArrayX(&$data, $bound, $s_date) {
	$data[0] = $s_date ;
	for ($i=1;$i<=$bound;$i++) {
		$s_date_tmp = DateAdd($i,$s_date) ;
		$data[$i] = $s_date_tmp ;
	} 
}

function ReplaceNumberConvertion($field,$format) {
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strSelect = " to_number(".$field.",".$format.") ";
			break;
		case ("MSSQLServer"):
			$strSelect = " convert(numeric,".$field.") ";
			break;
		default:
			$strSelect = $field ;
	}
	return $strSelect ;
} 

function ReplaceSubstrConvertion($field,$start,$len) {
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strSelect = " substr(".$field.",".$start.",".$len.") ";
			break;
		case ("MSSQLServer"):
			$strSelect = " substring(".$field.",".$start.",".$len.") ";
			break;
		default:
			$strSelect = $field ;
	}
	return $strSelect ;
} 

function ReplaceModConvertion($a,$b) {
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strSelect = " mod(".$a.",".$b.") ";
			break;
		case ("MSSQLServer"):
			$strSelect = " (".$a." % ".$b.") ";
			break;
		default:
			$strSelect = "" ;
	}
	return $strSelect ;
} 

function ReplaceSqlConcat($SQLString) {
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strSelect = "||" ;
			break;
		case ("MSSQLServer"):
			$strSelect = "+";
			break;
		default:
			$strSelect = "" ;
	}
	$strReturn = str_replace("SQLConcat", $strSelect,$SQLString);

	return $strReturn ;
} 

function ReplaceSQLSubstr($SQLString) {
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strSelect = "substr";
			break;
		case ("MSSQLServer"):
			$strSelect = "substring";
			break;
		default:
			$strSelect = "substr" ;
	}
	$strReturn = str_replace("SQLSubstr", $strSelect, $SQLString);
	return $strReturn ;
} 


///////////////////////
////// Tanks ///////////
///////////////////////
function GetStatusImage($status,& $image, & $tipText) {
	global $CCSLocales ;
	global $PathToRoot ;
	$result = "" ;
	switch ($status) {
		case 0:
			$image =  $PathToRoot."Styles/images/na.gif" ; //Not Available
			$tipText = $CCSLocales->GetText("ssf_not_available") ;	
			break ;
		case 1:
			$image = $PathToRoot."Styles/images/disconnected.gif" ; // Desconected
			$tipText = $CCSLocales->GetText("disconnected") ;	
			break ;
		case 2:
			$image = $PathToRoot."Styles/images/error.gif" ; //Error
			$tipText = $CCSLocales->GetText("Error") ;	
			break ;
		case 3:
			$image = $PathToRoot."Styles/images/open.gif" ; //open
			$tipText = $CCSLocales->GetText("opened") ;	
			break ;
		case 4:
			$image = $PathToRoot."Styles/images/closed.gif" ; //closed
			$tipText = $CCSLocales->GetText("closed") ;	
			break ;
	}
	return true ;
}

function TankIsAccumMode() {
	global $DBConnection1  ;
	$fuel_is_charging  = false ;
	$db = New $DBConnection1 ;
	$sql = "Select 1 from ssf_tank_actual_info where is_accum = 'Y' limit 1 " ;
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) 
		$fuel_is_charging = true ;
	$db->Close() ;
	return $fuel_is_charging ;
}


?>