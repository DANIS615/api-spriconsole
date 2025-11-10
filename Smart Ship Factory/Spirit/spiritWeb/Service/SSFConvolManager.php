<?php

/////////////////////////////////////////////////
////////// CLASE ConvolManager ////////////////////
////////////////////////////////////////////////


class ConvolManager extends CommonSchedule {
	

	function SendConvolFiles ($crypted_path) {
		$return_code = 0;
   		$this_dir = $crypted_path."/" ;
		$found_files = false ;
   	   	if (is_dir($this_dir)) {
			if ($t_dir = opendir($this_dir)) {
				//$this->block_file = $this_dir."export.lck" ;
				$this->s_log->logIt(" /////////////////////////////////////////////// " );
				$this->s_log->logIt(" Comienza proceso de Envio de archivos de convol " );
				$this->s_log->logIt(" /////////////////////////////////////////////// " );
				//if ($this->CheckorDeleteBlockFile()) {
				//	$this->CreateBlockFile() ;
				$info_files = array() ;
				while (($e_file = readdir($t_dir)) !== false) {
					if ((strpos($e_file,".gpg")>0)) {
	           			//echo "filename: ".$e_file." : filetype: " . filetype($this_dir.$e_file) . "\n";
						$sha_file = $this_dir.$e_file ;
						$succes = false ;
						$found_files = true ;
						$sha_result = sha1_file($sha_file) ;
						if ( $sha_result ) {
							//$this->s_log->logIt(" se creo el sha para el arhivo ".$sha_file ) ;
							//$this->s_log->logIt(" el sha es ".$sha_result ) ;
							$info_files[$e_file] = array("path"=>$sha_file,"sha"=>$sha_result) ;
							$succes = true ;
						} else {
							$this->s_log->logIt("Falló el sha para el arhivo ".$sha_file, "E" ) ;
						}
					}
				}
				if ($succes) {
					$return_code = $this->PostFiles($info_files) ;
					$this->DeleteConvolOutbox($info_files) ;
				}
				if (!$found_files) {
						$this->s_log->logIt("Ningún archivo encontrado en ".$this_dir , "W" ) ;
				}
			
					//$this->DeleteFile($this->block_file) ;
				//} else {
				//	$this->s_log->logIt("Existe un archivo de bloqueo. Se desbloqueará en 20 minutos ","W" );
				//}
				closedir($t_dir) ;
			}
			$this->s_log->logIt(" /////////////////////////////////////////////// " );
			$this->s_log->logIt(" Termina proceso de Envio de archivos de convol " );
			$this->s_log->logIt(" /////////////////////////////////////////////// " );
			return $return_code ;
		}
	}


	function PostFiles($files) {
		$key = array() ;
		$key = array_keys ($files) ;
		$file_arguments = array() ;
		$convol_key = $this->GetConvolKey() ;
		$return_code = 0 ;
		if ($convol_key == "" ) {
			$return_code = 990 ;
			$error_code = "990" ;
			$error_desc = "No Existe clave de transmisión" ;
		}
		$post_value_arguments = array("clave"=>$convol_key,
								"MAX_FILE_SIZE"=>"1000000") ;
		
		if ($key != false ) {
			for ($i=0;$i<count($key);$i++) {
				//$this->s_log->logIt("	Se envía el archivo: ".$key[$i]." path ".$files[$key[$i]]["path"]." sha ".$files[$key[$i]]["sha"] ) ;
				$interface_name = "" ;
				$checksum_name = "" ;
				$this->DetectFileType($key[$i],$interface_name, $checksum_name) ;
				if ($interface_name  != "" ) {
					$file_arguments[$interface_name] = array( 
								"name"=>$key[$i],
								"FileName"=>$files[$key[$i]]["path"],
								"type"=>"file",
            					"Content-Type"=>"automatic/name") ;
					
					$post_value_arguments[$checksum_name] = $files[$key[$i]]["sha"] ;
					if ($return_code != 0) {
						$this->UpdateConvolFileInfo($key[$i], $error_code, $error_desc) ;
					}
				}
			}
		}
		//$this->s_log->logIt(print_r($post_value_arguments,true) ) ;
		if ($return_code == 0)
			$return_code = $this->ConnectAndSendFiles($convol_key, $file_arguments, $post_value_arguments) ;

		return $return_code ;
		
	}

