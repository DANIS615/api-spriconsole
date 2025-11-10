<?php
//BindEvents Method @1-184CB11F
function BindEvents()
{
    global $Link1;
    global $Link2;
    global $Panel1;
    global $Tanks;
    global $CCSEvents;
    $Link1->CCSEvents["BeforeShow"] = "Link1_BeforeShow";
    $Link2->CCSEvents["BeforeShow"] = "Link2_BeforeShow";
    $Panel1->CCSEvents["BeforeShow"] = "Panel1_BeforeShow";
    $Tanks->lblvoid->CCSEvents["BeforeShow"] = "Tanks_lblvoid_BeforeShow";
    $Tanks->img_tank->CCSEvents["BeforeShow"] = "Tanks_img_tank_BeforeShow";
    $Tanks->ImageLink1->CCSEvents["BeforeShow"] = "Tanks_ImageLink1_BeforeShow";
    $Tanks->EmptyRow->CCSEvents["BeforeShow"] = "Tanks_EmptyRow_BeforeShow";
    $Tanks->CCSEvents["BeforeShowRow"] = "Tanks_BeforeShowRow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Link1_BeforeShow @76-73B4F52C
function Link1_BeforeShow(& $sender)
{
    $Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Link1; //Compatibility
//End Link1_BeforeShow

//Custom Code @78-2A29BDB7
	global $is_accum ;
	if ($is_accum) 
		$Component->Visible = false ;
	else
		$Component->Visible = true ;
//End Custom Code

//Close Link1_BeforeShow @76-368844F2
    return $Link1_BeforeShow;
}
//End Close Link1_BeforeShow

//Link2_BeforeShow @79-F04391AF
function Link2_BeforeShow(& $sender)
{
    $Link2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Link2; //Compatibility
//End Link2_BeforeShow

//Custom Code @80-2A29BDB7
	global $is_accum ;
	if ($is_accum) 
		$Component->Visible = true ;
	else
		$Component->Visible = false ;
//End Custom Code

//Close Link2_BeforeShow @79-4AE96129
    return $Link2_BeforeShow;
}
//End Close Link2_BeforeShow

//Panel1_BeforeShow @73-AAD8AF72
function Panel1_BeforeShow(& $sender)
{
    $Panel1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel1; //Compatibility
//End Panel1_BeforeShow

//Custom Code @75-2A29BDB7
	global $is_accum ;
	if ($is_accum) 
		$Component->Visible = true ;
	else
		$Component->Visible = false ;
//End Custom Code

//Close Panel1_BeforeShow @73-D21EBA68
    return $Panel1_BeforeShow;
}
//End Close Panel1_BeforeShow

//Tanks_lblvoid_BeforeShow @70-CAF0551F
function Tanks_lblvoid_BeforeShow(& $sender)
{
    $Tanks_lblvoid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Tanks; //Compatibility
//End Tanks_lblvoid_BeforeShow

//Custom Code @71-2A29BDB7
	$Component->SetValue($Tanks->capacity->GetValue() - $Tanks->prod_v->GetValue() ) ;
//End Custom Code

//Close Tanks_lblvoid_BeforeShow @70-3A93D9EB
    return $Tanks_lblvoid_BeforeShow;
}
//End Close Tanks_lblvoid_BeforeShow

//Tanks_img_tank_BeforeShow @27-7A7AD2B8
function Tanks_img_tank_BeforeShow(& $sender)
{
    $Tanks_img_tank_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Tanks; //Compatibility
//End Tanks_img_tank_BeforeShow

//Custom Code @31-2A29BDB7
	$color = $Tanks->color->GetValue() ;
	$red = "" ;
	$green = "" ;
	$blue = "" ;
	if ( $color != "" ) {
		$red = hexdec(substr($color,0,2)) ;
		$green = hexdec(substr($color,2,2)) ;
		$blue = hexdec(substr($color,4,2)) ;
	}	

	$product = $Tanks->product->GetValue() ;
	$prod_vol = $Tanks->prod_v->GetValue() ;
	$water_vol = $Tanks->water_vol->GetValue() ;
	$capacity = $Tanks->capacity->GetValue() ;

	$porc_comb = round(($prod_vol * 100) / $capacity,2) ;
	$porc_water = round(($water_vol * 100) / $capacity,2) ;

	$str_link = "tank/tanque.php?comb=".$porc_comb."&agua=".$porc_water ;
	$str_link .= "&r=".$red."&g=".$green."&b=".$blue ;
	$str_link .= "&leyenda1=".$prod_vol."&leyenda2=&porcentajesuccion=5" ;
	//echo $str_link ;
	$Tanks->img_tank->SetValue($str_link) ;
//End Custom Code

//Close Tanks_img_tank_BeforeShow @27-BD435E0C
    return $Tanks_img_tank_BeforeShow;
}
//End Close Tanks_img_tank_BeforeShow

//Tanks_ImageLink1_BeforeShow @81-26F1909F
function Tanks_ImageLink1_BeforeShow(& $sender)
{
    $Tanks_ImageLink1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Tanks; //Compatibility
//End Tanks_ImageLink1_BeforeShow

//Custom Code @84-2A29BDB7
global $Tpl ;
global $CCSLocales ;
$image = "" ;
$tipText = "" ;

GetStatusImage($Tanks->probe_status->GetValue(),$image,$tipText  ) ;
$Tpl->setvar("imgtankstatus",$image ) ;
$Tpl->setvar("imgtankstatustip",$CCSLocales->GetText("status")." : ".$tipText ) ;


//End Custom Code

//Close Tanks_ImageLink1_BeforeShow @81-F3FD2468
    return $Tanks_ImageLink1_BeforeShow;
}
//End Close Tanks_ImageLink1_BeforeShow

//DEL  

//Tanks_EmptyRow_BeforeShow @29-5C41E629
function Tanks_EmptyRow_BeforeShow(& $sender)
{
    $Tanks_EmptyRow_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Tanks; //Compatibility
//End Tanks_EmptyRow_BeforeShow

//Custom Code @30-2A29BDB7
global $ColumnCounter;

	$EmptyTDs = "";
	while ($ColumnCounter % 2 <> 0) {
		$EmptyTDs .= "<td>&nbsp;</td>";
		$ColumnCounter++;
	}
	$Tanks->EmptyRow->SetValue($EmptyTDs);
//End Custom Code

//Close Tanks_EmptyRow_BeforeShow @29-DBBF29AC
    return $Tanks_EmptyRow_BeforeShow;
}
//End Close Tanks_EmptyRow_BeforeShow

//Tanks_BeforeShowRow @3-E92BF985
function Tanks_BeforeShowRow(& $sender)
{
    $Tanks_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Tanks; //Compatibility
//End Tanks_BeforeShowRow

//Custom Code @26-2A29BDB7
global $ColumnCounter;

	$ColumnCounter++;
	if ($ColumnCounter % 2 == 0) {
	    $Tanks->RowSeparator->Visible = true;
	} else {
    	$Tanks->RowSeparator->Visible = false;
	}
//End Custom Code

//Close Tanks_BeforeShowRow @3-694AD1D6
    return $Tanks_BeforeShowRow;
}
//End Close Tanks_BeforeShowRow

//Page_AfterInitialize @1-FCCB8BD9
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTankStatusView; //Compatibility
//End Page_AfterInitialize

//Custom Code @77-2A29BDB7
	global $DBConnection1  ;
	global $is_accum ;
	$db = New $DBConnection1 ;
	global $CCConnectionSettings ;
	switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$sql = "Select 1 from ssf_tank_actual_info where is_accum = 'Y' limit 1 " ;
			break;
		case ("MSSQLServer"):
			$sql = "Select top 1 from ssf_tank_actual_info where is_accum = 'Y' " ;
			break;
		default:
			$sql = "Select 1 from ssf_tank_actual_info where is_accum = 'Y' limit 1 " ;
	}
	
	$db->query($sql) ;
	$result = $db->next_record() ;
	if ($result) 
		$is_accum = true ;
	else
		$is_accum = false ;
	$db->Close() ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

?>
