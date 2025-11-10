<?php
//BindEvents Method @1-D544D09C
function BindEvents()
{
    global $ssf_tkt_printers;
    global $ssf_tkt_printers1;
    global $ssf_tkt_configuration;
    global $ssf_tkt_printers2;
    global $CCSEvents;
    $ssf_tkt_printers->ssf_tkt_catalog_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow";
    $ssf_tkt_printers1->h_tkt_printer_param_id->CCSEvents["BeforeShow"] = "ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow";
    $ssf_tkt_printers1->CCSEvents["BeforeShow"] = "ssf_tkt_printers1_BeforeShow";
    $ssf_tkt_printers1->ds->CCSEvents["AfterExecuteInsert"] = "ssf_tkt_printers1_ds_AfterExecuteInsert";
    $ssf_tkt_printers1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_printers1_ds_AfterExecuteSelect";
    $ssf_tkt_printers1->CCSEvents["OnValidate"] = "ssf_tkt_printers1_OnValidate";
    $ssf_tkt_configuration->ssf_tkt_configuration_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow";
    $ssf_tkt_configuration->CCSEvents["BeforeShow"] = "ssf_tkt_configuration_BeforeShow";
    $ssf_tkt_printers2->tkt_printer_param_value->CCSEvents["BeforeShow"] = "ssf_tkt_printers2_tkt_printer_param_value_BeforeShow";
    $ssf_tkt_printers2->ListBox1->CCSEvents["OnValidate"] = "ssf_tkt_printers2_ListBox1_OnValidate";
    $ssf_tkt_printers2->ListBox1->CCSEvents["BeforeShow"] = "ssf_tkt_printers2_ListBox1_BeforeShow";
    $ssf_tkt_printers2->CCSEvents["BeforeShow"] = "ssf_tkt_printers2_BeforeShow";
    $ssf_tkt_printers2->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_printers2_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow @8-2103ED63
function ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers; //Compatibility
//End ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow

//Custom Code @76-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow @8-952D267D
    return $ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow;
}
//End Close ssf_tkt_printers_ssf_tkt_catalog_Insert_BeforeShow

//ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow @26-E94220DF
function ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow(& $sender)
{
    $ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers1; //Compatibility
//End ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow

//Custom Code @51-2A29BDB7
	$Component->SetValue("PRT_COMP_ID") ;
//End Custom Code

//Close ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow @26-B1EBD8DD
    return $ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow;
}
//End Close ssf_tkt_printers1_h_tkt_printer_param_id_BeforeShow

//ssf_tkt_printers1_BeforeShow @15-5A76333F
function ssf_tkt_printers1_BeforeShow(& $sender)
{
    $ssf_tkt_printers1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers1; //Compatibility
//End ssf_tkt_printers1_BeforeShow

//Custom Code @35-2A29BDB7
	if (CCGetParam("tkt_printer_id") != "" || CCGetParam("ssf_tkt_catalog_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_printer_id") != "" ) {
		$Component->tkt_printer_id->Attributes->SetValue("readonlyparam","readonly") ;
		$Component->lst_printer_type->Attributes->SetValue("disabledparam","disabled") ;
	}
//End Custom Code

//Close ssf_tkt_printers1_BeforeShow @15-B8E80C55
    return $ssf_tkt_printers1_BeforeShow;
}
//End Close ssf_tkt_printers1_BeforeShow

//ssf_tkt_printers1_ds_AfterExecuteInsert @15-997B1ACE
function ssf_tkt_printers1_ds_AfterExecuteInsert(& $sender)
{
    $ssf_tkt_printers1_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers1; //Compatibility
//End ssf_tkt_printers1_ds_AfterExecuteInsert

//Custom Code @50-2A29BDB7
	if ($ssf_tkt_printers1->Errors->Count() == 0 ) {
		global $Redirect ;
		$Redirect = "SSFTicketPrinter.php?tkt_printer_id=".$Component->tkt_printer_id->GetValue() ;

		$db = new clsDBConnection1();
		$sqlQuery =  "insert into ssf_tkt_printers (tkt_printer_id,tkt_printer_param_id,tkt_printer_param_value) " ;
		$sqlQuery .= " values ('".$Component->tkt_printer_id->GetValue()."','PRT_TYPE','".$Component->lst_printer_type->GetValue()."')" ;
		$db->query($sqlQuery);

		$db2 = new clsDBConnection1();
		$sqlQuery = "select tkt_catalog_value from ssf_tkt_catalog where tkt_catalog_id = 'printer_param_config'";
		$sqlQuery .= " and tkt_catalog_code ='".$Component->lst_printer_type->GetValue()."'" ;
		$db->query($sqlQuery);
		while($db->next_record())
		{
			$sqlInsert = "insert into ssf_tkt_printers (tkt_printer_id,tkt_printer_param_id,tkt_printer_param_value) " ;
			$sqlInsert .= " values('".$Component->tkt_printer_id->GetValue()."','".$db->f("tkt_catalog_value")."','')";
			$db2->query($sqlInsert);
		}
		$db->close();
		$db2->close();
	}
//End Custom Code

//Close ssf_tkt_printers1_ds_AfterExecuteInsert @15-62C08CB1
    return $ssf_tkt_printers1_ds_AfterExecuteInsert;
}
//End Close ssf_tkt_printers1_ds_AfterExecuteInsert

