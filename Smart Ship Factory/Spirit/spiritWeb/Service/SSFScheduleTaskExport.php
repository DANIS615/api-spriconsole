<?php

/////////////////////////////////////////////////
////////// CLASE Export Data ////////////////////
////////////////////////////////////////////////


class ExportData extends CommonSchedule {
	
	function Export($old_batch=0,$process) {	   
		$this->s_log->logIt(" Voy a exportar ") ;
		$this->InitVars() ;

		// obtener datos de control
		$store_ho = '00000' ;
		$this->GetTransferData($store_ho) ;
		$this->s_log->logIt(" export batch ".$this->batch_no) ;
		
		// exportar
		$this->store_path = "../data/outbox" ;
		$this->CreateDir($this->store_path) ;
		
		$this->block_file = $this->store_path."/export.lck" ;
		if ($this->CheckorDeleteBlockFile()) {
			$this->CreateBlockFile() ;
			//$this->s_log->logIt(" process ".$process) ;
			if ($process == "" || $process == "PUMPSALES") 
				$this->CallExportProcess("PUMPSALES",$this->batch_no,$old_batch) ;
			if ($process == "" || $process == "PUMPPAY") 
				$this->CallExportProcess("PUMPPAY",$this->batch_no,$old_batch) ;
			if ($process == "" || $process == "BATCHPRICE") 
				$this->CallExportProcess("BATCHPRICE",$this->batch_no,$old_batch) ;
			if ($process == "" || $process == "POSSALES") 
				$this->CallExportProcess("POSSALES",$this->batch_no,$old_batch) ;
			// Actualizar
			$this->UpdateTransferControl($store_ho, $batch_no) ;	

			$this->DeleteFile($this->block_file) ;
		}
	}

	function ExportMaster($process="",$PathToRoot) {	   
		//$this->s_log->logIt(" Voy a exportar maestro ".$process) ;
		$this->InitVars() ;
		$this->PathToRoot = $PathToRoot ;
		// exportar
		$this->store_path = $this->PathToRoot."data/master" ;
		$this->CreateDir($this->store_path) ;
		
		$this->block_file = $this->store_path."/export.lck" ;
		if ($this->CheckorDeleteBlockFile()) {
			$this->CreateBlockFile() ;
			//$this->s_log->logIt(" process ".$process) ;
			if ($process == "" || $process == "CONFG") 
				$this->CallExportMasterProcess("CONFG") ;
			if ($process == "" || $process == "CONFD") 
				$this->CallExportMasterProcess("CONFD") ;
			if ($process == "" || $process == "TENDER") 
				$this->CallExportMasterProcess("TENDER") ;
			if ($process == "" || $process == "UOM") 
				$this->CallExportMasterProcess("UOM") ;
			if ($process == "" || $process == "POSTENDER") 
				$this->CallExportMasterProcess("POSTENDER") ;
			if ($process == "" || $process == "SPEED") 
				$this->CallExportMasterProcess("SPEED") ;
			if ($process == "" || $process == "CATEG") 
				$this->CallExportMasterProcess("CATEG") ;
			if ($process == "" || $process == "PROD") 
				$this->CallExportMasterProcess("PROD") ;
			if ($process == "" || $process == "TAXGRP") 
				$this->CallExportMasterProcess("TAXGRP") ;
			if ($process == "" || $process == "TAXES") 
				$this->CallExportMasterProcess("TAXES") ;
			if ($process == "" || $process == "CUST") 
				$this->CallExportMasterProcess("CUST") ;
			if ($process == "" || $process == "CUSTYP") 
				$this->CallExportMasterProcess("CUSTYP") ;
			if ($process == "" || $process == "RECF") 
				$this->CallExportMasterProcess("RECF") ;

			// Actualizar
			$this->DeleteFile($this->block_file) ;
		}
	}


	function CallExportProcess($process,$new_batch,$old_batch) {
		$str_file_export = "" ;
		$action = "" ;
		$args = "" ;
		switch ($process) {
			case ("PUMPSALES"): //Spirit Transactions
				$str_file_export = "pumpsales" ;
				$action = "ExportPumpSales" ;
				$args1 = $new_batch ;
				$args2 = $old_batch ;
				break ;
			case ("PUMPPAY"):
				$str_file_export = "pumppay" ;
				$action = "ExportPumpPayments" ;
				$args1 = $new_batch ;
				$args2 = $old_batch ;
				break ;
			case ("BATCHPRICE"):
				$str_file_export = "answerprice" ;
				$action = "ExportBatchPrice" ;
				$args1 = $new_batch ;
				$args2 = $old_batch ;
				break ;
			case ("POSSALES"):
				$str_file_export = "possales" ;
				$action = "ExportPOSSales" ;
				$args1 = $new_batch ;
				$args2 = $old_batch ;
				break ;
		}
		$this->export_file = $this->store_path."/export".$str_file_export.$this->now.".xml" ;
		$this->OpenExportXML() ;
		$this->there_was_transactions = false ;
		call_user_func(array(&$this, $action), $args1,$args2,args3,args4);
		$this->SaveExportXML() ;
		
		// Borrar si no hubo transacciones
		if (!$this->there_was_transactions)
			$this->DeleteFile($this->export_file) ;
	}