	function DetectFileType($file_name, & $filedesc, & $checksum_name) {
		$filedesc = "" ;
		if  ( strpos($file_name,"EXI") > 0 ) 
			$filedesc = "existencias" ;
		elseif  ( strpos($file_name,"ATQ") > 0 ) 
			$filedesc = "alarmatanque" ;
		elseif  ( strpos($file_name,"REC") > 0 ) 
			$filedesc = "recibo" ;
		elseif  ( strpos($file_name,"VTA") > 0 ) 
			$filedesc = "ventas" ;
		elseif  ( strpos($file_name,"ADI") > 0 ) 
			$filedesc = "alarmadispensario" ;
		elseif  ( strpos($file_name,"TQS") > 0 ) 
			$filedesc = "cattanque" ;
		elseif  ( strpos($file_name,"DIS") > 0 ) 
			$filedesc = "catdisp" ;

		$checksum_name = $filedesc."_checksum" ;

	}

	function GetConvolKey() {
		$value = "" ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select param_value from ssf_generic_config_values ".
					" where library ='Control Volumetrico' ".
					" and groupname = 'general' and parameter = 'pemex_convol_key' " ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) 
			$value = trim($db->f("param_value")) ;
		
		if ($value == "" )
			$this->s_log->logIt("La clave de envío de archivos convol no existe ó es blnaco ","E" ) ;			

