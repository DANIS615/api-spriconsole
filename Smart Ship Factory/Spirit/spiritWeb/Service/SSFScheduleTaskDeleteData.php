<?php

/////////////////////////////////////////////////
////////// CLASE Delete Data ////////////////////
////////////////////////////////////////////////
include_once(RelativePath."/Myfunctions.php");


class DeleteData extends CommonSchedule {
	
	function DeleteDataProcess($process="",$date_from="") {	   
		if ($process != "") {
			$this->s_log->logIt("/////////////////////////////////////") ;
			$this->s_log->logIt("Proceso Manual - Eliminación Tablas ") ;
			$this->s_log->logIt("/////////////////////////////////////") ;
			$this->CallDeleteProcess($process,$date_from) ;
		} else {
			$this->s_log->logIt("///////////////////////////////////////") ;
			$this->s_log->logIt("Proceso Automático - Eliminación Tablas ") ;
			$this->s_log->logIt("///////////////////////////////////////") ;
			$this->WalkDeleteConfiguration() ;
		}
	}


function WalkDeleteConfiguration() {
		$Error = false ;
		$db = new clsDBConnection1();

		$ssfQuery = " Select * from ssf_delete_schedule " ;
		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
			$Error = true ;
			return false ;
		} 
		$result = $db->next_record(); 
		while ($result) {
			$process =  $db->f("del_id") ;
			$del_days =  $db->f("del_days") ;
			$date_from = DateAdd($del_days * (-1),date()) ;
			$this->CallDeleteProcess($process,$date_from) ;
			$result = $db->next_record(); 
		}
		$db->Close() ;
}


	function CallDeleteProcess($process,$date_from) {
		$str_file_export = "" ;
		$action = "" ;
		$args = "" ;
		switch ($process) {
			case ("PUMPSALES"): //Spirit Transactions
				$action = "DeletePumpSales" ;
				break ;
			case ("PRICES"):
				$action = "DeletePumpPrices" ;
				break ;
			case ("POSSALES"):
				$action = "DeletePosSales" ;
				break ;
			case ("POSPRICES"):
				$action = "DeletePosPrices" ;
				break ;
			case ("TANKSTOCK"):
				$action = "DeleteTankStock" ;
				break ;
		}
		$args1 = $date_from ;
		call_user_func(array(&$this, $action), $args1);
	}



	function DeletePumpSales($date_from) {
		$Error = false ;
		$db = new clsDBConnection1();

		$this->s_log->logIt(" voy a eliminar datos de PumpSales anteriores a la fecha ".$date_from) ;
		
		$this->s_log->logIt(" Elimino ssf_addin_payments_data ") ;
		$ssfQuery = " delete from ssf_addin_payments_data " ;
		$ssfQuery .= " where pay_sale_id in (select sale_id from ssf_pump_sales " ; 
		$ssfQuery .= " where end_date <= '".$date_from."' ) " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
			$Error = true ;
		} else {
			$this->s_log->logIt(" Se eliminaron ".$db->affected_rows()." registros de ssf_addin_payments_data " ) ;
		}
		
		if (!$Error) {
			$this->s_log->logIt(" Elimino ssf_pump_sales ") ;
			$ssfQuery = " delete from ssf_pump_sales " ;
			$ssfQuery .= " where end_date <= '".$date_from."' " ;

			$db->query($ssfQuery);
			if ($db->Errors->Count() > 0 ) {
				$this->s_log->logIt($db->Error,"E") ;
			} else {
				$this->s_log->logIt(" Se eliminaron ".$db->affected_rows()." registros de ssf_pump_sales " ) ;
			}
		}
		$db->Close() ;
	} // End DeletePumpSales


	function DeletePumpPrices($date_from) {
		$Error = false ;
		$db = new clsDBConnection1();

		$this->s_log->logIt(" voy a eliminar datos de PriceChange anteriores a la fecha ".$date_from) ;
		
		$this->s_log->logIt(" Elimino ssf_addin_prices_change_detail ") ;
		$ssfQuery = " delete from ssf_addin_prices_change_detail " ;
		$ssfQuery .= " where price_change_id in (select price_change_id from ssf_addin_prices_change " ; 
		$ssfQuery .= " where application_date <= '".$date_from."' ) " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
			$Error = true ;
		} else {
			$this->s_log->logIt(" Se eliminaron ".$db->affected_rows()." registros de ssf_addin_prices_change_detail " ) ;
		}
		
		if (!$Error) {
			$this->s_log->logIt(" Elimino ssf_addin_prices_change ") ;
			$ssfQuery = " delete from ssf_addin_prices_change " ;
			$ssfQuery .= " where application_date <= '".$date_from."' " ;

			$db->query($ssfQuery);
			if ($db->Errors->Count() > 0 ) {
				$this->s_log->logIt($db->Error,"E") ;
			} else {
				$this->s_log->logIt(" Se eliminaron ".$db->affected_rows()." registros de ssf_addin_prices_change " ) ;
			}
		}
		$db->Close() ;
	} // End DeletePumpPrices

	function DeletePosSales($date_from) {
		$Error = false ;
		$db = new clsDBConnection1();

		$this->s_log->logIt("Voy a eliminar datos de PosSales anteriores a la fecha ".$date_from) ;
		
		$this->s_log->logIt("	Elimino ssf_tkt_trx_tender ") ;
		$ssfQuery = " delete from ssf_tkt_trx_tender " ;
		$ssfQuery .= " where tkt_trans_id in (select tkt_trans_id from ssf_tkt_trx_header " ; 
		$ssfQuery .= " where tkt_date <= '".$date_from."' ) " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
			$Error = true ;
		} else {
			$this->s_log->logIt("		Se eliminaron ".$db->affected_rows()." registros de ssf_tkt_trx_tender " ) ;
		}
		
		if (!$Error) {
			$this->s_log->logIt("	Elimino ssf_tkt_trx_tax ") ;
			$ssfQuery = " delete from ssf_tkt_trx_tax " ;
			$ssfQuery .= " where tkt_trans_id in (select tkt_trans_id from ssf_tkt_trx_header " ; 
			$ssfQuery .= " where tkt_date <= '".$date_from."' ) " ;

			$db->query($ssfQuery);
			if ($db->Errors->Count() > 0 ) {
				$this->s_log->logIt($db->Error,"E") ;
				$Error = true ;
			} else {
				$this->s_log->logIt("		Se eliminaron ".$db->affected_rows()." registros de ssf_tkt_trx_tax " ) ;
			}
		}

		if (!$Error) {
			$this->s_log->logIt("	Elimino ssf_tkt_trx_detail ") ;
			$ssfQuery = " delete from ssf_tkt_trx_detail " ;
			$ssfQuery .= " where tkt_trans_id in (select tkt_trans_id from ssf_tkt_trx_header " ; 
			$ssfQuery .= " where tkt_date <= '".$date_from."' ) " ;

			$db->query($ssfQuery);
			if ($db->Errors->Count() > 0 ) {
				$this->s_log->logIt($db->Error,"E") ;
				$Error = true ;
			} else {
				$this->s_log->logIt("		Se eliminaron ".$db->affected_rows()." registros de ssf_tkt_trx_detail " ) ;
			}
		}

		if (!$Error) {
			$this->s_log->logIt("	Elimino ssf_tkt_trx_header ") ;
			$ssfQuery = " delete from ssf_tkt_trx_header " ;
			$ssfQuery .= " where tkt_date <= '".$date_from."'" ;

			$db->query($ssfQuery);
			if ($db->Errors->Count() > 0 ) {
				$this->s_log->logIt($db->Error,"E") ;
			} else {
				$this->s_log->logIt("		Se eliminaron ".$db->affected_rows()." registros de ssf_tkt_trx_header " ) ;
			}
		}

		$db->Close() ;
	} // End DeletePosSales


	function DeletePosPrices($date_from) {
		$db = new clsDBConnection1();

		$this->s_log->logIt("Voy a eliminar datos de PosPriceChange anteriores a la fecha ".$date_from) ;
		
		$this->s_log->logIt("	Elimino ssf_tkt_prices ") ;
		$ssfQuery = " delete from ssf_tkt_prices " ;
		$ssfQuery .= " where tkt_price_date <= '".$date_from."' " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
		} else {
			$this->s_log->logIt("	Se eliminaron ".$db->affected_rows()." registros de ssf_tkt_prices " ) ;
		}
		$db->Close() ;
	} // End DeletePosPrices


	function DeleteTankStock($date_from) {
		$db = new clsDBConnection1();

		$this->s_log->logIt("Voy a eliminar datos de TankStock anteriores a la fecha ".$date_from) ;
		
		$this->s_log->logIt("	Elimino ssf_tank_day_diff ") ;
		$ssfQuery = " delete from ssf_tank_day_diff " ;
		$ssfQuery .= " where diff_date <= '".$date_from."' " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
		} else {
			$this->s_log->logIt("	Se eliminaron ".$db->affected_rows()." registros de ssf_tank_day_diff " ) ;
		}

		$this->s_log->logIt("	Elimino ssf_tank_day_sales ") ;
		$ssfQuery = " delete from ssf_tank_day_sales " ;
		$ssfQuery .= " where sales_date <= '".$date_from."' " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
		} else {
			$this->s_log->logIt("	Se eliminaron ".$db->affected_rows()." registros de ssf_tank_day_sales " ) ;
		}

		$this->s_log->logIt("	Elimino ssf_tank_deliveries ") ;
		$ssfQuery = " delete from ssf_tank_deliveries " ;
		$ssfQuery .= " where date_end <= '".$date_from."' " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
		} else {
			$this->s_log->logIt("	Se eliminaron ".$db->affected_rows()." registros de ssf_tank_deliveries " ) ;
		}

		$this->s_log->logIt("	Elimino ssf_tank_manual_readings ") ;
		$ssfQuery = " delete from ssf_tank_manual_readings " ;
		$ssfQuery .= " where date_read <= '".$date_from."' " ;

		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
		} else {
			$this->s_log->logIt("	Se eliminaron ".$db->affected_rows()." registros de ssf_tank_manual_readings " ) ;
		}

		$db->Close() ;
	} // End DeleteTankStock






}

?>