<?php
//BindEvents Method @1-508E0322
function BindEvents()
{
    global $delivery_note_he2;
    global $formdetail;
    global $CCSEvents;
    $delivery_note_he2->delivery_note_id->CCSEvents["BeforeShow"] = "delivery_note_he2_delivery_note_id_BeforeShow";
    $delivery_note_he2->Button_deleteDelivery->CCSEvents["BeforeShow"] = "delivery_note_he2_Button_deleteDelivery_BeforeShow";
    $delivery_note_he2->Button_addDelivery->CCSEvents["BeforeShow"] = "delivery_note_he2_Button_addDelivery_BeforeShow";
    $delivery_note_he2->CCSEvents["BeforeShow"] = "delivery_note_he2_BeforeShow";
    $delivery_note_he2->ds->CCSEvents["AfterExecuteInsert"] = "delivery_note_he2_ds_AfterExecuteInsert";
    $delivery_note_he2->ds->CCSEvents["AfterExecuteDelete"] = "delivery_note_he2_ds_AfterExecuteDelete";
    $delivery_note_he2->ds->CCSEvents["AfterExecuteUpdate"] = "delivery_note_he2_ds_AfterExecuteUpdate";
    $delivery_note_he2->CCSEvents["OnValidate"] = "delivery_note_he2_OnValidate";
    $formdetail->delivery_note_id->CCSEvents["BeforeShow"] = "formdetail_delivery_note_id_BeforeShow";
    $formdetail->CCSEvents["BeforeShow"] = "formdetail_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//delivery_note_he2_delivery_note_id_BeforeShow @33-09226107
function delivery_note_he2_delivery_note_id_BeforeShow(& $sender)
{
    $delivery_note_he2_delivery_note_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_delivery_note_id_BeforeShow

//Custom Code @35-2A29BDB7
if (CCGetParam("delivery_note_id") == "" && CCGetParam("delivery_note_Insert") == "insert" ) {
	$maxid = GetMaxDeliveryId() ;
	$Component->SetValue($maxid) ;
}
//End Custom Code

//Close delivery_note_he2_delivery_note_id_BeforeShow @33-33A5A442
    return $delivery_note_he2_delivery_note_id_BeforeShow;
}
//End Close delivery_note_he2_delivery_note_id_BeforeShow

//DEL  echo $Component->GetValue(true) ;

//delivery_note_he2_Button_deleteDelivery_BeforeShow @84-1DBF6A02
function delivery_note_he2_Button_deleteDelivery_BeforeShow(& $sender)
{
    $delivery_note_he2_Button_deleteDelivery_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_Button_deleteDelivery_BeforeShow

//Custom Code @86-2A29BDB7
if (CCGetParam("delivery_note_id") != ""  )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close delivery_note_he2_Button_deleteDelivery_BeforeShow @84-59A1088D
    return $delivery_note_he2_Button_deleteDelivery_BeforeShow;
}
//End Close delivery_note_he2_Button_deleteDelivery_BeforeShow

//delivery_note_he2_Button_addDelivery_BeforeShow @83-5EE9DF0B
function delivery_note_he2_Button_addDelivery_BeforeShow(& $sender)
{
    $delivery_note_he2_Button_addDelivery_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_Button_addDelivery_BeforeShow

//Custom Code @85-2A29BDB7
if (CCGetParam("delivery_note_id") != ""  )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close delivery_note_he2_Button_addDelivery_BeforeShow @83-03DBEC6A
    return $delivery_note_he2_Button_addDelivery_BeforeShow;
}
//End Close delivery_note_he2_Button_addDelivery_BeforeShow

//DEL  

//delivery_note_he2_BeforeShow @23-1C958898
function delivery_note_he2_BeforeShow(& $sender)
{
    $delivery_note_he2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_BeforeShow

//Custom Code @53-2A29BDB7
if (CCGetParam("delivery_note_id") != "" || CCGetParam("delivery_note_Insert") == "insert"  )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close delivery_note_he2_BeforeShow @23-37DBB22F
    return $delivery_note_he2_BeforeShow;
}
//End Close delivery_note_he2_BeforeShow

//delivery_note_he2_ds_AfterExecuteInsert @23-742264CF
function delivery_note_he2_ds_AfterExecuteInsert(& $sender)
{
    $delivery_note_he2_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_ds_AfterExecuteInsert

//Custom Code @55-2A29BDB7
global $Redirect ;
		$delivery_id = $Component->DataSource->delivery_note_id->GetDBValue() ;
		//$delivery_time = date("His") ;
		$delivery_ref = $Component->DataSource->delivery_doc_type->GetDBValue()."-".$Component->DataSource->delivery_doc_id->GetDBValue() ;
		$Component->DataSource->query(" update ssf_tank_delivery_note_header set delivery_reference = '".$delivery_ref."' where delivery_note_id = ".$delivery_id ) ;
	
		$Redirect = "SSFDeliveryNotes.php?delivery_note_id=".$delivery_id ;
//End Custom Code

//Close delivery_note_he2_ds_AfterExecuteInsert @23-73D5562D
    return $delivery_note_he2_ds_AfterExecuteInsert;
}
//End Close delivery_note_he2_ds_AfterExecuteInsert

//delivery_note_he2_ds_AfterExecuteDelete @23-66EACBA5
function delivery_note_he2_ds_AfterExecuteDelete(& $sender)
{
    $delivery_note_he2_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_ds_AfterExecuteDelete

//Custom Code @57-2A29BDB7
		global $CCSLocales ;
		$delivery_note_id = CCGetParam("delivery_note_id") ;
		$db_delete = new clsDBConnection1();
		$ssfDelete = " update ssf_tank_deliveries set delivery_note_id = null where delivery_note_id = ".$delivery_note_id ;
		$db_delete->query($ssfDelete);
		$db_delete->Close() ;
		$Component->DataSource->SQL = "DELETE FROM ssf_tank_delivery_note_detail ";
		$Component->DataSource->SQL = CCBuildSQL($Component->DataSource->SQL, $Component->DataSource->Where, "");
		$Component->DataSource->query($Component->DataSource->SQL);

//End Custom Code

//Close delivery_note_he2_ds_AfterExecuteDelete @23-20D831D3
    return $delivery_note_he2_ds_AfterExecuteDelete;
}
//End Close delivery_note_he2_ds_AfterExecuteDelete

//delivery_note_he2_ds_AfterExecuteUpdate @23-00F94ED3
function delivery_note_he2_ds_AfterExecuteUpdate(& $sender)
{
    $delivery_note_he2_ds_AfterExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_ds_AfterExecuteUpdate

//Custom Code @93-2A29BDB7
	$delivery_id = $Component->DataSource->delivery_note_id->GetDBValue() ;
	//$delivery_time = date("His") ;
	$delivery_ref = $Component->DataSource->delivery_doc_type->GetDBValue()."-".$Component->DataSource->delivery_doc_id->GetDBValue() ;
	$Component->DataSource->query(" update ssf_tank_delivery_note_header set delivery_reference = '".$delivery_ref."' where delivery_note_id = ".$delivery_id ) ;

//End Custom Code

//Close delivery_note_he2_ds_AfterExecuteUpdate @23-BCFC97A2
    return $delivery_note_he2_ds_AfterExecuteUpdate;
}
//End Close delivery_note_he2_ds_AfterExecuteUpdate

//delivery_note_he2_OnValidate @23-579A693E
function delivery_note_he2_OnValidate(& $sender)
{
    $delivery_note_he2_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $delivery_note_he2; //Compatibility
//End delivery_note_he2_OnValidate

//Custom Code @96-2A29BDB7
	global $CCSLocales ;
	$del_time = $delivery_note_he2->delivery_time->GetValue() ;
	$timestring = $del_time[4].$del_time[5].$del_time[6] ;
	$formatted_time = mktime($del_time[4],$del_time[5],$del_time[6],0,0,0) ;
	$result_date = date("His", $formatted_time) ;
	if ($timestring != $result_date) {
		$delivery_note_he2_OnValidate = false ;
		$delivery_note_he2->Errors->addError($CCSLocales->GetText("CCS_IncorrectFormat",array($delivery_note_he2->delivery_time->Caption,"hh:mm:ss" ) )) ;
	}

//End Custom Code

//Close delivery_note_he2_OnValidate @23-0820D6A6
    return $delivery_note_he2_OnValidate;
}
//End Close delivery_note_he2_OnValidate

//DEL  //

//formdetail_delivery_note_id_BeforeShow @45-C3CE1E93
function formdetail_delivery_note_id_BeforeShow(& $sender)
{
    $formdetail_delivery_note_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $formdetail; //Compatibility
//End formdetail_delivery_note_id_BeforeShow

//Custom Code @56-2A29BDB7
$Component->SetValue(CCGetParam("delivery_note_id")) ;
//End Custom Code

//Close formdetail_delivery_note_id_BeforeShow @45-9A129192
    return $formdetail_delivery_note_id_BeforeShow;
}
//End Close formdetail_delivery_note_id_BeforeShow


//formdetail_BeforeShow @37-D18C82CE
function formdetail_BeforeShow(& $sender)
{
    $formdetail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $formdetail; //Compatibility
//End formdetail_BeforeShow

//Custom Code @54-2A29BDB7
if (CCGetParam("delivery_note_id") != ""  )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close formdetail_BeforeShow @37-492D7E38
    return $formdetail_BeforeShow;
}
//End Close formdetail_BeforeShow

//Page_AfterInitialize @1-8F89D26D
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFDeliveryNotes; //Compatibility
//End Page_AfterInitialize

//Custom Code @82-2A29BDB7
global $DBConnection1 ;
global $CCSLocales ;
$operation = CCGetParam("delivery_op") ;
if ($operation != "" ) {
	$delivery_note_id = CCGetParam("delivery_note_id") ;
	$dvry_id = CCGetParam("delivery_id") ;
	$dlvry_tank_id = CCGetParam("tank_id") ;
	$dlvry_prod_id = CCGetParam("prod_id") ;
	//echo "operation ".$operation." del_id ".$dvry_id." tank_id ".$dlvry_tank_id." prod_id ".$dlvry_prod_id ;

	//if (!CheckDeliveryAvailable($dvry_id) ) {
		//$formdelivery->Errors->addError($CCSLocales->GetText("ssf_dn_already_used")) ;
		//return false ;
	//}
	if ($dvry_id != "" && $dlvry_tank_id != "" && $dlvry_prod_id != "" ){
		$ssfQuery = " Select delivery_id, tank_id, vol_total from ssf_tank_deliveries where delivery_id = ".$dvry_id." and tank_id = ".$dlvry_tank_id ;
		$db = new clsDBConnection1();
		$db_execute = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 		
		while ($result) {
			$product = GetTankProduct($db->f("tank_id")) ;
			$td_oper = "" ;
			if ($operation == "add") {
				$exist_prod = CCDLookUp("delivery_product_id", "ssf_tank_delivery_note_detail", " delivery_note_id = ".$delivery_note_id." and delivery_product_id = '".$product."'" , $DBConnection1);
				if ($exist_prod != "") {
					$ssfQuery = " update ssf_tank_delivery_note_detail set delivery_product_vol = delivery_product_vol + ".$db->f("vol_total") ;
					$ssfQuery .= " where  delivery_note_id = ".$delivery_note_id." and delivery_product_id = '".$product."'"  ;
				} else {
					$ssfQuery = " insert into ssf_tank_delivery_note_detail (delivery_note_id,delivery_supplier_vol,delivery_product_id,delivery_product_vol) " ;
					$ssfQuery .= " values (".$delivery_note_id.",0,'".$product."',".$db->f("vol_total")." )" ;
				}	
				$td_oper = "ADD" ;
				
			} else {
				$ssfQuery = " update ssf_tank_delivery_note_detail set delivery_product_vol = delivery_product_vol - ".$db->f("vol_total") ;
				$ssfQuery .= " where  delivery_note_id = ".$delivery_note_id." and delivery_product_id = '".$product."'"  ;
				$td_oper = "DELETE" ;
			}
			$db_execute->query($ssfQuery);
			if ($td_oper == "DELETE" ) 
				DeleteAllZero($delivery_note_id, $product, $db_execute) ;
			
			UpdateTankDelivery($delivery_note_id, $dvry_id, $dlvry_tank_id, $td_oper ) ;
			$result = $db->next_record(); 		
		}
		$db->Close() ;
		$db_execute->Close() ;
	}
	$querystr = CCGetQueryString("QueryString", "") ;
	$queryparams = CCRemoveParam($querystr,"delivery_op") ;
	$queryparams = CCRemoveParam($queryparams,"delivery_id") ;
	$queryparams = CCRemoveParam($queryparams,"tank_id") ;
	$queryparams = CCRemoveParam($queryparams,"prod_id") ;
	global $Redirect ;
	global $FileName ;
	$Redirect = $FileName . "?". $queryparams;
}
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetMaxDeliveryId() {
		$s_maxid = 1 ;
		$ssfQuery = "select max(delivery_note_id) as maxid from ssf_tank_delivery_note_header " ; 
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if ($Result)
		{
			$s_maxid = $db->f("maxid") + 1 ;
		} 
		$db->close(); 
		return $s_maxid ;
}

function GetTankProduct($tank_id) {
		$prod_id = "" ;
		$ssfQuery = "select param_value from config_values where library = 'tank' " ;
		$ssfQuery .= " and groupname = 'general' and parameter = 'product' " ; 
		$ssfQuery .= " and id = '".$tank_id."'" ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		//echo $ssfQuery ;
		$Result = $db->next_record();
		if ($Result)
		{
			$prod_id = $db->f("param_value") ;
		} 
		$db->close(); 
		return $prod_id ;
}

function UpdateTankDelivery($delivery_note_id, $delivery_id, $tank_id, $option) {
		if ($option == "ADD") 
			$ssfQuery = " update ssf_tank_deliveries set delivery_note_id = ".$delivery_note_id." where delivery_id = ".$delivery_id." and tank_id = ".$tank_id ;
		else
			$ssfQuery = " update ssf_tank_deliveries set delivery_note_id = 0 where delivery_id = ".$delivery_id." and tank_id = ".$tank_id ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$db->Close()  ;
}

function DeleteAllZero( $delivery_note_id, $product, & $db  ) {
		$ssfQuery = " delete from ssf_tank_delivery_note_detail " ;
		$ssfQuery .= " where  delivery_note_id = ".$delivery_note_id." and delivery_product_id = '".$product."'"  ;
		$ssfQuery .= " and delivery_product_vol = 0 "  ;
		$db->query($ssfQuery);
}

function CheckDeliveryAvailable($delivery_id) {
		$available = true ;
		$ssfQuery = " Select delivery_note_id from ssf_tank_deliveries where delivery_id = ".$delivery_id ;
		$db = new clsDBConnection1();
		$db_delete = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			if ($db->f("delivery_note_id") != "") 
				$available = false ;
		}
		$db->Close() ;
		return $available ;
}

?>
