<?php

CCSetSession("ssf_socket_address", "localhost");
CCSetSession("ssf_socket_port", "3011");

class SSFRouterClient {

 	function OpenSocket($p_host="", $p_port="") 
	{
		if( $p_host == "" )
			$p_host = CCGetSession("ssf_socket_address");
		if( $p_port == "")
			$p_port = CCGetSession("ssf_socket_port");
		$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP)  ;
		if ($socket < 0) {
			return false ;
		} 
		$result = false ;		
		$result = socket_connect($socket, $p_host, $p_port) ;
		if (!$result) {
			return false ;
		} 
		$_SESSION['ssf_socket'] = $socket ;
		return true ;
	}
	
	function CloseSocket() 
	{
		$socket = $_SESSION['ssf_socket'];
		socket_close($socket);
	}
	
	function SSFCrypt ($inp, $inplen, $key, $keylen ) {
	  	$sbox = array_fill(0,257,"0");
	  	$sbox2 = array_fill(0,257,"0");
	  	$i = 0 ; $j = 0 ; $t = 0 ; $x = 0 ;
		$temp = "" ; $k = "" ;
		//initialize sbox i
		for ($i = 0; $i < 256; $i++) 
			$sbox[$i] = $i ;
		//initialize the sbox2 with user key			
		for ($i = 0; $i < 256; $i++) {
			if ($j == $keylen)	
				$j = 0 ;
			$sbox2[$i] = ord($key{$j}) ;
			$j = $j + 1 ;
		}		
		$j = 0 ;
		for( $i = 0; $i < 256; $i++ )
		{
			$j = ( $j + $sbox[$i] + $sbox2[$i] ) % 256 ;
			$temp =  $sbox[$i] ;                    
			$sbox[$i] = $sbox[$j] ;
			$sbox[$j] = $temp ;
		}
	  	$i = 0 ;
	  	$j = 0 ;
		for( $x = 0; $x < $inplen; $x++ )
		{
			//increment i
			$i = ($i + 1) % 256;
			//increment j
			$j = ($j + $sbox[$i] ) % 256;
	
			//Scramble SBox #1 further so encryption routine will
			//will repeat itself at great interval
			$temp = $sbox[$i];
			$sbox[$i] = $sbox[$j] ;
			$sbox[$j] = $temp;
	
			//Get ready to create pseudo random  byte for encryption key
			$t = ( $sbox[$i] + $sbox[$j] ) %  256 ;
	
			//get the random byte
			$k = $sbox[$t];
	
			//xor with the data and done
			$inp[$x] = chr(  ord($inp[$x]) ^ $k  );
		}	  	
	  	return $inp;
	}

	function SendMessage($p_msg_type,$p_msg_header,$p_msg_parameters)
	{
		$socket = $_SESSION['ssf_socket'];
		socket_getsockname($socket, $address, $myporthome );

		$body = $p_msg_type."|".$p_msg_header."|||".$p_msg_parameters."|";
		$count = strlen($body) + 1 ;
		$header =  str_pad($count,5,"0",STR_PAD_LEFT)."|1|" ;
		$this->porthome = str_pad($myporthome, 6,"0",STR_PAD_LEFT) ;
		
		$key = $header.$this->porthome ;
		$body = $this->SSFCrypt($body, strlen($body), $key, strlen($key)  ) ;
		$message = $header.$body."^" ;
		socket_write($socket, $message, strlen($message));
		return true;
	}
	
	function ReadMessage($p_seconds_timeout=5, & $p_message="")
	{
		$socket = $_SESSION['ssf_socket'] ;	
		socket_set_option($socket,SOL_SOCKET, SO_RCVTIMEO, array("sec"=>$p_seconds_timeout,"usec"=>0 ));
		usleep (20000); //20 miliseconds
		$header = socket_read($socket, 8, PHP_BINARY_READ);
		if( $header == "" || $header == FALSE) {
			$p_message = "ERROR READING HEADER" ;
			return false;
		}
		$key = $header.$this->porthome;
		$bodyLen = substr($header,0,5) / 1;
		$body = socket_read($socket, $bodyLen, PHP_BINARY_READ);
		if( strlen($body) != $bodyLen ) {
			$p_message = "ERROR READING BODY" ;
			return false;
		}
		$body = $this->SSFCrypt($body, $bodyLen - 1,$key, strlen($key));
		$pos = strpos($body,"|",0);
		if( $pos === false )
			return false;
		$this->lastReadMessageType = substr($body,0,$pos);
		$pos++;

		$newpos = strpos($body,"|",$pos);
		if( $newpos === false ) {
			$p_message = "ERROR READING NEWPOS1" ;
			return false;
		}
		$this->lastReadMessageHeader = substr($body, $pos, $newpos-$pos);
		$pos = $newpos+1;

		$newpos = strpos($body,"|",$pos);
		if( $newpos === false ) {
			$p_message = "ERROR READING NEWPOS2" ;
			return false;
		}
		$this->lastReadMessageDestination = substr($body, $pos, $newpos-$pos);
		$pos = $newpos+1;
		
		$newpos = strpos($body,"|",$pos);
		if( $newpos === false ) {
			$p_message = "ERROR READING NEWPOS3" ;
			return false;
		}
		$this->lastReadMessageOrigin = substr($body, $pos, $newpos-$pos);
		$pos = $newpos+1;

		$this->lastReadMessageParameters = substr($body,$pos-1); // YES, I LEAVE THE INITIAL "|" ON PURPOSE
		return true;
	}
	
	function getParameterValue($p_parameterName)
	{
		$pos = strpos($this->lastReadMessageParameters,"|".$p_parameterName."=");
		if( $pos === false )
			return "";
		$finalPos = strpos($this->lastReadMessageParameters,"|",$pos+1);
		if( $finalPos === false )
			return "";
		return substr($this->lastReadMessageParameters,$pos+strlen($p_parameterName)+2,($finalPos-($pos+2))-strlen($p_parameterName));
	}

	function CheckConfiguration() 
	{
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return 	$p_message ;
		}
		if( !$this->SendMessage("POST", "REQ_CHECK_NEW_CONFIG", "") )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}
	
	function ApplyConfiguration()
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return 	$p_message ;
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		if( !$this->SendMessage("POST", "REQ_APPLY_NEW_CONFIG", "") )
		{
			$this->CloseSocket();
			return "ERROR SENDING MESSAGE";
		}
		if( !$this->ReadMessage(30, $p_message) )
		{
			$this->CloseSocket();
			return "ERROR READING MESSAGE ".$p_message ;
		}
		$this->CloseSocket();
		if( $this->lastReadMessageHeader == "RES_SECU_ACCESS_DENIED" )
		{
			return "ssf_access_denied";
		}
		return $this->getParameterValue("MSG");
	}
	
	function sendLogin($p_user, $p_password, & $p_message)
	{
		$keypass  = str_pad($p_user, 20," ",STR_PAD_RIGHT);
		$password = str_pad($p_password, 25," ",STR_PAD_RIGHT);
		$passcrypt = $this->SSFCrypt($password, strlen($password), $keypass, strlen($keypass));
		$passcrypt = strtoupper(bin2hex($passcrypt)) ;
		if( !$this->SendMessage("POST", "REQ_SECU_LOGIN", "US=".$p_user."|PW=".$passcrypt."|") )
		{
			$p_message = "ssf_communication_error";
			return false ;
		}
		if( !$this->ReadMessage(5) )
		{
			$p_message = "ssf_communication_error";
			return 	false ;
		}
		if( $this->getParameterValue("ST") == "OK" )
		{
			$p_message = "";
			return true;
		}
		if($this->getParameterValue("MSG") == "")
			$p_message = "ssf_access_denied";
		else
			$p_message = $this->getParameterValue("MSG");
		return false;
	}

	function doLogin($p_user, $p_password, & $p_message)
	{
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return false;
		}
		if( !$this->sendLogin($p_user, $p_password, $p_message) )
		{
			$this->CloseSocket();
			return false;
		}
		CCSetSession("ssf_user_logged_id",$p_user);
		CCSetSession("ssf_user_logged_pwd",$p_password);
		return true;
	}

	function sendGenericConfigReload()
	{
		if( !$this->OpenSocket() )
			return "ssf_communication_error";
		if( !$this->SendMessage("POST", "REQ_APPLY_GRAL_NEW_CONFIG", "") )
		{
			$this->CloseSocket();
			return "ssf_communication_error";
		}
		$this->CloseSocket();
		return true;
	}

	function sendSecurityReload()
	{
		if( !$this->OpenSocket() )
			return "ssf_communication_error";
		if( !$this->SendMessage("POST", "REQ_SECU_REFRESH", "") )
		{
			$this->CloseSocket();
			return "ssf_communication_error";
		}
		$this->CloseSocket();
		return true;
	}

	function RealoadPriceChangeTable()
	{
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ERROR" ;
		}
		if( !$this->SendMessage("POST", "REQ_PRICES_REFRESH_PRICE_CHANGE_TBL", "") )
		{	
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}

	function SendReqPumpTest($sale_id, $pump_id, $parameters)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		$complete_param = "SA=".$sale_id."|AT=".$parameters."|PM=".$pump_id ;
		if( !$this->SendMessage("POST", "REQ_PAYMENT_PUMP_TEST", $complete_param) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		if( $this->lastReadMessageHeader == "RES_SECU_ACCESS_DENIED" )
		{
			return "ssf_access_denied";
		}
		return $this->getParameterValue("MSG");
	}


	function SendReqPasswordChange($user_id, $old_psw, $new_psw)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		
		$keypass  = str_pad($user_id, 20," ",STR_PAD_RIGHT);

		// old password
		$password = str_pad($old_psw, 25," ",STR_PAD_RIGHT);
		$passcrypt = $this->SSFCrypt($password, strlen($password), $keypass, strlen($keypass));
		$passcrypt = strtoupper(bin2hex($passcrypt)) ;
		$old_psw = $passcrypt ;

		// new password
		$password = str_pad($new_psw, 25," ",STR_PAD_RIGHT);
		$passcrypt = $this->SSFCrypt($password, strlen($password), $keypass, strlen($keypass));
		$passcrypt = strtoupper(bin2hex($passcrypt)) ;
		$new_psw = $passcrypt ;


		$complete_param = "US=".$user_id."|OP=".$old_psw."|NP=".$new_psw ;
		if( !$this->SendMessage("POST", "REQ_SECU_PSWD_CHNG", $complete_param) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("ST") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function SendReqBlankPassword($user_id)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_SECU_PSWD_BLANK", "US=".$user_id) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("ST") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function SendReqClosePeriod($period_type)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_SHIFT_CLOSE_PERIOD", "PT=".$period_type) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("ST") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function RefreshGeneralInformation() 
	{
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return 	$p_message ;
		}
		if( !$this->SendMessage("POST", "REQ_REFRESH_GENERAL_INFORMATION", "") )
		{
			$this->CloseSocket();
			return "ERROR SENDING MESSAGE";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR READING MESSAGE";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}

	function RealoadTankConvertionTable()
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->SendMessage("POST", "REQ_TANKS_TABLE_CALCULATION", "") )
		{
			$this->CloseSocket();
			return "ERROR";
		}

		return "OK" ;
	}


	function SendReqManualReadings($parameters)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_TANKS_MANUAL_READINGS", $parameters) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("RC") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function SendReqAccumTransactions($parameters)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_TANKS_ACCUMULATE_TRANSACTIONS", $parameters) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("ST") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}


	function SendReqTanksDelivery($parameters)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_TANKS_DELIVERY", $parameters) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("RC") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}



	function SendReqPumpStatus($pump_id)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		$pump_id =  str_pad($pump_id,3,"0",STR_PAD_LEFT) ;	
		if( !$this->SendMessage("POST", "REQ_PUMP_STATUS_ID_".$pump_id, "") )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		
		if( !$this->ReadMessage(20,$p_message) )
		{
			$this->CloseSocket();
			//return $p_message ;
			return "ERROR";
		}
		return	$this->lastReadMessageParameters ;
	}

	function SendReqPumpChangeStatus($pump_id,$status)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		$pump_id =  str_pad($pump_id,3,"0",STR_PAD_LEFT) ;	
		if ( $status == "OPEN")
			$send_message = "REQ_PUMP_OPEN_ID_".$pump_id ;
		else
			$send_message = "REQ_PUMP_CLOSE_ID_".$pump_id ;

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", $send_message, "") )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		
		return	0 ;
	}

	function SendGenericMessage($send_message, $parameters, $login=false)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if ($login) {
			if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
			{
				$this->CloseSocket();
				return $message;
			}
		}
		if( !$this->SendMessage("POST", $send_message, $parameters) )
		{
			$this->CloseSocket();
			return "ERROR ENVIANDO";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR LEYENDO";
		}

		return $this->lastReadMessageParameters  ;
	}

	function getLicenseField($p_strSection, $p_strField)
	{
		$strFieldValue = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return $strFieldValue;
		}
		$strParameters = "SEC=".$p_strSection."|FLD=".$p_strField;
		if( !$this->SendMessage("POST", "REQ_LICENSE_FIELD", $strParameters) )
		{
			$this->CloseSocket();
			return $strFieldValue;
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return $strFieldValue;
		}
		if( $this->getParameterValue("ST") == "OK" ) {
			$strFieldValue = $this->getParameterValue("VAL");
		}
		return $strFieldValue;
	}
	
	function SendReqGetReceipt($tran_id)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->SendMessage("POST", "REQ_TKT_TRX_GET_RECEIPT", "TID=".$tran_id) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}

		if( $this->getParameterValue("RC") != "OK" ) 
			$p_message = $this->getParameterValue("MSG")  ;
		 else 
		 	$p_message = $this->getParameterValue("RCPT")  ;
		
		return $p_message ;
	}

	function ApplyPOSConfiguration()
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return 	$p_message ;
		}
		if( !$this->SendMessage("POST", "REQ_TKT_RELOAD_DATA", "") )
		{
			$this->CloseSocket();
			return "ERROR SENDING MESSAGE";
		}
		$this->CloseSocket();
		return "OK" ;
	}

	function SendReqTktClosePeriod($period_type, $period_group)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}

		$period_param = "" ;
		if ($period_group != "" )
			$period_param = "|PGR=".$period_group ;		

		if( !$this->SendMessage("POST", "REQ_TKT_CLOSE_PERIOD", "PT=".$period_type.$period_param) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("RC") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG"); 
		
		return $p_message ;
	}

	function SendReqPumpPriceLevelChange($pump_id, $price_level)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		$pump_id =  str_pad($pump_id,3,"0",STR_PAD_LEFT) ;	
		$msg = "REQ_PUMP_SET_PRICE_LEVEL_ID_".$pump_id;
		if( !$this->SendMessage("POST", $msg, "LV=".$price_level) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
//		if( !$this->ReadMessage(20) )
//		{
//			$this->CloseSocket();
//			return "ERROR";
//		}
//		if( $this->getParameterValue("RC") == "OK" )
			$p_message = "OK";
//		else 
//		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function SendReqTktPrintReceipt($trx_number)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		$msg = "REQ_TKT_TRX_PRINT_RECEIPT" ;
		if( !$this->SendMessage("POST", $msg, "TID=".$trx_number) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(20) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		if( $this->getParameterValue("RC") == "OK" )
			$p_message = "OK";
		else 
		 	$p_message = $this->getParameterValue("MSG");

		return $p_message ;
	}

	function RealoadLogBookTable()
	{
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ERROR" ;
		}
		if( !$this->SendMessage("POST", "REQ_LOGBOOK_LOAD_EVENTS_CONFIG", "") )
		{	
			$this->CloseSocket();
			return "ERROR";
		}
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}

	function SendReqTankChangeStatus($tank_id,$status)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		$tank_id =  str_pad($tank_id,3,"0",STR_PAD_LEFT) ;	
		if ( $status == "OPEN")
			$send_message = "REQ_TANK_OPEN_ID_".$tank_id ;
		else
			$send_message = "REQ_TANK_CLOSE_ID_".$tank_id ;

		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", $send_message, "") )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}

	function SendReqConvolClosePeriod($close_id)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_CTRLVOL_CLOSE_PERIOD", "CID=".$close_id) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}

	function SendReqConvolSendFiles($close_id,$files_parameter)
	{
		$message = "";
		if( !$this->OpenSocket() )
		{
			$p_message = "ssf_communication_error";
			return "ssf_communication_error";
		}
		if( !$this->sendLogin($_SESSION['ssf_user_logged_id'],$_SESSION['ssf_user_logged_pwd'],$message))
		{
			$this->CloseSocket();
			return $message;
		}
		
		if( !$this->SendMessage("POST", "REQ_CTRLVOL_SEND_FILES", "CID=".$close_id.$files_parameter ) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		
		if( !$this->ReadMessage(10) )
		{
			$this->CloseSocket();
			return "ERROR";
		}
		$this->CloseSocket();
		return $this->getParameterValue("MSG");
	}


}

?>
