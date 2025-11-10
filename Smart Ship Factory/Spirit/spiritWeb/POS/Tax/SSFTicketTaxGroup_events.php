<?php
//BindEvents Method @1-5E8FA91D
function BindEvents()
{
    global $ssf_tkt_catalog;
    global $ssf_tkt_catalog1;
    global $ssf_tkt_taxes_group;
    global $ssf_tkt_taxes_group1;
    global $CCSEvents;
    $ssf_tkt_catalog->ssf_tkt_catalog_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow";
    $ssf_tkt_catalog1->tkt_catalog_id->CCSEvents["BeforeShow"] = "ssf_tkt_catalog1_tkt_catalog_id_BeforeShow";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_catalog1_ds_AfterExecuteSelect";
    $ssf_tkt_catalog1->CCSEvents["BeforeShow"] = "ssf_tkt_catalog1_BeforeShow";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteInsert"] = "ssf_tkt_catalog1_ds_AfterExecuteInsert";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteDelete"] = "ssf_tkt_catalog1_ds_AfterExecuteDelete";
    $ssf_tkt_catalog1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_catalog1_ds_BeforeExecuteDelete";
    $ssf_tkt_taxes_group->ssf_tkt_taxes_group_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow";
    $ssf_tkt_taxes_group->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_group_BeforeShow";
    $ssf_tkt_taxes_group1->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_group1_Link1_BeforeShow";
    $ssf_tkt_taxes_group1->tkt_tax_group_id->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow";
    $ssf_tkt_taxes_group1->CCSEvents["BeforeShow"] = "ssf_tkt_taxes_group1_BeforeShow";
    $ssf_tkt_taxes_group1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_taxes_group1_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow @7-9B6EAA94
function ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog; //Compatibility
//End ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow

//Custom Code @29-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow @7-5EE18D29
    return $ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow;
}
//End Close ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow

//ssf_tkt_catalog1_tkt_catalog_id_BeforeShow @23-A9DAF214
function ssf_tkt_catalog1_tkt_catalog_id_BeforeShow(& $sender)
{
    $ssf_tkt_catalog1_tkt_catalog_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_tkt_catalog_id_BeforeShow

//Custom Code @27-2A29BDB7
	$Component->SetValue("tax_group_id") ;
//End Custom Code

//Close ssf_tkt_catalog1_tkt_catalog_id_BeforeShow @23-13844046
    return $ssf_tkt_catalog1_tkt_catalog_id_BeforeShow;
}
//End Close ssf_tkt_catalog1_tkt_catalog_id_BeforeShow

//ssf_tkt_catalog1_ds_AfterExecuteSelect @16-8ADE52F6
function ssf_tkt_catalog1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_catalog1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_ds_AfterExecuteSelect

//Custom Code @30-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_catalog1_ds_AfterExecuteSelect @16-54DDAED4
    return $ssf_tkt_catalog1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_catalog1_ds_AfterExecuteSelect

//ssf_tkt_catalog1_BeforeShow @16-D20CC8B0
function ssf_tkt_catalog1_BeforeShow(& $sender)
{
    $ssf_tkt_catalog1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_BeforeShow

//Custom Code @31-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_catalog_code") != "" || CCGetParam("ssf_tkt_catalog_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_catalog_code") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
	else
		$Tpl->setvar("readonlyparam", "") ;
//End Custom Code

//Close ssf_tkt_catalog1_BeforeShow @16-A6954536
    return $ssf_tkt_catalog1_BeforeShow;
}
//End Close ssf_tkt_catalog1_BeforeShow

//ssf_tkt_catalog1_ds_AfterExecuteInsert @16-3FCE5233
function ssf_tkt_catalog1_ds_AfterExecuteInsert(& $sender)
{
    $ssf_tkt_catalog1_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_ds_AfterExecuteInsert

//Custom Code @65-2A29BDB7
	global $Redirect ;
	$Redirect = "SSFTicketTaxGroup.php?tkt_catalog_code=".$ssf_tkt_catalog1->tkt_catalog_code->GetValue() ;
//End Custom Code

//Close ssf_tkt_catalog1_ds_AfterExecuteInsert @16-A1845779
    return $ssf_tkt_catalog1_ds_AfterExecuteInsert;
}
//End Close ssf_tkt_catalog1_ds_AfterExecuteInsert

