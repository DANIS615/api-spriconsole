<?php
//BindEvents Method @1-86C6488E
function BindEvents()
{
    global $ssf_generic_config_param;
    global $config_values;
    global $ssf_generic_config_values;
    global $ssfConfiValuesForDevice;
    global $CCSEvents;
    $ssf_generic_config_param->lblValue->CCSEvents["BeforeShow"] = "ssf_generic_config_param_lblValue_BeforeShow";
    $config_values->lblActualValue->CCSEvents["BeforeShow"] = "config_values_lblActualValue_BeforeShow";
    $config_values->CCSEvents["BeforeShow"] = "config_values_BeforeShow";
    $config_values->ds->CCSEvents["BeforeBuildSelect"] = "config_values_ds_BeforeBuildSelect";
    $config_values->ds->CCSEvents["BeforeExecuteSelect"] = "config_values_ds_BeforeExecuteSelect";
    $ssf_generic_config_values->lbl_paramLabel->CCSEvents["BeforeShow"] = "ssf_generic_config_values_lbl_paramLabel_BeforeShow";
    $ssf_generic_config_values->ListBox1->CCSEvents["BeforeShow"] = "ssf_generic_config_values_ListBox1_BeforeShow";
    $ssf_generic_config_values->ListBox1->CCSEvents["OnValidate"] = "ssf_generic_config_values_ListBox1_OnValidate";
    $ssf_generic_config_values->CCSEvents["BeforeShow"] = "ssf_generic_config_values_BeforeShow";
    $ssf_generic_config_values->ds->CCSEvents["AfterExecuteUpdate"] = "ssf_generic_config_values_ds_AfterExecuteUpdate";
    $ssf_generic_config_values->ds->CCSEvents["AfterExecuteSelect"] = "ssf_generic_config_values_ds_AfterExecuteSelect";
    $ssfConfiValuesForDevice->lbl_deviceLabel->CCSEvents["BeforeShow"] = "ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow";
    $ssfConfiValuesForDevice->lstdeviceRecord->CCSEvents["BeforeShow"] = "ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow";
    $ssfConfiValuesForDevice->lstdeviceRecord->CCSEvents["OnValidate"] = "ssfConfiValuesForDevice_lstdeviceRecord_OnValidate";
    $ssfConfiValuesForDevice->CCSEvents["BeforeShow"] = "ssfConfiValuesForDevice_BeforeShow";
    $ssfConfiValuesForDevice->ds->CCSEvents["AfterExecuteInsert"] = "ssfConfiValuesForDevice_ds_AfterExecuteInsert";
    $ssfConfiValuesForDevice->ds->CCSEvents["AfterExecuteSelect"] = "ssfConfiValuesForDevice_ds_AfterExecuteSelect";
    $ssfConfiValuesForDevice->ds->CCSEvents["AfterExecuteUpdate"] = "ssfConfiValuesForDevice_ds_AfterExecuteUpdate";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_generic_config_param_lblValue_BeforeShow @15-9E8EB71E
function ssf_generic_config_param_lblValue_BeforeShow(& $sender)
{
    $ssf_generic_config_param_lblValue_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_param; //Compatibility
//End ssf_generic_config_param_lblValue_BeforeShow

//Custom Code @16-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$ssfvalue = "";
	if( $ssf_generic_config_param->subgroup->GetValue() == "general" ||
		$ssf_generic_config_param->subgroup->GetValue() == "general_advanced" )
	{
		$ssfquery = "library = '".$ssf_generic_config_param->DataSource->f("type")."' AND parameter = '".$ssf_generic_config_param->DataSource->f("name")."'";
		$ssfvalue = CCDLookUp("param_value","ssf_generic_config_values",$ssfquery,$DBConnection1);
		if( $ssfvalue == "" )
		{
			$ssfnewvalue = $ssf_generic_config_param->DataSource->f("default_value");
			$ssfnewDS = new clsDBConnection1();
			$ssfnewSQL = "SELECT * FROM  ssf_generic_config_values WHERE library = '".$ssf_generic_config_param->module->GetValue()."' AND id='".$ssf_generic_config_param->module->GetValue()."' AND groupname='".$ssf_generic_config_param->subgroup->GetValue()."' AND device_id='' AND parameter='".$ssf_generic_config_param->DataSource->f("name")."'";
			$ssfnewDS->query($ssfnewSQL);
			if($ssfnewDS->num_rows() < 1 )
			{
				$ssfnewSQL = "INSERT INTO ssf_generic_config_values VALUES ('".$ssf_generic_config_param->module->GetValue()."','".$ssf_generic_config_param->module->GetValue()."','".$ssf_generic_config_param->subgroup->GetValue()."','','".$ssf_generic_config_param->DataSource->f("name")."','".$ssfnewvalue."')";
				$ssfnewDS->query($ssfnewSQL);
				$ssfvalue = $ssfnewvalue;
			}
			$ssfnewDS->close();
		}
	}
	else
	{
		$ssfvalue = "DEVICE DEPENDENT";
	}
	$ssf_generic_config_param->lblValue->setValue($ssfvalue);
// -------------------------
//End Custom Code

//Close ssf_generic_config_param_lblValue_BeforeShow @15-616E386C
    return $ssf_generic_config_param_lblValue_BeforeShow;
}
//End Close ssf_generic_config_param_lblValue_BeforeShow

//config_values_lblActualValue_BeforeShow @62-04039A2B
function config_values_lblActualValue_BeforeShow(& $sender)
{
    $config_values_lblActualValue_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_lblActualValue_BeforeShow

//Custom Code @63-2A29BDB7
// -------------------------
    // Write your own code here.

	global $DBConnection1;
	$ssfvalue = "";
	$ssfquery = "library = '".CCGetParam("p_library")."' AND groupname = '".CCGetParam("p_subgroup")."' AND device_id = '".$config_values->param_value->GetValue()."' AND parameter = '".CCGetParam("p_parameter")."'";
	$ssfvalue = CCDLookUp("param_value","ssf_generic_config_values",$ssfquery,$DBConnection1);
	if( $ssfvalue == "" )
	{
		$ssfquery = "module = '".CCGetParam("p_library")."' AND subgroup = '".CCGetParam("p_subgroup")."' AND name = '".CCGetParam("p_parameter")."'";
		$ssfnewvalue = CCDLookUp("default_value", "ssf_generic_config_param", $ssfquery, $DBConnection1);
		$ssfnewDS = new clsDBConnection1();
		$ssfnewSQL = "SELECT * FROM  ssf_generic_config_values WHERE library = '".CCGetParam("p_library")."' AND groupname='".CCGetParam("p_subgroup")."' AND device_id='".$config_values->param_value->GetValue()."' AND parameter='".CCGetParam("p_parameter")."'";
		$ssfnewDS->query($ssfnewSQL);
		if($ssfnewDS->num_rows() < 1 )
		{
			$ssfnewSQL = "INSERT INTO ssf_generic_config_values VALUES ('".CCGetParam("p_library")."','".CCGetParam("p_library")."','".CCGetParam("p_subgroup")."','".$config_values->param_value->GetValue()."','".CCGetParam("p_parameter")."','".$ssfnewvalue."')";
			$ssfnewDS->query($ssfnewSQL);
			$ssfvalue = $ssfnewvalue;
		}
		$ssfnewDS->close();
	}
	$config_values->lblActualValue->setValue($ssfvalue);

// -------------------------
//End Custom Code

//Close config_values_lblActualValue_BeforeShow @62-5165B1F9
    return $config_values_lblActualValue_BeforeShow;
}
//End Close config_values_lblActualValue_BeforeShow

//config_values_BeforeShow @56-C466C9B5
function config_values_BeforeShow(& $sender)
{
    $config_values_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_BeforeShow

//Custom Code @64-2A29BDB7
// -------------------------
    // Write your own code here.
	if( substr(CCGetParam("p_subgroup"),0,6) != "device" )
		$config_values->Visible = false;
// -------------------------
//End Custom Code

//Close config_values_BeforeShow @56-F1DA97CE
    return $config_values_BeforeShow;
}
//End Close config_values_BeforeShow

//config_values_ds_BeforeBuildSelect @56-4480C083
function config_values_ds_BeforeBuildSelect(& $sender)
{
    $config_values_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_ds_BeforeBuildSelect

//Custom Code @97-2A29BDB7

//End Custom Code

//Close config_values_ds_BeforeBuildSelect @56-42E4CDCD
    return $config_values_ds_BeforeBuildSelect;
}
//End Close config_values_ds_BeforeBuildSelect

//config_values_ds_BeforeExecuteSelect @56-99174D9F
function config_values_ds_BeforeExecuteSelect(& $sender)
{
    $config_values_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $config_values; //Compatibility
//End config_values_ds_BeforeExecuteSelect

//Custom Code @98-2A29BDB7
	$device = CCGetParam("p_subgroup") ;
	$dev_array = split(":",$device) ;
	$device=$dev_array[1] ;
	$Component->DataSource->SQL .= " where library ='".$device."' and parameter = 'ID' " ;
	$Component->DataSource->CountSQL .= " where library ='".$device."' and parameter = 'ID' " ;
	$Component->DataSource->SQL .= " order by " ;
	if ( CCGetParam("p_data_type") == "number" )
		$Component->DataSource->SQL .= ReplaceNumberConvertion("param_value","'99'") ;
	else
		$Component->DataSource->SQL .= " param_value " ;
//End Custom Code

//Close config_values_ds_BeforeExecuteSelect @56-3F21AE31
    return $config_values_ds_BeforeExecuteSelect;
}
//End Close config_values_ds_BeforeExecuteSelect

//ssf_generic_config_values_lbl_paramLabel_BeforeShow @89-220158D5
function ssf_generic_config_values_lbl_paramLabel_BeforeShow(& $sender)
{
    $ssf_generic_config_values_lbl_paramLabel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_lbl_paramLabel_BeforeShow

//Custom Code @90-2A29BDB7
	global $DBConnection1;
	$ssfvalue = "";
	$ssfquery = "module = '".CCGetParam("p_library")."' AND name = '".CCGetParam("p_parameter")."'";
	$ssfvalue = CCDLookUp("label", "ssf_generic_config_param",$ssfquery,$DBConnection1);
	$Component->SetValue($ssfvalue) ;

//End Custom Code

//Close ssf_generic_config_values_lbl_paramLabel_BeforeShow @89-7DB3D4D5
    return $ssf_generic_config_values_lbl_paramLabel_BeforeShow;
}
//End Close ssf_generic_config_values_lbl_paramLabel_BeforeShow

//ssf_generic_config_values_ListBox1_BeforeShow @47-4350BCC7
function ssf_generic_config_values_ListBox1_BeforeShow(& $sender)
{
    $ssf_generic_config_values_ListBox1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_ListBox1_BeforeShow

//Custom Code @52-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$thisvalue = "";
	$pos = 0;
	$arrIndex = 0;
	$arrayOfValues = array();
	if($ssf_generic_config_values->ListBox1->Visible == true)
	{
		$ssfListOfValues = CCDLookUp("min_value","ssf_generic_config_param","module='".$ssf_generic_config_values->library->GetValue()."' AND name='".$ssf_generic_config_values->DataSource->f("parameter")."'",$DBConnection1); 
		$ssfNumberOfValues = CCDLookUp("max_value","ssf_generic_config_param","module='".$ssf_generic_config_values->library->GetValue()."' AND name='".$ssf_generic_config_values->DataSource->f("parameter")."'",$DBConnection1); 
		if( substr($ssfNumberOfValues,0,1) == "0" ) // ADD A NULL OPTION
		{
			$arrayOfValues[$arrIndex] = array("","");
			$arrIndex++;
		}	
		while(1)
		{
			$pos = strpos($ssfListOfValues,"|");
			if( $pos === false ) // YES, === IS NEEDED
			{
				$thisvalue = $ssfListOfValues;
			}
			else
			{
				$thisvalue = substr($ssfListOfValues,0,$pos);
				$ssfListOfValues = substr($ssfListOfValues,$pos+1);
			}
			$arrayOfValues[$arrIndex] = array($thisvalue,$thisvalue);
			if( $pos === false )
				break;
			$arrIndex++;
		}
		$ssf_generic_config_values->ListBox1->Values = $arrayOfValues;
		$ssf_generic_config_values->ListBox1->SetValue($ssf_generic_config_values->param_value->GetValue());
	}
// -------------------------
//End Custom Code

//Close ssf_generic_config_values_ListBox1_BeforeShow @47-A53AF4E7
    return $ssf_generic_config_values_ListBox1_BeforeShow;
}
//End Close ssf_generic_config_values_ListBox1_BeforeShow

//ssf_generic_config_values_ListBox1_OnValidate @47-966A570F
function ssf_generic_config_values_ListBox1_OnValidate(& $sender)
{
    $ssf_generic_config_values_ListBox1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_ListBox1_OnValidate

//Custom Code @54-2A29BDB7
// -------------------------
    // Write your own code here.
	$data_type = CCGetParam("p_data_type");
	if( $data_type == "combo")
		$ssf_generic_config_values->param_value->SetValue($ssf_generic_config_values->ListBox1->GetValue());
// -------------------------
//End Custom Code

//Close ssf_generic_config_values_ListBox1_OnValidate @47-9AC1906E
    return $ssf_generic_config_values_ListBox1_OnValidate;
}
//End Close ssf_generic_config_values_ListBox1_OnValidate

//ssf_generic_config_values_BeforeShow @37-A2DC6CDD
function ssf_generic_config_values_BeforeShow(& $sender)
{
    $ssf_generic_config_values_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_BeforeShow

//Custom Code @51-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	if(CCGetParam("p_parameter") == "" || substr(CCGetParam("p_subgroup"),0,7) != "general")
	{
		$ssf_generic_config_values->Visible = false;
	}
	$data_type = CCGetParam("p_data_type");
	if( $data_type != "text" &&
		$data_type != "number" &&
		$data_type != "double" )
	{
		$ssf_generic_config_values->param_value->Visible = false;
	}
	if( $data_type != "combo")
		$ssf_generic_config_values->ListBox1->Visible = false;



// -------------------------
//End Custom Code

//Close ssf_generic_config_values_BeforeShow @37-E25F0D2D
    return $ssf_generic_config_values_BeforeShow;
}
//End Close ssf_generic_config_values_BeforeShow

//ssf_generic_config_values_ds_AfterExecuteUpdate @37-E384D0DD
function ssf_generic_config_values_ds_AfterExecuteUpdate(& $sender)
{
    $ssf_generic_config_values_ds_AfterExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_ds_AfterExecuteUpdate

//Custom Code @82-2A29BDB7
// -------------------------
    // Write your own code here.
	CCSetSession("ssf_generic_config_modified",true);
// -------------------------
//End Custom Code

//Close ssf_generic_config_values_ds_AfterExecuteUpdate @37-EE29D7EC
    return $ssf_generic_config_values_ds_AfterExecuteUpdate;
}
//End Close ssf_generic_config_values_ds_AfterExecuteUpdate

//ssf_generic_config_values_ds_AfterExecuteSelect @37-578D1A94
function ssf_generic_config_values_ds_AfterExecuteSelect(& $sender)
{
    $ssf_generic_config_values_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_generic_config_values; //Compatibility
//End ssf_generic_config_values_ds_AfterExecuteSelect

//Custom Code @87-2A29BDB7
	global $EditisAllowed ;
	if ($EditisAllowed==false ) 
		$ssf_generic_config_values->UpdateAllowed = false ;
	

//End Custom Code

//Close ssf_generic_config_values_ds_AfterExecuteSelect @37-D459EFCE
    return $ssf_generic_config_values_ds_AfterExecuteSelect;
}
//End Close ssf_generic_config_values_ds_AfterExecuteSelect

//ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow @91-F787821A
function ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow(& $sender)
{
    $ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow

//Custom Code @92-2A29BDB7
	global $DBConnection1;
	$ssfvalue = "";
	$ssfquery = "module = '".CCGetParam("p_library")."' AND name = '".CCGetParam("p_parameter")."'";
	$ssfvalue = CCDLookUp("label", "ssf_generic_config_param",$ssfquery,$DBConnection1);
	$Component->SetValue($ssfvalue) ;
//End Custom Code

//Close ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow @91-11BDBA62
    return $ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow;
}
//End Close ssfConfiValuesForDevice_lbl_deviceLabel_BeforeShow

//ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow @74-C0DA8CB5
function ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow(& $sender)
{
    $ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow

//Custom Code @76-2A29BDB7
// -------------------------
    // Write your own code here.
	global $DBConnection1;
	$thisvalue = "";
	$pos = 0;
	$arrIndex = 0;
	$arrayOfValues = array();
	if($ssfConfiValuesForDevice->lstdeviceRecord->Visible == true)
	{
		$ssfListOfValues = CCDLookUp("min_value","ssf_generic_config_param","module='".$ssfConfiValuesForDevice->library->GetValue()."' AND name='".$ssfConfiValuesForDevice->DataSource->f("parameter")."'",$DBConnection1); 
		while(1)
		{
			$pos = strpos($ssfListOfValues,"|");
			if( $pos === false ) // YES, === IS NEEDED
			{
				$thisvalue = $ssfListOfValues;
			}
			else
			{
				$thisvalue = substr($ssfListOfValues,0,$pos);
				$ssfListOfValues = substr($ssfListOfValues,$pos+1);
			}
			$arrayOfValues[$arrIndex] = array($thisvalue,$thisvalue);
			if( $pos === false )
				break;
			$arrIndex++;
		}
		$ssfConfiValuesForDevice->lstdeviceRecord->Values = $arrayOfValues;
		$ssfConfiValuesForDevice->lstdeviceRecord->SetValue($ssfConfiValuesForDevice->param_value->GetValue());
	}
// -------------------------
//End Custom Code

//Close ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow @74-02DA1718
    return $ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow;
}
//End Close ssfConfiValuesForDevice_lstdeviceRecord_BeforeShow

//ssfConfiValuesForDevice_lstdeviceRecord_OnValidate @74-B26C2E90
function ssfConfiValuesForDevice_lstdeviceRecord_OnValidate(& $sender)
{
    $ssfConfiValuesForDevice_lstdeviceRecord_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_lstdeviceRecord_OnValidate

//Custom Code @77-2A29BDB7
// -------------------------
    // Write your own code here.
	if($ssfConfiValuesForDevice->lstdeviceRecord->GetValue() != "")
		$ssfConfiValuesForDevice->param_value->SetValue($ssfConfiValuesForDevice->lstdeviceRecord->GetValue());
// -------------------------
//End Custom Code

//Close ssfConfiValuesForDevice_lstdeviceRecord_OnValidate @74-3D217391
    return $ssfConfiValuesForDevice_lstdeviceRecord_OnValidate;
}
//End Close ssfConfiValuesForDevice_lstdeviceRecord_OnValidate

//ssfConfiValuesForDevice_BeforeShow @66-BDAC519D
function ssfConfiValuesForDevice_BeforeShow(& $sender)
{
    $ssfConfiValuesForDevice_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_BeforeShow

//Custom Code @75-2A29BDB7
// -------------------------
    // Write your own code here.
	if(CCGetParam("p_device") == "" || substr(CCGetParam("p_subgroup"),0,6) != "device")
	{
		$ssfConfiValuesForDevice->Visible = false;
	}
	$data_type = CCGetParam("p_data_type");
	if( $data_type != "text" &&
		$data_type != "number" &&
		$data_type != "double" )
	{
		$ssfConfiValuesForDevice->param_value->Visible = false;
	}
	if( $data_type != "combo")
		$ssfConfiValuesForDevice->lstdeviceRecord->Visible = false;
// -------------------------
//End Custom Code

//Close ssfConfiValuesForDevice_BeforeShow @66-EC752CC0
    return $ssfConfiValuesForDevice_BeforeShow;
}
//End Close ssfConfiValuesForDevice_BeforeShow

//ssfConfiValuesForDevice_ds_AfterExecuteInsert @66-63017958
function ssfConfiValuesForDevice_ds_AfterExecuteInsert(& $sender)
{
    $ssfConfiValuesForDevice_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_ds_AfterExecuteInsert

//Custom Code @83-2A29BDB7
// -------------------------
    // Write your own code here.
	CCSetSession("ssf_generic_config_modified",true);
// -------------------------
//End Custom Code

//Close ssfConfiValuesForDevice_ds_AfterExecuteInsert @66-6F6B8A22
    return $ssfConfiValuesForDevice_ds_AfterExecuteInsert;
}
//End Close ssfConfiValuesForDevice_ds_AfterExecuteInsert

//ssfConfiValuesForDevice_ds_AfterExecuteSelect @66-E5E5228C
function ssfConfiValuesForDevice_ds_AfterExecuteSelect(& $sender)
{
    $ssfConfiValuesForDevice_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_ds_AfterExecuteSelect

//Custom Code @88-2A29BDB7
	global $EditisAllowed ;
	if ($EditisAllowed==false ) 
		$ssfConfiValuesForDevice->UpdateAllowed = false ;
	

//End Custom Code

//Close ssfConfiValuesForDevice_ds_AfterExecuteSelect @66-9A32738F
    return $ssfConfiValuesForDevice_ds_AfterExecuteSelect;
}
//End Close ssfConfiValuesForDevice_ds_AfterExecuteSelect

//ssfConfiValuesForDevice_ds_AfterExecuteUpdate @66-A3A7EC06
function ssfConfiValuesForDevice_ds_AfterExecuteUpdate(& $sender)
{
    $ssfConfiValuesForDevice_ds_AfterExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssfConfiValuesForDevice; //Compatibility
//End ssfConfiValuesForDevice_ds_AfterExecuteUpdate

//Custom Code @94-2A29BDB7
	if (CCGetParam("Button_UpdateAll") != "" ) {
		
		$sql = " update ssf_generic_config_values set param_value = '". $ssfConfiValuesForDevice->param_value->GetValue()."'" ;
		$sql .= " where library = '".CCGetParam("p_library")."'" ;
		$sql .= " and parameter = '".CCGetParam("p_parameter")."'" ;

		global $DBConnection1 ;
		$DBConnection1->query($sql) ;

	}
	CCSetSession("ssf_generic_config_modified",true);

//End Custom Code

//Close ssfConfiValuesForDevice_ds_AfterExecuteUpdate @66-A0424BAD
    return $ssfConfiValuesForDevice_ds_AfterExecuteUpdate;
}
//End Close ssfConfiValuesForDevice_ds_AfterExecuteUpdate

//Page_AfterInitialize @1-96CBE022
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFGenericConfig; //Compatibility
//End Page_AfterInitialize

//Custom Code @86-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_GEN_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_GEN_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

