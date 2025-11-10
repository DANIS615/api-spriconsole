<?php
//BindEvents Method @1-75F3D50B
function BindEvents()
{
    global $EditableGrid1;
    $EditableGrid1->lbl_tank_id->CCSEvents["BeforeShow"] = "EditableGrid1_lbl_tank_id_BeforeShow";
    $EditableGrid1->CCSEvents["AfterSubmit"] = "EditableGrid1_AfterSubmit";
    $EditableGrid1->CCSEvents["OnValidateRow"] = "EditableGrid1_OnValidateRow";
    $EditableGrid1->CCSEvents["BeforeShow"] = "EditableGrid1_BeforeShow";
    $EditableGrid1->ds->CCSEvents["BeforeExecuteSelect"] = "EditableGrid1_ds_BeforeExecuteSelect";
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

	$fuel_is_charging = TankIsAccumMode() ;
	if ($fuel_is_charging) {
		$EditableGrid1->Button_end_tank_charge->Visible = false ;
		$EditableGrid1->Button_stop_fuel_charge->Visible = false ;
		$EditableGrid1->Errors->addError($CCSLocales->GetText("ssf_active_fuel_charge")) ;
	} else {
	  	if (CCGetParam("Button_end_tank_charge") != "" ) {
		  	global $deep_reading ;
		  	$str_param =  "" ;
		  	$prod_str = "" ;
		  	//opt = 1, Altura; opt=2 Volumen
		  	for ($i=1;$i<=count($deep_reading);$i++) {
		  		if (strlen($str_param) > 1 && substr($str_param,-1,1) != "|" ) 
		  			$str_param .= "|" ;
  		
		  		if ($deep_reading[$i]["prod"] != "") {
		  				$prod_str = "PV" ;
			  			$prod_str .= $i."=".$deep_reading[$i]["prod"]."|" ;
		  		}			
  
		  		$str_param .= $prod_str ;
		  		$prod_str = "" ;
		  	}
  
		  	//echo $str_param ;
		  	global $Redirect ;
			if (strlen($str_param) > 1 && substr($str_param,-1,1) != "|" ) 
				$str_param .= "|" ;

	  		//$str_param .= "AC=END" ; 
		  	$ssfRtrClnt = new SSFRouterClient();
		    	$returncode = $ssfRtrClnt->SendReqTanksDelivery($str_param);
		  	if ($returncode != "OK") 
		  		$EditableGrid1->Errors->addError($CCSLocales->GetText($returncode)) ;
		  	 else
		  		$Redirect = "../Reports/Graphics/SSFTankStatusView.php" ;
		}
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
  		$deep_reading[$EditableGrid1->RowNumber] = array("tank" => $tank_id, "prod" => $prod_height ) ;
  
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
	global $CCSLocales ;
	if ($EditableGrid1->Errors->Count() == 0) {
		$fuel_is_charging = TankIsAccumMode() ;
		if ($fuel_is_charging) {
			$EditableGrid1->Button_end_tank_charge->Visible = false ;
			$EditableGrid1->Button_stop_fuel_charge->Visible = false ;
			$EditableGrid1->Errors->addError($CCSLocales->GetText("ssf_active_fuel_charge")) ;
		}
	}
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

//DEL  

?>
