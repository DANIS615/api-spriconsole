<?php
//BindEvents Method @1-607721C9
function BindEvents()
{
    global $ssf_tkt_speed_keys1;
    global $ssf_tkt_speed_keys;
    global $ssf_tkt_speed_keys2;
    global $ssf_tkt_speed_keys3;
    global $CCSEvents;
    $ssf_tkt_speed_keys1->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys1_Link1_BeforeShow";
    $ssf_tkt_speed_keys1->Link2->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys1_Link2_BeforeShow";
    $ssf_tkt_speed_keys->Label1->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_Label1_BeforeShow";
    $ssf_tkt_speed_keys->r_tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow";
    $ssf_tkt_speed_keys->h_tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow";
    $ssf_tkt_speed_keys->r_tkt_speed_parent_group_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow";
    $ssf_tkt_speed_keys->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys_BeforeShow";
    $ssf_tkt_speed_keys2->Label1->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys2_Label1_BeforeShow";
    $ssf_tkt_speed_keys2->speed_keys2_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow";
    $ssf_tkt_speed_keys2->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys2_BeforeShow";
    $ssf_tkt_speed_keys3->tkt_speed_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow";
    $ssf_tkt_speed_keys3->tkt_speed_parent_group_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow";
    $ssf_tkt_speed_keys3->tkt_speed_group_id->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow";
    $ssf_tkt_speed_keys3->CCSEvents["BeforeShow"] = "ssf_tkt_speed_keys3_BeforeShow";
    $ssf_tkt_speed_keys3->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_speed_keys3_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_speed_keys1_Link1_BeforeShow @44-D51A8B00
function ssf_tkt_speed_keys1_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys1_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys1; //Compatibility
//End ssf_tkt_speed_keys1_Link1_BeforeShow

//Custom Code @184-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys1_Link1_BeforeShow @44-81114DCF
    return $ssf_tkt_speed_keys1_Link1_BeforeShow;
}
//End Close ssf_tkt_speed_keys1_Link1_BeforeShow

//ssf_tkt_speed_keys1_Link2_BeforeShow @47-3879729B
function ssf_tkt_speed_keys1_Link2_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys1_Link2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys1; //Compatibility
//End ssf_tkt_speed_keys1_Link2_BeforeShow

//Custom Code @185-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys1_Link2_BeforeShow @47-FD706814
    return $ssf_tkt_speed_keys1_Link2_BeforeShow;
}
//End Close ssf_tkt_speed_keys1_Link2_BeforeShow


//ssf_tkt_speed_keys_Label1_BeforeShow @123-D033FB24
function ssf_tkt_speed_keys_Label1_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_Label1_BeforeShow

//Custom Code @124-2A29BDB7
global $CCSLocales ;
$text = "" ;
if (CCGetParam("edit_id") != "" ) {
	$text = $CCSLocales->GetText("CCS_Update")." ".CCGetParam("edit_id") ;
} else {
	if (CCGetParam("categ_id") != "" ) {
		$text = $CCSLocales->GetText("CCS_Insert")." ".$CCSLocales->GetText("in")." ".CCGetParam("categ_id") ;
	} else {
		$text = $CCSLocales->GetText("CCS_Insert")." ".$CCSLocales->GetText("in")." ".$CCSLocales->GetText("CCS_Main") ;
	}
}
	$Component->SetValue($text) ;
//End Custom Code

//Close ssf_tkt_speed_keys_Label1_BeforeShow @123-DD440C70
    return $ssf_tkt_speed_keys_Label1_BeforeShow;
}
//End Close ssf_tkt_speed_keys_Label1_BeforeShow

//ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @37-9CE34F3B
function ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//Custom Code @139-2A29BDB7
global $Tpl ;
if (CCGetParam("add_speed_id") != "" ) {
	$Component->SetValue(CCGetParam("add_speed_id")) ;
	$Tpl->setvar("disabledparam", "disabled") ;
	} else {
		//$Tpl->setvar("disabledparam", "") ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @37-4B3066FD
    return $ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow @97-8B391CBD
function ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow

//Custom Code @140-2A29BDB7
if ( CCGetParam("add_speed_id") != "" )
	$Component->SetValue(CCGetParam("add_speed_id")) ;
//End Custom Code

//Close ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow @97-0ADE2DA0
    return $ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_h_tkt_speed_id_BeforeShow

//ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow @38-328D6F18
function ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow

//Custom Code @136-2A29BDB7
if (CCGetParam("add_parent_id") != "" ) {
	$Component->SetValue(CCGetParam("add_parent_id")) ;
} else {
	if (CCGetParam("edit_id") == "" ) {
		$Component->SetValue("MAIN") ;
	}
}
//End Custom Code

//Close ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow @38-C19F3FDC
    return $ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys_r_tkt_speed_parent_group_id_BeforeShow

//DEL  

//ssf_tkt_speed_keys_BeforeShow @30-D493DEDF
function ssf_tkt_speed_keys_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys; //Compatibility
//End ssf_tkt_speed_keys_BeforeShow

//Custom Code @96-2A29BDB7
global $Tpl ;
	if (CCGetParam("edit_id") != "" ) {
		$Tpl->setvar("readonlyparam", "readonly") ;
		$Tpl->setvar("disabledparam", "disabled") ;
	} else {
		$Tpl->setvar("readonlyparam", "") ;
		$Tpl->setvar("disabledparam", "") ;
	}
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->Visible = false ;
	}

