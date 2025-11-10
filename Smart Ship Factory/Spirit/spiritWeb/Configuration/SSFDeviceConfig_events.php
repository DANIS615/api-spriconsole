<?php
//BindEvents Method @1-84367883
function BindEvents()
{
    global $lblDummyForTypeGrid;
    global $p_type;
    global $p_id;
    global $btnAddRecord;
    global $lblDummyRecord;
    global $btnApplyChanges;
    global $btnDuplicateRecord;
    global $btnDeleteRecord;
    global $btnCancelChanges;
    global $lblDummyChildsGrid;
    global $lblDummyChildsRecord;
    global $btnModifyChildRecord;
    global $btnApplyChangesChild;
    global $btnCancelChild;
    global $lblDummyChildsGrid1;
    global $lblDummyChildsRecord1;
    global $btnModifyChildRecord1;
    global $btnApplyChangesChild1;
    global $btnCancelChild1;
    global $CCSEvents;
    $lblDummyForTypeGrid->CCSEvents["BeforeShow"] = "lblDummyForTypeGrid_BeforeShow";
    $p_type->CCSEvents["BeforeShow"] = "p_type_BeforeShow";
    $p_id->CCSEvents["BeforeShow"] = "p_id_BeforeShow";
    $btnAddRecord->CCSEvents["BeforeShow"] = "btnAddRecord_BeforeShow";
    $lblDummyRecord->CCSEvents["BeforeShow"] = "lblDummyRecord_BeforeShow";
    $btnApplyChanges->CCSEvents["BeforeShow"] = "btnApplyChanges_BeforeShow";
    $btnDuplicateRecord->CCSEvents["BeforeShow"] = "btnDuplicateRecord_BeforeShow";
    $btnDeleteRecord->CCSEvents["BeforeShow"] = "btnDeleteRecord_BeforeShow";
    $btnCancelChanges->CCSEvents["BeforeShow"] = "btnCancelChanges_BeforeShow";
    $lblDummyChildsGrid->CCSEvents["BeforeShow"] = "lblDummyChildsGrid_BeforeShow";
    $lblDummyChildsRecord->CCSEvents["BeforeShow"] = "lblDummyChildsRecord_BeforeShow";
    $btnModifyChildRecord->CCSEvents["BeforeShow"] = "btnModifyChildRecord_BeforeShow";
    $btnApplyChangesChild->CCSEvents["BeforeShow"] = "btnApplyChangesChild_BeforeShow";
    $btnCancelChild->CCSEvents["BeforeShow"] = "btnCancelChild_BeforeShow";
    $lblDummyChildsGrid1->CCSEvents["BeforeShow"] = "lblDummyChildsGrid1_BeforeShow";
    $lblDummyChildsRecord1->CCSEvents["BeforeShow"] = "lblDummyChildsRecord1_BeforeShow";
    $btnModifyChildRecord1->CCSEvents["BeforeShow"] = "btnModifyChildRecord1_BeforeShow";
    $btnApplyChangesChild1->CCSEvents["BeforeShow"] = "btnApplyChangesChild1_BeforeShow";
    $btnCancelChild1->CCSEvents["BeforeShow"] = "btnCancelChild1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method


//lblDummyForTypeGrid_BeforeShow @2-B753696C
function lblDummyForTypeGrid_BeforeShow(& $sender)
{
    $lblDummyForTypeGrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyForTypeGrid; //Compatibility
//End lblDummyForTypeGrid_BeforeShow

//Custom Code @3-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	global $Redirect ;
	global $FileName ;
	$lblValue = "";

	if(CCGetParam("btnApplyChanges") != "" ) // THEN AN UPDATE TO THE DB IS REQUIRED
		ssfUpdateDeviceRecord();

	if(CCGetParam("btnDeleteRecord") != "" ) // THEN DELETE DE CURRENT RECORD
	{
		ssfDeleteDeviceRecord();
		header("Location: ?p_type=".CCGetParam("p_type"));
	}

	if(CCGetParam("btnApplyChangesChild") != "")
		ssfUpdateDeviceChildRecord();

	if(CCGetParam("btnApplyChangesChild1") != "")
		ssfUpdateDeviceChild1Record();

	if(CCGetParam("p_module") != "" )
		ssfCreateNewDevice();

	if(CCGetParam("p_newid") != "" ) {// THEN DUPLICATE THE CURRENT RECORD
		ssfDuplicateDeviceRecord();
		header("Location: ?p_type=".CCGetParam("p_type")."&p_id=".CCGetParam("p_newid")."&btnModifyRecord=1");
	}

	if(CCGetParam("btnCancelChanges") != "" ) {
		header("Location: ?p_type=".CCGetParam("p_type"),false);
	}

	if(CCGetParam("btnCancelChild") != "" || CCGetParam("btnApplyChangesChild") != "") {
		header("Location: ?p_type=".CCGetParam("p_type")."&p_id=".CCGetParam("p_id")."&p_child_type=".CCGetParam("p_child_type"),false); //."&p_child_id=".CCGetParam("p_child_id"),false);
	}

	if(CCGetParam("btnCancelChild1") != "" || CCGetParam("btnApplyChangesChild1") != "") {
		header("Location: ?p_type=".CCGetParam("p_type")."&p_id=".CCGetParam("p_id")."&p_child_type1=".CCGetParam("p_child_type1"),false); //."&p_child_id=".CCGetParam("p_child_id"),false);
	}

	if(CCGetParam("p_type") == "") 
		return $lblDummyForTypeGrid_BeforeShow;

	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText(CCGetParam("p_type"))."</th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER
	$ssfQuery = "select distinct name, param_order, count(name) as name_qty from config_param where type = '".CCGetParam("p_type")."' and subgroup = 'general' and data_type != 'def' and data_type != 'def2' group by name, param_order order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$ssfMaxCount = 0;
	$ssfColumn = 0;
	$ssfColumnNames = array();
	while($Result)
	{
		if($db->f("name_qty") < $ssfMaxCount)
			break;
		$ssfMaxCount = $db->f("name_qty");
		$lblValue .= "          <th>".$CCSLocales->GetText($db->f("name"))."</th>";
		$ssfColumnNames[$ssfColumn] = $db->f("name");
		$ssfColumn++;
		if($ssfColumn >= 10)
			break;
		$Result = $db->next_record();
	}
	$lblValue .= "        </tr>";

	// ROWS
		//look the type of field "ID", to see the order convertion..
		$orderclause = "id" ;
		$ssfQuery = "select data_type from config_param where type = '".CCGetParam("p_type")."' and subgroup = 'general' and name = 'ID' ";
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if ($Result)
		{
			$ssfThisOrderDataType = $db->f("data_type") ;
			if ($ssfThisOrderDataType == 'number' || $ssfThisOrderDataType == 'auto-number' )
				$orderclause = ReplaceNumberConvertion("id","'999'") ;
		} 

	$ssfQuery = "select distinct ".$orderclause." as id from config_values_temp where library = '".CCGetParam("p_type")."' order by ".$orderclause;
	$db->query($ssfQuery);
	$Result = $db->next_record();
	$dbForEachRecord = new clsDBConnection1();
	while($Result)
	{
		$lblValue .= "        <tr class=\"Row\">";
		for($ssfColumnIndex=0;$ssfColumnIndex<$ssfColumn;$ssfColumnIndex++)
		{
			$ssfCondition = "library = '".CCGetParam("p_type")."' AND id = '".$db->f("id")."' AND parameter = '".$ssfColumnNames[$ssfColumnIndex]."'";
			$lblValue .= "          <td>";
			$ssfThisValue = CCDLookUp("param_value","config_values_temp",$ssfCondition,$dbForEachRecord);
			$ssfCondition = "type = '".CCGetParam("p_type")."' and subgroup = 'general' and name='".$ssfColumnNames[$ssfColumnIndex]."'";
			$ssfThisDataType = CCDLookUp("data_type","config_param",$ssfCondition,$dbForEachRecord);
			$ssfMinValue = CCDLookUp("min_value","config_param",$ssfCondition,$dbForEachRecord);
			if( $ssfColumnNames[$ssfColumnIndex] == "ID" ) {
				$focus_ref = "#device_record" ;
				$lblValue .= "<a href=\"?p_type=".CCGetParam("p_type")."&p_id=".$ssfThisValue."&btnModifyRecord=1".$focus_ref."\">";
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
				$lblValue .= "<a href=\"?p_type=".$ssfMinValue."&p_id=".$ssfThisValue."\">".$ssfThisValue."</a>";
				break;
			default:
				if($ssfThisValue == "")
					$ssfThisValue = "&nbsp";
				$lblValue .= $ssfThisValue;
				break;
			}
			if( $ssfColumnNames[$ssfColumnIndex] == "ID" )
				$lblValue .= "</a>";
			$lblValue .= "</td>";			
		}
		$lblValue .= "        </tr>";
		$Result = $db->next_record();
	}
	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyForTypeGrid->SetValue($lblValue);
	$db->close();
	$dbForEachRecord->close();
// -------------------------
//End Custom Code

//Close lblDummyForTypeGrid_BeforeShow @2-260FA594
    return $lblDummyForTypeGrid_BeforeShow;
}
//End Close lblDummyForTypeGrid_BeforeShow

//p_type_BeforeShow @32-C8A09008
function p_type_BeforeShow(& $sender)
{
    $p_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $p_type; //Compatibility
//End p_type_BeforeShow

//Custom Code @36-2A29BDB7
// -------------------------
    // Write your own code here.
	$p_type->Value = CCGetParam("p_type");
// -------------------------
//End Custom Code

//Close p_type_BeforeShow @32-C51AE382
    return $p_type_BeforeShow;
}
//End Close p_type_BeforeShow

//DEL  	$p_module->Value = CCGetParam("p_module");

//p_id_BeforeShow @34-89EB9B85
function p_id_BeforeShow(& $sender)
{
    $p_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $p_id; //Compatibility
//End p_id_BeforeShow

//Custom Code @37-2A29BDB7
// -------------------------
    // Write your own code here.
	$p_id->Value = CCGetParam("p_id");
// -------------------------
//End Custom Code

//Close p_id_BeforeShow @34-C487487C
    return $p_id_BeforeShow;
}
//End Close p_id_BeforeShow

//btnAddRecord_BeforeShow @29-D9078D80
function btnAddRecord_BeforeShow(& $sender)
{
    $btnAddRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnAddRecord; //Compatibility
//End btnAddRecord_BeforeShow

//Custom Code @35-2A29BDB7
// -------------------------
    // Write your own code here.
	global $Tpl ;
	global $EditisAllowed ;
	if(	(CCGetParam("btnModifyRecord") != "" ||
		$EditisAllowed == false ||
		CCGetParam("btnModifyChildRecord") != "" ||
		CCGetParam("p_type") == "" ) && CCGetParam("btnCancelChanges") == ""  )
		$btnAddRecord->Visible = false;
	

	$Tpl->setvar("p_type_param",CCGetParam("p_type")) ;
// -------------------------
//End Custom Code

//Close btnAddRecord_BeforeShow @29-EDE27E79
    return $btnAddRecord_BeforeShow;
}
//End Close btnAddRecord_BeforeShow

//lblDummyRecord_BeforeShow @6-94065C0C
function lblDummyRecord_BeforeShow(& $sender)
{
    $lblDummyRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyRecord; //Compatibility
//End lblDummyRecord_BeforeShow

//Custom Code @7-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	global $EditisAllowed ;
	$lblValue = "";
	if(CCGetParam("p_type") == "" || CCGetParam("p_id") == "" || CCGetParam("btnCancelChanges") != "" )
		return $lblDummyRecord_BeforeShow;
	
	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText(CCGetParam("p_type"))." - ".CCGetParam("p_id")."</th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER

	$lblValue .= "			<th>".$CCSLocales->GetText("parameter")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("actual_value")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("tip")."</th>";
	$lblValue .= "        </tr>";

	// INVISIBLE ROWS

	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_type")."\" name=p_type></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_id")."\" name=p_id></td>";

	// ROWS

	$dbLookUp = new clsDBConnection1();
	$dbConn2 = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_type")."' and module like '".$ssfModule."%' and data_type != 'def' and data_type != 'def2' order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfActualValue = trim(CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and parameter='".$db->f("name")."'",$dbLookUp));
		$lblValue .= "        <tr class=\"Row\">";
		$lblValue .= "			<td>".$db->f("label")."</td>";
		if( CCGetParam("btnModifyRecord") != "" && $EditisAllowed != false)
		{
			$ssfIsUnique = $db->f("is_unique");
			switch($db->f("data_type"))
			{
				case "implementation":
					$lblValue .= "			<td><input READONLY maxlength=\"51\" size=\"50\" value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "combo":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					$ssfAllComboValues = $db->f("min_value");
					while(1)
					{
						$pos = strpos($ssfAllComboValues,"|");
						if( $pos === false ) // YES, === IS NEEDED
						{
							$thisvalue = $ssfAllComboValues;
						}
						else
						{
							$thisvalue = substr($ssfAllComboValues,0,$pos);
							$ssfAllComboValues = substr($ssfAllComboValues,$pos+1);
						}
						$thisValueSelected = "";
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
						if( $pos === false )
							break;
					}
					$lblValue .= "</select></td>";
					break;
				case "color":
					if( $ssfActualValue == "" )
						$ssfActualValue = "000000";
					$lblValue .= "<td>";
					$lblValue .= "<a href=\"javascript:pickColor('pickModifyColor');\" id=\"pickModifyColor\" ";
					$lblValue .= "style=\"border: 1px solid #000000; font-family:Verdana; font-size:10px;";
					$lblValue .= "text-decoration: none;\">&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;";
					$lblValue .= "<input id=\"pickModifyColorfield\" name=".$db->f("name")." size=\"7\" ";
					$lblValue .= "onChange=\"relateColor('pickModifyColor', this.value)\" value=\"#".$ssfActualValue."\" > ";
					$lblValue .= "<script language=\"javascript\">relateColor('pickModifyColor', getObj('pickModifyColorfield').value);</script>";
					$lblValue .= "</td>";
					break;
				case "ref":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					if(substr($db->f("max_value"),0,1) == "0") // ADD A NULL OPTION
						$lblValue .= "<option value=\"\"></option>";
					$ssfReferencesQuery = "select distinct param_value from config_values_temp where parameter = 'ID' and library = '".$db->f("min_value")."' order by param_value";
					$dbConn2->query($ssfReferencesQuery);
					while($dbConn2->next_record())
					{
						$thisValueSelected = "";
						$thisvalue = $dbConn2->f("param_value");
						if( $ssfIsUnique == "Y" )
						{
							if( CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_library")."' and parameter='".$db->f("name")."' and param_value='".$thisvalue."' and id != '".CCGetParam("p_id")."'",$dbLookUp) == $thisvalue )
								continue;
						}
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
					}
					$lblValue .= "</select></td>";
					break;
				case "text":
					$ssfSize = 50;
					$ssfLen = $db->f("max_value");
					if( $ssfLen < 1 )
						$ssfLen = 50;
					if( $ssfLen < 50 )
						$ssfSize = $ssfLen;
					$lblValue .= "<td><input maxlength=".$ssfLen." size=".$ssfSize." value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "number":
				case "double":
					if($db->f("data_type") == "number")
						$numberType = "i";
					else
						$numberType = "d";
					$minvalue = $db->f("min_value");
					$maxvalue = $db->f("max_value");
					$alerttext = $CCSLocales->GetText("ssf_number_valid_range")." ".$minvalue." - ".$maxvalue;
					$lblValue .= "<td><input maxlength=14 size=10 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\" ";
					$lblValue .= "onChange=\"if (!digitvalidation(this.value, ".$minvalue.", ".$maxvalue.", '".$alerttext."', '".$numberType."')) { this.focus(); this.value='".$ssfActualValue."'; };\"";
					$lblValue .= "></td>";
					break;
				default:
					$lblValue .= "<td><input maxlength=50 size=50 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
			}
		}
		else
		{
			switch($db->f("data_type"))
			{
			case "color":
				if( $ssfActualValue == "" )
					$ssfActualValue = "000000";
				$lblValue .= "<td><a id=\"pick1146691118\" ";
				$lblValue .= "style=\"border: 1px solid #000000; font-family:Verdana; font-size:10px;";
				$lblValue .= "text-decoration: none;\">&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;";
				$lblValue .= "<input id=\"pick1146691118field\" size=\"7\" ";
				$lblValue .= "READONLY value=\"#".$ssfActualValue."\" > ";
				$lblValue .= "<script language=\"javascript\">relateColor('pick1146691118', '#".$ssfActualValue."');</script>";
				$lblValue .= "</td>";
				break;
			case "ref":
				$lblValue .= "<td><a href=\"?p_type=".$db->f("min_value")."&p_id=".$ssfActualValue."\">".$ssfActualValue."</a></td>";
				break;
			default:
				if( $ssfActualValue == "" )
					$ssfActualValue = "&nbsp";
				$lblValue .= "			<td>".$ssfActualValue."</td>";
				break;
			}
		}
		$lblValue .= "			<td>".$db->f("tip")."</td>";
		$lblValue .= "        </tr>";
		$Result = $db->next_record();
	}

	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyRecord->SetValue($lblValue);
	$db->close();
	$dbLookUp->close();
	$dbConn2->close();
// -------------------------
//End Custom Code

//Close lblDummyRecord_BeforeShow @6-96E01C13
    return $lblDummyRecord_BeforeShow;
}
//End Close lblDummyRecord_BeforeShow

