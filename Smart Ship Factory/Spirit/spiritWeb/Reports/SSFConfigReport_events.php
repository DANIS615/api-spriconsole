<?php
//BindEvents Method @1-C64E1293
function BindEvents()
{
    global $Button1;
    global $ViewMode;
    global $lbltankgrid;
    global $lbltanksuction;
    global $lblproductgrid;
    global $lblgradegrid;
    global $lblpump;
    global $lblComGrid;
    global $lblloopgrid;
    global $CCSEvents;
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $lbltankgrid->CCSEvents["BeforeShow"] = "lbltankgrid_BeforeShow";
    $lbltanksuction->CCSEvents["BeforeShow"] = "lbltanksuction_BeforeShow";
    $lblproductgrid->CCSEvents["BeforeShow"] = "lblproductgrid_BeforeShow";
    $lblgradegrid->CCSEvents["BeforeShow"] = "lblgradegrid_BeforeShow";
    $lblpump->CCSEvents["BeforeShow"] = "lblpump_BeforeShow";
    $lblComGrid->CCSEvents["BeforeShow"] = "lblComGrid_BeforeShow";
    $lblloopgrid->CCSEvents["BeforeShow"] = "lblloopgrid_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Button1_BeforeShow @18-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @22-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @18-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @19-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @20-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @19-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//lbltankgrid_BeforeShow @10-AD65C875
function lbltankgrid_BeforeShow(& $sender)
{
    $lbltankgrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lbltankgrid; //Compatibility
//End lbltankgrid_BeforeShow

//Custom Code @11-2A29BDB7
	$p_type = "tank" ;
	$p_fields = array("id","product","capacity","height") ;
	$Component->SetValue(GetTable($p_type,$p_fields ));
//End Custom Code

//Close lbltankgrid_BeforeShow @10-CE708D0E
    return $lbltankgrid_BeforeShow;
}
//End Close lbltankgrid_BeforeShow

//lbltanksuction_BeforeShow @12-E9E9488A
function lbltanksuction_BeforeShow(& $sender)
{
    $lbltanksuction_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lbltanksuction; //Compatibility
//End lbltanksuction_BeforeShow

//Custom Code @13-2A29BDB7
	$p_type = "tank_suction" ;
	$Component->SetValue(GetTable($p_type) );
//End Custom Code

//Close lbltanksuction_BeforeShow @12-E2EC48E3
    return $lbltanksuction_BeforeShow;
}
//End Close lbltanksuction_BeforeShow

//lblproductgrid_BeforeShow @8-7D23CB2B
function lblproductgrid_BeforeShow(& $sender)
{
    $lblproductgrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblproductgrid; //Compatibility
//End lblproductgrid_BeforeShow

//Custom Code @9-2A29BDB7
	$p_type = "product" ;
	$p_fields = array("id","number","type") ;
	$Component->SetValue(GetTable($p_type,$p_fields) );
//End Custom Code

//Close lblproductgrid_BeforeShow @8-6A8AA020
    return $lblproductgrid_BeforeShow;
}
//End Close lblproductgrid_BeforeShow

//lblgradegrid_BeforeShow @6-B65C01D8
function lblgradegrid_BeforeShow(& $sender)
{
    $lblgradegrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblgradegrid; //Compatibility
//End lblgradegrid_BeforeShow

//Custom Code @7-2A29BDB7
	$p_type = "grade" ;
	$p_fields = array("id","number","product_high","product_low","vol_unit_desc") ;
	$Component->SetValue(GetTable($p_type,$p_fields) );
//End Custom Code

//Close lblgradegrid_BeforeShow @6-4A26542E
    return $lblgradegrid_BeforeShow;
}
//End Close lblgradegrid_BeforeShow

//lblpump_BeforeShow @14-EB0FB0F0
function lblpump_BeforeShow(& $sender)
{
    $lblpump_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblpump; //Compatibility
//End lblpump_BeforeShow

//Custom Code @15-2A29BDB7
	$p_type = "pump" ;
	$p_subtype = "hose" ;
	$p_fields = array("id","implementation","emulation_brand","loop_manager") ;
	$p_sub_fields = array("grade","logical_id","real_id");
	$Component->SetValue(GetTable($p_type,$p_fields,$p_subtype,$p_sub_fields) );
//End Custom Code

//Close lblpump_BeforeShow @14-34188637
    return $lblpump_BeforeShow;
}
//End Close lblpump_BeforeShow

//lblComGrid_BeforeShow @4-D5C158BF
function lblComGrid_BeforeShow(& $sender)
{
    $lblComGrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblComGrid; //Compatibility
//End lblComGrid_BeforeShow

//Custom Code @5-2A29BDB7
global $CCSLocales ;
	// GRID HEADER
	$p_type = "communication" ;
	$p_fields = array("id","implementation","port_name") ;
	$Component->SetValue(GetTable($p_type,$p_fields) );

//End Custom Code

//Close lblComGrid_BeforeShow @4-E69F6B7E
    return $lblComGrid_BeforeShow;
}
//End Close lblComGrid_BeforeShow

//lblloopgrid_BeforeShow @16-838C7088
function lblloopgrid_BeforeShow(& $sender)
{
    $lblloopgrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblloopgrid; //Compatibility
//End lblloopgrid_BeforeShow

//Custom Code @17-2A29BDB7
	$p_type = "loop_manager" ;
	//$p_fields = array("id","implementation","port_name") ;
	$Component->SetValue(GetTable($p_type,$p_fields) );
//End Custom Code

//Close lblloopgrid_BeforeShow @16-BD0872DD
    return $lblloopgrid_BeforeShow;
}
//End Close lblloopgrid_BeforeShow

//Page_AfterInitialize @1-437E03A0
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFConfigReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @21-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  


function GetTable($p_type,$p_fields = "",$p_subtype="",$p_sub_fields="") {
global $CCSLocales ;
	$lblValue .= "<table  width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText($p_type)."</th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER
	$ssfQuery = "select distinct name, param_order, count(name) as name_qty from config_param where type = '".$p_type."' and data_type != 'def' and data_type != 'def2' group by name, param_order order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$ssfColumn = 0;
	$ssfColumnNames = array();
	while($Result)
	{
		$found = true ;
		if (is_array($p_fields) ) {
			//echo " field ".strtolower($db->f("name")) ;
			$key = array_search(strtolower($db->f("name")),$p_fields) ;
			//echo " key ".$key;
			if (!is_numeric($key))
				$found = false ;
		}
		
		if ($found) {
			$lblValue .= "          <th>".$CCSLocales->GetText($db->f("name"))."</th>";
			$ssfColumnNames[$ssfColumn] = $db->f("name");
			$ssfColumn++;
			//if($ssfColumn >= 10)
			//	break;
		}
		$Result = $db->next_record();
	}
	if ($p_subtype != "")
		$lblValue .=  WriteSubInfoHeader($p_subtype, $p_sub_fields);
	$lblValue .= "        </tr>";

	// ROWS
		//look the type of field "ID", to see the order convertion..
		$orderclause = "id" ;
		$ssfQuery = "select data_type from config_param where type = '".$p_type."'  and name = 'ID' ";
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if ($Result)
		{
			$ssfThisOrderDataType = $db->f("data_type") ;
			if ($ssfThisOrderDataType == 'number' || $ssfThisOrderDataType == 'auto-number' )
				$orderclause = ReplaceNumberConvertion("id","'999'") ;
		} 

	$ssfQuery = "select distinct ".$orderclause." as id from config_values_temp where library = '".$p_type."' order by ".$orderclause;
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$dbForEachRecord = new clsDBConnection1();
	while($Result)
	{
		$lblValue .= "        <tr class=\"Row\">";
		for($ssfColumnIndex=0;$ssfColumnIndex<$ssfColumn;$ssfColumnIndex++)
		{
			$ssfCondition = "library = '".$p_type."' AND id = '".$db->f("id")."' AND parameter = '".$ssfColumnNames[$ssfColumnIndex]."'";
			$ssfThisValue = CCDLookUp("param_value","config_values_temp",$ssfCondition,$dbForEachRecord);
			$ssfCondition = "type = '".$p_type."' and subgroup = 'general' and name='".$ssfColumnNames[$ssfColumnIndex]."'";
			$ssfThisDataType = CCDLookUp("data_type","config_param",$ssfCondition,$dbForEachRecord);
			$ssfMinValue = CCDLookUp("min_value","config_param",$ssfCondition,$dbForEachRecord);
			$lblValue .= "          <td";
			if( $ssfColumnNames[$ssfColumnIndex] == "ID" ) {
				//$focus_ref = "#device_record" ;
				//$lblValue .= "<a href=\"?p_type=".$p_type."&p_id=".$ssfThisValue."&btnModifyRecord=1".$focus_ref."\">";
				$lblValue .= " style=\"font-weight: bold\"" ;
			}
			switch($ssfThisDataType)
			{
			case "color":
				if($ssfThisValue == "")
					$ssfThisValue = "000000";
				$lblValue .= "<a id=\"pick1146691117".$db->Row."\" ";
				$lblValue .= "style=\"border: 1px solid #000000; font-family:Verdana; font-size:10px;";
				$lblValue .= "text-decoration: none;\">&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;";
				$lblValue .= "<input id=\"pick1146691117".$db->Row."field\" size=\"7\" ";
				$lblValue .= "READONLY value=\"#".$ssfThisValue."\" > ";
				$lblValue .= "<script language=\"javascript\">relateColor('pick1146691117".$db->Row."', '#".$ssfThisValue."');</script>";
				break;
			case "ref":
				//$lblValue .= "<a href=\"?p_type=".$ssfMinValue."&p_id=".$ssfThisValue."\">".$ssfThisValue."</a>";
				$lblValue .= " style=\"font-style: italic\"" ;
				$lblValue .= "          >".$ssfThisValue;
				break;
			default:
				$lblValue .= "          >";
				if($ssfThisValue == "")
					$ssfThisValue = "&nbsp";
				$lblValue .= $ssfThisValue;
				break;
			}
			$lblValue .= "</td>";			
		}
		if ($p_subtype != "" )
			$lblValue .=  WriteSubInfoRecord($p_type, $p_subtype,$p_sub_fields,$ssfThisValue,$ssfColumn) ;

		$lblValue .= "        </tr>";
		$Result = $db->next_record();
	}
	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$db->close();
	$dbForEachRecord->close();
	return $lblValue;
}

function WriteSubInfoHeader($p_type, $p_sub_fields) {
global $CCSLocales ;
	$ssfQuery = " select distinct name, param_order from config_param where type = '".$p_type."' and subgroup='subinfo' and data_type != 'def' and data_type != 'def2' group by name, param_order order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$found = true ;
		if (is_array($p_sub_fields) ) {
			//echo " field ".strtolower($db->f("name")) ;
			$key = array_search(strtolower($db->f("name")),$p_sub_fields) ;
			//echo " key ".$key;
			if (!is_numeric($key))
				$found = false ;
		}
		if ($found) {
			$lblValue .= "          <th>".$CCSLocales->GetText($db->f("name"))."</th>";
		}
		$Result = $db->next_record();
	}
	return $lblValue ;

}


