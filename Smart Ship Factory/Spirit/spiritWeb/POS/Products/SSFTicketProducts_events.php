<?php
//BindEvents Method @1-3A0735C7
function BindEvents()
{
    global $ssf_tkt_plu;
    global $product_record;
    global $ssf_tkt_bar_codes;
    global $CCSEvents;
    $ssf_tkt_plu->ImageLink1->CCSEvents["BeforeShow"] = "ssf_tkt_plu_ImageLink1_BeforeShow";
    $ssf_tkt_plu->ssf_tkt_plu_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow";
    $product_record->Label1->CCSEvents["BeforeShow"] = "product_record_Label1_BeforeShow";
    $product_record->Label2->CCSEvents["BeforeShow"] = "product_record_Label2_BeforeShow";
    $product_record->Label3->CCSEvents["BeforeShow"] = "product_record_Label3_BeforeShow";
    $product_record->Button_Delete->CCSEvents["BeforeShow"] = "product_record_Button_Delete_BeforeShow";
    $product_record->CCSEvents["BeforeShow"] = "product_record_BeforeShow";
    $product_record->ds->CCSEvents["AfterExecuteSelect"] = "product_record_ds_AfterExecuteSelect";
    $product_record->ds->CCSEvents["AfterExecuteDelete"] = "product_record_ds_AfterExecuteDelete";
    $ssf_tkt_bar_codes->tkt_plu_id->CCSEvents["BeforeShow"] = "ssf_tkt_bar_codes_tkt_plu_id_BeforeShow";
    $ssf_tkt_bar_codes->CCSEvents["BeforeShow"] = "ssf_tkt_bar_codes_BeforeShow";
    $ssf_tkt_bar_codes->ds->CCSEvents["BeforeExecuteInsert"] = "ssf_tkt_bar_codes_ds_BeforeExecuteInsert";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//ssf_tkt_plu_ImageLink1_BeforeShow @134-8FA5FA51
function ssf_tkt_plu_ImageLink1_BeforeShow(& $sender)
{
    $ssf_tkt_plu_ImageLink1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu; //Compatibility
//End ssf_tkt_plu_ImageLink1_BeforeShow

//Custom Code @157-2A29BDB7
if ($ssf_tkt_plu->h_tkt_plu_type->GetValue() == "D" ) 
	$Component->Visible = false ;
else
	$Component->Visible = true ;

//End Custom Code

//Close ssf_tkt_plu_ImageLink1_BeforeShow @134-6C70C5DC
    return $ssf_tkt_plu_ImageLink1_BeforeShow;
}
//End Close ssf_tkt_plu_ImageLink1_BeforeShow

//ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow @11-CE44B3A7
function ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_plu; //Compatibility
//End ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow

//Custom Code @126-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow @11-09030D81
    return $ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow;
}
//End Close ssf_tkt_plu_ssf_tkt_plu_Insert_BeforeShow


//product_record_Label1_BeforeShow @49-9B8A3EB5
function product_record_Label1_BeforeShow(& $sender)
{
    $product_record_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_Label1_BeforeShow

//Custom Code @52-2A29BDB7
	global $lbl_Level1 ;
	$Component->SetValue($lbl_Level1) ;
//End Custom Code

//Close product_record_Label1_BeforeShow @49-16BAB6C9
    return $product_record_Label1_BeforeShow;
}
//End Close product_record_Label1_BeforeShow

//product_record_Label2_BeforeShow @50-89C1F204
function product_record_Label2_BeforeShow(& $sender)
{
    $product_record_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_Label2_BeforeShow

//Custom Code @53-2A29BDB7
	global $lbl_Level2 ;
	$Component->SetValue($lbl_Level2) ;
//End Custom Code

//Close product_record_Label2_BeforeShow @50-6ADB9312
    return $product_record_Label2_BeforeShow;
}
//End Close product_record_Label2_BeforeShow

//product_record_Label3_BeforeShow @51-87F8B66B
function product_record_Label3_BeforeShow(& $sender)
{
    $product_record_Label3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_Label3_BeforeShow

//Custom Code @54-2A29BDB7
	global $lbl_Level3 ;
	$Component->SetValue($lbl_Level3) ;
//End Custom Code

//Close product_record_Label3_BeforeShow @51-F7D47264
    return $product_record_Label3_BeforeShow;
}
//End Close product_record_Label3_BeforeShow

//product_record_Button_Delete_BeforeShow @30-637A76D8
function product_record_Button_Delete_BeforeShow(& $sender)
{
    $product_record_Button_Delete_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_Button_Delete_BeforeShow

//Hide-Show Component @162-8860F805
    $Parameter1 = CCGetFromGet("tkt_plu_id", "");
    $Parameter2 = "PREPAY";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close product_record_Button_Delete_BeforeShow @30-666E927A
    return $product_record_Button_Delete_BeforeShow;
}
//End Close product_record_Button_Delete_BeforeShow

//product_record_BeforeShow @27-8083954F
function product_record_BeforeShow(& $sender)
{
    $product_record_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_BeforeShow

//Custom Code @102-2A29BDB7

if (CCGetParam("tkt_plu_id") != "" || CCGetParam("ssf_tkt_plu_Insert") == "insert" ) 
	$Component->Visible = true ;
 else 
 	$Component->Visible = false ;

global $Tpl ;
if (CCGetParam("tkt_plu_id") != "") {
	$Tpl->setvar("disabledparam","disabled") ;
	$Tpl->setvar("readonlyparam","readonly") ;
} else {
	$Tpl->setvar("disabledparam","") ;
	$Tpl->setvar("readonlyparam","") ;
}
//End Custom Code

//Close product_record_BeforeShow @27-881B4696
    return $product_record_BeforeShow;
}
//End Close product_record_BeforeShow