//DEL  // -------------------------
//DEL      // Write your own code here.
//DEL  	if(	CCGetParam("btnModifyRecord") != "" ||
//DEL  		CCGetParam("p_type") == "" ||
//DEL  		CCGetParam("p_id") == "")
//DEL  		$btnModifyRecord->Visible = false;
//DEL  // -------------------------

//btnApplyChanges_BeforeShow @11-B712FB56
function btnApplyChanges_BeforeShow(& $sender)
{
    $btnApplyChanges_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnApplyChanges; //Compatibility
//End btnApplyChanges_BeforeShow

//Custom Code @13-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if( CCGetParam("btnModifyRecord") == "" || $EditisAllowed == false || CCGetParam("btnCancelChanges") != ""  )
		$btnApplyChanges->Visible = false;
// -------------------------
//End Custom Code

//Close btnApplyChanges_BeforeShow @11-C27BDEB1
    return $btnApplyChanges_BeforeShow;
}
//End Close btnApplyChanges_BeforeShow

//btnDuplicateRecord_BeforeShow @38-73EB61D0
function btnDuplicateRecord_BeforeShow(& $sender)
{
    $btnDuplicateRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnDuplicateRecord; //Compatibility
//End btnDuplicateRecord_BeforeShow

//Custom Code @39-2A29BDB7   CCGetParam("btnModifyRecord") != "" ||
	global $EditisAllowed ;
	if(	CCGetParam("p_type") == "" ||
		$EditisAllowed == false ||
		CCGetParam("p_id") == "" ||
		CCGetParam("btnCancelChanges") != "" ) 
			$btnDuplicateRecord->Visible = false;

//End Custom Code

//Close btnDuplicateRecord_BeforeShow @38-C143F044
    return $btnDuplicateRecord_BeforeShow;
}
//End Close btnDuplicateRecord_BeforeShow

