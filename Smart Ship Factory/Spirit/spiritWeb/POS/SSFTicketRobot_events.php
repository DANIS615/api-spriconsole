<?php
//BindEvents Method @1-A51A2EEB
function BindEvents()
{
    global $ssf_tkt_catalog;
    global $ssf_tkt_catalog1;
    global $ssf_tkt_configuration;
    global $ssf_tkt_configuration1;
    global $CCSEvents;
    $ssf_tkt_catalog->ssf_tkt_catalog_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_catalog_ssf_tkt_catalog_Insert_BeforeShow";
    $ssf_tkt_catalog1->tkt_catalog_code->CCSEvents["OnValidate"] = "ssf_tkt_catalog1_tkt_catalog_code_OnValidate";
    $ssf_tkt_catalog1->Button_Delete->CCSEvents["BeforeShow"] = "ssf_tkt_catalog1_Button_Delete_BeforeShow";
    $ssf_tkt_catalog1->tkt_catalog_id->CCSEvents["BeforeShow"] = "ssf_tkt_catalog1_tkt_catalog_id_BeforeShow";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_catalog1_ds_AfterExecuteSelect";
    $ssf_tkt_catalog1->CCSEvents["BeforeShow"] = "ssf_tkt_catalog1_BeforeShow";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteInsert"] = "ssf_tkt_catalog1_ds_AfterExecuteInsert";
    $ssf_tkt_catalog1->ds->CCSEvents["AfterExecuteDelete"] = "ssf_tkt_catalog1_ds_AfterExecuteDelete";
    $ssf_tkt_configuration->tkt_config_param_id->CCSEvents["BeforeShow"] = "ssf_tkt_configuration_tkt_config_param_id_BeforeShow";
    $ssf_tkt_configuration->ssf_tkt_configuration_Insert->CCSEvents["BeforeShow"] = "ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow";
    $ssf_tkt_configuration->CCSEvents["BeforeShow"] = "ssf_tkt_configuration_BeforeShow";
    $ssf_tkt_configuration1->Label1->CCSEvents["BeforeShow"] = "ssf_tkt_configuration1_Label1_BeforeShow";
    $ssf_tkt_configuration1->tkt_config_param_value->CCSEvents["BeforeShow"] = "ssf_tkt_configuration1_tkt_config_param_value_BeforeShow";
    $ssf_tkt_configuration1->ListBox1->CCSEvents["BeforeShow"] = "ssf_tkt_configuration1_ListBox1_BeforeShow";
    $ssf_tkt_configuration1->ListBox1->CCSEvents["OnValidate"] = "ssf_tkt_configuration1_ListBox1_OnValidate";
    $ssf_tkt_configuration1->tkt_config_pos_id->CCSEvents["BeforeShow"] = "ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow";
    $ssf_tkt_configuration1->CCSEvents["BeforeShow"] = "ssf_tkt_configuration1_BeforeShow";
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

//ssf_tkt_catalog1_tkt_catalog_code_OnValidate @24-AC872881
function ssf_tkt_catalog1_tkt_catalog_code_OnValidate(& $sender)
{
    $ssf_tkt_catalog1_tkt_catalog_code_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_tkt_catalog_code_OnValidate

//Custom Code @93-2A29BDB7
	$Component->SetValue($Component->GetValue()."@".$ssf_tkt_catalog1->tkt_catalog_misc1->GetValue() ) ;
//End Custom Code

//Close ssf_tkt_catalog1_tkt_catalog_code_OnValidate @24-9DF84E23
    return $ssf_tkt_catalog1_tkt_catalog_code_OnValidate;
}
//End Close ssf_tkt_catalog1_tkt_catalog_code_OnValidate

//ssf_tkt_catalog1_Button_Delete_BeforeShow @19-FCAFE08F
function ssf_tkt_catalog1_Button_Delete_BeforeShow(& $sender)
{
    $ssf_tkt_catalog1_Button_Delete_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_Button_Delete_BeforeShow

//Hide-Show Component @90-FF792DC9
    $Parameter1 = $Container->tkt_catalog_code->GetValue();
    $Parameter2 = "0";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close ssf_tkt_catalog1_Button_Delete_BeforeShow @19-C8AF71A1
    return $ssf_tkt_catalog1_Button_Delete_BeforeShow;
}
//End Close ssf_tkt_catalog1_Button_Delete_BeforeShow

//ssf_tkt_catalog1_tkt_catalog_id_BeforeShow @23-A9DAF214
function ssf_tkt_catalog1_tkt_catalog_id_BeforeShow(& $sender)
{
    $ssf_tkt_catalog1_tkt_catalog_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_catalog1; //Compatibility
//End ssf_tkt_catalog1_tkt_catalog_id_BeforeShow

//Custom Code @27-2A29BDB7
	$Component->SetValue("pos_robot_id") ;
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
	$Redirect = "SSFTicketRobot.php?tkt_catalog_code=".$ssf_tkt_catalog1->tkt_catalog_code->GetValue() ;
	$db = new clsDBConnection1();
	$db2 = new clsDBConnection1();
	$sqlQuery = " select tkt_catalog_code, tkt_catalog_value from ssf_tkt_catalog where tkt_catalog_id = 'pos_robot_config'";
	$db->query($sqlQuery);
	while($db->next_record())
	{
		$sqlInsert = "insert into ssf_tkt_configuration values('".$ssf_tkt_catalog1->tkt_catalog_code->GetValue()."','".$db->f("tkt_catalog_code")."','".$db->f("tkt_catalog_value")."')";
		$db2->query($sqlInsert);
	}
	$db->close();
	$db2->close();

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
	$Component->DataSource->SQL = "DELETE FROM ssf_tkt_configuration where tkt_config_pos_id ='".$ssf_tkt_catalog1->tkt_catalog_code->GetValue()."'" ;
	$Component->DataSource->query($Component->DataSource->SQL);
//End Custom Code

//Close ssf_tkt_catalog1_ds_AfterExecuteDelete @16-F2893087
    return $ssf_tkt_catalog1_ds_AfterExecuteDelete;
}
//End Close ssf_tkt_catalog1_ds_AfterExecuteDelete

//ssf_tkt_configuration_tkt_config_param_id_BeforeShow @43-4EDB1A71
function ssf_tkt_configuration_tkt_config_param_id_BeforeShow(& $sender)
{
    $ssf_tkt_configuration_tkt_config_param_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration; //Compatibility
//End ssf_tkt_configuration_tkt_config_param_id_BeforeShow

//Custom Code @83-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	$ssf_tkt_configuration->tkt_config_param_id->SetValue( $CCSLocales->GetText($ssf_tkt_configuration->tkt_config_param_id->Value));
// -------------------------
//End Custom Code

//Close ssf_tkt_configuration_tkt_config_param_id_BeforeShow @43-7015816E
    return $ssf_tkt_configuration_tkt_config_param_id_BeforeShow;
}
//End Close ssf_tkt_configuration_tkt_config_param_id_BeforeShow

//ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow @39-F801EEAC
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

//Close ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow @39-AEB5560C
    return $ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow;
}
//End Close ssf_tkt_configuration_ssf_tkt_configuration_Insert_BeforeShow

