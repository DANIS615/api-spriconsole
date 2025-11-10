<?php
//BindEvents Method @1-9FE0D56E
function BindEvents()
{
    global $ssf_addin_payments_types1;
    $ssf_addin_payments_types1->CCSEvents["BeforeShow"] = "ssf_addin_payments_types1_BeforeShow";
    $ssf_addin_payments_types1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_addin_payments_types1_ds_AfterExecuteSelect";
}
//End BindEvents Method

//DEL  //

//ssf_addin_payments_types1_BeforeShow @22-FA24706E
function ssf_addin_payments_types1_BeforeShow(& $sender)
{
    $ssf_addin_payments_types1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_payments_types1; //Compatibility
//End ssf_addin_payments_types1_BeforeShow

//Custom Code @35-2A29BDB7
	global $Tpl ;
	if (CCGetParam("pay_type_id") != "" || CCGetParam("ssf_addin_payments_types_Insert") == "insert" ) {
		$ssf_addin_payments_types1->Visible = true ;
		$Tpl->setvar("pay_type_readonly","") ;
		if (CCGetParam("pay_type_id") != "" )
		{
			$Tpl->setvar("pay_type_readonly","readonly") ;
		}
	} else 
		$ssf_addin_payments_types1->Visible = false ;
//End Custom Code

//Close ssf_addin_payments_types1_BeforeShow @22-78FCEB70
    return $ssf_addin_payments_types1_BeforeShow;
}
//End Close ssf_addin_payments_types1_BeforeShow

//ssf_addin_payments_types1_ds_AfterExecuteSelect @22-77F0F523
function ssf_addin_payments_types1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_addin_payments_types1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_payments_types1; //Compatibility
//End ssf_addin_payments_types1_ds_AfterExecuteSelect

//Custom Code @36-2A29BDB7

	if (CCGetParam("pay_type_system_pay_type") == "1" ) 
	{
		$ssf_addin_payments_types1->InsertAllowed = false ;
		$ssf_addin_payments_types1->UpdateAllowed = false ;
		$ssf_addin_payments_types1->DeleteAllowed = false ;
	}	

//End Custom Code

//Close ssf_addin_payments_types1_ds_AfterExecuteSelect @22-3EE614CB
    return $ssf_addin_payments_types1_ds_AfterExecuteSelect;
}
//End Close ssf_addin_payments_types1_ds_AfterExecuteSelect

//DEL  //


?>