//DEL  // -------------------------
//DEL      // Write your own code here.
//DEL  
//DEL  	echo "hello";
//DEL  // -------------------------

//btnDeleteRecord_BeforeShow @15-8D5B336D
function btnDeleteRecord_BeforeShow(& $sender)
{
    $btnDeleteRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnDeleteRecord; //Compatibility
//End btnDeleteRecord_BeforeShow

//Custom Code @16-2A29BDB7
// -------------------------
    // Write your own code here.   CCGetParam("btnModifyRecord") != "" ||
	global $EditisAllowed ;
	if(	CCGetParam("btnDeleteRecord") != "" ||
		$EditisAllowed == false ||
		CCGetParam("p_type") == "" ||
		CCGetParam("p_id") == "" ||
		CCGetParam("btnCancelChanges") != "" )
		$btnDeleteRecord->Visible = false;
// -------------------------
//End Custom Code

//Close btnDeleteRecord_BeforeShow @15-6C3D5E7D
    return $btnDeleteRecord_BeforeShow;
}
//End Close btnDeleteRecord_BeforeShow

//btnCancelChanges_BeforeShow @12-1A802030
function btnCancelChanges_BeforeShow(& $sender)
{
    $btnCancelChanges_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnCancelChanges; //Compatibility
//End btnCancelChanges_BeforeShow

//Custom Code @14-2A29BDB7
// -------------------------
    // Write your own code here.
	if( CCGetParam("btnModifyRecord") == "" ||
		CCGetParam("btnCancelChanges") != "" )
		$btnCancelChanges->Visible = false;
// -------------------------
//End Custom Code

//Close btnCancelChanges_BeforeShow @12-BF5EF456
    return $btnCancelChanges_BeforeShow;
}
//End Close btnCancelChanges_BeforeShow

