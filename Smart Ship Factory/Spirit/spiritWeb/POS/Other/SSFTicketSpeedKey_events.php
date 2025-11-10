<?php
//BindEvents Method @1-B0C52044
function BindEvents()
{
    global $ssf_tkt_speed_keys1;
    global $lblSpeedTree;
    global $ssf_tkt_speed_keys;
    $ssf_tkt_speed_keys1->s_tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow";
    $lblSpeedTree->CCSEvents["BeforeShow"] = "lblSpeedTree_BeforeShow";
    $ssf_tkt_speed_keys->h_tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow";
    $ssf_tkt_speed_keys->r_tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow";
    $ssf_tkt_speed_keys->tkt_speed_parent_group_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow";
    $ssf_tkt_speed_keys->lnkAddItem->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_lnkAddItem_BeforeShow";
    $ssf_tkt_speed_keys->CCSEvents["BeforeSelect"] = "ssf_tkt_speed_keys_BeforeSelect";
    $ssf_tkt_speed_keys->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_BeforeShow";
}
//End BindEvents Method

//ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow @73-ABEABD25
function ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys1; //Compatibility
//End ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow

//Custom Code @78-2A29BDB7
	$Component->SetValue(CCGetParam("tkt_speed_id")) ;
//End Custom Code

//Close ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow @73-71AD72A2
    return $ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys1_s_tkt_speed_id_BeforeShow

//lblSpeedTree_BeforeShow @3-B4F5FC3B
function lblSpeedTree_BeforeShow(& $sender)
{
    $lblSpeedTree_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblSpeedTree; //Compatibility
//End lblSpeedTree_BeforeShow

//Custom Code @4-2A29BDB7
global $SpeedKeyArray ;
$SpeedKeyArray = array() ;
FillArray() ;
$strTemp = "<script language=\"JavaScript\" src=\""."treemenu/tree.js\"></script>";
$strTemp .= "<script language=\"JavaScript\" src=\""."treemenu/tree_tpl.js\"></script>";
$strTemp .= "<script language=\"JavaScript\">";
$strTemp .= "var TREE_ITEMS = [ ";
$strTemp .= "['Principal','SSFTicketSpeedKey.php?tkt_speed_id=".CCGetParam("tkt_speed_id")."', " ;
$strTemp .= DoMenu("MAIN"); 
$strTemp .= "]];" ;
$strTemp .= " </script>" ;
$strTemp .= "<script language=\"JavaScript\">new tree (TREE_ITEMS, TREE_TPL);</script>";
$Component->SetValue($strTemp) ;

//print_r($SpeedKeyArray) ;
	
//End Custom Code

//Hide-Show Component @80-5A37993B
    $Parameter1 = CCGetFromGet("tkt_speed_id", "");
    $Parameter2 = "";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close lblSpeedTree_BeforeShow @3-17E47BA0
    return $lblSpeedTree_BeforeShow;
}
//End Close lblSpeedTree_BeforeShow

//ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow @12-8B391CBD
function ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow

//Custom Code @55-2A29BDB7
	$Component->SetValue(CCGetParam("tkt_speed_id")) ;
//End Custom Code

//Close ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow @12-0ADE2DA0
    return $ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow

//ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @23-9CE34F3B
function ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//Custom Code @24-2A29BDB7
global $Tpl ;
if (CCGetParam("tkt_speed_id") != "" ) {
	$Component->SetValue(CCGetParam("tkt_speed_id")) ;
	$Tpl->setvar("disabledparam", "disabled") ;
	} else {
		//$Tpl->setvar("disabledparam", "") ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @23-4B3066FD
    return $ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow @13-979A2314
function ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow

//Custom Code @54-2A29BDB7
if (CCGetParam("parent_group_id") != "" )
	$Component->SetValue(CCGetParam("parent_group_id")) ;
else
	$Component->SetValue("MAIN") ;
//End Custom Code

//Close ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow @13-4DCFC0F0
    return $ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_tkt_speed_parent_group_id_BeforeShow

//DEL  global $CCSLocales ;
//DEL  if (CCGetParam("speed_group_id","") != "") 
//DEL  	$Component->SetValue($CCSLocales->GetText("action_description")) ;
//DEL  else
//DEL  	$Component->SetValue($CCSLocales->GetText("tkt_speed_value")) ;

//ssf_tkt_speed_keys_lnkAddItem_BeforeShow @51-329F0E33
function ssf_tkt_speed_keys_lnkAddItem_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_lnkAddItem_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_lnkAddItem_BeforeShow

//Custom Code @52-2A29BDB7
if (CCGetParam("tkt_speed_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_speed_keys_lnkAddItem_BeforeShow @51-B9BF5614
    return $ssf_tkt_speed_keys_lnkAddItem_BeforeShow;
}
//End Close ssf_tkt_speed_keys_lnkAddItem_BeforeShow

//ssf_tkt_speed_keys_BeforeSelect @5-E487D0C3
function ssf_tkt_speed_keys_BeforeSelect(& $sender)
{
    $ssf_tkt_speed_keys_BeforeSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_BeforeSelect

//Custom Code @22-2A29BDB7
	//$Component->EditMode = true ;
//End Custom Code

//Close ssf_tkt_speed_keys_BeforeSelect @5-5544DC78
    return $ssf_tkt_speed_keys_BeforeSelect;
}
//End Close ssf_tkt_speed_keys_BeforeSelect

//ssf_tkt_speed_keys_BeforeShow @5-D493DEDF
function ssf_tkt_speed_keys_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_BeforeShow

//Custom Code @56-2A29BDB7
	global $DBConnection1 ;
	global $Tpl ;
	global $CCSLocales;
	$ssf_tkt_speed_keys->link_tender_list->Visible = false ;
	$ssf_tkt_speed_keys->link_product_list->Visible = false ;
	$speedgrouptype = CCDLookUp("tkt_catalog_misc1","ssf_tkt_catalog"," tkt_catalog_id ='speedkey_group_id' and tkt_catalog_code ='".CCGetParam("tkt_speed_id")."'" ,$DBConnection1) ;
	switch ($speedgrouptype) {
		case "PAY_SPEEDKEYS":
			$ssf_tkt_speed_keys->link_tender_list->Visible = true ;
			$Tpl->setvar("paramstyle","") ;
			$Tpl->setvar("tkt_prod_or_tender", $CCSLocales->GetText("Medio de Pago"));
			break;
		case "PLU_SPEEDKEYS":
			$ssf_tkt_speed_keys->link_product_list->Visible = true ;
			$Tpl->setvar("paramstyle","style=\"display:none\"") ;
			$Tpl->setvar("tkt_prod_or_tender", $CCSLocales->GetText("Producto"));
			break;
		default:
			$ssf_tkt_speed_keys->link_product_list->Visible = true ;
			$ssf_tkt_speed_keys->link_tender_list->Visible = true ;
			$Tpl->setvar("tkt_prod_or_tender", $CCSLocales->GetText("Prod/Medio Pago"));
			break ;
	}

//End Custom Code

//Hide-Show Component @79-5A37993B
    $Parameter1 = CCGetFromGet("tkt_speed_id", "");
    $Parameter2 = "";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tkt_speed_keys_BeforeShow @5-65F7BB46
    return $ssf_tkt_speed_keys_BeforeShow;
}
//End Close ssf_tkt_speed_keys_BeforeShow

//DEL  echo "holaaaa " ;


//DEL  //

function FillArray() {
	global $SpeedKeyArray ;
	$ssfQuery = " select * from ssf_tkt_speed_keys " ;
	$filter = CCGetParam("tkt_speed_id","") ;
	if ($filter != "")
		$ssfQuery .= " where tkt_speed_id ='".$filter."'" ;
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$i = 0 ;
	while ($Result) {
		$SpeedKeyArray[$i] = array("id" => $db->f("tkt_speed_id"), "speed_key" => $db->f("tkt_speed_group_id"), "speed_father" => $db->f("tkt_speed_parent_group_id"),  "speed_order" => $db->f("tkt_speed_order"), "speed_value" => $db->f("tkt_speed_value"),"speed_param" => $db->f("tkt_speed_param") ) ;
		$i++ ;		
		$Result = $db->next_record();
	}
	$db->Close() ;
}

function DoMenu($father) {
	global $SpeedKeyArray ;
	$str_menu = "" ;
	$search_array = array() ;
	$SpeedKeyArray = columnSort($SpeedKeyArray,"speed_key", false) ;
	$search_array = GetSearchedArray("speed_father",$father) ; // Busco todos los hijos de $Father
	//print_r($search_array) ;
	$search_array = columnSort($search_array,"speed_key") ;
	
	for ($i=0;$i<=count($search_array)-1;$i++) { // Recorro todos los hijos de $Father
		$search_array_child = array() ;
		$speed_id = $SpeedKeyArray[$search_array[$i]]["id"] ;
		$speed_group_id =  $SpeedKeyArray[$search_array[$i]]["speed_key"] ;
		$parent_group_id =  $SpeedKeyArray[$search_array[$i]]["speed_father"] ;
		$speed_order =  $SpeedKeyArray[$search_array[$i]]["speed_order"] ;
		if ($speed_group_id != "" ) { //es un padre que puede tener más hijos
			$str_menu .= "['".$speed_group_id."','SSFTicketSpeedKey.php?tkt_speed_id=".$speed_id."&parent_group_id=".$parent_group_id."&speed_group_id=".$speed_group_id."&speed_order=".$speed_order."' ," ;
			$str_menu .= DoMenu($speed_group_id) ;
			$str_menu .= " ]," ;
		} else {
			$str_menu .= "['".$SpeedKeyArray[$search_array[$i]]["speed_value"]."', 'SSFTicketSpeedKey.php?tkt_speed_id=".$speed_id."&parent_group_id=".$parent_group_id."&speed_group_id=".$speed_group_id."&speed_order=".$speed_order."']," ;
		}
	}
	return $str_menu ;
}

function GetSearchedArray($field, $value) {
	global $SpeedKeyArray ;
	$result_array = array() ;
	$h = 0 ;
	for ($i=0;$i<=count($SpeedKeyArray)-1;$i++) {
		if ($SpeedKeyArray[$i][$field] == $value) {
			$result_array[$h] = $i ;
			$h++ ;
		}
	}
	return $result_array ;
}

function columnSort($unsorted, $column, $asc = true) {
$sorted = $unsorted;
for ($i=0; $i < sizeof($sorted)-1; $i++) {
 for ($j=0; $j<sizeof($sorted)-1-$i; $j++)
   if ($asc	) {
	   	if ($sorted[$j][$column] > $sorted[$j+1][$column]) {
			$tmp = $sorted[$j];
			$sorted[$j] = $sorted[$j+1];
			$sorted[$j+1] = $tmp;
		}
	} else {
	   	if ($sorted[$j][$column] < $sorted[$j+1][$column]) {
			$tmp = $sorted[$j];
			$sorted[$j] = $sorted[$j+1];
			$sorted[$j+1] = $tmp;
		}
	}
}
return $sorted;
}

?>