//ssf_tkt_configuration_BeforeShow @35-C723D0E0
function ssf_tkt_configuration_BeforeShow(& $sender)
{
    $ssf_tkt_configuration_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration; //Compatibility
//End ssf_tkt_configuration_BeforeShow

//Custom Code @59-2A29BDB7
	if (CCGetParam("tkt_catalog_code") != "" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_configuration_BeforeShow @35-D9BA0A7F
    return $ssf_tkt_configuration_BeforeShow;
}
//End Close ssf_tkt_configuration_BeforeShow

//ssf_tkt_configuration1_Label1_BeforeShow @88-708D4A96
function ssf_tkt_configuration1_Label1_BeforeShow(& $sender)
{
    $ssf_tkt_configuration1_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_Label1_BeforeShow

//Custom Code @89-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;

	$Component->SetValue($CCSLocales->GetText($Container->tkt_config_param_id->GetValue()));
// -------------------------
//End Custom Code

//Close ssf_tkt_configuration1_Label1_BeforeShow @88-9623DCA9
    return $ssf_tkt_configuration1_Label1_BeforeShow;
}
//End Close ssf_tkt_configuration1_Label1_BeforeShow

//ssf_tkt_configuration1_tkt_config_param_value_BeforeShow @55-ACBC60EB
function ssf_tkt_configuration1_tkt_config_param_value_BeforeShow(& $sender)
{
    $ssf_tkt_configuration1_tkt_config_param_value_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_tkt_config_param_value_BeforeShow

//Custom Code @85-2A29BDB7
// -------------------------
    // Write your own code here.
	$thisParam = $ssf_tkt_configuration1->tkt_config_param_id->GetValue();
	if( $thisParam == "POS_ACTIVE" || $thisParam == "ROBOT_INV_CLEARED" || $thisParam == "ROBOT_INV_UNCONTROLLED" ||
		$thisParam == "ROBOT_INV_TEST" || ( ($thisParam == "RECEIPT_GROUP" || $thisParam == "RECEIPT_GROUP_CREDIT") && CCGetSession("SSFCustomizationGroup") == "GUATEMALA001" ) )
		$Component->Visible = false;
	else
		$ssf_tkt_configuration1->ListBox1->Visible = false;
// -------------------------
//End Custom Code

//Close ssf_tkt_configuration1_tkt_config_param_value_BeforeShow @55-254171FB
    return $ssf_tkt_configuration1_tkt_config_param_value_BeforeShow;
}
//End Close ssf_tkt_configuration1_tkt_config_param_value_BeforeShow

//ssf_tkt_configuration1_ListBox1_BeforeShow @84-8F3645E4
function ssf_tkt_configuration1_ListBox1_BeforeShow(& $sender)
{
    $ssf_tkt_configuration1_ListBox1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_ListBox1_BeforeShow

//Custom Code @86-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	if($Component->Visible == false)
		return $ssf_tkt_configuration1_ListBox1_BeforeShow;
	$thisParam = $ssf_tkt_configuration1->tkt_config_param_id->Value;
	$db = new clsDBConnection1();
	$arrayOfValues = array();
	if( $thisParam == "POS_ACTIVE")
	{
		$arrayOfValues[0] = array("N",$CCSLocales->GetText("ssf_inactive"));
		$arrayOfValues[1] = array("Y",$CCSLocales->GetText("ssf_active"));
	}
	if( $thisParam == "ROBOT_INV_CLEARED")
	{
		$arrayOfValues[0] = array("N",$CCSLocales->GetText("ssf_no"));
		$arrayOfValues[1] = array("Y",$CCSLocales->GetText("ssf_yes"));
	}
	if( $thisParam == "ROBOT_INV_UNCONTROLLED")
	{
		$arrayOfValues[0] = array("N",$CCSLocales->GetText("ssf_no"));
		$arrayOfValues[1] = array("Y",$CCSLocales->GetText("ssf_yes"));
	}
	if( $thisParam == "ROBOT_INV_TEST")
	{
		$arrayOfValues[0] = array("N",$CCSLocales->GetText("ssf_no"));
		$arrayOfValues[1] = array("Y",$CCSLocales->GetText("ssf_yes"));
	}

	if( $thisParam == "RECEIPT_GROUP" ||
		$thisParam == "RECEIPT_GROUP_CREDIT")
	{
		if(CCGetSession("SSFCustomizationGroup") == "GUATEMALA001") 
		{
			$sqlQuery = "select distinct ssf_sat_group from ssf_tkt_resolucion_sat ";
			if($thisParam == "RECEIPT_GROUP")
				$sqlQuery .= "where ssf_sat_type = 'FACT'";
			else
				$sqlQuery .= "where ssf_sat_type = 'CRED'";
			$db->query($sqlQuery);
			$arrayIndex = 0;
			while($db->next_record()) 
			{
				$arrayOfValues[$arrayIndex] = array($db->f("ssf_sat_group"),$db->f("ssf_sat_group"));
				$arrayIndex++ ;
			}
		}
	}
	$Component->Values = $arrayOfValues;
	$Component->SetValue($ssf_tkt_configuration1->tkt_config_param_value->Value);
	$db->close();
// -------------------------
//End Custom Code

//Close ssf_tkt_configuration1_ListBox1_BeforeShow @84-CA4D6A32
    return $ssf_tkt_configuration1_ListBox1_BeforeShow;
}
//End Close ssf_tkt_configuration1_ListBox1_BeforeShow

//ssf_tkt_configuration1_ListBox1_OnValidate @84-E25E52B5
function ssf_tkt_configuration1_ListBox1_OnValidate(& $sender)
{
    $ssf_tkt_configuration1_ListBox1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_ListBox1_OnValidate

//Custom Code @87-2A29BDB7
// -------------------------
    // Write your own code here.
	if($Component->GetValue() != "")
		$ssf_tkt_configuration1->tkt_config_param_value->SetValue($Component->GetValue());
// -------------------------
//End Custom Code

//Close ssf_tkt_configuration1_ListBox1_OnValidate @84-F5B60EBB
    return $ssf_tkt_configuration1_ListBox1_OnValidate;
}
//End Close ssf_tkt_configuration1_ListBox1_OnValidate

//ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow @53-DFA55B0E
function ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow(& $sender)
{
    $ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow

//Custom Code @61-2A29BDB7
 $Component->SetValue(CCGetParam("tkt_catalog_code")) ;
//End Custom Code

//Close ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow @53-E10C7724
    return $ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow;
}
//End Close ssf_tkt_configuration1_tkt_config_pos_id_BeforeShow

//ssf_tkt_configuration1_BeforeShow @48-53070B51
function ssf_tkt_configuration1_BeforeShow(& $sender)
{
    $ssf_tkt_configuration1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_configuration1; //Compatibility
//End ssf_tkt_configuration1_BeforeShow

//Custom Code @64-2A29BDB7
global $Tpl ;
global $CCSLocales;

	if (CCGetParam("tkt_config_param_id") != "" || CCGetParam("ssf_tkt_configuration_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tkt_config_param_id") != "" ) 
		$Tpl->setvar("disabledparam", "disabled") ;
	else
		$Tpl->setvar("disabledparam", "") ;

//End Custom Code

//Close ssf_tkt_configuration1_BeforeShow @48-F737924F
    return $ssf_tkt_configuration1_BeforeShow;
}
//End Close ssf_tkt_configuration1_BeforeShow

//Page_AfterInitialize @1-ADA371D8
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketRobot; //Compatibility
//End Page_AfterInitialize

//Custom Code @28-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_ROB_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_ROB_VIEW") ;

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
