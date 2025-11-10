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

//Custom Code @15-2A29BDB7
global $DBConnection1 ;

  //Dynamically modify the WHERE statement (of the datasource) 
     
  $search_name = str_replace(" ","%",trim(CCGetParam("s_delivery_id","")));
  if (!strstr($search_name,"%")) 
      $search_name = "%".$search_name."%";
  else 
      $search_name = $search_name."%";


  //if ($ssf_std_store->ds->Where != "") 
   //   $ssf_std_store->ds->Where .= " AND ";
  //$ssf_std_store->ds->Where .= " delivery_id LIKE ".$DBConnection1->ToSQL($search_name,ccsText);
//End Custom Code

//Close ssf_std_store_ds_BeforeBuildSelect @2-403C841D
    return $ssf_std_store_ds_BeforeBuildSelect;
}
//End Close ssf_std_store_ds_BeforeBuildSelect

//DEL  
//DEL  



?>
