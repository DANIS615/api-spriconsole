<?php
//BindEvents Method @1-A170BE06
function BindEvents()
{
    global $EditableGrid1;
    global $lblNote;
    global $CCSEvents;
    $EditableGrid1->lbl_tank_id->CCSEvents["BeforeShow"] = "EditableGrid1_lbl_tank_id_BeforeShow";
    $EditableGrid1->Button_Submit->CCSEvents["BeforeShow"] = "EditableGrid1_Button_Submit_BeforeShow";
    $EditableGrid1->Button_tank_charge->CCSEvents["BeforeShow"] = "EditableGrid1_Button_tank_charge_BeforeShow";
    $EditableGrid1->CCSEvents["BeforeShowRow"] = "EditableGrid1_BeforeShowRow";
    $EditableGrid1->CCSEvents["AfterSubmit"] = "EditableGrid1_AfterSubmit";
    $EditableGrid1->CCSEvents["OnValidateRow"] = "EditableGrid1_OnValidateRow";
    $EditableGrid1->ds->CCSEvents["BeforeExecuteSelect"] = "EditableGrid1_ds_BeforeExecuteSelect";
    $lblNote->CCSEvents["BeforeShow"] = "lblNote_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//EditableGrid1_lbl_tank_id_BeforeShow @9-E2639C52
function EditableGrid1_lbl_tank_id_BeforeShow(& $sender)
{
    $EditableGrid1_lbl_tank_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_lbl_tank_id_BeforeShow

//Custom Code @30-2A29BDB7
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

//EditableGrid1_Button_Submit_BeforeShow @15-F76E463C
function EditableGrid1_Button_Submit_BeforeShow(& $sender)
{
    $EditableGrid1_Button_Submit_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_Button_Submit_BeforeShow

//Custom Code @27-2A29BDB7
 global $ManualReadingisAllowed ;
 	if (!$ManualReadingisAllowed)
		$Component->Visible = false ;
//End Custom Code

//Close EditableGrid1_Button_Submit_BeforeShow @15-83AC4A63
    return $EditableGrid1_Button_Submit_BeforeShow;
}
//End Close EditableGrid1_Button_Submit_BeforeShow

//EditableGrid1_Button_tank_charge_BeforeShow @16-5B25A565
function EditableGrid1_Button_tank_charge_BeforeShow(& $sender)
{
    $EditableGrid1_Button_tank_charge_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_Button_tank_charge_BeforeShow

//Custom Code @28-2A29BDB7
 global $TankDeliveryisAllowed ;
 	if (!$TankDeliveryisAllowed)
		$Component->Visible = false ;
//End Custom Code

//Close EditableGrid1_Button_tank_charge_BeforeShow @16-8091F23C
    return $EditableGrid1_Button_tank_charge_BeforeShow;
}
//End Close EditableGrid1_Button_tank_charge_BeforeShow
global $deep_reading ;
$deep_reading = array() ;
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
  	//echo "hice el submit" ;
  	global $deep_reading ;
  	//print_r($deep_reading) ;
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
  	global $CCSLocales ;
  	global $Redirect ;
	if (strlen($str_param) > 1 && substr($str_param,-1,1) != "|" ) 
		$str_param .= "|" ;
	
	if (CCGetParam("Button_tank_charge") != "" ) 
  		$str_param .= "AC=BEGIN" ; 
  	else
		$str_param .= "AC=READ" ;

  	$ssfRtrClnt = new SSFRouterClient();
    	$returncode = $ssfRtrClnt->SendReqManualReadings($str_param);
  	if ($returncode != "OK") 
  		$EditableGrid1->Errors->addError($CCSLocales->GetText($returncode)) ;
  	 else
  		$Redirect = "../Reports/Graphics/SSFTankStatusView.php" ;
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
  		$water_height = $EditableGrid1->water_height->GetValue(); // $EditableGrid1->FormParameters["water_height"][$i];
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

//EditableGrid1_ds_BeforeExecuteSelect @3-BB6D8993
function EditableGrid1_ds_BeforeExecuteSelect(& $sender)
{
    $EditableGrid1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $EditableGrid1; //Compatibility
//End EditableGrid1_ds_BeforeExecuteSelect

//Custom Code @31-2A29BDB7
  	$strtoNumberCatalog = ReplaceNumberConvertion("param_value","'99'") ;
  	$Component->DataSource->Order = $strtoNumberCatalog ;
//End Custom Code

//Close EditableGrid1_ds_BeforeExecuteSelect @3-BA0891EB
    return $EditableGrid1_ds_BeforeExecuteSelect;
}
//End Close EditableGrid1_ds_BeforeExecuteSelect

//lblNote_BeforeShow @24-9FDC2051
function lblNote_BeforeShow(& $sender)
{
    $lblNote_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblNote; //Compatibility
//End lblNote_BeforeShow

//Custom Code @25-2A29BDB7
  global $CCSLocales ;
 	$Component->SetValue($CCSLocales->GetText("ssf_deepreading_note")) ; 
//End Custom Code

//Close lblNote_BeforeShow @24-8E5B8BB5
    return $lblNote_BeforeShow;
}
//End Close lblNote_BeforeShow

//Page_AfterInitialize @1-D953654D
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTankDeepReading; //Compatibility
//End Page_AfterInitialize

//Custom Code @26-2A29BDB7
	global $ManualReadingisAllowed ;
	global $TankDeliveryisAllowed ;
	
	$accmgr = new AccessManager() ;
	$ManualReadingisAllowed = $accmgr->CheckUserAction("REQ_TANKS_MANUAL_READINGS") ;
	$TankDeliveryisAllowed = $accmgr->CheckUserAction("WEB_OPE_TDEL") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($ManualReadingisAllowed,$TankDeliveryisAllowed,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
