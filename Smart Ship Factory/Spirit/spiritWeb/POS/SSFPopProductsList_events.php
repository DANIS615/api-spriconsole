<?php
//BindEvents Method @1-EE5F1060
function BindEvents()
{
    global $ssf_std_store;
    $ssf_std_store->ds->CCSEvents["BeforeBuildSelect"] = "ssf_std_store_ds_BeforeBuildSelect";
}
//End BindEvents Method

//ssf_std_store_ds_BeforeBuildSelect @2-7CA4E714
function ssf_std_store_ds_BeforeBuildSelect(& $sender)
{
    $ssf_std_store_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_std_store; //Compatibility
//End ssf_std_store_ds_BeforeBuildSelect

//Custom Code @44-2A29BDB7
  global $DBConnection1 ;     
  $search_name = trim(CCGetParam("s_prod_type","")) ;
  if ($search_name != "" ) {
	  if ($ssf_std_store->ds->Where != "") 
	     $ssf_std_store->ds->Where .= " AND ";
	  
	  $values = split(",",$search_name) ;
	  $where_tmp = "" ;
	  for ($i=0;$i<=count($values);$i++) {
	  	$where_tmp .= $DBConnection1->ToSQL($values[$i],ccsText)."," ;
	  }	
	  $where_tmp = substr($where_tmp,0,strlen($where_tmp) -1) ;
	  $ssf_std_store->ds->Where .= " tkt_plu_type in (".$where_tmp." )" ;
  }
  $cat1 = trim(CCGetParam("cat1","")) ;
  $cat2 = trim(CCGetParam("cat2","")) ;
  $cat3 = trim(CCGetParam("cat3","")) ;
  
  if ($cat1 !="" ) {
	  if ($ssf_std_store->ds->Where != "") 
	     $ssf_std_store->ds->Where .= " AND ";

	  $ssf_std_store->ds->Where .= " tkt_plu_cat1 = '".$cat1."'" ;
  }

  if ($cat2 !="" ) {
	  if ($ssf_std_store->ds->Where != "") 
	     $ssf_std_store->ds->Where .= " AND ";

	  $ssf_std_store->ds->Where .= " tkt_plu_cat2 = '".$cat2."'" ;
  }

  if ($cat3 !="" ) {
	  if ($ssf_std_store->ds->Where != "") 
	     $ssf_std_store->ds->Where .= " AND ";

	  $ssf_std_store->ds->Where .= " tkt_plu_cat3 = '".$cat3."'" ;
  }

//End Custom Code

//Close ssf_std_store_ds_BeforeBuildSelect @2-403C841D
    return $ssf_std_store_ds_BeforeBuildSelect;
}
//End Close ssf_std_store_ds_BeforeBuildSelect


?>