	function CallExportMasterProcess($process) {
		$str_file_export = "" ;
		$action = "" ;
		$args = "" ;
		switch ($process) {
			case ("CONFG"): //Configuración Genérica
				$str_file_export = "masterconfg" ;
				$action = "ExportMasterConfg" ;
				break ;
			case ("CONFD"): //Configuración de dispositivos
				$str_file_export = "masterconfd" ;
				$action = "ExportMasterConfd" ;
				break ;
			case ("TENDER"): //Tenders
				$str_file_export = "mastertender" ;
				$action = "ExportMasterTender" ;
				break ;
			case ("UOM"): //Uom
				$str_file_export = "masteruom" ;
				$action = "ExportMasterUom" ;
				break ;
			case ("POSTENDER"): //PosTenders
				$str_file_export = "masterpostender" ;
				$action = "ExportMasterPosTender" ;
				break ;
			case ("SPEED"): //Speed
				$str_file_export = "masterspeed" ;
				$action = "ExportMasterSpeed" ;
				break ;
			case ("CATEG"): //Categ
				$str_file_export = "mastercateg" ;
				$action = "ExportMasterCateg" ;
				break ;
			case ("PROD"): //Products
				$str_file_export = "masterprod" ;
				$action = "ExportMasterProd" ;
				break ;
			case ("TAXGRP"): //Tax Groups
				$str_file_export = "mastertaxgrp" ;
				$action = "ExportMasterTaxGroup" ;
				break ;
			case ("TAXES"): //Taxes
				$str_file_export = "mastertaxes" ;
				$action = "ExportMasterTaxes" ;
				break ;
			case ("CUST"): //Customer
				$str_file_export = "mastercustomer" ;
				$action = "ExportMasterCust" ;
				break ;
			case ("CUSTYP"): //Types of Customer
				$str_file_export = "mastercustyp" ;
				$action = "ExportMasterCusTyp" ;
				break ;
			case ("RECF"): //Receipt Format
				$str_file_export = "masterrecf" ;
				$action = "ExportMasterRecFormat" ;
				break ;
		}
		$this->export_file = $this->store_path."/export".$str_file_export.".xml" ;
		if (file_exists($this->export_file))
			$this->DeleteFile($this->export_file) ;
		$this->OpenExportXML() ;
		$this->there_was_transactions = false ;
		call_user_func(array(&$this, $action), $args1,$args2,args3,args4);
		$this->SaveExportXML() ;
		
		// Borrar si no hubo transacciones
		if (!$this->there_was_transactions)
			$this->DeleteFile($this->export_file) ;
	}


	function ExportPumpSales($new_batch,$old_batch) {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar PumpSales ".$new_batch) ;
		$ssfQuery = " select * from ssf_pump_sales a,ssf_addin_head_office_export_data b ";
		$ssfQuery .= " where a.sale_id = b.ho_trans_id " ;
		$ssfQuery .= " and b.ho_trans_type = 'SPS' and b.ho_batch_id = ".$old_batch ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "PumpSales" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'PumpSales', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "SaleLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("sale_id",$db->f("sale_id")) ;
					$price_node->setAttribute("end_date",$db->f("end_date")) ;
					$price_node->setAttribute("end_time",$db->f("end_time")) ;
					$price_node->setAttribute("pump_id",strval($db->f("pump_id"))) ;
					$price_node->setAttribute("hose_id",strval($db->f("hose_id"))) ; 
					$price_node->setAttribute("grade_id",$db->f("grade_id")) ;
					$price_node->setAttribute("volume",$db->f("volume")) ;
					$price_node->setAttribute("money",strval($db->f("money"))) ;
					$price_node->setAttribute("ppu",strval($db->f("ppu"))) ; 
					$price_node->setAttribute("level",$db->f("level")) ;
					$price_node->setAttribute("sale_type",$db->f("sale_type")) ;
					$price_node->setAttribute("initial_volume",strval($db->f("initial_volume"))) ;
					$price_node->setAttribute("final_volume",strval($db->f("final_volume"))) ; 
					$price_node->setAttribute("start_date",$db->f("start_date")) ;
					$price_node->setAttribute("start_time",$db->f("start_time")) ;
					$price_node->setAttribute("preset_amount",$db->f("preset_amount")) ;
					$price_node->setAttribute("batch",strval($new_batch)) ;
					break ;
				}
				$arrayfields = array() ;
				$arrayfields["ho_batch_id"] = $new_batch ;
				$arrayfields["ho_trans_type"] = "'SPS'" ;
				$arrayfields["ho_trans_id"] = $db->f("sale_id");
				$sqlUpdate = $this->UpdateHeadOfficeExport($arrayfields) ;

