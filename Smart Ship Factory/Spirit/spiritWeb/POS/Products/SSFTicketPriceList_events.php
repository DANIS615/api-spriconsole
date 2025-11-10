<?php
//BindEvents Method @1-B5E46C76
function BindEvents()
{
    global $ssf_tkt_price_list_header;
    global $ssf_tkt_price_list_header1;
    global $ssf_tkt_plu_ssf_tkt_price;
    global $ssf_tkt_price_list_detail;
    global $CCSEvents;
    $ssf_tkt_price_list_header->tkt_list_active->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_header_tkt_list_active_BeforeShow";
    $ssf_tkt_price_list_header->ssf_tkt_price_list_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow";
    $ssf_tkt_price_list_header->CCSEvents["BeforeShowRow"] = "ssf_tkt_price_list_header_BeforeShowRow";
    $ssf_tkt_price_list_header1->tkt_list_id->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_header1_tkt_list_id_BeforeShow";
    $ssf_tkt_price_list_header1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_price_list_header1_ds_AfterExecuteSelect";
    $ssf_tkt_price_list_header1->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_header1_BeforeShow";
    $ssf_tkt_price_list_header1->ds->CCSEvents["AfterExecuteDelete"] = "ssf_tkt_price_list_header1_ds_AfterExecuteDelete";
    $ssf_tkt_plu_ssf_tkt_price->tkt_list_det_type->CCSEvents["BeforeShow"] = "ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow";
    $ssf_tkt_plu_ssf_tkt_price->ssf_tkt_price_det_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow";
    $ssf_tkt_plu_ssf_tkt_price->CCSEvents["BeforeShow"] = "ssf_tkt_plu_ssf_tkt_price_BeforeShow";
    $ssf_tkt_price_list_detail->tkt_list_det_plu->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow";
    $ssf_tkt_price_list_detail->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_Link1_BeforeShow";
    $ssf_tkt_price_list_detail->lblMonday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblMonday_BeforeShow";
    $ssf_tkt_price_list_detail->lblTuesday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblTuesday_BeforeShow";
    $ssf_tkt_price_list_detail->lblWednesday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblWednesday_BeforeShow";
    $ssf_tkt_price_list_detail->lblThursday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblThursday_BeforeShow";
    $ssf_tkt_price_list_detail->lblFriday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblFriday_BeforeShow";
    $ssf_tkt_price_list_detail->lblSaturday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblSaturday_BeforeShow";
    $ssf_tkt_price_list_detail->lblSunday->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_lblSunday_BeforeShow";
    $ssf_tkt_price_list_detail->tkt_list_det_id->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow";
    $ssf_tkt_price_list_detail->tkt_list_det_seq->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow";
    $ssf_tkt_price_list_detail->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_price_list_detail_ds_AfterExecuteSelect";
    $ssf_tkt_price_list_detail->CCSEvents["BeforeShow"] = "ssf_tkt_price_list_detail_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_price_list_header_tkt_list_active_BeforeShow @14-78BC9E2E
function ssf_tkt_price_list_header_tkt_list_active_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_header_tkt_list_active_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header; //Compatibility
//End ssf_tkt_price_list_header_tkt_list_active_BeforeShow

//Custom Code @27-2A29BDB7
global $CCSLocales ;
	$Component->SetValue($Component->GetValue() == "Y" ? $CCSLocales->GetText("ssf_yes") : $CCSLocales->GetText("ssf_no") ) ;

//End Custom Code

//Close ssf_tkt_price_list_header_tkt_list_active_BeforeShow @14-536FD72B
    return $ssf_tkt_price_list_header_tkt_list_active_BeforeShow;
}
//End Close ssf_tkt_price_list_header_tkt_list_active_BeforeShow

//ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow @5-299594E3
function ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header; //Compatibility
//End ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow

//Custom Code @31-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow @5-83E20BBD
    return $ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow;
}
//End Close ssf_tkt_price_list_header_ssf_tkt_price_list_Insert_BeforeShow

