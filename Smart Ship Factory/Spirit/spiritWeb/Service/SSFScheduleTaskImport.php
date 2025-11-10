<?php

/////////////////////////////////////////////////
////////// CLASE Import Data ////////////////////
////////////////////////////////////////////////


class ImportData extends CommonSchedule {
	
	
	function Import($interface="",$frommaster=false, $deletealldata=false, $pathtoroot="") {	   

			if ($frommaster)
				$this->store_path = $pathtoroot."data/master" ;
			else
				$this->store_path = "../data/inbox" ;

			$this->block_file = $this->store_path."/export.lck" ;
			if ($this->CheckorDeleteBlockFile()) {
				$this->CreateBlockFile() ;
				switch ($interface) {
					case "PRICES":
						$this->ImportPrices() ;
						break;
					case "TAXGRP":
						$this->ImportTaxGroup($deletealldata,$frommaster) ;
						break;
					case "TAXES":
						$this->ImportTaxes($deletealldata,$frommaster) ;
						break;
					case "PRODUCTS":
						$this->ImportProducts($deletealldata,$frommaster) ;
						break;
					case "CATEG":
						$this->ImportCategories($deletealldata,$frommaster) ;
						break;
					case "UOM":
						$this->ImportUom($deletealldata,$frommaster) ;
						break;
					case "CONFG":
						$this->ImportMasterConfg($deletealldata) ;
						break;
					case "CONFD":
						$this->ImportMasterConfd(true) ;
						break;
					case "TENDER":
						$this->ImportMasterTender($deletealldata) ;
						break;
					case "POSTENDER":
						$this->ImportMasterPosTender($deletealldata) ;
						break;
					case "SPEED":
						$this->ImportMasterSpeedKey($deletealldata) ;
						break;
					case "CUST":
						$this->ImportMasterCustomer($deletealldata,$frommaster) ;
						break;
					case "CUSTYP":
						$this->ImportMasterCustomerType($deletealldata,$frommaster) ;
						break;
					case "RECF":
						$this->ImportMasterReceiptFormat($deletealldata) ;
						break;
					default:
						$this->ImportPrices() ;
						$this->ImportTaxGroup($deletealldata,$frommaster) ;
						$this->ImportTaxes($deletealldata,$frommaster) ;
						$this->ImportProducts($deletealldata,$frommaster) ;
						$this->ImportCategories($deletealldata,$frommaster) ;
						$this->ImportUom($deletealldata,$frommaster) ;
						break;
				}
				$this->DeleteFile($this->block_file) ;
			}
	}


	function ImportPrices() {
		$this->s_log->logIt(" Voy a importar Precios ") ;
		$db = new clsDBConnection1() ;
		$_dir = "../data/inbox/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"prices")>0) ) {
				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "PriceExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo ") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;
							$array_values = array() ;
							$array_values["a.price_change_id"] = "b.price_change_id" ;
							$array_values["a.application_date"] = "'".$array["p_date"]."'" ;
							$array_values["a.application_time"] = "'".$array["p_time"]."'" ;
							$array_values["b.grade_id"] = "'".$array["prod_id"]."'" ;
							$array_values["b.price_level"] = $array["p_level"] ;
							$this->s_log->logIt(" antes de chequear ") ;
							if (!$this->CheckExistence("ssf_addin_prices_change a, ssf_addin_prices_change_detail b",$array_values, & $db)) {
								$max_id = $this->GetMaxPriceID(& $db) ;
								$this->s_log->logIt(" descpués ".$max_id) ;
								// inserto el header
								$ssfQuery = " insert into ssf_addin_prices_change " ;
								$ssfQuery .= " (price_change_id,application_date,application_time) " ;
								$ssfQuery .= " values (".$max_id."," ;
								$ssfQuery .=  "'".$array["p_date"]."','".$array["p_time"]."'" ;
								$ssfQuery .= " ) " ;
								$db->query($ssfQuery);

								// inserto el detail
								$ssfQuery = " insert into ssf_addin_prices_change_detail " ;
								$ssfQuery .= " (price_change_id,grade_id,price_level,ppu) " ;
								$ssfQuery .= " values (".$max_id."," ;
								$ssfQuery .=  "'".$array["prod_id"]."',".$array["p_level"]."," ;
								$ssfQuery .=  $array["price"] ;
								$ssfQuery .= " ) " ;
								$db->query($ssfQuery);

								//Inserto la fila de chequeo en ssf_addin_head_office_export_data
								$ssfQuery = " insert into ssf_addin_head_office_export_data " ;
								$ssfQuery .= " (ho_trans_type,ho_batch_id,ho_trans_id,ho_original_batch_id) " ;
								$ssfQuery .= " values ('PRH',0," ;
								$ssfQuery .=  $max_id.",".$array["batch"] ;
								$ssfQuery .= " ) " ;
								//$this->s_log->logIt(" arme ".$ssfQuery) ;
								$db->query($ssfQuery);

							}
							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportTransactions

	function GetMaxPriceID(&$db) {
		$ssfQuery = " Select max(price_change_id) as max_id from ssf_addin_prices_change " ;	
		$db->query($ssfQuery);								
		$result = $db->next_record(); 
		if ($result)
			return $db->f("max_id") + 1 ;
		else
			return 1 ;
	}

	function ImportTaxGroup($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Grupos de Impuestos ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;

			if ($frommaster)
				$importname = "mastertaxgrp" ;
			else
				$importname = "taxesgroups" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname)>0) ) {

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_catalog"," tkt_catalog_id = 'tax_group_id' ") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "TaxGroupExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo grupo impuesto") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_catalog_id"] = "'tax_group_id'" ;
							$array_key["tkt_catalog_code"] = "'".$array["tax_group_id"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_catalog_value"] = "'".$array["tax_group_desc"]."'" ;

							if (!$this->CheckExistence("ssf_tkt_catalog",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_catalog",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_catalog",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);
							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$this->s_log->logIt(" el nodo es ".$array["tax_group_id"]) ;
						$this->s_log->logIt(" y ejecute la consulta ".$ssfQuery) ;
						if ($node->hasChildNodes() ) {
								//Elimino las relaciones existentes 
								$ssfQuery = " Delete from ssf_tkt_taxes_group where tkt_tax_group_id ='".$array_key["tkt_catalog_code"]."' " ;
								$db->query($ssfQuery);
								$arraydetail = array() ;
								$this->readXML($node, &$arraydetail) ;
								$this->AnalizeGroupTaxDetails($arraydetail) ;
								//$results = print_r($arraydetail, true) ;
								//$this->s_log->logIt(" encontre ".$results) ;
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportTransactions

	function AnalizeGroupTaxDetails($arraydetail) {
		$db = new clsDBConnection1() ;
		foreach($arraydetail as $lineKey => $linevalue){
			if(is_array($linevalue)){
				switch (trim($lineKey)) {
					case "TaxDetailLine":
						for ($i=0;$i<count($linevalue);$i++ ) {
							$array_key = array() ;
							$array_key["tkt_tax_group_id"] = "'".$linevalue[$i]["tkt_tax_group_id"]."'" ;
							$array_key["tkt_tax_tax_id"] = "'".$linevalue[$i]["tkt_tax_tax_id"]."'" ;
							$array_key["tkt_tax_order"] = "'".$linevalue[$i]["tkt_tax_order"]."'" ;
					
							if (!$this->CheckExistence("ssf_tkt_taxes_group",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_taxes_group",$array_key,$array_value) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_taxes_group",$array_key,$array_value) ;
							}
							$db->query($ssfQuery);
						}		
						break ;
				} // end switch
			} // end if
		} // end foreach 
		$db->Close() ;
	}

	function ImportTaxes($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Impuestos ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ($frommaster)
				$importname = "mastertaxes" ;
			else
				$importname = "taxesdetails" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname)>0) ) {

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_taxes") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "TaxExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo impuesto") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_tax_id"] = "'".$array["tkt_tax_id"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_tax_type"] = "'".$array["tkt_tax_type"]."'" ;
							$array_values["tkt_tax_value"] = $array["tkt_tax_value"] ;
							$array_values["tkt_tax_included"] = "'".$array["tkt_tax_included"]."'" ;
							$array_values["tkt_tax_desc"] = "'".$array["tkt_tax_desc"]."'" ;

							if (!$this->CheckExistence("ssf_tkt_taxes",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_taxes",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_taxes",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);
							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportTransactions

	function ImportProducts($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Productos ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ($frommaster)
				$importname = "masterprod" ;
			else
				$importname = "products" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname)>0) ) {

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_plu") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "ProductExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo producto") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_plu_id"] = "'".$array["prod_id"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_plu_long_desc"] = "'".$array["name"]."'" ;
							$array_values["tkt_plu_short_desc"] = "'".$array["short_name"]."'" ;
							$array_values["tkt_plu_type"] = "'".$array["type"]."'" ;
							$array_values["tkt_plu_unit"] = "'".$array["uom_id"]."'" ;
							$array_values["tkt_plu_tax"] = "'".$array["tax_group_id"]."'" ;
							$array_values["tkt_plu_cat1"] = "'".$array["cat1"]."'" ;
							$array_values["tkt_plu_cat2"] = "'".$array["cat2"]."'" ;
							$array_values["tkt_plu_cat3"] = "'".$array["cat3"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_plu",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_plu",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_plu",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							// Si es combustible, insertar el mapeo 
							if ($array["type"] == "F" and $array["map_code"] != "" ) {
								$array_key = array() ;
								$array_values = array() ;
								$array_key["tkt_plu_id"] = "'".$array["prod_id"]."'" ;
								$array_key["tkt_automatic"] = "'Y'" ;
								$array_key["tkt_grade_id"] = $array["map_code"] ;
								if (!$this->CheckExistence("ssf_tkt_plu_grades",$array_key, & $db)) {
									$ssfQuery = $this->BuildInsert("ssf_tkt_plu_grades",$array_key,$array_values) ;
								}else{
									$ssfQuery = $this->BuildUpdate("ssf_tkt_plu_grades",$array_key,$array_values) ;
								}
								$db->query($ssfQuery);
								$this->s_log->logIt(" arme el mapping ".$ssfQuery) ;
							}
							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportProducts

	function ImportCategories($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Categorias ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ($frommaster)
				$importname = "mastercateg" ;
			else
				$importname = "categories" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname)>0) ) {

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_categories") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "CategoryExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo categoria") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_category_id"] = "'".$array["categ_id"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_category_level"] = $array["categ_level"] ;
							$array_values["tkt_category_desc"] = "'".$array["categ_name"]."'" ;
							if ($array["categ_parent_id"] != "") 
								$array_values["tkt_category_parent"] = "'".$array["categ_parent_id"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_categories",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_categories",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_categories",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportCategories

	function ImportUom($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Unit of Meassures ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;

			if ($frommaster)
				$importname = "masteruom" ;
			else
				$importname = "unitmeassure" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname)>0) ) {

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_measure_units") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "UomExport" ); //UomExport
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo uom") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_unit_id"] = "'".$array["id"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_unit_desc"] = "'".$array["name"]."'" ;
							$array_values["tkt_unit_fractionable"] = "'".$array["fractionable"]."'" ;
							$array_values["tkt_unit_short_desc"] = "'".$array["abbreviation"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_measure_units",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_measure_units",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_measure_units",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportUom

	function ImportMasterPosTender($deletealldata) {
		$this->s_log->logIt(" Voy a importar PosTender ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"masterpostender")>0) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_tender") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "PosTender" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo PosTender") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_tender_id"] = "'".$array["tkt_tender_id"]."'" ;

							$array_values = array() ;
							$array_values["tkt_tender_desc"] = "'".$array["tkt_tender_desc"]."'" ;
							$array_values["tkt_tender_change"] = "'".$array["tkt_tender_change"]."'" ;
							$array_values["tkt_tender_enabled"] = "'".$array["tkt_tender_enabled"]."'" ;
							$array_values["tkt_tender_type"] = "'".$array["tkt_tender_type"]."'" ;
							$array_values["tkt_tender_default"] = "'".$array["tkt_tender_default"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_tender",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_tender",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_tender",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterPosTender


	function ImportMasterSpeedKey($deletealldata=false) {
		$this->s_log->logIt(" Voy a importar Speed Keys ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;

			if ((strpos($filename,".xml")>0) && (strpos($filename,"masterspeed")>0) ) {

				if ($deletealldata) 
					$this->DeleteAllData("ssf_tkt_catalog"," tkt_catalog_id = 'speedkey_group_id' ") ; //Borro todos los datos

				$has_trx_tags = false ;
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "SpeedKey" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo grupo SpeedKey") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_catalog_id"] = "'speedkey_group_id'" ;
							$array_key["tkt_catalog_code"] = "'".$array["tkt_catalog_code"]."'" ;
							
							$array_values = array() ;
							$array_values["tkt_catalog_value"] = "'".$array["tkt_catalog_value"]."'" ;
							$array_values["tkt_catalog_misc1"] = "'".$array["tkt_catalog_misc1"]."'" ;

							if (!$this->CheckExistence("ssf_tkt_catalog",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_catalog",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_catalog",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);
							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}

						if ($node->hasChildNodes() ) {
								//Elimino las relaciones existentes 
								if ($deletealldata) {
									$ssfQuery = " Delete from ssf_tkt_speed_keys where tkt_speed_id ='".$array_key["tkt_catalog_code"]."' " ;
									$db->query($ssfQuery);
								}
								$arraydetail = array() ;
								$this->readXML($node, &$arraydetail) ;
								$this->AnalizeSpeedKeyDetails($arraydetail) ;
								//$results = print_r($arraydetail, true) ;
								//$this->s_log->logIt(" encontre ".$results) ;
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportTransactions

	function AnalizeSpeedKeyDetails($arraydetail) {
		$db = new clsDBConnection1() ;
		foreach($arraydetail as $lineKey => $linevalue){
			if(is_array($linevalue)){
				switch (trim($lineKey)) {
					case "SpeedKeyDetailLine":
						for ($i=0;$i<count($linevalue);$i++ ) {
							$array_key = array() ;
							$array_key["tkt_speed_id"] = "'".$linevalue[$i]["tkt_speed_id"]."'" ;
							$array_key["tkt_speed_parent_group_id"] = "'".$linevalue[$i]["tkt_speed_parent_group_id"]."'" ;
							$array_key["tkt_speed_order"] = $linevalue[$i]["tkt_speed_order"] ;

							$array_values = array() ;
							$array_values["tkt_speed_group_id"] = "'".$linevalue[$i]["tkt_speed_group_id"]."'" ;
							$array_values["tkt_speed_value"] = "'".$linevalue[$i]["tkt_speed_value"]."'" ;
							$array_values["tkt_speed_param"] = "'".$linevalue[$i]["tkt_speed_param"]."'" ;
					
							if (!$this->CheckExistence("ssf_tkt_speed_keys",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_speed_keys",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_speed_keys",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);
						}		
						break ;
				} // end switch
			} // end if
		} // end foreach 
		$db->Close() ;
	}


	function ImportMasterCustomer($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar Customer ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ($frommaster)
				$importname = "mastercustomer" ;
			else
				$importname = "exportcustomers" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname) !== false) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_customers") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "CustomerExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo CustomerExport") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_cust_id"] = "'".$array["tkt_cust_id"]."'" ;

							$array_values = array() ;
							$array_values["tkt_cust_name"] = "'".$array["tkt_cust_name"]."'" ;
							$array_values["tkt_cust_tax_id"] = "'".$array["tkt_cust_tax_id"]."'" ;
							$array_values["tkt_cust_address"] = "'".$array["tkt_cust_address"]."'" ;
							$array_values["tkt_cust_type"] = "'".$array["tkt_cust_type"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_customers",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_customers",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_customers",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterCustomer


	function ImportMasterCustomerType($deletealldata=false,$frommaster=false) {
		$this->s_log->logIt(" Voy a importar CustomerType ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ($frommaster)
				$importname = "mastercustyp" ;
			else
				$importname = "exportcusttype" ;

			if ((strpos($filename,".xml")>0) && (strpos($filename,$importname) !== false) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_customers_types") ; //Borro todos los datos
				
				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "CusTypeExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo CusTypeExport") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_cust_type_id"] = "'".$array["tkt_cust_type_id"]."'" ;

							$array_values = array() ;
							$array_values["tkt_cust_type_desc"] = "'".$array["tkt_cust_type_desc"]."'" ;
							$array_values["tkt_cust_type_sell"] = "'".$array["tkt_cust_type_sell"]."'" ;
							$array_values["tkt_cust_type_credit"] = "'".$array["tkt_cust_type_credit"]."'" ;
							$array_values["tkt_cust_type_tax_id"] = "'".$array["tkt_cust_type_tax_id"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_customers_types",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_customers_types",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_customers_types",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterCustomerType


	function ImportMasterReceiptFormat($deletealldata) {
		$this->s_log->logIt(" Voy a importar ReceiptFormat ") ;
		$db = new clsDBConnection1() ;
		$_dir = $this->store_path."/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"masterrecf")>0) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_tkt_receipt_format") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "RecFormatExport" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo RecFormatExport") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["tkt_receipt_id"] = "'".$array["tkt_receipt_id"]."'" ;

							$array_values = array() ;
							$array_values["tkt_receipt_layout"] = "'".$array["tkt_receipt_layout"]."'" ;
							
							if (!$this->CheckExistence("ssf_tkt_receipt_format",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_tkt_receipt_format",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_tkt_receipt_format",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterReceiptFormat



	function ImportMasterConfg($deletealldata) {
		$this->s_log->logIt(" Voy a importar ConfGen ") ;
		$db = new clsDBConnection1() ;
		$_dir = "../data/master/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"masterconfg")>0) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_generic_config_values") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "ConfGen" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo ConfGen") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["library"] = "'".$array["library"]."'" ;
							$array_key["id"] = "'".$array["id"]."'" ;
							$array_key["groupname"] = "'".$array["groupname"]."'" ;
							$array_key["device_id"] = "'".$array["device_id"]."'" ;
							$array_key["parameter"] = "'".$array["parameter"]."'" ;
							$array_key["param_value"] = "'".$array["param_value"]."'" ;
							
							if (!$this->CheckExistence("ssf_generic_config_values",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_generic_config_values",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_generic_config_values",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterConfg


	function ImportMasterConfd($deletealldata) {
		$this->s_log->logIt(" Voy a importar ConfDev ") ;
		$db = new clsDBConnection1() ;
		$_dir = "../data/master/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"masterconfd")>0) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("config_values_temp") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "ConfDev" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo ConfDev") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["library"] = "'".$array["library"]."'" ;
							$array_key["id"] = "'".$array["id"]."'" ;
							$array_key["groupname"] = "'".$array["groupname"]."'" ;
							$array_key["device_id"] = "'".$array["device_id"]."'" ;
							$array_key["parameter"] = "'".$array["parameter"]."'" ;
							$array_key["param_value"] = "'".$array["param_value"]."'" ;
							
							if (!$this->CheckExistence("config_values_temp",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("config_values_temp",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("config_values_temp",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterConfd

	function ImportMasterTender($deletealldata) {
		$this->s_log->logIt(" Voy a importar Tender ") ;
		$db = new clsDBConnection1() ;
		$_dir = "../data/master/" ;
		$dh = opendir($_dir) ;
		$has_trx_tags = false ;
		while (false !== ($filename = readdir($dh))) {
			$file = $_dir.$filename;
			if ((strpos($filename,".xml")>0) && (strpos($filename,"mastertender")>0) ) {
				$has_trx_tags = false ;

				if ($deletealldata)
					$this->DeleteAllData("ssf_addin_payments_types") ; //Borro todos los datos

				$doc = new DOMDocument() ;
				$doc->load($file) ;
				$nodes = $doc->getElementsByTagName( "Tender" );
				foreach( $nodes as $node )
				{
					$node = $node->firstChild;
					$this->s_log->logIt(" encontré nodo Tender") ;
					while (!is_null($node))
					{	
						$array = array() ;
						$attributes = $node->attributes;
						if ($node->hasAttributes() ) {
							foreach ($attributes as $index => $domobj)
							{
								$array[$domobj->name] = $domobj->value;
							}
							$has_trx_tags = true ;

							$array_key = array() ;
							$array_key["pay_type_id"] = "'".$array["pay_type_id"]."'" ;

							$array_values = array() ;
							$array_values["pay_type_desc"] = "'".$array["pay_type_desc"]."'" ;
							$array_values["pay_type_group"] = "'".$array["pay_type_group"]."'" ;
							$array_values["pay_type_console_enabled"] = $array["pay_type_console_enabled"] ;
							$array_values["pay_type_system_pay_type"] = $array["pay_type_system_pay_type"] ;
							
							if (!$this->CheckExistence("ssf_addin_payments_types",$array_key, & $db)) {
								$ssfQuery = $this->BuildInsert("ssf_addin_payments_types",$array_key,$array_values) ;
							}else{
								$ssfQuery = $this->BuildUpdate("ssf_addin_payments_types",$array_key,$array_values) ;
							}
							$db->query($ssfQuery);

							//print_r($array)."\r\n"; // Acá tengo los datos para insertar ...
						}
						$node = $node->nextSibling;
					} // end while
				}	// en for each
				$this->s_log->logIt(" Se importó archivo ".$file) ;
				$this->DeleteFile($file) ;
			} // end IF del .xml > 0
		}	// end While
		closedir($dh);
		$db->Close() ;
	} // End ImportMasterTender


	function CheckExistence($table, $array_of_keys, &$db) {
		
		$where = "" ;
		foreach ($array_of_keys as $key => $value) {
			if ($where == "") 
				$where = " where ".$key." = ".$value ;
			else
				$where .= " and ".$key." = ".$value ;
		}
		$ssfQuery = " select 1 from ".$table." ".$where ;
		//$this->s_log->logIt(" arme la consulta ".$ssfQuery) ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) 
			return true ;
		else
			return false ;
	}

	function DeleteAllData($table,$where="") {
		$ssfQuery = " delete from ".$table ; 
		if ($where != "" ) 
			$ssfQuery .= " where ".$where ;
		$db = new clsDBConnection1();
		$this->s_log->logIt(" ejecuto DELETE ".$ssfQuery) ;
		$db->query($ssfQuery);
		$db->close(); 
	}

	function BuildInsert($table, $array_of_keys, $array_of_values) {
		
		$_insert = "" ;
		$_values = "" ;
		foreach ($array_of_keys as $key => $value) {
			if ($value != "''") {
				$_insert .= $key.","  ;
				$_values .= $value."," ;
			}
		}
		foreach ($array_of_values as $key => $value) {
			if ($value != "''") {
				$_insert .= $key."," ;
				$_values .= $value."," ;
			}
		}

		$_insert = substr($_insert,0,strlen($_insert)-1) ;
		$_values = substr($_values,0,strlen($_values)-1) ;

		$ssfQuery = " insert into ".$table."( ".$_insert.") values (".$_values." )" ;
		return $ssfQuery  ;
	}
	
	function BuildUpdate($table, $array_of_keys, $array_of_values) {
		
		$_set = "" ;
		$where = "" ;
		foreach ($array_of_keys as $key => $value) {
			if ($where == "") 
				$where = " where ".$key." = ".$value ;
			else
				$where .= " and ".$key." = ".$value ;
		}
		foreach ($array_of_values as $key => $value) {
			if ($value == "''" ) 
				$value = "NULL" ;

			if ($_set == "") 
				$_set = " set ".$key." = ".$value ;
			else 
				$_set .= " , ".$key." = ".$value ;
		}

		$ssfQuery = " update ".$table." ".$_set." ".$where ;
		return $ssfQuery  ;
	}

	function readXml($domnode, &$array)
	{
       $array_ptr = &$array;
       $domnode = $domnode->firstChild;
       while (!is_null($domnode))
       {
		   $array_ptr = &$array[$domnode->nodeName][];
		   if ($domnode->hasAttributes() )
		   {
		           $attributes = $domnode->attributes;
		           foreach ($attributes as $index => $domobj)
		           {
		                 $array_ptr[$domobj->name] = $domobj->value;
						 //$this->s_log->logIt(" name ".$domobj->name." value ".$domobj->value) ;
		           }
		   }
		$domnode = $domnode->nextSibling;
       }
	}


}



?>