//lblDummyChildsGrid_BeforeShow @17-96E92E46
function lblDummyChildsGrid_BeforeShow(& $sender)
{
    $lblDummyChildsGrid_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyChildsGrid; //Compatibility
//End lblDummyChildsGrid_BeforeShow

//Custom Code @18-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	if(CCGetParam("p_type") == "" || CCGetParam("p_id") == "" ) // || CCGetParam("btnModifyRecord") != "" )
		return $lblDummyChildsGrid_BeforeShow;
	$db = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and parameter='implementation'",$db);
	if($ssfModule == "")
		$ssfModule = CCGetParam("p_type");
	$ssfQuery = "type='".CCGetParam("p_type")."' and module='".$ssfModule."' and data_type='def'";
	$ssfChildType = CCDLookUp("min_value","config_param",$ssfQuery,$db);
	if( $ssfChildType == "" )
	{
		$db->close();
		return $lblDummyChildsGrid_BeforeShow;
	}

	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText($ssfChildType)."</th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER
	$ssfQuery = "select * from config_param where module='".$ssfModule."' and type = '".$ssfChildType."' and subgroup = 'subinfo' order by param_order";
	$db->query($ssfQuery);
	$ssfColumn = 0;
	$ssfColumnNames = array();
	$ssfColumnNames[0] = "ID";
	$lblValue .= "<th>".$CCSLocales->GetText($ssfColumnNames[0])."</th>";
	$ssfColumn++;
	while($db->next_record())
	{
		$lblValue .= "<th>".$CCSLocales->GetText($db->f("name"))."</th>";
		$ssfColumnNames[$ssfColumn] = $db->f("name");
		$ssfColumn++;
		if($ssfColumn >= 10)
			break;
	}
	$lblValue .= "        </tr>";

	// ROWS
	$ssfQuery = "select distinct device_id from config_values_temp where library = '".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and groupname='subinfo' order by device_id";
	$db->query($ssfQuery);
	$dbForEachRecord = new clsDBConnection1();
	while($db->next_record())
	{
		$lblValue .= "        <tr class=\"Row\">";
		for($ssfColumnIndex=0;$ssfColumnIndex<$ssfColumn;$ssfColumnIndex++)
		{
			$lblValue .= "          <td>";
			if($ssfColumnNames[$ssfColumnIndex] == "ID") // THIS IS A DUMMY COLUMN
			{	$focus_ref = "#subinfo_child_record" ;
				$lblValue .= "<a href=\"?p_type=".CCGetParam("p_type")."&p_id=".CCGetParam("p_id")."&p_child_type=".$ssfChildType."&p_child_id=".$db->f("device_id")."&btnModifyChildRecord=Modificar".$focus_ref."\">";
				$ssfThisValue = $db->f("device_id");
				$ssfThisDataType = "text";
			}
			else
			{
				$ssfCondition = "library = '".CCGetParam("p_type")."' AND id = '".CCGetParam("p_id")."' AND groupname='subinfo' AND device_id='".$db->f("device_id")."' AND parameter = '".$ssfColumnNames[$ssfColumnIndex]."'";
				$ssfThisValue = CCDLookUp("param_value","config_values_temp",$ssfCondition,$dbForEachRecord);
				$ssfQuery = "select * from config_param where type = '".$ssfChildType."' and subgroup = 'subinfo' and module='".$ssfModule."' and name='".$ssfColumnNames[$ssfColumnIndex]."'";
				$dbForEachRecord->query($ssfQuery);
				$dbForEachRecord->next_record();
				$ssfThisDataType = $dbForEachRecord->f("data_type");
				$ssfMinValue = $dbForEachRecord->f("min_value");
			}
			if($ssfThisValue == "")
			{
				$ssfThisValue = "&nbsp";
				$ssfThisDataType = "text";
			}
			switch($ssfThisDataType)
			{
			case "ref":
				$lblValue .= "<a href=\"?p_type=".$ssfMinValue."&p_id=".$ssfThisValue."\">".$ssfThisValue."</a>";
				break;
			default:
				$lblValue .= $ssfThisValue;
				break;
			}
			if( $ssfColumnNames[$ssfColumnIndex] == "ID" )
				$lblValue .= "</a>"; 
			$lblValue .= "</td>";			
		}
		$lblValue .= "        </tr>";
	}

	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyChildsGrid->SetValue($lblValue);
	$db->close();
	$dbForEachRecord->close();
// -------------------------
//End Custom Code

//Close lblDummyChildsGrid_BeforeShow @17-500D602E
    return $lblDummyChildsGrid_BeforeShow;
}
//End Close lblDummyChildsGrid_BeforeShow

//lblDummyChildsRecord_BeforeShow @20-92984557
function lblDummyChildsRecord_BeforeShow(& $sender)
{
    $lblDummyChildsRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyChildsRecord; //Compatibility
//End lblDummyChildsRecord_BeforeShow

//Custom Code @25-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	global $EditisAllowed ;
	$lblValue = "";
	if( CCGetParam("p_type") == "" || 
		CCGetParam("p_id") == "" || 
		CCGetParam("p_child_id") == "" ||
		CCGetParam("btnModifyRecord") != "" )
		return $lblDummyChildsRecord;
	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText(CCGetParam("p_type"))." - ".CCGetParam("p_id")." - ".CCGetParam("p_child_id")." </th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER

	$lblValue .= "			<th>".$CCSLocales->GetText("parameter")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("actual_value")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("tip")."</th>";
	$lblValue .= "        </tr>";

	// INVISIBLE ROWS

	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_type")."\" name=p_type></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_id")."\" name=p_id></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_child_type")."\" name=p_child_type></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_child_id")."\" name=p_child_id></td>";

	// ROWS

	$dbLookUp = new clsDBConnection1();
	$dbConn2 = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_child_type")."' and module like '".$ssfModule."%' and data_type != 'def' and data_type != 'def2' order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfActualValue = trim(CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id='".CCGetParam("p_child_id")."' and parameter='".$db->f("name")."'",$dbLookUp));
		$lblValue .= "        <tr class=\"Row\">";
		$lblValue .= "			<td>".$db->f("label")."</td>";
		if( CCGetParam("btnModifyChildRecord") != "" && $EditisAllowed != false)
		{
			$ssfIsUnique = $db->f("is_unique");
			switch($db->f("data_type"))
			{
				case "implementation":
					$lblValue .= "			<td><input READONLY maxlength=\"51\" size=\"50\" value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "combo":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					$ssfAllComboValues = $db->f("min_value");
					while(1)
					{
						$pos = strpos($ssfAllComboValues,"|");
						if( $pos === false ) // YES, === IS NEEDED
						{
							$thisvalue = $ssfAllComboValues;
						}
						else
						{
							$thisvalue = substr($ssfAllComboValues,0,$pos);
							$ssfAllComboValues = substr($ssfAllComboValues,$pos+1);
						}
						$thisValueSelected = "";
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
						if( $pos === false )
							break;
					}
					$lblValue .= "</select></td>";
					break;
				case "ref":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					if(substr($db->f("max_value"),0,1) == "0") // ADD A NULL OPTION
						$lblValue .= "<option value=\"\"></option>";
					$ssfReferencesQuery = "select distinct param_value from config_values_temp where parameter = 'ID' and library = '".$db->f("min_value")."' order by param_value";
					$dbConn2->query($ssfReferencesQuery);
					while($dbConn2->next_record())
					{
						$thisValueSelected = "";
						$thisvalue = $dbConn2->f("param_value");
						if( $ssfIsUnique == "Y" )
						{
							if( CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_library")."' and parameter='".$db->f("name")."' and param_value='".$thisvalue."' and id != '".CCGetParam("p_id")."'",$dbLookUp) == $thisvalue )
								continue;
						}
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
					}
					$lblValue .= "</select></td>";
					break;
				case "text":
					$ssfSize = 50;
					$ssfLen = $db->f("max_value");
					if( $ssfLen < 1 )
						$ssfLen = 50;
					if( $ssfLen < 50 )
						$ssfSize = $ssfLen;
					$lblValue .= "<td><input maxlength=".$ssfLen." size=".$ssfSize." value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "number":
				case "double":
					if($db->f("data_type") == "number")
						$numberType = "i";
					else
						$numberType = "d";
					$minvalue = $db->f("min_value");
					$maxvalue = $db->f("max_value");
					$alerttext = $CCSLocales->GetText("ssf_number_valid_range")." ".$minvalue." - ".$maxvalue;
					$lblValue .= "<td><input maxlength=14 size=10 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\" ";
					$lblValue .= "onChange=\"if (!digitvalidation(this.value, ".$minvalue.", ".$maxvalue.", '".$alerttext."', '".$numberType."')) { this.focus(); this.value='".$ssfActualValue."'; };\"";
					$lblValue .= "></td>";
					break;
				default:
					$lblValue .= "<td><input maxlength=50 size=50 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
			}
		}
		else
		{
			$ssfDataType = $db->f("data_type");
			if($ssfActualValue=="")
				$ssfDataType = "text";
			switch($ssfDataType)
			{
			case "ref":
				$lblValue .= "<td><a href=\"?p_type=".$db->f("min_value")."&p_id=".$ssfActualValue."\">".$ssfActualValue."</a></td>";
				break;
			default:
				if( $ssfActualValue == "" )
					$ssfActualValue = "&nbsp";
				$lblValue .= "			<td>".$ssfActualValue."</td>";
				break;
			}
		}
		$lblValue .= "			<td>".$db->f("tip")."</td>";
		$lblValue .= "        </tr>";
		$Result = $db->next_record();
	}

	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyChildsRecord->SetValue($lblValue);
	$db->close();
	$dbLookUp->close();
	$dbConn2->close();