				//$this->s_log->logIt(" ejecuto ".$sqlUpdate) ;
				$this->UpdateExported($sqlUpdate, & $db_update) ;
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportPumpSales


	function ExportPumpPayments($new_batch,$old_batch) {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar pumpPayments ".$new_batch) ;
		$ssfQuery = " select * from ssf_addin_payments_data a,SSF_ADDIN_HEAD_OFFICE_EXPORT_DATA b ";
		$ssfQuery .= " where a.pay_sale_id = b.ho_trans_id " ;
		$ssfQuery .= " and b.ho_trans_type = 'APD' and b.ho_batch_id = ".$old_batch ;

		$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "PumpPayments" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'PumpPayments', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "PayLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("pay_sale_id",$db->f("pay_sale_id")) ;
					$price_node->setAttribute("pay_payment_type",$db->f("pay_payment_type")) ;
					$price_node->setAttribute("pay_payment_info",$db->f("pay_payment_info")) ;
					$price_node->setAttribute("batch",strval($new_batch)) ;
					break ;
				}
				$arrayfields = array() ;
				$arrayfields["ho_batch_id"] = $new_batch ;
				$arrayfields["ho_trans_type"] = "'APD'" ;
				$arrayfields["ho_trans_id"] = $db->f("pay_sale_id");
				$sqlUpdate = $this->UpdateHeadOfficeExport($arrayfields) ;

