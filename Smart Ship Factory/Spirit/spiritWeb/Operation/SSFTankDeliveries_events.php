<?php
//BindEvents Method @1-0D41ED26
function BindEvents()
{
    global $Label1;
    global $EditableGrid1;
    global $CCSEvents;
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $EditableGrid1->lbl_tank_id->CCSEvents["BeforeShow"] = "EditableGrid1_lbl_tank_id_BeforeShow";
    $EditableGrid1->CCSEvents["BeforeShowRow"] = "EditableGrid1_BeforeShowRow";
    $EditableGrid1->CCSEvents["AfterSubmit"] = "EditableGrid1_AfterSubmit";
    $EditableGrid1->CCSEvents["OnValidateRow"] = "EditableGrid1_OnValidateRow";
    $EditableGrid1->CCSEvents["BeforeShow"] = "EditableGrid1_BeforeShow";
    $EditableGrid1->ds->CCSEvents["BeforeExecuteSelect"] = "EditableGrid1_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//Label1_BeforeShow @34-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @35-2A29BDB7
	define('TINYAJAX_PATH', '../tinyajax'); 
    require_once(TINYAJAX_PATH . "/TinyAjax.php"); 

// Extend TinyAjax 
class TinyAjaxInterface extends TinyAjax  
{     
    // Constructor exports the function 
    function __construct() { 
    } 
} 

     
  	function callstopdelivery() {
		global $CCSLocales ;
	  	$ssfRtrClnt = new SSFRouterClient();
		$str_param = "ST=OFF" ;
	    $returncode = $ssfRtrClnt->SendReqAccumTransactions($str_param);
	  	if ($returncode != "OK") 
	  		return $CCSLocales->GetText($returncode) ;
	  	 else
	  		return $CCSLocales->GetText($returncode) ;
	}     
     
    // Create a instance of our extended TinyAjax-class 
    $ajax = new TinyAjaxInterface(); 
    $ajax->showLoading(true); 
     
    // Export the functions we want to use 
	 $ajax->exportFunction("callstopdelivery", "EditableGrid1","#routererror");    
    // Magic 
    $ajax->process(); 
 $ajax->drawJavaScript(true, true); 

//End Custom Code

//Close Label1_BeforeShow @34-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//EditableGrid1_lbl_tank_id_BeforeShow @9-E2639C52
function EditableGrid1_lbl_tank_id_BeforeShow(& $sender)
{
    $EditableGrid1_lbl_tank_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_lbl_tank_id_BeforeShow

//Custom Code @28-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$ssfQuery = "library = 'tank' and id = '".$Component->GetValue()."' and parameter = 'product'";
	$tankProduct = CCDLookUp("param_value","config_values",$ssfQuery,$DBConnection1);
	$Component->SetValue(trim($Component->GetValue())." - ".$tankProduct);
// -------------------------
//End Custom Code

//Close EditableGrid1_lbl_tank_id_BeforeShow @9-0D164CD3
    return $EditableGrid1_lbl_tank_id_BeforeShow;
}
//End Close EditableGrid1_lbl_tank_id_BeforeShow

//DEL  //

//EditableGrid1_BeforeShowRow @3-25A2A153
function EditableGrid1_BeforeShowRow(& $sender)
{
    $EditableGrid1_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_BeforeShowRow

//Custom Code @18-2A29BDB7
  	global $Tpl ;
  	global $DBConnection1; 
  	$tank_id = $EditableGrid1->tank_id->GetValue() ;
  	$db = new $DBConnection1 ;
  	$sql = " select 1 from ssf_tank_conversion_table_ref_val where tank_id = ".$tank_id ;
  	$db->query($sql) ;
  	$result = $db->next_record() ;
  	if ($result) {
  		$EditableGrid1->deep_option->SetValue(1) ;
  		$Tpl->setvar("disabledparam","" ) ;
  
  	} else {
  		$EditableGrid1->deep_option->SetValue(2) ;
  		$Tpl->setvar("disabledparam","disabled" ) ;
  	}
//End Custom Code

//Close EditableGrid1_BeforeShowRow @3-187CB2B2
    return $EditableGrid1_BeforeShowRow;
}
//End Close EditableGrid1_BeforeShowRow

//EditableGrid1_AfterSubmit @3-1C514519
function EditableGrid1_AfterSubmit(& $sender)
{
    $EditableGrid1_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_AfterSubmit

//Custom Code @19-2A29BDB7
global $CCSLocales ;
global $Redirect ;
  	if (CCGetParam("Button_end_tank_charge") != "" ) {
	  	global $deep_reading ;
	  	$str_param =  "" ;
	  	$prod_str = "" ;
	  	$water_str = "" ;
	  	//opt = 1, Altura; opt=2 Volumen
	  	for ($i=1;$i<=count($deep_reading);$i++) {
	  		if (strlen($str_param) > 1 && substr($str_param,-1,1) != "|" ) 
	  			$str_param .= "|" ;
  		
	  		if ($deep_reading[$i]["prod"] != "") {
	  			if ($deep_reading[$i]["opt"] == 1)
	  				$prod_str = "PH" ;
	  			else
	  				$prod_str = "PV" ;
  			
	  			$prod_str .= $i."=".$deep_reading[$i]["prod"]."|" ;
	  		}			
  
	  		if ($deep_reading[$i]["water"] != "") {
	  			if ($deep_reading[$i]["opt"] == 1)
	  				$water_str = "WH" ;
	  			else
	  				$water_str = "WV" ;
  			
	  			$water_str .= $i."=".$deep_reading[$i]["water"] ;
	  		}			
  				
	  		$str_param .= $prod_str.$water_str ;
	  		$prod_str = "" ;
	  		$water_str = "" ;
	  	}
  
	  	//echo $str_param ;
		if (strlen($str_param) > 1 && substr($str_param,-1,1) != "|" ) 
			$str_param .= "|" ;

  		$str_param .= "AC=END" ; 
	  	$ssfRtrClnt = new SSFRouterClient();
	    	$returncode = $ssfRtrClnt->SendReqManualReadings($str_param);
	  	if ($returncode != "OK") 
	  		$EditableGrid1->Errors->addError($CCSLocales->GetText($returncode)) ;
	  	 else
	  		$Redirect = "../Reports/Graphics/SSFTankStatusView.php" ;
	}
  	if (CCGetParam("Button_stop_fuel_charge") != "" ) {
	  	$ssfRtrClnt = new SSFRouterClient();
		$str_param = "ST=OFF" ;
	    $returncode = $ssfRtrClnt->SendReqAccumTransactions($str_param);
	  	if ($returncode != "OK") 
	  		$EditableGrid1->Errors->addError($CCSLocales->GetText($returncode)) ;
	  	 else 
	  		$Redirect = "SSFTankDeliveries.php?nocheck=1" ;
	} 
  	if (CCGetParam("Cancel") != "" ) {
	  	$Redirect = "SSFTankDeliveries.php?nocheck=1" ;
	} 

//End Custom Code

//Close EditableGrid1_AfterSubmit @3-5CE95AF3
    return $EditableGrid1_AfterSubmit;
}
//End Close EditableGrid1_AfterSubmit

//EditableGrid1_OnValidateRow @3-D3CAD85A
function EditableGrid1_OnValidateRow(& $sender)
{
    $EditableGrid1_OnValidateRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_OnValidateRow

//Custom Code @20-2A29BDB7
  		global $deep_reading ;
  		$tank_id =  $EditableGrid1->tank_id->GetValue(); //$EditableGrid1->FormParameters["tank_id"][$i];
  		$prod_height = $EditableGrid1->prod_height->GetValue() ;// $EditableGrid1->FormParameters["prod_height"][$i];
  		$water_height = $EditableGrid1->water_height->GetValue() ;
  		$deep_opt =  $EditableGrid1->deep_option->GetValue(); // $EditableGrid1->FormParameters["deep_option"][$i];
  		if ($deep_opt == "")
  			$deep_opt = 2 ;
  		//echo "fila ".$i."tank ".$tank_id." prod ".$prod_height." water ".$water_height. "opt ".$deep_opt, "\n" ;
  		$deep_reading[$EditableGrid1->RowNumber] = array("tank" => $tank_id, "prod" => $prod_height, "water" => $water_height, "opt" => $deep_opt ) ;
  
//End Custom Code

//Close EditableGrid1_OnValidateRow @3-DD6617B5
    return $EditableGrid1_OnValidateRow;
}
//End Close EditableGrid1_OnValidateRow

//EditableGrid1_BeforeShow @3-1066041D
function EditableGrid1_BeforeShow(& $sender)
{
    $EditableGrid1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_BeforeShow

//Custom Code @27-2A29BDB7

//End Custom Code

//Close EditableGrid1_BeforeShow @3-094A7726
    return $EditableGrid1_BeforeShow;
}
//End Close EditableGrid1_BeforeShow

//EditableGrid1_ds_BeforeExecuteSelect @3-BB6D8993
function EditableGrid1_ds_BeforeExecuteSelect(& $sender)
{
    $EditableGrid1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_ds_BeforeExecuteSelect

//Custom Code @30-2A29BDB7
  	$strtoNumberCatalog = ReplaceNumberConvertion("param_value","'99'") ;
  	$Component->DataSource->Order = $strtoNumberCatalog ;
//End Custom Code

//Close EditableGrid1_ds_BeforeExecuteSelect @3-BA0891EB
    return $EditableGrid1_ds_BeforeExecuteSelect;
}
//End Close EditableGrid1_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-70B473FB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTankDeliveries; //Compatibility
//End Page_AfterInitialize

//Custom Code @31-2A29BDB7
	
	global $Redirect ;
	$nocheck  = (CCGetParam("nocheck") == "1" ) ;
	/*include_once("../Service/SSFLogs.php");
	$s_log = new AdminLogs() ;
	$s_log->logIt("nocheck ".$nocheck ) ;  */
	if (!$nocheck ) {
		$fuel_is_charging = TankIsAccumMode() ;
		if (!$fuel_is_charging) {
			$Redirect = "SSFTankManualDeliveries.php" ;
		}
	} 

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-B656DF3D
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTankDeliveries; //Compatibility
//End Page_BeforeShow

//Custom Code @32-2A29BDB7
		
		//$EditableGrid1->Button_end_tank_charge->Visible = false ;
		//$EditableGrid1->Button_stop_fuel_charge->Visible = false ;
		//$EditableGrid1->Errors->addError($CCSLocales->GetText("ssf_no_active_fuel_charge")) ;

//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