		$db->Close() ;
		return $value ;
	}

	function GetConvolUser() {
		$value = "" ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select param_value from ssf_generic_config_values ".
					" where library ='Control Volumetrico' ".
					" and groupname = 'general' and parameter = 'pemex_custom_id' " ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) 
			$value = trim($db->f("param_value")) ;
		
		if ($value == "" )
			$this->s_log->logIt("El usuario convol no existe ó es blnaco ","E" ) ;			

		$db->Close() ;
		return $value ;
	}

	function GetConvolURL() {
		$value = "" ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select param_value from ssf_generic_config_values ".
					" where library ='Control Volumetrico' ".
					" and groupname = 'general' and parameter = 'convol_url_dir' " ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) 
			$value = trim($db->f("param_value")) ;
		
		if ($value == "" )
			$this->s_log->logIt("La dirección URL convol no existe ó es blnaco ","E" ) ;			
		
		$db->Close() ;
		return $value ;
	}

	function ConnectAndSendFiles($clave_pemex, $postfiles_array, $postvalues_array) {
		
    	require("http.php");
	    require("sasl.php");
		$return_code = 0 ;
        set_time_limit(120);
    	$http=new http_class;
	    /* Connection timeout */
	    $http->timeout=0;
	    /* Data transfer timeout */
	    $http->data_timeout=0;
	    /* Output debugging information about the progress of the connection */
	    $http->debug=0;
	    /* Format dubug output to display with HTML pages */
	    $http->html_debug=0;
	    /*
	     *  Need to emulate a certain browser user agent?
	     *  Set the user agent this way:
	     */
	    $http->user_agent="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";

	   // $http->exclude_address="";

	    $user= $this->GetConvolUser() ; //"0000110815";
		if ($user == "" ) {
			$return_code = 991 ;
			$error_code = "991" ;
			$error_desc = "No existe usuario" ;
		}
	    $password= $clave_pemex ; // "bb6c69deef";

	    $authentication=(strlen($user) ? UrlEncode($user).":".UrlEncode($password)."@" : "");


		$url_pemex = $this->GetConvolURL() ;
		if ($url_pemex == "" ) {
			$return_code = 992 ;
			$error_code = "992" ;
			$error_desc = "No existe URL" ;
		}
	    $url="https://".$authentication.$url_pemex ; //  "convol.ref.pemex.com/php/sccvp001_02.php";
	
	    $error=$http->GetRequestArguments($url,$arguments);

	    //$realm="Controles Volumetricos";       /* Authentication realm or domain      */
		$realm="";       /* Authentication realm or domain      */
	    $workstation=""; /* Workstation for NTLM authentication */

	    if(strlen($realm))
	        $arguments["AuthRealm"]=$realm;

	    if(strlen($workstation))
	        $arguments["AuthWorkstation"]=$workstation;

	    $http->authentication_mechanism=""; // force a given authentication mechanism;


	    /* Set additional request headers */
	    $arguments["Headers"]["Pragma"]="nocache";

	    $arguments["RequestMethod"]="POST";
	    $arguments["PostValues"]= $postvalues_array ;

	    $arguments["PostFiles"]= $postfiles_array ;

		if ($return_code == 0 ) {
		
	       	$this->s_log->logIt("Opening connection to:".HtmlEntities($arguments["HostName"]) ) ; 
	    	flush();
	    	$error=$http->Open($arguments);

	    	if($error=="")
		    {
		        $this->s_log->logIt("Sending request for page:".HtmlEntities($arguments["RequestURI"]) ) ;
		        if(strlen($user))
		           $this->s_log->logIt("Login:    ".$user." Password: ".str_repeat("*",strlen($password)) );
		        flush();
		        $error=$http->SendRequest($arguments);

		        if($error=="")
		        {
		            $this->s_log->logIt("Request:".HtmlEntities($http->request) ) ;
		            $this->s_log->logIt("Request headers:") ;
		            for(Reset($http->request_headers),$header=0;$header<count($http->request_headers);Next($http->request_headers),$header++)
		            {
		                $header_name=Key($http->request_headers);
		                if(GetType($http->request_headers[$header_name])=="array")
		                {
		                    for($header_value=0;$header_value<count($http->request_headers[$header_name]);$header_value++)
		                        $this->s_log->logIt($header_name.": ".$http->request_headers[$header_name][$header_value]." ,") ;
		                }
		                else
		                    $this->s_log->logIt($header_name.": ".$http->request_headers[$header_name]." ," ) ;
		            }
		            flush();

		            $headers=array();
		            $error=$http->ReadReplyHeaders($headers);
					//print_r($headers) ;
		            if($error=="")
		            {
		                $this->s_log->logIt(" Response status code:".$http->response_status);
		                switch($http->response_status)
		                {
		                    case "301":
		                    case "302":
		                    case "303":
		                    case "307":
		                        $this->s_log->logIt(" redirect to ".$headers["location"]." Set the follow_redirect variable to handle redirect responses automatically " );
		                        break;
		                }
						$this->s_log->logIt(" Response headers: " );
		                for(Reset($headers),$header=0;$header<count($headers);Next($headers),$header++)
		                {
		                    $header_name=Key($headers);
		                    if(GetType($headers[$header_name])=="array")
		                    {
		                        for($header_value=0;$header_value<count($headers[$header_name]);$header_value++)
		                            $this->s_log->logIt($header_name.": ".$headers[$header_name][$header_value]." ," ) ;
		                    }
		                    else
		                        $this->s_log->logIt($header_name.": ".$headers[$header_name]." ," );
		                }
		                flush();
		                $this->s_log->logIt(" Response body:" );
						$outputstring = "" ;
		                for(;;)
		                {
		                    $error=$http->ReadReplyBody($body,1000);
							//$this->s_log->logIt($body) ;
		                    if($error!="" || strlen($body)==0)
		                        break;
		                    $outputstring .= $body ; //HtmlSpecialChars($body) ;
		                }
		                flush();
						$this->AnalizeOutputString($outputstring,$postfiles_array ) ;
		            }
		        }
		        $http->Close();
		    }
		    if(strlen($error)) {
		        $this->s_log->logIt($error, "E" ) ;
				$return_code = 1 ;
			}
		} else {
			$key = array() ;
			$key = array_keys ($postfiles_array) ;
			if ($key != false ) {
				for ($i=0;$i<count($key);$i++) {
					$this->UpdateConvolFileInfo($postfiles_array[$key[$i]]["name"], $error_code, $error_desc) ;
				}
			}
		}
		return $return_code ;
	} // End ConnectAndSendFiles

	function AnalizeOutputString($outputstring, $postfiles_array ) {
		$resultstr = stristr($outputstring,"Clave de mensaje") ;
		//$this->s_log->logIt($resultstr ) ; 
		$keys_array = array() ;
		$keys_array = array_keys($postfiles_array) ;
		if ($keys_array != false ) {
			for ($i=0;$i<count($keys_array);$i++) {
				$start_pos = strpos($resultstr, $postfiles_array[$keys_array[$i]]["name"]) ;
				//$this->s_log->logIt("	Se parsea el string buscando : ".$postfiles_array[$keys_array[$i]]["name"] )  ;
				if ($start_pos > 0 ) {
					$respuesta =  substr($resultstr,$start_pos + 153 ,3) ;
					$resp_desc = substr($resultstr,$start_pos + 186, 40) ;
					$resp_desc = substr($resp_desc,0, strpos($resp_desc,"</td")) ;
					$this->s_log->logIt("	Archivo :".$postfiles_array[$keys_array[$i]]["name"]." Respuesta: ".$respuesta."--".$resp_desc ) ;
					$this->UpdateConvolFileInfo($postfiles_array[$keys_array[$i]]["name"], $respuesta, $resp_desc) ;
				}
			}
		}

	}


	function DeleteConvolOutbox($files) {
		$key = array() ;
		$key = array_keys ($files) ;
		if ($key != false ) {
			for ($i=0;$i<count($key);$i++) {
				//$this->s_log->logIt("	Se borra el archivo: ".$key[$i]." path ".$files[$key[$i]]["path"] ) ;
				$this->DeleteFile($files[$key[$i]]["path"]) ;
			}
		}
	}


	function UpdateConvolFileInfo($file_name, $answer_code, $answer_desc) {
		$close_type = substr($file_name, 16, 3 ) ;
		$close_date = substr($file_name, 19, 8 ) ;
		$close_time = substr($file_name, 28, 6 ) ;
		//$this->s_log->logIt(" close type : ".$close_type." close_date ".$close_date." close_time ".$close_time ) ;			
		$db = new clsDBConnection1();
		$ssfQuery = " Select ctrlvol_close_id from ssf_addin_ctrl_vol_close_info ".
					" where ctrlvol_date ='".$close_date."' ".
					" and ctrlvol_time = '".$close_time."' " ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) {
			$close_id = $db->f("ctrlvol_close_id") ;
			$status = "OK" ;
			if ($answer_code != "000") 
				$status = "ERROR" ;
			
			$status_desc = date('Y-m-d H:i:s');
			$status_desc .= " [".$answer_code."] ";
			$status_desc .= $answer_desc ;

			$ssfQuery = " update ssf_addin_ctrl_vol_close_file_info ".
						" set ctrlvol_file_send_status = '".$status."' ,".
						" ctrlvol_file_send_status_desc = '".$status_desc."'".
						" where ctrlvol_close_id =".$close_id.
						" and ctrlvol_file_type = '".$close_type."' " ;
			$db->query($ssfQuery);
			//$this->s_log->logIt($ssfQuery) ;
		} else {					
			$this->s_log->logIt("Ninguna fila encontrada en ssf_addin_ctrl_vol_close_file_info al actualizar el status de envío del archivo: ".$file_name,"W" ) ;			
		}
		$db->Close() ;
	}

}

?>