//ssf_tkt_price_list_header_BeforeShowRow @3-7B2396FF
function ssf_tkt_price_list_header_BeforeShowRow(& $sender)
{
    $ssf_tkt_price_list_header_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header; //Compatibility
//End ssf_tkt_price_list_header_BeforeShowRow

//Custom Code @29-2A29BDB7
if ($ssf_tkt_price_list_header->tkt_list_active->GetValue() == "N" ) {
	$Component->Attributes->SetValue('stylenotactive', 'color:red');
} else {
	$Component->Attributes->SetValue('stylenotactive', '');
}
//End Custom Code

//Close ssf_tkt_price_list_header_BeforeShowRow @3-F6473688
    return $ssf_tkt_price_list_header_BeforeShowRow;
}
//End Close ssf_tkt_price_list_header_BeforeShowRow

//ssf_tkt_price_list_header1_tkt_list_id_BeforeShow @23-100C4B50
function ssf_tkt_price_list_header1_tkt_list_id_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_header1_tkt_list_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header1; //Compatibility
//End ssf_tkt_price_list_header1_tkt_list_id_BeforeShow

//Custom Code @26-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue( GetNewListID()) ;
//End Custom Code

//Close ssf_tkt_price_list_header1_tkt_list_id_BeforeShow @23-C00B5883
    return $ssf_tkt_price_list_header1_tkt_list_id_BeforeShow;
}
//End Close ssf_tkt_price_list_header1_tkt_list_id_BeforeShow

//ssf_tkt_price_list_header1_ds_AfterExecuteSelect @16-F0DD5347
function ssf_tkt_price_list_header1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_price_list_header1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header1; //Compatibility
//End ssf_tkt_price_list_header1_ds_AfterExecuteSelect

//Custom Code @33-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}

	if ($ssf_tkt_price_list_header1->tkt_list_id->GetValue() == 0) {
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}

//End Custom Code

//Close ssf_tkt_price_list_header1_ds_AfterExecuteSelect @16-45CAF75F
    return $ssf_tkt_price_list_header1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_price_list_header1_ds_AfterExecuteSelect

//ssf_tkt_price_list_header1_BeforeShow @16-4F4015FB
function ssf_tkt_price_list_header1_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_header1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header1; //Compatibility
//End ssf_tkt_price_list_header1_BeforeShow

//Custom Code @34-2A29BDB7
	if (CCGetParam("tkt_list_id") != "" || CCGetParam("ssf_tkt_price_list_Insert") == "insert" ) 
		$Component->Visible = true ;
	  else 
	 	$Component->Visible = false ;
	
//End Custom Code

//Close ssf_tkt_price_list_header1_BeforeShow @16-B5EE734A
    return $ssf_tkt_price_list_header1_BeforeShow;
}
//End Close ssf_tkt_price_list_header1_BeforeShow

//ssf_tkt_price_list_header1_ds_AfterExecuteDelete @16-A675D5D6
function ssf_tkt_price_list_header1_ds_AfterExecuteDelete(& $sender)
{
    $ssf_tkt_price_list_header1_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_header1; //Compatibility
//End ssf_tkt_price_list_header1_ds_AfterExecuteDelete

//Custom Code @111-2A29BDB7
$price_list_id = $ssf_tkt_price_list_header1->tkt_list_id->GetValue() ;
$ssfQuery = " Delete from ssf_tkt_price_list_detail where tkt_list_det_id = ".$price_list_id ;
$db = new clsDBConnection1() ;
$db->query($ssfQuery) ;
$db->Close() ;

//End Custom Code

//Close ssf_tkt_price_list_header1_ds_AfterExecuteDelete @16-E39E690C
    return $ssf_tkt_price_list_header1_ds_AfterExecuteDelete;
}
//End Close ssf_tkt_price_list_header1_ds_AfterExecuteDelete

//ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow @50-36AA9F3D
function ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow(& $sender)
{
    $ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_ssf_tkt_price; //Compatibility
//End ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow

//Custom Code @110-2A29BDB7
global $CCSLocales ;
$value = "" ;
switch ($Component->GetValue()) {
	case "F":
			$value = $CCSLocales->GetText("fixed") ;
			break;
	case "P":
			$value = $CCSLocales->GetText("ssf_percentual") ;
			break;
}
$Component->SetValue($value) ;
//End Custom Code

//Close ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow @50-C709A09D
    return $ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow;
}
//End Close ssf_tkt_plu_ssf_tkt_price_tkt_list_det_type_BeforeShow

//ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow @42-609B1FD7
function ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_ssf_tkt_price; //Compatibility
//End ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow

//Custom Code @78-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow @42-6617F53D
    return $ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow;
}
//End Close ssf_tkt_plu_ssf_tkt_price_ssf_tkt_price_det_Insert_BeforeShow

//ssf_tkt_plu_ssf_tkt_price_BeforeShow @35-AF851C10
function ssf_tkt_plu_ssf_tkt_price_BeforeShow(& $sender)
{
    $ssf_tkt_plu_ssf_tkt_price_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu_ssf_tkt_price; //Compatibility
//End ssf_tkt_plu_ssf_tkt_price_BeforeShow

//Custom Code @80-2A29BDB7
	if (CCGetParam("tkt_list_id") != ""  ) 
		$Component->Visible = true ;
	  else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_plu_ssf_tkt_price_BeforeShow @35-DEB33EF7
    return $ssf_tkt_plu_ssf_tkt_price_BeforeShow;
}
//End Close ssf_tkt_plu_ssf_tkt_price_BeforeShow

//ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow @62-95B539CB
function ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow

//Custom Code @108-2A29BDB7
	if (CCGetParam("tkt_list_det_plu") != ""  ) 
		$Component->Attributes->SetValue("readonlyparam","readonly") ;

//End Custom Code

//Close ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow @62-D5A7B256
    return $ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_tkt_list_det_plu_BeforeShow

//ssf_tkt_price_list_detail_Link1_BeforeShow @81-04DE0110
function ssf_tkt_price_list_detail_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_Link1_BeforeShow

//Custom Code @109-2A29BDB7
	if (CCGetParam("tkt_list_det_plu") != ""  ) 
		$Component->Visible = false ;
	else
		$Component->Visible = true ;
//End Custom Code

//Close ssf_tkt_price_list_detail_Link1_BeforeShow @81-7C34EA29
    return $ssf_tkt_price_list_detail_Link1_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_Link1_BeforeShow

//ssf_tkt_price_list_detail_lblMonday_BeforeShow @87-3277E490
function ssf_tkt_price_list_detail_lblMonday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblMonday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblMonday_BeforeShow

//Custom Code @94-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[1]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblMonday_BeforeShow @87-529AAFC9
    return $ssf_tkt_price_list_detail_lblMonday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblMonday_BeforeShow

//ssf_tkt_price_list_detail_lblTuesday_BeforeShow @88-F3FBFEF4
function ssf_tkt_price_list_detail_lblTuesday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblTuesday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblTuesday_BeforeShow

//Custom Code @95-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[2]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblTuesday_BeforeShow @88-EAD533BD
    return $ssf_tkt_price_list_detail_lblTuesday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblTuesday_BeforeShow

//ssf_tkt_price_list_detail_lblWednesday_BeforeShow @89-CF13B564
function ssf_tkt_price_list_detail_lblWednesday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblWednesday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblWednesday_BeforeShow

//Custom Code @96-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[3]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblWednesday_BeforeShow @89-7BB0C066
    return $ssf_tkt_price_list_detail_lblWednesday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblWednesday_BeforeShow

//ssf_tkt_price_list_detail_lblThursday_BeforeShow @90-D0559E16
function ssf_tkt_price_list_detail_lblThursday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblThursday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblThursday_BeforeShow

//Custom Code @97-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[4]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblThursday_BeforeShow @90-9C78FCA6
    return $ssf_tkt_price_list_detail_lblThursday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblThursday_BeforeShow

