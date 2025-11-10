<?php
// //Events @1-F81417CB

//SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @4-E899608A
function SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow(& $sender)
{
    $SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSKPrueba; //Compatibility
//End SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//Custom Code @5-2A29BDB7
global $Tpl ;
if (CCGetParam("tkt_speed_id") != "" ) {
	$Component->SetValue(CCGetParam("tkt_speed_id")) ;
	$Tpl->setvar("disabledparam", "disabled") ;
	} else {
		//$Tpl->setvar("disabledparam", "") ;
	}
//End Custom Code

//Close SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow @4-25B2C7AF
    return $SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow;
}
//End Close SSFTicketSKPrueba_ssf_tkt_speed_keys_r_tkt_speed_id_BeforeShow

//SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect @2-9BBD741B
function SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect(& $sender)
{
    $SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSKPrueba; //Compatibility
//End SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect

//Custom Code @20-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect @2-2D160F41
    return $SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect;
}
//End Close SSFTicketSKPrueba_ssf_tkt_speed_keys_BeforeSelect


?>