//ssf_tkt_printers1_ds_AfterExecuteSelect @15-F7719E1F
function ssf_tkt_printers1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_printers1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers1; //Compatibility
//End ssf_tkt_printers1_ds_AfterExecuteSelect

//Custom Code @109-2A29BDB7

	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_printers1_ds_AfterExecuteSelect @15-9799751C
    return $ssf_tkt_printers1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_printers1_ds_AfterExecuteSelect

//ssf_tkt_printers1_OnValidate @15-1179D299
function ssf_tkt_printers1_OnValidate(& $sender)
{
    $ssf_tkt_printers1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers1; //Compatibility
//End ssf_tkt_printers1_OnValidate

//Custom Code @117-2A29BDB7
global $CCSLocales ;
if ($ssf_tkt_printers1->Button_Insert->Pressed) {
	if ($ssf_tkt_printers1->lst_printer_type->GetValue() == "" ) {
		$ssf_tkt_printers1->Errors->addError($CCSLocales->GetText("CCS_RequiredField",$ssf_tkt_printers1->lst_printer_type->Caption));
		$ssf_tkt_printers1_OnValidate = false ;
	}
}
//End Custom Code

//Close ssf_tkt_printers1_OnValidate @15-871368DC
    return $ssf_tkt_printers1_OnValidate;
}
//End Close ssf_tkt_printers1_OnValidate

//DEL  

//ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow @59-F801EEAC
function ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow(& $sender)
{
    $ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration; //Compatibility
//End ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow

//Custom Code @60-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow @59-AEB5560C
    return $ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow;
}
//End Close ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow

//ssf_tkt_configuration_BeforeShow @52-C723D0E0
function ssf_tkt_configuration_BeforeShow(& $sender)
{
    $ssf_tkt_configuration_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration; //Compatibility
//End ssf_tkt_configuration_BeforeShow

//Custom Code @63-2A29BDB7
global $ssf_tkt_printers1 ;
$Component->Visible = false ;

if ($ssf_tkt_printers1->Errors->Count() == 0) {
	if (CCGetParam("tkt_printer_id") != "" ) 
		$Component->Visible = true ;
}
//End Custom Code

//Close ssf_tkt_configuration_BeforeShow @52-D9BA0A7F
    return $ssf_tkt_configuration_BeforeShow;
}
//End Close ssf_tkt_configuration_BeforeShow

//ssf_tkt_printers2_tkt_printer_param_value_BeforeShow @86-956862BB
function ssf_tkt_printers2_tkt_printer_param_value_BeforeShow(& $sender)
{
    $ssf_tkt_printers2_tkt_printer_param_value_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers2; //Compatibility
//End ssf_tkt_printers2_tkt_printer_param_value_BeforeShow

//Custom Code @111-2A29BDB7
	$thisParam = $ssf_tkt_printers2->tkt_printer_param_id->GetValue();
	if( $thisParam == "PRT_PARITY" || $thisParam == "PRT_STOPBITS" || $thisParam == "PRT_DATABITS" ||
		$thisParam == "PRT_FLOW" || $thisParam == "PRT_PORTTYPE" )
		$Component->Visible = false;
	else
		$ssf_tkt_printers2->ListBox1->Visible = false;
//End Custom Code

//Close ssf_tkt_printers2_tkt_printer_param_value_BeforeShow @86-1BCBE1FE
    return $ssf_tkt_printers2_tkt_printer_param_value_BeforeShow;
}
//End Close ssf_tkt_printers2_tkt_printer_param_value_BeforeShow

//ssf_tkt_printers2_ListBox1_OnValidate @93-217F9DC8
function ssf_tkt_printers2_ListBox1_OnValidate(& $sender)
{
    $ssf_tkt_printers2_ListBox1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers2; //Compatibility
//End ssf_tkt_printers2_ListBox1_OnValidate

//Custom Code @112-2A29BDB7
	if($Component->GetValue() != "")
		$ssf_tkt_printers2->tkt_printer_param_value->SetValue($Component->GetValue());
//End Custom Code

//Close ssf_tkt_printers2_ListBox1_OnValidate @93-233292BF
    return $ssf_tkt_printers2_ListBox1_OnValidate;
}
//End Close ssf_tkt_printers2_ListBox1_OnValidate