				//$this->s_log->logIt(" ejecuto ".$sqlUpdate) ;
				$this->UpdateExported($sqlUpdate, & $db_update) ;
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} 


	function ExportPOSSales($new_batch,$old_batch) {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar POS Sales ".$new_batch) ;
		$ssfQuery = " select * from (ssf_tkt_trx_header a INNER JOIN ssf_addin_head_office_export_data b on " ;
		$ssfQuery .= " a.tkt_trans_id = b.ho_trans_id ) LEFT JOIN ssf_tkt_catalog ON " ;
		$ssfQuery .= " tkt_type = ssf_tkt_catalog.tkt_catalog_code and ssf_tkt_catalog.tkt_catalog_id = 'operation_type' " ;
		$ssfQuery .= " where b.ho_trans_type = 'TKTT' and b.ho_batch_id = ".$old_batch ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "PosSales" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'PosSales', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {

				$valuefactor = $db->f("tkt_catalog_value") ;
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "PosHeaderLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_trans_id",$db->f("tkt_trans_id")) ;
					$price_node->setAttribute("tkt_pos_id",strval($db->f("tkt_pos_id"))) ;
					$price_node->setAttribute("tkt_shift_id",strval($db->f("tkt_shift_id"))) ;
					$price_node->setAttribute("tkt_date",$db->f("tkt_date")) ;
					$price_node->setAttribute("tkt_time",$db->f("tkt_time")) ;
					$price_node->setAttribute("tkt_type",$db->f("tkt_type")) ;
					$price_node->setAttribute("tkt_customer_id",$db->f("tkt_customer_id")) ;
					$price_node->setAttribute("tkt_receipt_type",$db->f("tkt_receipt_type")) ;
					$price_node->setAttribute("tkt_receipt_group",$db->f("tkt_receipt_group")) ;
					$price_node->setAttribute("tkt_receipt_number",strval($db->f("tkt_receipt_number"))) ;
					$price_node->setAttribute("tkt_net_amount",strval($db->f("tkt_net_amount") * $valuefactor )) ;
					$price_node->setAttribute("tkt_tax_amount",strval($db->f("tkt_tax_amount") * $valuefactor)) ; 
					$price_node->setAttribute("tkt_total_amount",strval($db->f("tkt_total_amount") * $valuefactor)) ;
					$price_node->setAttribute("tkt_status",$db->f("tkt_status")) ;
					$price_node->setAttribute("tkt_change_tender",$db->f("tkt_change_tender")) ;
					$price_node->setAttribute("tkt_change_amount",strval($db->f("tkt_change_amount"))) ; 
					$price_node->setAttribute("tkt_customer_tax_id",$db->f("tkt_customer_tax_id")) ;
					$price_node->setAttribute("tkt_customer_name",$db->f("tkt_customer_name")) ;
					$price_node->setAttribute("tkt_customer_address",$db->f("tkt_customer_address")) ;
					$price_node->setAttribute("tkt_customer_tax_type",$db->f("tkt_customer_tax_type")) ;
					$price_node->setAttribute("tkt_printed_times",strval($db->f("tkt_printed_times"))) ;
					$price_node->setAttribute("tkt_period_group",$db->f("tkt_period_group")) ;
					$price_node->setAttribute("tkt_attendant_id",$db->f("tkt_attendant_id")) ;
					$price_node->setAttribute("tkt_refunded",$db->f("tkt_refunded")) ;
					$price_node->setAttribute("batch",strval($new_batch)) ;

					$this->ExportPOSSalesDetails($db->f("tkt_trans_id"),& $price_node,$valuefactor) ;
					$this->ExportPOSSalesTaxes($db->f("tkt_trans_id"),& $price_node,$valuefactor) ;
					$this->ExportPOSSalesTender($db->f("tkt_trans_id"),& $price_node,$valuefactor) ;
					break ;
				}
				$arrayfields = array() ;
				$arrayfields["ho_batch_id"] = $new_batch ;
				$arrayfields["ho_trans_type"] = "'TKTT'" ;
				$arrayfields["ho_trans_id"] = $db->f("tkt_trans_id");
				$sqlUpdate = $this->UpdateHeadOfficeExport($arrayfields) ;

				//$this->s_log->logIt(" ejecuto ".$sqlUpdate) ;
				$this->UpdateExported($sqlUpdate, & $db_update) ;
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportPosSales

	function ExportPOSSalesDetails($trans_id,& $trx_node,$valuefactor) {
		$this->s_log->logIt(" voy a exportar POS Sales Details ") ;
		$ssfQuery = " select * from ssf_tkt_trx_detail " ;
		$ssfQuery .= " where tkt_trans_id = ". $trans_id ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
				//$this->s_log->logIt(" entra a crear la linea de price") ;
				$trx_detail_node = $this->export_handler->createElement( "PosDetailLine" );
				$trx_node->appendChild($trx_detail_node) ;
				$trx_detail_node->setAttribute("tkt_trans_id",$db->f("tkt_trans_id")) ;
				$trx_detail_node->setAttribute("tkt_line_id",strval($db->f("tkt_line_id"))) ;
				$trx_detail_node->setAttribute("tkt_plu_id",$db->f("tkt_plu_id")) ;
				$trx_detail_node->setAttribute("tkt_ppu",strval($db->f("tkt_ppu"))) ;
				$trx_detail_node->setAttribute("tkt_qty",strval($db->f("tkt_qty") * $valuefactor )) ; 
				$trx_detail_node->setAttribute("tkt_net_amount",strval($db->f("tkt_net_amount") * $valuefactor )) ;
				$trx_detail_node->setAttribute("tkt_total_amount",strval($db->f("tkt_total_amount") * $valuefactor )) ;
				$trx_detail_node->setAttribute("tkt_spirit_sale_id",strval($db->f("tkt_spirit_sale_id"))) ;
				$trx_detail_node->setAttribute("tkt_plu_bar_code",$db->f("tkt_plu_bar_code")) ;

				$result = $db->next_record(); 
		}
		$db->Close() ;
	} // End ExportPosSalesDetails

	function ExportPOSSalesTaxes($trans_id,& $trx_node,$valuefactor) {
		$this->s_log->logIt(" voy a exportar POS Sales Taxes ") ;
		$ssfQuery = " select * from ssf_tkt_trx_tax " ;
		$ssfQuery .= " where tkt_trans_id = ". $trans_id ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
				//$this->s_log->logIt(" entra a crear la linea de price") ;
				$trx_detail_node = $this->export_handler->createElement( "PosTaxLine" );
				$trx_node->appendChild($trx_detail_node) ;
				$trx_detail_node->setAttribute("tkt_trans_id",$db->f("tkt_trans_id")) ;
				$trx_detail_node->setAttribute("tkt_tax_id",$db->f("tkt_tax_id")) ;
				$trx_detail_node->setAttribute("tkt_tax_amount_incl",strval($db->f("tkt_tax_amount_incl") * $valuefactor )) ;
				$trx_detail_node->setAttribute("tkt_tax_amount_extra",strval($db->f("tkt_tax_amount_extra") * $valuefactor )) ; 

				$result = $db->next_record(); 
		}
		$db->Close() ;
	} // End ExportPosSalesTaxes

	function ExportPOSSalesTender($trans_id,& $trx_node,$valuefactor) {
		$this->s_log->logIt(" voy a exportar POS Sales Tenders ") ;
		$ssfQuery = " select * from ssf_tkt_trx_tender " ;
		$ssfQuery .= " where tkt_trans_id = ". $trans_id ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
				//$this->s_log->logIt(" entra a crear la linea de price") ;
				$trx_detail_node = $this->export_handler->createElement( "PosTenderLine" );
				$trx_node->appendChild($trx_detail_node) ;
				$trx_detail_node->setAttribute("tkt_trans_id",$db->f("tkt_trans_id")) ;
				$trx_detail_node->setAttribute("tkt_tender_id",$db->f("tkt_tender_id")) ;
				$trx_detail_node->setAttribute("tkt_tender_amount",strval($db->f("tkt_tender_amount") * $valuefactor )) ;
				$trx_detail_node->setAttribute("tkt_tender_info",$db->f("tkt_tender_info")) ;

				$result = $db->next_record(); 
		}
		$db->Close() ;
	} // End ExportPosSalesTender


	function ExportBatchPrice($new_batch,$old_batch) {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar BatchPrice ".$new_batch) ;
		$ssfQuery = " select * ";
		$ssfQuery .= " from ssf_addin_prices_change a, ssf_addin_prices_change_detail b, SSF_ADDIN_HEAD_OFFICE_EXPORT_DATA c ";
		$ssfQuery .= " where a.price_change_id =  b.price_change_id " ;
		$ssfQuery .= " and a.price_change_id = c.ho_trans_id " ;
		$ssfQuery .= " and c.ho_trans_type = 'PRH' and c.ho_batch_id = ".$old_batch ;

		$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "BatchPrices" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'BatchPrices', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "PriceLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("prod_id",$db->f("grade_id")) ;
					$price_node->setAttribute("p_date",$db->f("application_date")) ;
					$price_node->setAttribute("p_time",$db->f("application_time")) ;
					$price_node->setAttribute("price",$db->f("ppu")) ;
					$price_node->setAttribute("p_level",$db->f("price_level")) ; 
					$price_node->setAttribute("batch",strval($new_batch)) ;
					break ;
				}
				$arrayfields = array() ;
				$arrayfields["ho_batch_id"] = $new_batch ;
				$arrayfields["ho_trans_type"] = "'PRH'" ;
				$arrayfields["ho_trans_id"] = $db->f("price_change_id");
				$sqlUpdate = $this->UpdateHeadOfficeExport($arrayfields) ;
				//$this->s_log->logIt(" ejecuto ".$sqlUpdate) ;
				$this->UpdateExported($sqlUpdate, & $db_update) ;
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} 

	function ExportMasterConfg() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Confg ") ;
		$ssfQuery = " select * from ssf_generic_config_values ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "ConfGen" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'ConfGen', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "CongGenLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("library",$db->f("library")) ;
					$price_node->setAttribute("id",$db->f("id")) ;
					$price_node->setAttribute("groupname",$db->f("groupname")) ;
					$price_node->setAttribute("device_id",$db->f("device_id")) ;
					$price_node->setAttribute("parameter",$db->f("parameter")) ;
					$price_node->setAttribute("param_value",$db->f("param_value")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterConfg

	function ExportMasterConfd() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Confd ") ;
		$ssfQuery = " select * from config_values_temp ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "ConfDev" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'ConfDev', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "CongDevLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("library",$db->f("library")) ;
					$price_node->setAttribute("id",$db->f("id")) ;
					$price_node->setAttribute("groupname",$db->f("groupname")) ;
					$price_node->setAttribute("device_id",$db->f("device_id")) ;
					$price_node->setAttribute("parameter",$db->f("parameter")) ;
					$price_node->setAttribute("param_value",$db->f("param_value")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterConfd

	
	function ExportMasterTender() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Tender ") ;
		$ssfQuery = " select * from ssf_addin_payments_types ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "Tender" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'Tender', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "TenderLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("pay_type_id",$db->f("pay_type_id")) ;
					$price_node->setAttribute("pay_type_desc",$db->f("pay_type_desc")) ;
					$price_node->setAttribute("pay_type_group",$db->f("pay_type_group")) ;
					$price_node->setAttribute("pay_type_console_enabled",strval($db->f("pay_type_console_enabled"))) ;
					$price_node->setAttribute("pay_type_system_pay_type",strval($db->f("pay_type_system_pay_type"))) ;					
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterTender

	function ExportMasterUom() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Uom ") ;
		$ssfQuery = " select * from ssf_tkt_measure_units ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "UomExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'UomExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "UomLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("id",$db->f("tkt_unit_id")) ;
					$price_node->setAttribute("name",$db->f("tkt_unit_desc")) ;
					$price_node->setAttribute("fractionable",$db->f("tkt_unit_fractionable")) ;
					$price_node->setAttribute("abbreviation",$db->f("tkt_unit_short_desc")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterUom

	function ExportMasterPosTender() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Pos Tender ") ;
		$ssfQuery = " select * from ssf_tkt_tender ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "PosTender" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'PosTender', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "PosTenderLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_tender_id",$db->f("tkt_tender_id")) ;
					$price_node->setAttribute("tkt_tender_desc",$db->f("tkt_tender_desc")) ;
					$price_node->setAttribute("tkt_tender_change",$db->f("tkt_tender_change")) ;
					$price_node->setAttribute("tkt_tender_enabled",$db->f("tkt_tender_enabled")) ;
					$price_node->setAttribute("tkt_tender_type",$db->f("tkt_tender_type")) ;
					$price_node->setAttribute("tkt_tender_default",$db->f("tkt_tender_default")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterPosTender

	function ExportMasterSpeed() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master SpeedKeys ") ;
		$ssfQuery = " select * from ssf_tkt_catalog where tkt_catalog_id = 'speedkey_group_id' ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "SpeedKey" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'SpeedKey', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "GroupSpeedKeyLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_catalog_id",$db->f("tkt_catalog_id")) ;
					$price_node->setAttribute("tkt_catalog_code",$db->f("tkt_catalog_code")) ;
					$price_node->setAttribute("tkt_catalog_value",$db->f("tkt_catalog_value")) ;
					$price_node->setAttribute("tkt_catalog_misc1",$db->f("tkt_catalog_misc1")) ;

					$this->ExportMasterSpeedKeyDetails($db->f("tkt_catalog_code"),$price_node) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterSpeed


	function ExportMasterSpeedKeyDetails($catalog_id,& $spk_node) {
		$this->s_log->logIt(" voy a exportar master SpeedKeyDetails ") ;
		$ssfQuery = " select * from ssf_tkt_speed_keys " ;
		$ssfQuery .= " where tkt_speed_id = '".$catalog_id."'" ;

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
				//$this->s_log->logIt(" entra a crear la linea de price") ;
				$spk_detail_node = $this->export_handler->createElement( "SpeedKeyDetailLine" );
				$spk_node->appendChild($spk_detail_node) ;
				$spk_detail_node->setAttribute("tkt_speed_id",$db->f("tkt_speed_id")) ;
				$spk_detail_node->setAttribute("tkt_speed_parent_group_id",$db->f("tkt_speed_parent_group_id")) ;
				$spk_detail_node->setAttribute("tkt_speed_order",strval($db->f("tkt_speed_order"))) ;
				$spk_detail_node->setAttribute("tkt_speed_group_id",$db->f("tkt_speed_group_id")) ;
				$spk_detail_node->setAttribute("tkt_speed_value",$db->f("tkt_speed_value")) ;
				$spk_detail_node->setAttribute("tkt_speed_param",$db->f("tkt_speed_param")) ;
				$result = $db->next_record(); 
		}
		$db->Close() ;
	} // End ExportMasterSpeedKeyDetails

	function ExportMasterCateg() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Categ ") ;
		$ssfQuery = " select * from ssf_tkt_categories ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "CategoryExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'CategoryExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "CategoryLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("categ_id",$db->f("tkt_category_id")) ;
					$price_node->setAttribute("categ_name",$db->f("tkt_category_desc")) ;
					$price_node->setAttribute("categ_level",$db->f("tkt_category_level")) ;
					$price_node->setAttribute("categ_parent_id",$db->f("tkt_category_parent")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterCateg


	function ExportMasterProd() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Prod ") ;
		$ssfQuery = " select * from ssf_tkt_plu ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "ProductExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'ProductExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "ProductLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("prod_id",$db->f("tkt_plu_id")) ;
					$price_node->setAttribute("name",$db->f("tkt_plu_long_desc")) ;
					$price_node->setAttribute("short_name",$db->f("tkt_plu_short_desc")) ;
					$price_node->setAttribute("type",$db->f("tkt_plu_type")) ;
					$price_node->setAttribute("uom_id",$db->f("tkt_plu_unit")) ;
					$price_node->setAttribute("tax_group_id",$db->f("tkt_plu_tax")) ;
					$price_node->setAttribute("cat1",$db->f("tkt_plu_cat1")) ;
					$price_node->setAttribute("cat2",$db->f("tkt_plu_cat2")) ;
					$price_node->setAttribute("cat3",$db->f("tkt_plu_cat3")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterProd

	function ExportMasterTaxGroup() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Tax Group ") ;
		$ssfQuery = " select * from ssf_tkt_catalog where tkt_catalog_id ='tax_group_id' ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "TaxGroupExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'TaxGroupExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "TaxGroupLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tax_group_id",$db->f("tkt_catalog_code")) ;
					$price_node->setAttribute("tax_group_desc",$db->f("tkt_catalog_value")) ;

					$this->ExportGroupRelatedTaxes(trim($db->f("tkt_catalog_code")),& $price_node) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterTaxGroup

	function ExportGroupRelatedTaxes($tax_group_id,& $trx_node) {
		$ssfQuery = " select * from ssf_tkt_taxes_group " ;
		$ssfQuery .= " where tkt_tax_group_id ='". $tax_group_id."'" ;

		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
				//$this->s_log->logIt(" entra a crear la linea de price") ;
				$trx_detail_node = $this->export_handler->createElement( "TaxDetailLine" );
				$trx_node->appendChild($trx_detail_node) ;
				$trx_detail_node->setAttribute("tkt_tax_group_id",$db->f("tkt_tax_group_id")) ;
				$trx_detail_node->setAttribute("tkt_tax_tax_id",$db->f("tkt_tax_tax_id")) ;
				$trx_detail_node->setAttribute("tkt_tax_order",$db->f("tkt_tax_order")) ;

				$result = $db->next_record(); 
		}
		$db->Close() ;
	} // End ExportGroupRelatedTaxes


	function ExportMasterTaxes() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Taxes ") ;
		$ssfQuery = " select * from ssf_tkt_taxes ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "TaxExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'TaxExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "TaxLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_tax_id",$db->f("tkt_tax_id")) ;
					$price_node->setAttribute("tkt_tax_type",$db->f("tkt_tax_type")) ;
					$price_node->setAttribute("tkt_tax_value",$db->f("tkt_tax_value")) ;
					$price_node->setAttribute("tkt_tax_included",strval($db->f("tkt_tax_included"))) ;
					$price_node->setAttribute("tkt_tax_desc",$db->f("tkt_tax_desc")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterTaxes

	function ExportMasterCust() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Customer ") ;
		$ssfQuery = " select * from ssf_tkt_customers ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "CustomerExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'CustomerExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "CustomerLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_cust_id",$db->f("tkt_cust_id")) ;
					$price_node->setAttribute("tkt_cust_name",$db->f("tkt_cust_name")) ;
					$price_node->setAttribute("tkt_cust_tax_id",$db->f("tkt_cust_tax_id")) ;
					$price_node->setAttribute("tkt_cust_address",$db->f("tkt_cust_address")) ;
					$price_node->setAttribute("tkt_cust_type",$db->f("tkt_cust_type")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterCustomer


	function ExportMasterCusTyp() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Customer Type ") ;
		$ssfQuery = " select * from ssf_tkt_customers_types ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "CusTypeExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'CusTypeExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "CusTypeLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_cust_type_id",$db->f("tkt_cust_type_id")) ;
					$price_node->setAttribute("tkt_cust_type_desc",$db->f("tkt_cust_type_desc")) ;
					$price_node->setAttribute("tkt_cust_type_sell",$db->f("tkt_cust_type_sell")) ;
					$price_node->setAttribute("tkt_cust_type_credit",$db->f("tkt_cust_type_credit")) ;
					$price_node->setAttribute("tkt_cust_type_tax_id",$db->f("tkt_cust_type_tax_id")) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterCusTyp


	function ExportMasterRecFormat() {
		$has_transactions = false ;
		$this->s_log->logIt(" voy a exportar Master Receipt Format ") ;
		$ssfQuery = " select * from ssf_tkt_receipt_format ";

		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$db_update = new clsDBConnection1();
			if ($result) {
				$price_export = $this->export_handler->getElementsByTagName( "RecFormatExport" );
				if ($price_export->item(0)->nodeValue == "" ) {
					//$this->s_log->logIt(" crea el elemento priceexport") ;
					$element = $this->export_handler->createElementNS('', 'RecFormatExport', '');
					$this->export_handler->appendChild($element) ;
				}
			}
			while ($result) {
				//$this->s_log->logIt(" sale de crear el elemento priceexport") ;
				foreach( $price_export as $price_section )
				{
					//$this->s_log->logIt(" entra a crear la linea de price") ;
					$price_node = $this->export_handler->createElement( "RecFormatLine" );
					$price_section->appendChild($price_node) ;
					$price_node->setAttribute("tkt_receipt_id",$db->f("tkt_receipt_id")) ;
					$price_node->setAttribute("tkt_receipt_layout",trim($db->f("tkt_receipt_layout"))) ;
					break ;
				}
				$has_transactions = true ;
				$result = $db->next_record(); 
			}
			$db_update->Close() ;
		} 
		$db->Close() ;
		if (!$this->there_was_transactions)
			$this->there_was_transactions = $has_transactions ;
	} // End ExportMasterRecFormat


	
	function UpdateHeadOfficeExport($fields) {
		$sqlUpdate = " update SSF_ADDIN_HEAD_OFFICE_EXPORT_DATA set ho_batch_id =".$fields["ho_batch_id"] ;
		$sqlUpdate .= " where ho_trans_type = ".$fields["ho_trans_type"] ;
		$sqlUpdate .= " and ho_trans_id=".$fields["ho_trans_id"] ;
		return $sqlUpdate ;
	}

	function OpenExportFile() {
		$e_file = fopen($this->export_file,'a+') ; 
		return $e_file ;
	}

	function CloseFile($a_file) {
		 fclose($a_file);
		 return 0 ;
	}

	function WriteFile($a_file, $line) {
		 $result = fwrite($a_file,$line."\r\n");
		 return $result ;
	}

	function UpdateExported($sqlUpdate, & $db) {
		$db->query($sqlUpdate);
	} 

	function GetTransferData($store_to) {
		$this->batch_no = 1 ;
		$min_batch_no = 0 ;
		$ssfQuery = " select * from ssf_addin_head_office_batch_info where ho_destination ='".$store_to."'" ;
		$ssfQuery .= " order by ho_batch_id desc " ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$this->batch_no = $db->f("ho_batch_id") + 1 ;
		}

		$ssfQuery = " select min(ho_batch_id) as min_batch from ssf_addin_head_office_batch_info where ho_destination ='".$store_to."'" ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$min_batch_no = $db->f("min_batch") ;
		}

		if ($this->batch_no > 999999) {
			// alcancé un nivel crítico de nros. Tengo que borrar todos los datos de esta
			// tienda, y empezar a numerar de nuevo.
			$this->DeleteTransferData($store_to) ;
			$this->batch_no = 1 ;
			$min_batch_no = 0 ;
		}
		
		if ( ($this->batch_no - $min_batch_no ) > 49 ) {
			$this->old_batch = $min_batch_no ;
		}
		$db->Close() ;
	}
	
	function DeleteTransferData($store_to) {
		$ssfQuery = " delete from ssf_addin_head_office_batch_info where ho_destination ='".$store_to."'" ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$this->s_log->logIt("Se eliminan registros de transfer control tienda ".$store_to ) ;
		$db->Close() ;
	}

	function UpdateTransferControl($store_to) {
		$ssfQuery = "" ;
		if ($this->old_batch != 0) {
			$ssfQuery = " Update ssf_addin_head_office_batch_info set ho_timestamp = '".$this->now."' ," ;
			$ssfQuery .= " ho_batch_id = ".$this->batch_no ;
			$ssfQuery .= " where ho_destination ='".$store_to."'" ;
			$ssfQuery .= " and ho_batch_id = ".$this->old_batch ;
		} else {
			$ssfQuery = " Insert into ssf_addin_head_office_batch_info (ho_destination, ho_timestamp, ho_batch_id) " ;
			$ssfQuery .= " values ('".$store_to."','".$this->now."',".$this->batch_no." )" ;
		}
		//$this->s_log->logIt(" actualizo ".$ssfQuery) ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$db->Close() ;

	}

	function OpenExportXML() {
		  $doc = new DOMDocument();
		  $this->s_log->logIt(" voy a abrir el file ".$this->export_file) ;
  		  $doc->load($this->export_file);
		  $this->export_handler = $doc ;
		  return 0 ;
	}

	function SaveExportXML() {
		$this->export_handler->save($this->export_file) ;
		return 0;
	}
}

?>