function WriteSubInfoRecord ($p_library, $p_subtype, $p_sub_fields="", $p_id, $general_cells) {
global $CCSLocales ;
	// COLUMNS HEADER
	$ssfQuery = "select distinct name, param_order from config_param where type = '".$p_subtype."' and subgroup = 'subinfo' and data_type != 'def' and data_type != 'def2' group by name, param_order order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$ssfColumn = 0;
	$ssfColumnNames = array();
	while($Result)
	{
		$found = true ;
		if (is_array($p_sub_fields) ) {
			//echo " field ".strtolower($db->f("name")) ;
			$key = array_search(strtolower($db->f("name")),$p_sub_fields) ;
			//echo " key ".$key;
			if (!is_numeric($key))
				$found = false ;
		}
		
		if ($found) {
			$ssfColumnNames[$ssfColumn] = $db->f("name");
			$ssfColumn++;
		}
		$Result = $db->next_record();
	}


	$ssfQuery = "select distinct device_id from config_values_temp where library = '".$p_library."' and groupname='subinfo' " ;
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$dbForEachRecord = new clsDBConnection1();
	while($Result)
	{
		for($ssfColumnIndex=0;$ssfColumnIndex<$ssfColumn;$ssfColumnIndex++)
		{
			$ssfCondition = "library = '".$p_library."' AND device_id = '".$db->f("device_id")."' AND parameter = '".$ssfColumnNames[$ssfColumnIndex]."'";
			$ssfThisValue = CCDLookUp("param_value","config_values_temp",$ssfCondition,$dbForEachRecord);
			$ssfCondition = "type = '".$p_subtype."' and subgroup = 'subinfo' and name='".$ssfColumnNames[$ssfColumnIndex]."'";
			$ssfThisDataType = CCDLookUp("data_type","config_param",$ssfCondition,$dbForEachRecord);
			$isUnique = CCDLookUp("is_unique","config_param",$ssfCondition,$dbForEachRecord);
			$lblValue .= "          <td";
			if( $isUnique == "Y" ) {
				//$focus_ref = "#device_record" ;
				//$lblValue .= "<a href=\"?p_type=".$p_type."&p_id=".$ssfThisValue."&btnModifyRecord=1".$focus_ref."\">";
				$lblValue .= " style=\"font-weight: bold\"" ;
			}
			switch($ssfThisDataType)
			{
			case "ref":
				//$lblValue .= "<a href=\"?p_type=".$ssfMinValue."&p_id=".$ssfThisValue."\">".$ssfThisValue."</a>";
				$lblValue .= " style=\"font-style: italic\"" ;
				$lblValue .= "          >".$ssfThisValue;
				break;
			default:
				$lblValue .= "          >";
				if($ssfThisValue == "")
					$ssfThisValue = "&nbsp";
				$lblValue .= $ssfThisValue;
				break;
			}
			$lblValue .= "</td>";			
		}

		$lblValue .= "        </tr>";
		$Result = $db->next_record();
		if ($Result) {
			$lblValue .= "        <tr class=\"Row\">";
			$lblValue .= " <td colspan=\"".$general_cells."\"> " ;
		}
	}
	$db->close();
	$dbForEachRecord->close();
	return $lblValue;
}




?>
