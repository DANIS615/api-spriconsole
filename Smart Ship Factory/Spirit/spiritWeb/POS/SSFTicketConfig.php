<?php

class TicketConfig {

	function CheckCatalogExistance() {
		global $CCSLocales;

		$this->InsertCatalog("cat_level","level1","level1_text");
		$this->InsertCatalog("cat_level","level2","level2_text");
		$this->InsertCatalog("cat_level","level3","level3_text");
		$this->InsertCatalog("pos_param_config","PAY_SPEEDKEYS","");
		$this->InsertCatalog("pos_param_config","PLU_SPEEDKEYS","");
		$this->InsertCatalog("pos_param_config","POS_ACTIVE","");
		$this->InsertCatalog("pos_param_config","POS_NUMBER","");
		$this->InsertCatalog("pos_param_config","PRINTER_ID","");
		$this->InsertCatalog("pos_param_config","RECEIPT_GROUP","");
		$this->InsertCatalog("pos_param_config","RECEIPT_GROUP_CREDIT","");
		$this->InsertCatalog("pos_param_config","RECEIPT_PRINT_INMEDIATELY","");
		$this->InsertCatalog("pos_param_config","PERIOD_CLOSE_GROUP","");
		$this->InsertCatalog("pos_param_config","TRANSIT","");
		$this->InsertCatalog("pos_param_config","CUST_DISP_COM","");
		if(CCGetSession("SSFCustomizationGroup") == "GUATEMALA001") {
			$this->InsertCatalog("pos_param_config","PAGO_ISR","");
			$this->InsertCatalog("pos_param_config","SSF_PARAM_ABOUT_001","");
		}
		$this->InsertCatalog("pos_config_id","0",$CCSLocales->GetText("ssf_all_pos"));
		$this->InsertCatalog("product_type","D","ssf_department");
		$this->InsertCatalog("product_type","F","ssf_fuel");
		$this->InsertCatalog("product_type","P","PLU");
		$this->InsertCatalog("tax_type","F","fixed");
		$this->InsertCatalog("tax_type","P","ssf_percentual");
		$this->InsertCatalog("tender_type","CASH","ssf_liquid");
		$this->InsertCatalog("tender_type","TRANSIT","ssf_transit_tender");
		$this->InsertCatalog("speedkey_type","PAY_SPEEDKEYS","ssf_pay_speedkeys");
		$this->InsertCatalog("speedkey_type","PLU_SPEEDKEYS","ssf_plu_speedkeys");
		$this->InsertCatalog("operation_type","INVOICE","1");
		$this->InsertCatalog("operation_type","CREDIT","-1");
		$this->InsertCatalog("printer_type","SERIAL","ssf_serial");
		$this->InsertCatalog("printer_type","PARALLEL","ssf_parallel");
		$this->InsertCatalog("printer_type","SYSTEM","ssf_system");
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_COM","port_name",true);  // en los parámetros de impresora, uso el tercer campo para el nombre de campo, y los demás para traducción
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_BAUD","ssf_bauds",true);
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_PARITY","ssf_parity",true);
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_STOPBITS","ssf_stopbits",true);
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_DATABITS","ssf_databits",true);
		$this->InsertCatalog("printer_param_config","SERIAL","PRT_FLOW","ssf_prt_flow",true);
		$this->InsertCatalog("printer_param_config","PARALLEL","PRT_PORT","port_name",true);
		$this->InsertCatalog("printer_param_config","PARALLEL","PRT_PORTTYPE","type",true);
		$this->InsertCatalog("printer_param_config","SYSTEM","PRT_NAME","name",true);
		$this->InsertCatalog("pos_robot_config","POS_ACTIVE","Y");  // en los parámetros de autofacturador, uso el tercer campo para el default
		$this->InsertCatalog("pos_robot_config","POS_NUMBER","");
		$this->InsertCatalog("pos_robot_config","POS_INVOICE_WAIT_SECS","60");
		$this->InsertCatalog("pos_robot_config","POS_PUMPS","");
		$this->InsertCatalog("pos_robot_config","RECEIPT_GROUP","");
		$this->InsertCatalog("pos_robot_config","RECEIPT_GROUP_CREDIT","");
		$this->InsertCatalog("pos_robot_config","ROBOT_INV_CLEARED","N");
		$this->InsertCatalog("pos_robot_config","ROBOT_INV_UNCONTROLLED","N");
		$this->InsertCatalog("pos_robot_config","ROBOT_INV_TEST","N");

	}

	function InsertCatalog($cat_id, $cat_code, $cat_value,$cat_misc1 = "",$extend_key = false) {
		global $CCSLocales ;
		$cat_desc_temp = "";
		if($extend_key == false)
			$cat_desc_temp = $CCSLocales->GetText($cat_value) ;
		$misc1_desc_temp = $CCSLocales->GetText($cat_misc1) ;
		if ($cat_desc_temp != "" )
			$cat_value = $cat_desc_temp ;
		if ($misc1_desc_temp != "" )
			$cat_misc1 = $misc1_desc_temp ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select 1 from ssf_tkt_catalog where tkt_catalog_id = '" . $cat_id."'" ;
		$ssfQuery .= " and tkt_catalog_code = '" . $cat_code."'" ;
		if ($extend_key)
			$ssfQuery .= " and tkt_catalog_value = '" . $cat_value."'" ;
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if (!$Result) {
			$ssfQuery = " insert into ssf_tkt_catalog (tkt_catalog_id,tkt_catalog_code,tkt_catalog_value,tkt_catalog_misc1) " ;
			$ssfQuery .= " values ( '".$cat_id."','".$cat_code."','".$cat_value."','".$cat_misc1."' ) " ; 
			$db->query($ssfQuery);
		}
		$db->close();
		return true ;
	}

	function InsertPriceList() {
		global $CCSLocales ;
		$ssf_plzero_desc = $CCSLocales->GetText("ssf_plzero_desc") ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select 1 from ssf_tkt_price_list_header where tkt_list_id = 0 " ;
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if (!$Result) {
			$ssfQuery = " insert into ssf_tkt_price_list_header (tkt_list_id,tkt_list_description,tkt_list_active) " ;
			$ssfQuery .= " values ( 0,'".$ssf_plzero_desc."','Y' ) " ; 
			$db->query($ssfQuery);
		}
		$db->close();
		return true ;
	}


}


/*
--------------------------------
AUTOFACTURADOR -----------------
---------------------------------

- POS_NUMBER (idem POS)
- POS_ACTIVE (idem POS)
- POS_INVOICE_WAIT_SECS (cantidad de segundos entre que se hace el despacho y el mismo es facturado. Default 60)
- POS_PUMPS (Surtidores logicamente conectados a este autofacturador, separados por coma. Si no se pone nada significa que son todos. Default:
nada)
- RECEIPT_GROUP (idem POS)
- RECEIPT_GROUP_CREDIT (idem POS)
- ROBOT_INVOICE_CLEARED (opciones: "Y" o "N". Si se hace una venta y se paga sin facturar, antes que le toque autofacturarla, igual la debe autofacturar ?. Default "N")
- ROBOT_INVOICE_UNCONTROLLED (opciones: "Y" o "N". Debe autofacturar ventas sin control ? Default "N")
- ROBOT_INVOICE_TEST (Opciones: "Y" o "N". Debe autofacturar ventas que son prueba de surtidor ? Default "N")
*/


?>