// -------------------------
//End Custom Code

//Close lblDummyChildsRecord_BeforeShow @20-2D9BE243
    return $lblDummyChildsRecord_BeforeShow;
}
//End Close lblDummyChildsRecord_BeforeShow

//btnModifyChildRecord_BeforeShow @21-96F7179F
function btnModifyChildRecord_BeforeShow(& $sender)
{
    $btnModifyChildRecord_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnModifyChildRecord; //Compatibility
//End btnModifyChildRecord_BeforeShow

//Custom Code @26-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if(	CCGetParam("btnModifyRecord") != "" ||
		CCGetParam("btnModifyChildRecord") != "" ||
		$EditisAllowed == false ||
		CCGetParam("p_type") == "" ||
		CCGetParam("p_id") == "" ||
		CCGetParam("p_child_id") == "" )
		$btnModifyChildRecord->Visible = false;
// -------------------------
//End Custom Code

//Close btnModifyChildRecord_BeforeShow @21-CA7D7310
    return $btnModifyChildRecord_BeforeShow;
}
//End Close btnModifyChildRecord_BeforeShow

//btnApplyChangesChild_BeforeShow @23-C261F02C
function btnApplyChangesChild_BeforeShow(& $sender)
{
    $btnApplyChangesChild_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnApplyChangesChild; //Compatibility
//End btnApplyChangesChild_BeforeShow

//Custom Code @27-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if( CCGetParam("btnModifyChildRecord") == "" || $EditisAllowed == false )
		$btnApplyChangesChild->Visible = false;
// -------------------------
//End Custom Code

//Close btnApplyChangesChild_BeforeShow @23-E4586081
    return $btnApplyChangesChild_BeforeShow;
}
//End Close btnApplyChangesChild_BeforeShow

//btnCancelChild_BeforeShow @22-FDC09712
function btnCancelChild_BeforeShow(& $sender)
{
    $btnCancelChild_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnCancelChild; //Compatibility
//End btnCancelChild_BeforeShow

//Custom Code @28-2A29BDB7
// -------------------------
    // Write your own code here.
	if( CCGetParam("btnModifyChildRecord") == "" )
		$btnCancelChild->Visible = false;
// -------------------------
//End Custom Code

//Close btnCancelChild_BeforeShow @22-B92BB5A5
    return $btnCancelChild_BeforeShow;
}
//End Close btnCancelChild_BeforeShow

//lblDummyChildsGrid1_BeforeShow @43-B427F914
function lblDummyChildsGrid1_BeforeShow(& $sender)
{
    $lblDummyChildsGrid1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyChildsGrid1; //Compatibility
//End lblDummyChildsGrid1_BeforeShow

//Custom Code @44-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	if(CCGetParam("p_type") == "" || CCGetParam("p_id") == "" )
		return $lblDummyChildsGrid1_BeforeShow;
	$db = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and parameter='implementation'",$db);
	if($ssfModule == "")
		$ssfModule = CCGetParam("p_type");
	$ssfQuery = "type='".CCGetParam("p_type")."' and module='".$ssfModule."' and data_type='def2'";
	$ssfChildType = CCDLookUp("min_value","config_param",$ssfQuery,$db);
	if( $ssfChildType == "" )
	{
		$db->close();
		return $lblDummyChildsGrid_BeforeShow;
	}

	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText($ssfChildType)."</th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER
	$ssfQuery = "select * from config_param where module='".$ssfModule."' and type = '".$ssfChildType."' and subgroup = 'subinfo2' order by param_order";
	$db->query($ssfQuery);
	$ssfColumn = 0;
	$ssfColumnNames = array();
	$ssfColumnNames[0] = "ID";
	$lblValue .= "<th>".$CCSLocales->GetText($ssfColumnNames[0])."</th>";
	$ssfColumn++;
	while($db->next_record())
	{
		$lblValue .= "<th>".$CCSLocales->GetText($db->f("name"))."</th>";
		$ssfColumnNames[$ssfColumn] = $db->f("name");
		$ssfColumn++;
		if($ssfColumn >= 10)
			break;
	}
	$lblValue .= "        </tr>";

	// ROWS
	$ssfQuery = "select distinct device_id from config_values_temp where library = '".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and groupname='subinfo2' order by device_id";
	$db->query($ssfQuery);
	$dbForEachRecord = new clsDBConnection1();
	while($db->next_record())
	{
		$lblValue .= "        <tr class=\"Row\">";
		for($ssfColumnIndex=0;$ssfColumnIndex<$ssfColumn;$ssfColumnIndex++)
		{
			$lblValue .= "          <td>";
			if($ssfColumnNames[$ssfColumnIndex] == "ID") // THIS IS A DUMMY COLUMN
			{	$focus_ref = "#subinfo2_child_record" ;
				$lblValue .= "<a href=\"?p_type=".CCGetParam("p_type")."&p_id=".CCGetParam("p_id")."&p_child_type1=".$ssfChildType."&p_child_id1=".$db->f("device_id")."&btnModifyChildRecord1=Modificar".$focus_ref."\">";
				$ssfThisValue = $db->f("device_id");
				$ssfThisDataType = "text";
			}
			else
			{
				$ssfCondition = "library = '".CCGetParam("p_type")."' AND id = '".CCGetParam("p_id")."' AND groupname='subinfo2' AND device_id='".$db->f("device_id")."' AND parameter = '".$ssfColumnNames[$ssfColumnIndex]."'";
				$ssfThisValue = CCDLookUp("param_value","config_values_temp",$ssfCondition,$dbForEachRecord);
				$ssfQuery = "select * from config_param where type = '".$ssfChildType."' and subgroup = 'subinfo2' and module='".$ssfModule."' and name='".$ssfColumnNames[$ssfColumnIndex]."'";
				$dbForEachRecord->query($ssfQuery);
				$dbForEachRecord->next_record();
				$ssfThisDataType = $dbForEachRecord->f("data_type");
				$ssfMinValue = $dbForEachRecord->f("min_value");
			}
			if($ssfThisValue == "")
			{
				$ssfThisValue = "&nbsp";
				$ssfThisDataType = "text";
			}
			switch($ssfThisDataType)
			{
			case "ref":
				$lblValue .= "<a href=\"?p_type=".$ssfMinValue."&p_id=".$ssfThisValue."\">".$ssfThisValue."</a>";
				break;
			default:
				$lblValue .= $ssfThisValue;
				break;
			}
			if( $ssfColumnNames[$ssfColumnIndex] == "ID" )
				$lblValue .= "</a>"; 
			$lblValue .= "</td>";			
		}
		$lblValue .= "        </tr>";
	}

	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyChildsGrid1->SetValue($lblValue);
	$db->close();
	$dbForEachRecord->close();
// -------------------------
//End Custom Code

//Close lblDummyChildsGrid1_BeforeShow @43-EBD24447
    return $lblDummyChildsGrid1_BeforeShow;
}
//End Close lblDummyChildsGrid1_BeforeShow