//product_record_ds_AfterExecuteSelect @27-AC331261
function product_record_ds_AfterExecuteSelect(& $sender)
{
    $product_record_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_ds_AfterExecuteSelect

//Custom Code @127-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close product_record_ds_AfterExecuteSelect @27-0CFC0426
    return $product_record_ds_AfterExecuteSelect;
}
//End Close product_record_ds_AfterExecuteSelect

//product_record_ds_AfterExecuteDelete @27-F17D7B1A
function product_record_ds_AfterExecuteDelete(& $sender)
{
    $product_record_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $product_record; //Compatibility
//End product_record_ds_AfterExecuteDelete

//Custom Code @152-2A29BDB7
	$Component->DataSource->SQL = "DELETE FROM ssf_tkt_bar_codes where tkt_plu_id ='".$product_record->tkt_plu_id->GetValue()."'" ;
	$Component->DataSource->query($Component->DataSource->SQL);
//End Custom Code

//Close product_record_ds_AfterExecuteDelete @27-AAA89A75
    return $product_record_ds_AfterExecuteDelete;
}
//End Close product_record_ds_AfterExecuteDelete

//ssf_tkt_bar_codes_tkt_plu_id_BeforeShow @146-49AF63FF
function ssf_tkt_bar_codes_tkt_plu_id_BeforeShow(& $sender)
{
    $ssf_tkt_bar_codes_tkt_plu_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_bar_codes; //Compatibility
//End ssf_tkt_bar_codes_tkt_plu_id_BeforeShow

//Custom Code @154-2A29BDB7
$Component->SetValue(CCGetParam("tkt_plu_id")) ;
//End Custom Code

//Close ssf_tkt_bar_codes_tkt_plu_id_BeforeShow @146-3E6ED2FD
    return $ssf_tkt_bar_codes_tkt_plu_id_BeforeShow;
}
//End Close ssf_tkt_bar_codes_tkt_plu_id_BeforeShow

//ssf_tkt_bar_codes_BeforeShow @137-AC829EB6
function ssf_tkt_bar_codes_BeforeShow(& $sender)
{
    $ssf_tkt_bar_codes_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_bar_codes; //Compatibility
//End ssf_tkt_bar_codes_BeforeShow

//Custom Code @153-2A29BDB7
	global $product_record;
	$Component->Visible = false ;
	if (CCGetParam("tkt_plu_id") != "" ) {
		if($product_record->tkt_plu_type->GetValue() == "P")
			$Component->Visible = true ;
		}
//End Custom Code

//Close ssf_tkt_bar_codes_BeforeShow @137-B17D443E
    return $ssf_tkt_bar_codes_BeforeShow;
}
//End Close ssf_tkt_bar_codes_BeforeShow

//ssf_tkt_bar_codes_ds_BeforeExecuteInsert @137-0D39AEE6
function ssf_tkt_bar_codes_ds_BeforeExecuteInsert(& $sender)
{
    $ssf_tkt_bar_codes_ds_BeforeExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_bar_codes; //Compatibility
//End ssf_tkt_bar_codes_ds_BeforeExecuteInsert

//Custom Code @155-2A29BDB7
if ($ssf_tkt_bar_codes->tkt_plu_bar_code->GetValue() == "")
	$ssf_tkt_bar_codes->DataSource->SQL = "" ;

//End Custom Code

//Close ssf_tkt_bar_codes_ds_BeforeExecuteInsert @137-8D5E259D
    return $ssf_tkt_bar_codes_ds_BeforeExecuteInsert;
}
//End Close ssf_tkt_bar_codes_ds_BeforeExecuteInsert

//Page_AfterInitialize @1-C98FF56E
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketProducts; //Compatibility
//End Page_AfterInitialize

//Custom Code @48-2A29BDB7
	global $EditisAllowed ;

	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRO_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRO_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

global $DBConnection1 ;
global $product_record ;
global $lbl_Level1 ;
global $lbl_Level2 ;
global $lbl_Level3 ;
	$db = new clsDBConnection1();
	$sql = " Select * from ssf_tkt_catalog where tkt_catalog_id = 'cat_level' " ;
	$db->query($sql);
	$Result = $db->next_record();
	while ($Result) {
		switch ($db->f("tkt_catalog_code")) {
		case "level1":
			$lbl_Level1 = $db->f("tkt_catalog_value") ;
			break ;
		case "level2":
			$lbl_Level2 = $db->f("tkt_catalog_value") ;
			break ;
		case "level3":
			$lbl_Level3 = $db->f("tkt_catalog_value") ;
			break ;
		}
		$Result = $db->next_record();
	}


	$product_record->lstLevel1->Caption = $lbl_Level1 ;
	$product_record->lstLevel2->Caption = $lbl_Level2 ;
	$product_record->lstLevel3->Caption = $lbl_Level3 ;


//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-0F6D59A8
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketProducts; //Compatibility
//End Page_BeforeShow

//Custom Code @135-2A29BDB7
global $Tpl ;
global $PathToRoot ;
	$Tpl->SetVar("imgprice" , $PathToRoot. "/Styles/Spirit/Images/prices.jpg" ) ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
