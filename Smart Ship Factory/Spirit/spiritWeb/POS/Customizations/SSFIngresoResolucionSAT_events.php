<?php
//BindEvents Method @1-8E32BBDC
function BindEvents()
{
    global $ssf_tkt_resolucion_sat;
    global $ssf_tkt_resolucion_sat1;
    $ssf_tkt_resolucion_sat->ssf_sat_type->CCSEvents["BeforeShow"] = "ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow";
    $ssf_tkt_resolucion_sat1->ssf_sat_type->CCSEvents["BeforeShow"] = "ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow";
    $ssf_tkt_resolucion_sat1->CCSEvents["BeforeShow"] = "ssf_tkt_resolucion_sat1_BeforeShow";
    $ssf_tkt_resolucion_sat1->ds->CCSEvents["BeforeExecuteInsert"] = "ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert";
    $ssf_tkt_resolucion_sat1->ds->CCSEvents["BeforeExecuteUpdate"] = "ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate";
}
//End BindEvents Method

//ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow @95-0879D81D
function ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow(& $sender)
{
    $ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat; //Compatibility
//End ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow

//Custom Code @100-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	$Component->SetValue($CCSLocales->GetText($Component->GetValue()));
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow @95-1D54B53B
    return $ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow;
}
//End Close ssf_tkt_resolucion_sat_ssf_sat_type_BeforeShow

//ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow @102-59F742E9
function ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow(& $sender)
{
    $ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat1; //Compatibility
//End ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow

//Custom Code @103-2A29BDB7
// -------------------------
    // Write your own code here.
	global $CCSLocales;
	$Component->SetValue($CCSLocales->GetText($ssf_tkt_resolucion_sat1->lstSatType->GetValue()));
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow @102-BADA82BB
    return $ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow;
}
//End Close ssf_tkt_resolucion_sat1_ssf_sat_type_BeforeShow

//ssf_tkt_resolucion_sat1_BeforeShow @62-17C5C09B
function ssf_tkt_resolucion_sat1_BeforeShow(& $sender)
{
    $ssf_tkt_resolucion_sat1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat1; //Compatibility
//End ssf_tkt_resolucion_sat1_BeforeShow

//Custom Code @79-2A29BDB7
// -------------------------
    // Write your own code here.
	if($ssf_tkt_resolucion_sat1->ssf_sat_date->GetValue() == "")
	{
		$ssf_tkt_resolucion_sat1->ssf_sat_date->SetValue(date("d-m-Y"));
		$ssf_tkt_resolucion_sat1->ssf_sat_used->SetValue("N");
		$ssf_tkt_resolucion_sat1->ssf_sat_type->Visible = false;
		$ssf_tkt_resolucion_sat1->lstSatType->Visible = true;
	}
	else
	{
		if($ssf_tkt_resolucion_sat1->ssf_sat_used->GetValue() == "Y")
		{
			$ssf_tkt_resolucion_sat1->Button_Delete->Visible = false;
			$ssf_tkt_resolucion_sat1->Button_Update->Visible = false;
			$ssf_tkt_resolucion_sat1->DatePicker_ssf_sat_date_resolucion1->Visible = false;
			$ssf_tkt_resolucion_sat1->ssf_sat_type->Visible = true;
			$ssf_tkt_resolucion_sat1->lstSatType->Visible = false;
		}
		else
		{
			$ssf_tkt_resolucion_sat1->ssf_sat_type->Visible = false;
			$ssf_tkt_resolucion_sat1->lstSatType->Visible = true;
		}
	}
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat1_BeforeShow @62-5AE2E1BB
    return $ssf_tkt_resolucion_sat1_BeforeShow;
}
//End Close ssf_tkt_resolucion_sat1_BeforeShow

//ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert @62-73D83B2C
function ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert(& $sender)
{
    $ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat1; //Compatibility
//End ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert

//Custom Code @92-2A29BDB7
// -------------------------
    // Write your own code here.
	$ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert = ssf_tkt_control_rango_resolucion();
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert @62-7DD3E735
    return $ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert;
}
//End Close ssf_tkt_resolucion_sat1_ds_BeforeExecuteInsert

//ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate @62-60CA862C
function ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate(& $sender)
{
    $ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_resolucion_sat1; //Compatibility
//End ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate

//Custom Code @93-2A29BDB7
// -------------------------
    // Write your own code here.
	$ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate = ssf_tkt_control_rango_resolucion();
// -------------------------
//End Custom Code

//Close ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate @62-B2FA26BA
    return $ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate;
}
//End Close ssf_tkt_resolucion_sat1_ds_BeforeExecuteUpdate

function ssf_tkt_control_rango_resolucion()
{
	global $ssf_tkt_resolucion_sat1;

	$ssf_tkt_control_rango_resolucion = true;
	if($ssf_tkt_resolucion_sat1->ssf_sat_desde->Value > $ssf_tkt_resolucion_sat1->ssf_sat_hasta->Value)
	{
		$ssf_tkt_control_rango_resolucion = false;
		$ssf_tkt_resolucion_sat1->Errors->AddError("El Rango inferior debe ser menor o igual al superior");
		$ssf_tkt_resolucion_sat1->ds->CmdExecution = false;
		return false;
	}
	if($ssf_tkt_resolucion_sat1->ssf_sat_date_resolucion->Value > $ssf_tkt_resolucion_sat1->ssf_sat_date->Value)
	{
		$ssf_tkt_control_rango_resolucion = false;
		$ssf_tkt_resolucion_sat1->Errors->AddError("La fecha de la resolución no puede ser mayor que la fecha del sistema");
		$ssf_tkt_resolucion_sat1->ds->CmdExecution = false;
		return false;
	}
	$db = new clsDBConnection1();
	// CHECK THAT THERE IS NO OTHER RESOLUTION NUMBER LIKE THIS ONE
	$ssfQuery = "select ssf_sat_nro_resolucion from ssf_tkt_resolucion_sat where ssf_sat_nro_resolucion <> '".$ssf_tkt_resolucion_sat1->ssf_sat_nro_resolucion->Value."' and ssf_sat_nro_resolucion like '".$ssf_tkt_resolucion_sat1->ssf_sat_nro_resolucion->Value."%'";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	if($Result)
	{
		$ssf_tkt_control_rango_resolucion = false;
		$ssf_tkt_resolucion_sat1->Errors->AddError("Resolucion similar a ".$db->f("ssf_sat_nro_resolucion"));
		$ssf_tkt_resolucion_sat1->ds->CmdExecution = false;
		return false;
	}

	// CHECK THE RANGE
	$ssfQuery = "select ssf_sat_nro_resolucion from ssf_tkt_resolucion_sat where ssf_sat_nro_resolucion <> '".$ssf_tkt_resolucion_sat1->ssf_sat_nro_resolucion->Value."' and ssf_sat_group = '".$ssf_tkt_resolucion_sat1->ssf_sat_group->Value."' and (";
	$ssfQuery .= "(ssf_sat_desde <= ".$ssf_tkt_resolucion_sat1->ssf_sat_desde->Value." and ssf_sat_hasta >= ".$ssf_tkt_resolucion_sat1->ssf_sat_desde->Value.") or ";
	$ssfQuery .= "(ssf_sat_desde <= ".$ssf_tkt_resolucion_sat1->ssf_sat_hasta->Value." and ssf_sat_hasta >= ".$ssf_tkt_resolucion_sat1->ssf_sat_hasta->Value.") )";
	$db->query($ssfQuery);
	$Result = $db->next_record();
	if($Result)
	{
		$ssf_tkt_control_rango_resolucion = false;
		$ssf_tkt_resolucion_sat1->Errors->AddError("Interfiere en el rango de Res ".$db->f("ssf_sat_nro_resolucion"));
		$ssf_tkt_resolucion_sat1->ds->CmdExecution = false;
	}
	return $ssf_tkt_control_rango_resolucion;
}
?>