//lblDummyChildsRecord1_BeforeShow @45-845C56AD
function lblDummyChildsRecord1_BeforeShow(& $sender)
{
    $lblDummyChildsRecord1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblDummyChildsRecord1; //Compatibility
//End lblDummyChildsRecord1_BeforeShow

//Custom Code @46-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	global $EditisAllowed ;
	$lblValue = "";
	if( CCGetParam("p_type") == "" || 
		CCGetParam("p_id") == "" || 
		CCGetParam("p_child_id1") == "" ||
		CCGetParam("btnModifyRecord1") != "" )
		return $lblDummyChildsRecord1;
	// GRID HEADER
	$lblValue .= "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "  <tr>";
	$lblValue .= "    <td valign=\"top\">";
	$lblValue .= "      <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">";
	$lblValue .= "        <tr>";
	$lblValue .= "          <td class=\"HeaderLeft\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td> ";
	$lblValue .= "          <th>".$CCSLocales->GetText(CCGetParam("p_type"))." - ".CCGetParam("p_id")." - ".CCGetParam("p_child_id1")." </th>";
	$lblValue .= "          <td class=\"HeaderRight\"><img src=\"../Styles/Apricot/Images/Spacer.gif\" border=\"0\"></td>";
	$lblValue .= "        </tr>";
	$lblValue .= "      </table>";
	$lblValue .= "      <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\">";
	$lblValue .= "        <tr class=\"Caption\">";
	
	// COLUMNS HEADER

	$lblValue .= "			<th>".$CCSLocales->GetText("parameter")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("actual_value")."</th>";
	$lblValue .= "			<th>".$CCSLocales->GetText("tip")."</th>";
	$lblValue .= "        </tr>";

	// INVISIBLE ROWS

	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_type")."\" name=p_type></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_id")."\" name=p_id></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_child_type1")."\" name=p_child_type1></td>";
	$lblValue .= "			<td><input type=hidden value=\"".CCGetParam("p_child_id1")."\" name=p_child_id1></td>";

	// ROWS

	$dbLookUp = new clsDBConnection1();
	$dbConn2 = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_child_type1")."' and module like '".$ssfModule."%' and data_type != 'def' and data_type != 'def2' order by param_order";
	$db = new clsDBConnection1();
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfActualValue = trim(CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id='".CCGetParam("p_child_id1")."' and parameter='".$db->f("name")."'",$dbLookUp));
		$lblValue .= "        <tr class=\"Row\">";
		$lblValue .= "			<td>".$db->f("label")."</td>";
		if( CCGetParam("btnModifyChildRecord1") != "" && $EditisAllowed != false)
		{
			$ssfIsUnique = $db->f("is_unique");
			switch($db->f("data_type"))
			{
				case "implementation":
					$lblValue .= "			<td><input READONLY maxlength=\"51\" size=\"50\" value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "combo":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					$ssfAllComboValues = $db->f("min_value");
					while(1)
					{
						$pos = strpos($ssfAllComboValues,"|");
						if( $pos === false ) // YES, === IS NEEDED
						{
							$thisvalue = $ssfAllComboValues;
						}
						else
						{
							$thisvalue = substr($ssfAllComboValues,0,$pos);
							$ssfAllComboValues = substr($ssfAllComboValues,$pos+1);
						}
						$thisValueSelected = "";
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
						if( $pos === false )
							break;
					}
					$lblValue .= "</select></td>";
					break;
				case "ref":
					$lblValue .= "			<td><select name=\"".$db->f("name")."\">";
					if(substr($db->f("max_value"),0,1) == "0") // ADD A NULL OPTION
						$lblValue .= "<option value=\"\"></option>";
					$ssfReferencesQuery = "select distinct param_value from config_values_temp where parameter = 'ID' and library = '".$db->f("min_value")."' order by param_value";
					$dbConn2->query($ssfReferencesQuery);
					while($dbConn2->next_record())
					{
						$thisValueSelected = "";
						$thisvalue = $dbConn2->f("param_value");
						if( $ssfIsUnique == "Y" )
						{
							if( CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_library")."' and parameter='".$db->f("name")."' and param_value='".$thisvalue."' and id != '".CCGetParam("p_id")."'",$dbLookUp) == $thisvalue )
								continue;
						}
						if( $thisvalue == $ssfActualValue )
							$thisValueSelected = "selected ";
						$lblValue .= "<option value=\"".$thisvalue."\" ".$thisValueSelected.">".$thisvalue."</option>";
					}
					$lblValue .= "</select></td>";
					break;
				case "text":
					$ssfSize = 50;
					$ssfLen = $db->f("max_value");
					if( $ssfLen < 1 )
						$ssfLen = 50;
					if( $ssfLen < 50 )
						$ssfSize = $ssfLen;
					$lblValue .= "<td><input maxlength=".$ssfLen." size=".$ssfSize." value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
				case "number":
				case "double":
					if($db->f("data_type") == "number")
						$numberType = "i";
					else
						$numberType = "d";
					$minvalue = $db->f("min_value");
					$maxvalue = $db->f("max_value");
					$alerttext = $CCSLocales->GetText("ssf_number_valid_range")." ".$minvalue." - ".$maxvalue;
					$lblValue .= "<td><input maxlength=14 size=10 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\" ";
					$lblValue .= "onChange=\"if (!digitvalidation(this.value, ".$minvalue.", ".$maxvalue.", '".$alerttext."', '".$numberType."')) { this.focus(); this.value='".$ssfActualValue."'; };\"";
					$lblValue .= "></td>";
					break;
				default:
					$lblValue .= "<td><input maxlength=50 size=50 value=\"".$ssfActualValue."\" name=\"".$db->f("name")."\"></td>";
					break;
			}
		}
		else
		{
			$ssfDataType = $db->f("data_type");
			if($ssfActualValue=="")
				$ssfDataType = "text";
			switch($ssfDataType)
			{
			case "ref":
				$lblValue .= "<td><a href=\"?p_type=".$db->f("min_value")."&p_id=".$ssfActualValue."\">".$ssfActualValue."</a></td>";
				break;
			default:
				if( $ssfActualValue == "" )
					$ssfActualValue = "&nbsp";
				$lblValue .= "			<td>".$ssfActualValue."</td>";
				break;
			}
		}
		$lblValue .= "			<td>".$db->f("tip")."</td>";
		$lblValue .= "        </tr>";
		$Result = $db->next_record();
	}

	$lblValue .= "      </table>";
	$lblValue .= "    </td>";
	$lblValue .= "  </tr>";
	$lblValue .= "</table>";
	$lblDummyChildsRecord1->SetValue($lblValue);
	$db->close();
	$dbLookUp->close();
	$dbConn2->close();
// -------------------------
//End Custom Code

//Close lblDummyChildsRecord1_BeforeShow @45-D8ACCF20
    return $lblDummyChildsRecord1_BeforeShow;
}
//End Close lblDummyChildsRecord1_BeforeShow

