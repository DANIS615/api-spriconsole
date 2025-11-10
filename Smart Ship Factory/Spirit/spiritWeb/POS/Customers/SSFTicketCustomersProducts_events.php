<?php
//BindEvents Method @1-A3D815FB
function BindEvents()
{
    global $ssf_tkt_customers_product;
    global $ssf_tkt_customers_product1;
    global $ssf_tkt_customers_product2;
    global $CCSEvents;
    $ssf_tkt_customers_product->lblReference->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product_lblReference_BeforeShow";
    $ssf_tkt_customers_product1->ssf_tkt_cust_prod_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow";
    $ssf_tkt_customers_product2->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product2_Link1_BeforeShow";
    $ssf_tkt_customers_product2->tkt_cp_ref_type->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow";
    $ssf_tkt_customers_product2->tkt_cp_reference_id->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow";
    $ssf_tkt_customers_product2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_customers_product2_ds_AfterExecuteSelect";
    $ssf_tkt_customers_product2->CCSEvents["BeforeShow"] = "ssf_tkt_customers_product2_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_customers_product_lblReference_BeforeShow @27-5EDADD59
function ssf_tkt_customers_product_lblReference_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product_lblReference_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product; //Compatibility
//End ssf_tkt_customers_product_lblReference_BeforeShow

//Custom Code @33-2A29BDB7
$reference = CCGetParam("tkt_cp_reference_id") ;
$ref_name = GetRefName($reference, CCGetParam("tkt_cp_ref_type")) ;
$Component->SetValue($reference." -- ".$ref_name) ;
//End Custom Code

//Close ssf_tkt_customers_product_lblReference_BeforeShow @27-476457D6
    return $ssf_tkt_customers_product_lblReference_BeforeShow;
}
//End Close ssf_tkt_customers_product_lblReference_BeforeShow

//ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow @11-F097343B
function ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product1; //Compatibility
//End ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow

//Custom Code @35-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow @11-DB82D47A
    return $ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow;
}
//End Close ssf_tkt_customers_product1_ssf_tkt_cust_prod_Insert_BeforeShow

//ssf_tkt_customers_product2_Link1_BeforeShow @46-1F6C0823
function ssf_tkt_customers_product2_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product2_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product2; //Compatibility
//End ssf_tkt_customers_product2_Link1_BeforeShow

//Custom Code @47-2A29BDB7
if (CCGetParam("tkt_cp_product_id") != "" ) 
	$Component->Visible = false ;
 else 
 	$Component->Visible = true ;
//End Custom Code

//Close ssf_tkt_customers_product2_Link1_BeforeShow @46-7900C298
    return $ssf_tkt_customers_product2_Link1_BeforeShow;
}
//End Close ssf_tkt_customers_product2_Link1_BeforeShow

//ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow @41-56E7D6DE
function ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product2; //Compatibility
//End ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow

//Custom Code @42-2A29BDB7
if ($Component->GetValue() == "") 
	$Component->SetValue(CCGetParam("tkt_cp_ref_type")) ;
//End Custom Code

//Close ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow @41-8DF47485
    return $ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow;
}
//End Close ssf_tkt_customers_product2_tkt_cp_ref_type_BeforeShow

//ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow @39-DF1923D1
function ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product2; //Compatibility
//End ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow

//Custom Code @40-2A29BDB7
if ($Component->GetValue() == "") 
	$Component->SetValue(CCGetParam("tkt_cp_reference_id")) ;
//End Custom Code

//Close ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow @39-73716A81
    return $ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow;
}
//End Close ssf_tkt_customers_product2_tkt_cp_reference_id_BeforeShow

//ssf_tkt_customers_product2_ds_AfterExecuteSelect @19-392E2FD5
function ssf_tkt_customers_product2_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_customers_product2_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product2; //Compatibility
//End ssf_tkt_customers_product2_ds_AfterExecuteSelect

//Custom Code @37-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_customers_product2_ds_AfterExecuteSelect @19-13B80AAB
    return $ssf_tkt_customers_product2_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_customers_product2_ds_AfterExecuteSelect

//ssf_tkt_customers_product2_BeforeShow @19-3B0BD614
function ssf_tkt_customers_product2_BeforeShow(& $sender)
{
    $ssf_tkt_customers_product2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_customers_product2; //Compatibility
//End ssf_tkt_customers_product2_BeforeShow

//Custom Code @38-2A29BDB7
if (CCGetParam("tkt_cp_product_id") != "" || CCGetParam("ssf_tkt_cust_prod_Insert") == "insert" ) 
	$Component->Visible = true ;
 else 
 	$Component->Visible = false ;

//End Custom Code

//Close ssf_tkt_customers_product2_BeforeShow @19-3FC017CF
    return $ssf_tkt_customers_product2_BeforeShow;
}
//End Close ssf_tkt_customers_product2_BeforeShow

//Page_AfterInitialize @1-66877A74
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketCustomersProducts; //Compatibility
//End Page_AfterInitialize

//Custom Code @34-2A29BDB7
include("../../Security/accessmanager.php");
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_CUS_PROD_EDIT") ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetRefName($reference, $type) {
	$db = new clsDBConnection1() ;
	$ssfQuery = "" ;
	$value = "" ;
	if ($type=="A") { // es una cuenta 
		$ssfQuery = " Select tkt_cust_name as ref_name from ssf_tkt_customers, ssf_tkt_customers_accounts " ;
		$ssfQuery .= " where tkt_accnt_cust_id = tkt_cust_id and tkt_accnt_id = '".$reference."'" ;
	} else { // es una subcuenta 
		$ssfQuery = " Select tkt_subaccnt_description as ref_name from ssf_tkt_customers_subaccounts " ;
		$ssfQuery .= " where tkt_subaccnt_id = '".$reference."'" ;
	}
	$db->query($ssfQuery) ;
	$result = $db->next_record() ;
	if ($result)
		$value = $db->f("ref_name") ;
	$db->Close();
	return $value ;
}

?>
