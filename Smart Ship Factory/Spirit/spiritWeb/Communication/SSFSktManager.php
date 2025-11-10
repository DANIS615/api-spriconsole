<?php
    CCSetSession("ssf_socket_address", "localhost");
    CCSetSession("ssf_socket_port", "3011");
class SktManager {
		
		var $porthome = "" ;
     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
     
 	function OpenSocket($usermsg = true) {
  	 	global $CCSLocales ;
		//$socket = $_SESSION['ssf_socket'] ;
		if ($usermsg==true)
			echo ">> ".$CCSLocales->GetText("SOCKET_CCC")."... <br /> " ;
		$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP)  ;

		if ($socket < 0) {
			echo $CCSLocales->GetText("SOCKET_SCF")." reason: " . socket_strerror($socket) . " <br /> ";
			return false ;
		} else {
			//echo "OK.\n";
		}  	     
		// echo "Attempting to connect to ".$_SESSION['ssf_socket_address']." on port ".$_SESSION['ssf_socket_port']."...";
		$result = false ;		
		//socket_set_nonblock($socket) ;
		$result = socket_connect($socket, $_SESSION['ssf_socket_address'],$_SESSION['ssf_socket_port']) ;
		// echo " el resultado es $result " ;
		if (!$result) {
			echo $CCSLocales->GetText("SOCKET_SCOF")."  Reason: ($result) " . socket_strerror(socket_last_error()) . " <br />";
			return false ;
		} else {
			// echo "OK - Connected .\n";
		}
		$_SESSION['ssf_socket'] = $socket ;
		return true ;
	}	

     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
	
	function CloseSocket($usermsg = true) {
		global $CCSLocales ;
		$socket = $_SESSION['ssf_socket'] ;
		if ($usermsg==true)
			echo ">> ".$CCSLocales->GetText("SOCKET_CLO")."... <br /> " ;
		socket_close($socket);
		// echo "OK.\n\n";
	}

     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
	function CheckLogin($user, $pass) {
    	if ($this->OpenSocket(false)) {
			$pass = str_pad($pass, 25," ",STR_PAD_RIGHT) ;
			//$pass = "MINIMEINFINITERINGTONES  " ;
    		$res = $this->SendLoginMsg("POST|REQ_SECU_LOGIN|||","POST|RES_SECU_LOGIN", " Chequear Login",$user,$pass) ;
    		$this->CloseSocket(false) ;	  
			return $res;
		}	  		
	}

	function SendLoginMsg($message,$messagetoread, $messageforuser,$user,$pass) {
		$socket = $_SESSION['ssf_socket'] ;
		socket_getsockname($socket, $address, $myporthome ) ;
		//echo " Local Address: $address port $porthome" ;
		$keypass = str_pad($user, 20," ",STR_PAD_RIGHT) ;
		$passcrypt = $this->SSFCrypt($pass, strlen($pass), $keypass, strlen($keypass)  ) ;
		//echo " la clave es ".$pass ;
		//echo " El usuario es ".$keypass." y encriptada es ".$passcrypt." la long de keypass es ".strlen($keypass) ;
		//echo " hexa usando toda la salida ".bin2hex($passcrypt)."</br>" ;
		$passcrypt = strtoupper(bin2hex($passcrypt)) ;
		$message .= "US=".$user."|PW=".$passcrypt."|" ;
		$body = $message ;
		$count = strlen($body) + 1 ;
		$header =  str_pad($count,5,"0",STR_PAD_LEFT)."|1|" ;
		$this->porthome = str_pad($myporthome, 6,"0",STR_PAD_LEFT) ;
		$key = $header.$this->porthome ;
		//echo " Mensaje a mandar ".$header.$body ;
		$body = $this->SSFCrypt($body, strlen($body), $key, strlen($key)  ) ;
		//echo " **BODY encriptado** ".$body ;
		$in = $header.$body."^" ;
		// echo "***********".count_chars($in,0);
		//echo ">> Sending request $messageforuser... <br />";
		socket_write($socket, $in, strlen($in));
		//echo ">> Request Accepted...<br />";
		//echo ">> Reading answer for the message...<br />";
		if ($this->ReadSocket ($messagetoread, true) )
			//echo "OK. <br />";
			return true ;
		else
			//echo "<q> Fallo en la respuesta esperada </q><br />";
			return false ;
	}
	

     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////		

	function CheckConfiguration() {
    	if ($this->OpenSocket()) {
			$this->SendSubsribeMessage("RES_CHECK_NEW_CONFIG") ;
    		$this->SendMessage("POST|REQ_CHECK_NEW_CONFIG|||","POST|RES_CHECK_NEW_CONFIG", " Chequear Configuración") ;
    		$this->CloseSocket() ;	  
		}	  		
	}	
     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
		
	function ApplyConfiguration() {
    	if ($this->OpenSocket()) {
			$this->SendSubsribeMessage("RES_APPLY_NEW_CONFIG") ;
    		$this->SendMessage("POST|REQ_APPLY_NEW_CONFIG|||","POST|RES_APPLY_NEW_CONFIG", " Aplicar Configuración") ;
    		$this->CloseSocket() ;	  
		}	  		
	}	
	
     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
	
	function SendMessage($message,$messagetoread, $messageforuser) {
		global $CCSLocales ;
		$socket = $_SESSION['ssf_socket'] ;
		socket_getsockname($socket, $address, $myporthome ) ;
		//echo " Local Address: $address port $porthome" ;

		$body = $message ;
		$count = strlen($body) + 1 ;
		$header =  str_pad($count,5,"0",STR_PAD_LEFT)."|1|" ;
		$this->porthome = str_pad($myporthome, 6,"0",STR_PAD_LEFT) ;
		
		$key = $header.$this->porthome ;
			//echo " El puerto formateado es ".$this->porthome ;
		$body = $this->SSFCrypt($body, strlen($body), $key, strlen($key)  ) ;
		//echo " **BODY** ".$body ;
		$in = $header.$body."^" ;
		// echo "***********".count_chars($in,0);
		echo ">> ".$CCSLocales->GetText("SOCKET_SR").$messageforuser."... <br /> " ;
		//echo ">> Sending request $messageforuser... <br />";
		socket_write($socket, $in, strlen($in));
		echo ">> ".$CCSLocales->GetText("SOCKET_RA")."... <br /> " ;
		//echo ">> Request Accepted...<br />";
		echo ">> ".$CCSLocales->GetText("SOCKET_RAFM")."... <br /> " ;
		//echo ">> Reading answer for the message...<br />";
		if ($this->ReadSocket ($messagetoread) )
			echo "OK. <br />";
		else
			echo "<q> ".$CCSLocales->GetText("SOCKET_AF"). " </q><br />";
	}
	
	function ReadSocket ($MessageToReceive, $login=false ) {
		global $CCSLocales ;
		$msgOK = "RC=OK" ;
		if ($login==true) 
			$msgOK = "ST=OK" ;
		$socket = $_SESSION['ssf_socket'] ;	
		socket_set_option($socket,SOL_SOCKET, SO_RCVTIMEO, array("sec"=>5,"usec"=>0 ));
		sleep (2);
		$out = socket_read($socket, 8, PHP_BINARY_READ) ;
		$asw_header = $out.$this->porthome ;
		$len = substr($asw_header,0,5) / 1 ;
		// echo "Out: $asw_header Longitud: $len" ;
		$out = socket_read($socket, $len - 1 , PHP_BINARY_READ) ;
		//echo "out  $out " ;
		$answer = $this->SSFCrypt($out, $len - 1 ,$asw_header, strlen($asw_header)) ;
		 // echo "respuesta ".$answer ;
		// echo " mensaje a buscar en answer ".$MessageToReceive ;
		$pos = strpos(strtolower(trim($answer)), strtolower($MessageToReceive)) ;
		//echo " pos es ".$pos ;
		if ( $pos === false ) {
  		    echo "** No se encuentra respuesta esperada. respuesta:  <br />";
  		    echo $answer . " <br />" ;
			return false ;
		 } else {
		 	 if ($login == false)
		  	 	echo ">> encontro el mensaje <br />";
		  	 $pos = strpos(strtolower(trim($answer)), strtolower($msgOK)) ;
		  	 if ($pos === false ) {
			   echo "** ERROR !!! <br />" ;
			   $pos = strpos(strtolower(trim($answer)), strtolower("MSG="));
			   if ($pos === false ) { 
			     	echo "** No encuentra un Mensaje de Error <br />" ;    	
			   } else {
			   		$pos2 = strpos(strtolower(trim($answer)), strtolower("|"), $pos + 1 );
					if ($pos2 === false ) { 		   		
					  echo "** No encuentra la terminación del mensaje de error en $answer <br />" ;    		
					} else {
					  $long = $pos2 - $pos ;
					  echo "** ".substr($answer,$pos+4,$long). " <br />" ;
					}  
				}
			   return false ;
			 } else { 
			 	if ($login == false)
		  	 		echo ">> Se recibió una respuesta satisfactoria  <br />" ;
			 	return true ;
			}
		}
		return false ;
	}
     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
	
	function SubscribeAllMessages() {
	  	
	  	$this->SendSubsribeMessage("RES_CHECK_NEW_CONFIG");
	  	$this->SendSubsribeMessage("RES_APPLY_NEW_CONFIG");
	  	$this->SendSubsribeMessage("EVT_EXIT_PUMP_CONTROLLER");
		return 0;	  	
	}
	
	function SendSubsribeMessage($message) {
	  	$socket = $_SESSION['ssf_socket'] ;
		socket_getsockname($socket, $address, $porthome ) ;
		$body = "SUBSCRIBE|$message|||" ;
		$count = strlen($body) + 1 ;
		$header =  str_pad($count,5,"0",STR_PAD_LEFT)."|1|" ;
		$porthome = str_pad($porthome, 6,"0",STR_PAD_LEFT) ;
		
		$key = $header.$porthome ;

		$body = $this->SSFCrypt($body, strlen($body), $key, strlen($key) ) ;
		//echo " **BODY** ".$body ;
		$in = $header.$body."^" ;

		echo ">> Suscribirse a los mensajes ...<br />";
		socket_write($socket, $in, strlen($in));
		echo ">> Sucripcion Aceptada  <br />";

	}
     ////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////
	
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
		/* echo "sbox2 es   " ;
		for ($i = 0; $i < 256; $i++) {
		  echo $sbox2[$i] ;
		}  */
		
		$j = 0 ;
		
		//echo " valores de J " ;
		for( $i = 0; $i < 256; $i++ )
		{
			$j = ( $j + $sbox[$i] + $sbox2[$i] ) % 256 ;
			//echo $j ;	
			$temp =  $sbox[$i] ;                    
			$sbox[$i] = $sbox[$j] ;
			$sbox[$j] = $temp ;
		}
	  	$i = 0 ;
	  	$j = 0 ;
		//echo " la entrada es ".$inp. " y la long es ".$inplen. " y la clave es $key y la long de la clave es ".strlen($key) ;
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
			if ($inp[$x] == "S") {
				/* echo " el caracter es ".$inp[$x]. " y k es $k " ;
				echo " el binario de ".$inp[$x]. " es ". decbin(ord($inp[$x])) ;
				echo " el binario de ".$k. " es ". decbin($k) ;
				echo " segun php el xor de esto es ". decbin(ord($inp[$x]) ^ $k) ;
				echo " el decimal del ultimo binario es ". bindec(decbin(ord($inp[$x]) ^ $k)) ;
				echo " el caracter ascii de este binario es ". chr(bindec(decbin(ord($inp[$x]) ^ $k))) ; */
		    }
			$inp[$x] = chr(  ord($inp[$x]) ^ $k  );
		}	  	
	  	return $inp;
	}
	
}