//btnModifyChildRecord1_BeforeShow @47-21E37C74
function btnModifyChildRecord1_BeforeShow(& $sender)
{
    $btnModifyChildRecord1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnModifyChildRecord1; //Compatibility
//End btnModifyChildRecord1_BeforeShow

//Custom Code @48-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if(	CCGetParam("btnModifyRecord") != "" ||
		CCGetParam("btnModifyChildRecord1") != "" ||
		$EditisAllowed == false ||
		CCGetParam("p_type") == "" ||
		CCGetParam("p_id") == "" ||
		CCGetParam("p_child_id1") == "" )
		$btnModifyChildRecord1->Visible = false;
// -------------------------
//End Custom Code

//Close btnModifyChildRecord1_BeforeShow @47-2A2929FF
    return $btnModifyChildRecord1_BeforeShow;
}
//End Close btnModifyChildRecord1_BeforeShow

//btnApplyChangesChild1_BeforeShow @49-CA34833A
function btnApplyChangesChild1_BeforeShow(& $sender)
{
    $btnApplyChangesChild1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnApplyChangesChild1; //Compatibility
//End btnApplyChangesChild1_BeforeShow

//Custom Code @50-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if( CCGetParam("btnModifyChildRecord1") == "" || $EditisAllowed == false )
		$btnApplyChangesChild1->Visible = false;
// -------------------------
//End Custom Code

//Close btnApplyChangesChild1_BeforeShow @49-AD0FAF3E
    return $btnApplyChangesChild1_BeforeShow;
}
//End Close btnApplyChangesChild1_BeforeShow

//btnCancelChild1_BeforeShow @51-837FBADB
function btnCancelChild1_BeforeShow(& $sender)
{
    $btnCancelChild1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnCancelChild1; //Compatibility
//End btnCancelChild1_BeforeShow

//Custom Code @52-2A29BDB7
// -------------------------
    // Write your own code here.
	if( CCGetParam("btnModifyChildRecord1") == "" )
		$btnCancelChild1->Visible = false;
// -------------------------
//End Custom Code

//Close btnCancelChild1_BeforeShow @51-9151383A
    return $btnCancelChild1_BeforeShow;
}
//End Close btnCancelChild1_BeforeShow

//Page_AfterInitialize @1-6C469CE2
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFDeviceConfig; //Compatibility
//End Page_AfterInitialize

//Custom Code @42-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CONF_DEV_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_DEV_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,&$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


function ssfUpdateDeviceRecord()
{
	$ssfUpdateDeviceRecord = true;
	$db = new clsDBConnection1();
	$dbLookUp = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_type")."' and module like '".$ssfModule."%' and data_type != 'def' and data_type != 'def2' order by param_order";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfParameter = $db->f("name");
		$ssfQuery = "select * from config_values_temp where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."'";
		$dbLookUp->query($ssfQuery);
		$ssfNewValue = CCGetParam($ssfParameter);
		if( $db->f("data_type") == "color" )
			$ssfNewValue = substr($ssfNewValue,1);
		if( $dbLookUp->next_record() )
			$ssfQuery = "update config_values_temp set param_value='".$ssfNewValue."', id='".CCGetParam("ID")."' where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."'";
		else
			$ssfQuery = "insert into config_values_temp values ('".CCGetParam("p_type")."', '".CCGetParam("ID")."', '".$db->f("subgroup")."', '', '".$ssfParameter."', '".$ssfNewValue."')";
		$dbLookUp->query($ssfQuery);
		$Result = $db->next_record();
	}

	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_type")."' and module like '".$ssfModule."%' and data_type = 'def' order by param_order";
	$db->query($ssfQuery);
	while($db->next_record())
	{
		$ssfChildType = $db->f("min_value");
		$ssfChildName = $db->f("name");
		$ssfRange = $db->f("max_value");
		$sepPos = strpos($ssfRange,":");
		$ssfMinRange = substr($ssfRange,0,$sepPos);
		$ssfMaxRange = substr($ssfRange,$sepPos+1);
		if( substr($ssfMinRange,0,1) == "@" )
			$ssfMinRange = CCGetParam(substr($ssfMinRange,1));
		if( substr($ssfMaxRange,0,1) == "@" )
			$ssfMaxRange = CCGetParam(substr($ssfMaxRange,1));
		$ssfQuery = "delete from config_values_temp where library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id like '".$ssfChildName."%' and device_id > '".$ssfChildName.$ssfMaxRange."'";
		$dbLookUp->query($ssfQuery);
		for($ssfChildIdx=1;$ssfChildIdx<=$ssfMinRange;$ssfChildIdx++)
		{
			$ssfQuery = "select * from config_values_temp where library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id = '".$ssfChildName.$ssfChildIdx."'";
			$dbLookUp->query($ssfQuery);
			if($dbLookUp->next_record())
				continue;
			ssfAddNewChild(CCGetParam("p_type"), $ssfModule, CCGetParam("p_id"), $ssfChildName.$ssfChildIdx, $ssfChildType);
		}
	}

	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_type")."' and module like '".$ssfModule."%' and data_type = 'def2' order by param_order";
	$db->query($ssfQuery);
	while($db->next_record())
	{
		$ssfChildType = $db->f("min_value");
		$ssfChildName = $db->f("name");
		$ssfRange = $db->f("max_value");
		$sepPos = strpos($ssfRange,":");
		$ssfMinRange = substr($ssfRange,0,$sepPos);
		$ssfMaxRange = substr($ssfRange,$sepPos+1);
		if( substr($ssfMinRange,0,1) == "@" )
			$ssfMinRange = CCGetParam(substr($ssfMinRange,1));
		if( substr($ssfMaxRange,0,1) == "@" )
			$ssfMaxRange = CCGetParam(substr($ssfMaxRange,1));
		$ssfQuery = "delete from config_values_temp where library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id like '".$ssfChildName."%' and device_id > '".$ssfChildName.$ssfMaxRange."'";
		echo "QUERY [".$ssfQuery."]";
		$dbLookUp->query($ssfQuery);
		for($ssfChildIdx=1;$ssfChildIdx<=$ssfMinRange;$ssfChildIdx++)
		{
			$ssfQuery = "select * from config_values_temp where library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."' and device_id = '".$ssfChildName.$ssfChildIdx."'";
			$dbLookUp->query($ssfQuery);
			if($dbLookUp->next_record())
				continue;
			ssfAddNewChild(CCGetParam("p_type"), $ssfModule, CCGetParam("p_id"), $ssfChildName.$ssfChildIdx, $ssfChildType);
		}
	}

	$db->close();
	$dbLookUp->close();
	return $ssfUpdateDeviceRecord;
}

function ssfDeleteDeviceRecord()
{
	$ssfDeleteDeviceRecord = true;
	$db = new clsDBConnection1();
	$ssfQuery = "delete from config_values_temp where library='".CCGetParam("p_type")."' and id='".CCGetParam("p_id")."'";
	$db->query($ssfQuery);
	$db->close();
	if (CCGetParam("p_type") == 'pump' )
		ssfUpdatePumpInformationAfterDeletePump() ;
	return $ssfDeleteDeviceRecord;
}