//ssf_tkt_catalog1_ds_AfterExecuteDelete @16-AAF67BC8
function ssf_tkt_catalog1_ds_AfterExecuteDelete(& $sender)
{
    $ssf_tkt_catalog1_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_ds_AfterExecuteDelete

//Custom Code @82-2A29BDB7
	$Component->DataSource->SQL = "DELETE FROM ssf_tkt_taxes_group where tkt_tax_group_id ='".$ssf_tkt_catalog1->tkt_catalog_code->GetValue()."'" ;
	$Component->DataSource->query($Component->DataSource->SQL);
//End Custom Code

//Close ssf_tkt_catalog1_ds_AfterExecuteDelete @16-F2893087
    return $ssf_tkt_catalog1_ds_AfterExecuteDelete;
}
//End Close ssf_tkt_catalog1_ds_AfterExecuteDelete

//ssf_tkt_catalog1_ds_BeforeExecuteDelete @16-A70E7D1F
function ssf_tkt_catalog1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_catalog1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_ds_BeforeExecuteDelete

//Custom Code @116-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;

	// chequeo relación con productos
	$table = "ssf_tkt_plu" ;
	$where = " tkt_plu_tax = '".$ssf_tkt_catalog1->tkt_catalog_code->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_plu_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}

	// chequeo relación con Clientes
	$table = "ssf_tkt_customers_types" ;
	$where = " tkt_cust_type_tax_id = '".$ssf_tkt_catalog1->tkt_catalog_code->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_cust_type_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}

//End Custom Code

//Close ssf_tkt_catalog1_ds_BeforeExecuteDelete @16-F5458960
    return $ssf_tkt_catalog1_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_catalog1_ds_BeforeExecuteDelete

//ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow @87-DF2F17AA
function ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group; //Compatibility
//End ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow

//Custom Code @109-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow @87-3934F828
    return $ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow;
}
//End Close ssf_tkt_taxes_group_ssf_tkt_taxes_group_Insert_BeforeShow


//ssf_tkt_taxes_group_BeforeShow @83-8C8DC7A8
function ssf_tkt_taxes_group_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_group_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group; //Compatibility
//End ssf_tkt_taxes_group_BeforeShow

//Custom Code @106-2A29BDB7
	if (CCGetParam("tkt_catalog_code") != "" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

//End Custom Code

//Close ssf_tkt_taxes_group_BeforeShow @83-39E8931D
    return $ssf_tkt_taxes_group_BeforeShow;
}
//End Close ssf_tkt_taxes_group_BeforeShow

//ssf_tkt_taxes_group1_Link1_BeforeShow @113-551B4658
function ssf_tkt_taxes_group1_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_group1_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group1; //Compatibility
//End ssf_tkt_taxes_group1_Link1_BeforeShow

//Custom Code @114-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed || CCGetParam("tkt_tax_tax_id") != ""  ) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_taxes_group1_Link1_BeforeShow @113-2857C790
    return $ssf_tkt_taxes_group1_Link1_BeforeShow;
}
//End Close ssf_tkt_taxes_group1_Link1_BeforeShow

//ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow @102-CD9C3D75
function ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group1; //Compatibility
//End ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow

//Custom Code @108-2A29BDB7
$Component->SetValue(CCGetParam("tkt_catalog_code")) ;
//End Custom Code

//Close ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow @102-911B0A4C
    return $ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow;
}
//End Close ssf_tkt_taxes_group1_tkt_tax_group_id_BeforeShow

//ssf_tkt_taxes_group1_BeforeShow @96-FF4304CA
function ssf_tkt_taxes_group1_BeforeShow(& $sender)
{
    $ssf_tkt_taxes_group1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group1; //Compatibility
//End ssf_tkt_taxes_group1_BeforeShow

//Custom Code @110-2A29BDB7
global $Tpl ;
	if (CCGetParam("tkt_tax_tax_id") != "" || CCGetParam("ssf_tkt_taxes_group_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_tax_tax_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
	else
		$Tpl->setvar("readonlyparam", "") ;
//End Custom Code

//Close ssf_tkt_taxes_group1_BeforeShow @96-546BC0A2
    return $ssf_tkt_taxes_group1_BeforeShow;
}
//End Close ssf_tkt_taxes_group1_BeforeShow

//ssf_tkt_taxes_group1_ds_AfterExecuteSelect @96-7D0DA5DE
function ssf_tkt_taxes_group1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_taxes_group1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_taxes_group1; //Compatibility
//End ssf_tkt_taxes_group1_ds_AfterExecuteSelect

//Custom Code @115-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_taxes_group1_ds_AfterExecuteSelect @96-DE45E578
    return $ssf_tkt_taxes_group1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_taxes_group1_ds_AfterExecuteSelect

//Page_AfterInitialize @1-4AA35CEB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketTaxGroup; //Compatibility
//End Page_AfterInitialize

//Custom Code @28-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_TAX_GRP_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_TAX_GRP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  



?>