/*
		socket_set_block($socket);
		switch(socket_select($r = array($socket), $w = array($socket), $f = array($socket), 5))
		{
		       case 2:
		               echo "[-] Connection Refused\n";
		               break;
		       case 1:
		               echo "[+] Connected\n";
		               break;
		       case 0:
		               echo "[-] Timeout\n";
		               break;
		}		
	

*/		/* $in = "HEAD / HTTP/1.1\r\n";
		$in .= "Host: www.example.com\r\n";
		$in .= "Connection: Close\r\n\r\n"; */

		// $fp = stream_socket_client($_SESSION['ssf_socket_address'], $errno, $errstr, 2);
		//	if (!$fp) {
   		//		echo "$errstr ($errno)<br />\n";
		//	} else {
		//	  echo "Abre el Socket " ;
  			// fwrite($fp, " GET / HTTP/1.0\r\nHost: www.example.com\r\nAccept: */*\r\n\r\n");
  		//	fwrite($fp, "23|1|POST|REQ_CHECK_NEW_CONFIG|||'");
  		//	 while (!feof($fp)) {
  		//	   	echo " entra aca " ;
       	//		echo fgets($fp, 1024);
   		//	}
   		//	fclose($fp);
		//	} 

		
		//$i = 0 ;
		// echo "Reading response:\n\n";
		/* while ($out = socket_read($socket, 2048)) {
		   echo $out;
		   $i++ ;
		   if ($i > 5 ) 
		   		break ;
		} */
		/* $read = "" ;
		while(($flag=socket_recv($socket, $buf, 8,0))>0) {
		     $asc=ord(substr($buf, -1));
			if ($asc==0) {
				$read.=substr($buf,0,-1);
				break;
			}else{
				$read.=$buf;
			}
		} */

	//	$flag=socket_recv($socket, $buf, 80,0) ;
	//	echo substr($buf,0,5) ;
		
		/* sleep(5);
		$flag=socket_recv($socket, $buf, 8,0) ;
				sleep(5);
				echo $buf ; */
		/* sleep(5);	
		/* $out = socket_read($socket, 8, PHP_NORMAL_READ) ;
		sleep(5);
		$out = socket_read($socket, 8, PHP_NORMAL_READ) ;
		sleep(5);
		$out = socket_read($socket, 8, PHP_NORMAL_READ) ; */

		//echo $out;


?>