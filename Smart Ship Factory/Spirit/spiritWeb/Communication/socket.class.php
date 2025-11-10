<?php

define("CONNECTED", true);
define("DISCONNECTED", false);

/**
 * Socket class
 * 
 * This class can be used to connect to external sockets and communicate with the server
 * 
 * @author Tom Reitsma <treitsma@rse.nl>
 * @version 0.6
 */
Class Socket
{
	/**
	 * @var singleton $instance
	 * @desc Singleton var
	 */
    private $porthome = "" ;
	private static $instance;
	
	/**
	 * @var resource $connection
	 * @desc Connection resource
	 */
	private $connection = null;
	
	/**
	 * @var string $connectionState
	 * @desc 
	 */
	private $connectionState = DISCONNECTED;
	
	/**
	 * @var int $defaultHost
	 * @desc Default ip address to connect to
	 */
	private $defaultHost = "192.168.1.3";
	
	/**
	 * @var int $defaultPort
	 * @desc Default port to connect to
	 */
	private $defaultPort = 3011;
	
	/**
	 * @var float $defaultTimeout
	 * @desc Default timeout for connection to a server
	 */
	private $defaultTimeout = 10;
	
	/**
	 * @var bool $persistentConnection
	 * @desc Determines wether to use a persistent socket connection or not
	 */
	private $persistentConnection = true;
	
	/**
	 * Class constructor
	 * 
	 * @return void
	 * @access private
	 */
	private function __construct()
	{
		
	}
	
	/**
     * Singleton pattern. Returns the same instance to all callers
     *
     * @return Socket
     */
    public static function singleton()
    {
        if (self::$instance == null || ! self::$instance instanceof Socket)
        {
            self::$instance = new Socket();
        }
        return self::$instance;
    }
    
    /**
     * Connects to the socket with the given address and port
     * 
     * @return void
     */
    public function connect($serverHost=false, $serverPort=false, $timeOut=false)
    {
    	$socketFunction = $this->persistentConnection ? "pfsockopen" : "fsockopen";
    	
    	// Check if the function parameters are set.
    	// If not, use the class defaults
    	if($serverHost == false)
    	{
    		$serverHost = $this->defaultHost;
    	}
    	
    	if($serverPort == false)
    	{
    		$serverPort = $this->defaultPort;
    	}
    	
    	if($timeOut == false)
    	{
    		$timeOut = $this->defaultTimeout;
    	}
    	
    	$connection = $socketFunction($serverHost, $serverPort, $errorNumber, $errorString, $timeOut);
    	$this->connection = $connection;
    	
    	stream_set_blocking($this->connection, 0);
    	
    	if($connection == false)
    	{
    		$this->_throwError("Connecting to {$serverHost}:{$serverPort} failed.<br>Reason: {$errorString}");
    	}
    	
    	$this->connectionState = CONNECTED;
    }
    
    /**
     * Disconnects from the server
     * 
     * @return True on succes, false if the connection was already closed
     */
    public function disconnect()
    {
    	if($this->validateConnection())
    	{
    		fclose($this->connection);
    		$this->connectionState = DISCONNECTED;
    		
    		return true;
    	}
    	
    	return false;
    }
    
    /**
     * Sends a command to the server
     * 
     * @return string Server response
     */
    public function sendCmd($command)
    {
    	if($this->validateConnection())
    	{
    		$command .= "\r\n";
    		
    		$result = fwrite($this->connection, $command, strlen($command));
    		
    		return $result;
    	}
    	
    	$this->_throwError("Sending command \"{$command}\" failed.<br>Reason: Not connected");
    }
    
    /**
     * Gets the server response (not multilined)
     * 
     * @return string Server response
     */
    public function getResponse()
    {
    	if($this->validateConnection())
    	{
    		return fread($this->connection, 2048);
    	}
    	
    	$this->_throwError("Receiving response from server failed.<br>Reason: Not connected");
    }
    
    /**
	 * Gets a multilined response
	 * 
	 * @return string Server response
	 */
	public function getMultilinedResponse()
    {
        $data = '';
        while(($tmp = $this->readLine()) != '.') 
        {
            if(substr($tmp, 0, 2) == '..') 
            {
				$tmp = substr($tmp, 1);
            }
            $data .= $tmp."\r\n";
        }

        return substr($data, 0, -2);
    }
    
    /**
     * Reads an entire line
     * 
     * @return string Server response
     */
    public function readLine() 
    {
        $line = '';
        while (!feof($this->connection))
        {
            $line .= fgets($this->connection, 1024);
            if (strlen($line) >= 2 && (substr($line, -2) == "\r\n" || substr($line, -1) == "\n")) 
            {
				return rtrim($line);
            }
        }
        return $line;
    }
    
    /**
     * Validates the connection state
     * 
     * @return bool
     */
    private function validateConnection()
    {
    	return (is_resource($this->connection) && ($this->connectionState != DISCONNECTED));
    }
    
    /**
     * Throws an error
     * 
     * @return void
     */
    private function _throwError($errorMessage)
    {
    	throw new Exception("Socket error: " . $errorMessage);
    }
    
    /**
     * If there still was a connection alive, disconnect it
     */
    public function __destruct()
    {
    	$this->disconnect();
    }

	function CheckLogin($user, $pass) {
			$pass = str_pad($pass, 25," ",STR_PAD_RIGHT) ;
			//$pass = "MINIMEINFINITERINGTONES  " ;
    		$res = $this->SendLoginMsg("POST|REQ_SECU_LOGIN|||","POST|RES_SECU_LOGIN", " Chequear Login",$user,$pass) ;
			return $res;
	}
	function SendLoginMsg($message,$messagetoread, $messageforuser,$user,$pass) {
		echo " the connection is " . $this->connection ;
		$address = "" ;
		$myporthome = "" ;
		//socket_getsockname($this->connection, &$address, &$myporthome ) ;
		//echo " Local Address: $address port $myporthome" ;
		//socket_getpeername($this->connection, $address, $myporthome ) ;
		//echo " Local Address: $address port $myporthome" ;
		$size=socket_recvfrom($this->connection,$input,65535,0,&$address,&$myporthome);
		echo " Local Address1: $address port $myporthome" ;
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
		$this->sendCmd($in);  //socket_write($socket, $in, strlen($in));
		//echo ">> Request Accepted...<br />";
		//echo ">> Reading answer for the message...<br />";
		if ($this->ReadSocket ($messagetoread, true) )
			//echo "OK. <br />";
			return true ;
		else
			//echo "<q> Fallo en la respuesta esperada </q><br />";
			return false ;
		$this->disconnect() ;
	}

	function ReadSocket ($MessageToReceive, $login=false ) {
		$msgOK = "RC=OK" ;
		if ($login==true) 
			$msgOK = "ST=OK" ;
		//socket_set_option($socket,SOL_SOCKET, SO_RCVTIMEO, array("sec"=>5,"usec"=>0 ));
		stream_set_timeout($this->connection, 2);
		sleep (2);
		echo " voy a entrar a getResponse " ;
		$out = $this->getResponse() ;
		echo " Salio ".$out ;
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
  		    echo "** No se  encontra respuesta esperada. Se recibió esto:  <br />";
  		    echo $answer . " <br />" ;
			return false ;
		 } else {
		 	 if ($login == false)
		  	 	echo ">> encontro el mensaje <br />";
		  	 $pos = strpos(strtolower(trim($answer)), strtolower($msgOK)) ;
		  	 if ($pos === false ) {
			   echo "** ERROR !!! color=blue <br />" ;
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

?>