//ssf_tkt_price_list_detail_lblFriday_BeforeShow @91-7C54B993
function ssf_tkt_price_list_detail_lblFriday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblFriday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblFriday_BeforeShow

//Custom Code @98-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[5]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblFriday_BeforeShow @91-05F7DB5D
    return $ssf_tkt_price_list_detail_lblFriday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblFriday_BeforeShow

//ssf_tkt_price_list_detail_lblSaturday_BeforeShow @92-195CA901
function ssf_tkt_price_list_detail_lblSaturday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblSaturday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblSaturday_BeforeShow

//Custom Code @99-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[6]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblSaturday_BeforeShow @92-BC49D675
    return $ssf_tkt_price_list_detail_lblSaturday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblSaturday_BeforeShow

//ssf_tkt_price_list_detail_lblSunday_BeforeShow @93-DEB660F1
function ssf_tkt_price_list_detail_lblSunday_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_lblSunday_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_lblSunday_BeforeShow

//Custom Code @100-2A29BDB7
global $Weekdays ;
$Component->SetValue($Weekdays[0]) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_lblSunday_BeforeShow @93-E9831BC2
    return $ssf_tkt_price_list_detail_lblSunday_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_lblSunday_BeforeShow

//ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow @60-6ADD1BAB
function ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow

//Custom Code @102-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue( CCGetParam("tkt_list_id")) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow @60-37F1C7E2
    return $ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_tkt_list_det_id_BeforeShow

//ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow @61-1403BDB9
function ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow

//Custom Code @101-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue( GetNewSeqID(CCGetParam("tkt_list_id"))) ;
//End Custom Code

//Close ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow @61-93B19ED0
    return $ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_tkt_list_det_seq_BeforeShow

//ssf_tkt_price_list_detail_ds_AfterExecuteSelect @53-B41489F9
function ssf_tkt_price_list_detail_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_price_list_detail_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_ds_AfterExecuteSelect

//Custom Code @76-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_price_list_detail_ds_AfterExecuteSelect @53-058C15D7
    return $ssf_tkt_price_list_detail_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_price_list_detail_ds_AfterExecuteSelect

//ssf_tkt_price_list_detail_BeforeShow @53-28F065FB
function ssf_tkt_price_list_detail_BeforeShow(& $sender)
{
    $ssf_tkt_price_list_detail_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_price_list_detail; //Compatibility
//End ssf_tkt_price_list_detail_BeforeShow

//Custom Code @79-2A29BDB7
	if (CCGetParam("tkt_list_det_plu") != "" || CCGetParam("ssf_tkt_price_det_Insert") == "insert" ) 
		$Component->Visible = true ;
	  else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_price_list_detail_BeforeShow @53-23701BDE
    return $ssf_tkt_price_list_detail_BeforeShow;
}
//End Close ssf_tkt_price_list_detail_BeforeShow

//Page_AfterInitialize @1-80A9B310
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketPriceList; //Compatibility
//End Page_AfterInitialize

//Custom Code @30-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_LPRI_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_LPRI_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetNewListID() {
	$value = 0 ;
	$db = new clsDBConnection1() ;
	$ssfQuery = " Select max(tkt_list_id) as max_id from ssf_tkt_price_list_header " ;
	$db->query($ssfQuery) ;
	$result = $db->next_record() ;
	if ($result)
		$value = $db->f("max_id") ;

	$value++ ;
	$db->Close();
	return $value;
}

function GetNewSeqID($price_list) {
	$value = 0 ;
	$db = new clsDBConnection1() ;
	$ssfQuery = " Select max(tkt_list_det_seq) as max_seq from ssf_tkt_price_list_detail " ;
	$ssfQuery .= " where tkt_list_det_id = ".$price_list ;
	$db->query($ssfQuery) ;
	$result = $db->next_record() ;
	if ($result)
		$value = $db->f("max_seq") ;

	$value++ ;
	$db->Close();
	return $value;
}

?>