//End Custom Code

//Close ssf_tkt_speed_keys_BeforeShow @30-65F7BB46
    return $ssf_tkt_speed_keys_BeforeShow;
}
//End Close ssf_tkt_speed_keys_BeforeShow

//DEL  //

//ssf_tkt_speed_keys2_Label1_BeforeShow @121-1125BD6E
function ssf_tkt_speed_keys2_Label1_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys2_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys2; //Compatibility
//End ssf_tkt_speed_keys2_Label1_BeforeShow

//Custom Code @122-2A29BDB7
$Component->SetValue(CCGetParam("categ_id")) ;
//End Custom Code

//Close ssf_tkt_speed_keys2_Label1_BeforeShow @121-974CAEAF
    return $ssf_tkt_speed_keys2_Label1_BeforeShow;
}
//End Close ssf_tkt_speed_keys2_Label1_BeforeShow

//ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow @56-A221515C
function ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys2; //Compatibility
//End ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow

//Custom Code @183-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow @56-E6BBF2F4
    return $ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow;
}
//End Close ssf_tkt_speed_keys2_speed_keys2_Insert_BeforeShow

//ssf_tkt_speed_keys2_BeforeShow @50-7F0E39DF
function ssf_tkt_speed_keys2_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys2; //Compatibility
//End ssf_tkt_speed_keys2_BeforeShow

//Custom Code @125-2A29BDB7
	if (CCGetParam("categ_id") != ""  ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_speed_keys2_BeforeShow @50-D4EF722D
    return $ssf_tkt_speed_keys2_BeforeShow;
}
//End Close ssf_tkt_speed_keys2_BeforeShow

//ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow @74-BB6B3A2B
function ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys3; //Compatibility
//End ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow

//Custom Code @144-2A29BDB7
$Component->SetValue(CCGetParam("cat_tkt_speed_id"))  ;
//End Custom Code

//Close ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow @74-1B94E319
    return $ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys3_tkt_speed_id_BeforeShow

//ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow @75-0CCA00B2
function ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys3; //Compatibility
//End ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow

//Custom Code @145-2A29BDB7
$Component->SetValue(CCGetParam("categ_id"))  ;
//End Custom Code

//Close ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow @75-AF6BFD71
    return $ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys3_tkt_speed_parent_group_id_BeforeShow

//ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow @77-B3E2C998
function ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys3; //Compatibility
//End ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow

//Custom Code @146-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow @77-504BEBD6
    return $ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow;
}
//End Close ssf_tkt_speed_keys3_tkt_speed_group_id_BeforeShow

//ssf_tkt_speed_keys3_BeforeShow @68-746E2A39
function ssf_tkt_speed_keys3_BeforeShow(& $sender)
{
    $ssf_tkt_speed_keys3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys3; //Compatibility
//End ssf_tkt_speed_keys3_BeforeShow

//Custom Code @132-2A29BDB7
global $Tpl;
	if ( CCGetParam("tkt_speed_order") != "" || CCGetParam("speed_keys2_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("speed_keys2_Insert") == "insert") 
		$Tpl->setvar("disablednodeparam","") ;
	else
		$Tpl->setvar("disablednodeparam","disabled") ;
		
	global $DBConnection1 ;
	$ssf_tkt_speed_keys3->link_tender_list->Visible = false ;
	$ssf_tkt_speed_keys3->link_product_list->Visible = false ;
	$speedgrouptype = CCDLookUp("tkt_catalog_misc1","ssf_tkt_catalog"," tkt_catalog_id ='speedkey_group_id' and tkt_catalog_code ='".CCGetParam("tkt_speed_id")."'" ,$DBConnection1) ;
	switch ($speedgrouptype) {
		case "PAY_SPEEDKEYS":
			$ssf_tkt_speed_keys3->link_tender_list->Visible = true ;
			break;
		case "PLU_SPEEDKEYS":
			$ssf_tkt_speed_keys3->link_product_list->Visible = true ;
			break;
		default:
			$ssf_tkt_speed_keys3->link_product_list->Visible = true ;
			$ssf_tkt_speed_keys3->link_tender_list->Visible = true ;
			break ;
	}

//End Custom Code

//Close ssf_tkt_speed_keys3_BeforeShow @68-49E0935B
    return $ssf_tkt_speed_keys3_BeforeShow;
}
//End Close ssf_tkt_speed_keys3_BeforeShow

//ssf_tkt_speed_keys3_ds_AfterExecuteSelect @68-7F3510CF
function ssf_tkt_speed_keys3_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_speed_keys3_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_speed_keys3; //Compatibility
//End ssf_tkt_speed_keys3_ds_AfterExecuteSelect

//Custom Code @187-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_speed_keys3_ds_AfterExecuteSelect @68-7D563BB2
    return $ssf_tkt_speed_keys3_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_speed_keys3_ds_AfterExecuteSelect

//Page_AfterInitialize @1-1B2A278D
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSpeedKey_old; //Compatibility
//End Page_AfterInitialize

//Custom Code @182-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_SKP_EDIT") ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  	
//DEL  



?>