function ssfUpdatePumpInformationAfterDeletePump()
{
	$ssfUpdatePumpInformationAfterDeletePump = true;
	$db = new clsDBConnection1();
	$update_id = CCGetParam("p_id") ;
	$look_id = $update_id + 1 ;
	$strparamvalue = ReplaceNumberConvertion("param_value","'99'") ;
	$strid = ReplaceNumberConvertion("id","'99'") ;
	$ssfQuery = " update config_values_temp set param_value = ".$strparamvalue." - 1 where library='pump' and ".$strid." >= ".$look_id." and parameter='ID' and groupname='general'"  ;
	$db->query($ssfQuery);
	
	$ssfQuery = " update config_values_temp set id = ".$strid." - 1 where library='pump' and ".$strid." >= ".$look_id  ;
	$db->query($ssfQuery);
	$db->close();
	return $ssfUpdatePumpInformationAfterDeletePump;
}

function ssfUpdateDeviceChildRecord()
{
	$ssfUpdateDeviceChildRecord = true;
	$db = new clsDBConnection1();
	$dbLookUp = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_child_type")."' and module like '".$ssfModule."%' and data_type != 'def' order by param_order";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfParameter = $db->f("name");
		$ssfQuery = "select * from config_values_temp where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."' and device_id='".CCGetParam("p_child_id")."'";
		$dbLookUp->query($ssfQuery);
		$ssfNewValue = CCGetParam($ssfParameter);
		if( $db->f("data_type") == "color" )
			$ssfNewValue = substr($ssfNewValue,1);
		if( $dbLookUp->next_record() )
			$ssfQuery = "update config_values_temp set param_value='".$ssfNewValue."', id='".CCGetParam("p_id")."' where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."' AND device_id='".CCGetParam("p_child_id")."'";
		else
   			$ssfQuery = "insert into config_values_temp values ('".CCGetParam("p_type")."', '".CCGetParam("p_id")."', '".$db->f("subgroup")."', '".CCGetParam("p_child_id")."', '".$ssfParameter."', '".$ssfNewValue."')";
		$dbLookUp->query($ssfQuery);
		$Result = $db->next_record();
	}
	$db->close();
	$dbLookUp->close();
	return $ssfUpdateDeviceChildRecord;
}

function ssfUpdateDeviceChild1Record()
{
	$ssfUpdateDeviceChild1Record = true;
	$db = new clsDBConnection1();
	$dbLookUp = new clsDBConnection1();
	$ssfModule = CCDLookUp("param_value","config_values_temp","library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' and parameter='implementation'",$dbLookUp);
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_child_type1")."' and module like '".$ssfModule."%' and data_type != 'def2' order by param_order";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfParameter = $db->f("name");
		$ssfQuery = "select * from config_values_temp where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."' and device_id='".CCGetParam("p_child_id1")."'";
		$dbLookUp->query($ssfQuery);
		$ssfNewValue = CCGetParam($ssfParameter);
		if( $db->f("data_type") == "color" )
			$ssfNewValue = substr($ssfNewValue,1);
		if( $dbLookUp->next_record() )
			$ssfQuery = "update config_values_temp set param_value='".$ssfNewValue."', id='".CCGetParam("p_id")."' where library='".CCGetParam("p_type")."' AND id='".CCGetParam("p_id")."' AND parameter='".$ssfParameter."' AND device_id='".CCGetParam("p_child_id1")."'";
		else
   			$ssfQuery = "insert into config_values_temp values ('".CCGetParam("p_type")."', '".CCGetParam("p_id")."', '".$db->f("subgroup")."', '".CCGetParam("p_child_id1")."', '".$ssfParameter."', '".$ssfNewValue."')";
		$dbLookUp->query($ssfQuery);
		$Result = $db->next_record();
	}
	$db->close();
	$dbLookUp->close();
	return $ssfUpdateDeviceChild1Record;
}

function ssfAddNewChild($ssfParentType, $ssfParentModule, $ssfParentID, $ssfChildName, $ssfChildType)
{
	$ssfAddNewChild = true;
	$db = new clsDBConnection1();
	$dbLookUp = new clsDBConnection1();
	$ssfQuery = "select * from config_param where type = '".$ssfChildType."' and module like '".$ssfParentModule."%' and data_type != 'def' order by param_order";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfParameter = $db->f("name");
		$ssfNewValue = $db->f("default_value");
		if( $db->f("data_type") == "auto-number" )
			$ssfNewValue = CCDLookUp("max(param_value)","config_values_temp","library='".$ssfParentType."' and id='".$ssfParentID."' and groupname like 'subinfo%' and device_id like '".$ssfChildType."%' and parameter='".$ssfParameter."'",$dbLookUp) + 1;
		$ssfQuery = "insert into config_values_temp values ('".$ssfParentType."', '".$ssfParentID."', '".$db->f("subgroup")."', '".$ssfChildName."', '".$ssfParameter."', '".$ssfNewValue."')";
		$dbLookUp->query($ssfQuery);
		$Result = $db->next_record();
	}
	$db->close();
	$dbLookUp->close();
	return $ssfAddNewChild;
}

function ssfCreateNewDevice()
{
	$ssfCreateNewDevice = true;
	$db = new clsDBConnection1();
	$dbLookUp = new clsDBConnection1();
	$ssfModule = CCGetParam("p_module");
	$ssfQuery = "select * from config_param where type = '".CCGetParam("p_type")."' and module like '".$ssfModule."%' and data_type != 'def' order by param_order";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	while($Result)
	{
		$ssfParameter = $db->f("name");
		$ssfValue = $db->f("default_value");
		if( $ssfParameter == "implementation" )
			$ssfValue = CCGetParam("p_module");
		if( $ssfParameter == "ID" )
			$ssfValue = CCGetParam("p_id");
		$ssfQuery = "insert into config_values_temp values ('".CCGetParam("p_type")."', '".CCGetParam("p_id")."', '".$db->f("subgroup")."', '', '".$ssfParameter."', '".$ssfValue."')";
		$dbLookUp->query($ssfQuery);
		$Result = $db->next_record();
	}
	$db->close();
	$dbLookUp->close();	
	return $ssfCreateNewDevice;
}

function ssfDuplicateDeviceRecord()
{
	$ssfDuplicateDeviceRecord = true;
	$db = new clsDBConnection1();
	$type = CCGetParam("p_type") ;
	$current_id = CCGetParam("p_id") ;
	$newid = CCGetParam("p_newid") ;
	$module = "" ;
	// veo si es una implementacion
	$ssfQuery = " Select param_value from config_values_temp where library = '".$type."' and id = '".$current_id."' and parameter = 'implementation' " ;
	$db->query($ssfQuery);
	$Result = $db->next_record();
	if ($Result)
		$module = $db->f("param_value") ;
	$ssfQuery = "insert into config_values_temp  " ;
	$ssfQuery .= " select a.library,'".$newid."',a.groupname, a.device_id, a.parameter, case when a.parameter='ID' then '".$newid."' when b.is_unique='Y' and b.subgroup <> 'subinfo' then '' else a.param_value end " ;
	$ssfQuery .= " from config_values_temp a, config_param b where a.library = '".$type."' and a.id = '".$current_id."'"  ;
	$ssfQuery .= " and (  (a.library = b.type and a.groupname <> 'subinfo') or (a.groupname = 'subinfo' and b.type = 'hose' )  )" ;
	$ssfQuery .= " and a.groupname = b.subgroup " ;
	$ssfQuery .= " and a.parameter = b.name " ;
	if ($module != "" )
		$ssfQuery .= " and b.module = '".$module."'" ;
	$db->query($ssfQuery);
	$db->close();
	return $ssfDuplicateDeviceRecord;
}


?>