//ssf_tkt_printers2_ListBox1_BeforeShow @93-EA48A0F6
function ssf_tkt_printers2_ListBox1_BeforeShow(& $sender)
{
    $ssf_tkt_printers2_ListBox1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers2; //Compatibility
//End ssf_tkt_printers2_ListBox1_BeforeShow

//Custom Code @113-2A29BDB7
	global $CCSLocales;
	if($Component->Visible == false)
		return $ssf_tkt_printers2_ListBox1_BeforeShow;
	$thisParam = $ssf_tkt_printers2->tkt_printer_param_id->GetValue();
	$db = new clsDBConnection1();
	$arrayOfValues = array();
	if( $thisParam == "PRT_PARITY")
	{
		$arrayOfValues[0] = array("NONE","NONE");
		$arrayOfValues[1] = array("MARK","MARK");
		$arrayOfValues[2] = array("EVENT","EVENT");
		$arrayOfValues[3] = array("ODD","ODD");
		$arrayOfValues[4] = array("SPACE","SPACE");
	}
	if( $thisParam == "PRT_STOPBITS")
	{
		//$arrayOfValues[0] = array("N",$CCSLocales->GetText("NO, SOLO A PEDIDO"));
		//$arrayOfValues[1] = array("Y",$CCSLocales->GetText("SI, AUTOMATICAMENTE"));
		$arrayOfValues[0] = array("0","0");
		$arrayOfValues[1] = array("1","1");
		$arrayOfValues[2] = array("2","2");
	}
	if( $thisParam == "PRT_DATABITS")
	{
		$arrayOfValues[0] = array("6","6");
		$arrayOfValues[1] = array("7","7");
		$arrayOfValues[2] = array("8","8");
		$arrayOfValues[3] = array("9","9");
	}
	if( $thisParam == "PRT_FLOW")
	{
		$arrayOfValues[0] = array("NONE","NONE");
		$arrayOfValues[1] = array("HARDWARE","HARDWARE");
		$arrayOfValues[2] = array("XON-XOFF","XON-XOFF");
	}
	if( $thisParam == "PRT_PORTTYPE")
	{
		$arrayOfValues[0] = array("ANY","ANY");
		$arrayOfValues[1] = array("SPP","SPP");
		$arrayOfValues[2] = array("PS2","PS2");
		$arrayOfValues[3] = array("EPP","EPP");
		$arrayOfValues[4] = array("ECP","ECP");
		$arrayOfValues[5] = array("NIBBLE","NIBBLE");


	}
	$Component->Values = $arrayOfValues;
	$Component->SetValue($ssf_tkt_printers2->tkt_printer_param_value->Value);
	$db->close();

//End Custom Code

//Close ssf_tkt_printers2_ListBox1_BeforeShow @93-1CC9F636
    return $ssf_tkt_printers2_ListBox1_BeforeShow;
}
//End Close ssf_tkt_printers2_ListBox1_BeforeShow

//ssf_tkt_printers2_BeforeShow @77-9F0317D8
function ssf_tkt_printers2_BeforeShow(& $sender)
{
    $ssf_tkt_printers2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers2; //Compatibility
//End ssf_tkt_printers2_BeforeShow

//Custom Code @107-2A29BDB7
	if (CCGetParam("tkt_printer_id") != "" && (CCGetParam("tkt_printer_param_id") != "" || CCGetParam("ssf_tkt_configuration_Insert") == "insert" )) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_printer_param_id") != "" ) 
		$Component->tkt_printer_param_id->Attributes->SetValue("disabledparam","disabled") ;
//End Custom Code

//Close ssf_tkt_printers2_BeforeShow @77-C489298E
    return $ssf_tkt_printers2_BeforeShow;
}
//End Close ssf_tkt_printers2_BeforeShow

//ssf_tkt_printers2_ds_AfterExecuteSelect @77-C8EA9E45
function ssf_tkt_printers2_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_printers2_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_printers2; //Compatibility
//End ssf_tkt_printers2_ds_AfterExecuteSelect

//Custom Code @110-2A29BDB7

	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_printers2_ds_AfterExecuteSelect @77-A274C34F
    return $ssf_tkt_printers2_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_printers2_ds_AfterExecuteSelect

//Page_AfterInitialize @1-E7361404
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketPrinter; //Compatibility
//End Page_AfterInitialize

//Custom Code @34-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRT_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRT_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
