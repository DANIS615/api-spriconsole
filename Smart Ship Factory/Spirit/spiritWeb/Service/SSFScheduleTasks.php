<?php
include("SSFLogs.php");
define("RelativePath", dirname(__FILE__)."/.." );
include_once(RelativePath."/Common.php");
include_once("SSFScheduleTaskExport.php") ;
include_once("SSFScheduleTaskImport.php") ;
include_once("SSFScheduleTaskDeleteData.php") ;
include_once("SSFConvolManager.php") ;
include_once(RelativePath."/Communication/SSFRouterClient.php");

class ScheduleTasks {

	function Export($old_batch=0,$process="") {
		$e_class = new ExportData() ;
		$e_class->Export($old_batch,$process) ;
	}

	function Import($interface="",$frommaster=false, $deletealldata=false,$pathtoroot="") {
		$i_class = new ImportData() ;
		$i_class->Import($interface,$frommaster, $deletealldata,$pathtoroot) ;
	}

	function FTPAction($action) {
		$FTPclass = new FTPIO() ;
		$FTPclass->FTPAction($action) ;
	}

	function ExportMaster($master="",$PathToRoot="../") {
		$e_class = new ExportData() ;
		$e_class->ExportMaster($master,$PathToRoot) ;
	}

	function DeleteData($process="", $date_from="") {
		$del_class = new DeleteData() ;
		$del_class->DeleteDataProcess($process, $date_from) ;
	}

	function SendConvolFiles($crypted_path) {
		$return_code = 0 ;
		$convol_class = new ConvolManager() ;
		$return_code = $convol_class->SendConvolFiles($crypted_path) ;
		return $return_code ;
	}

	function Vacuum() {
		$UtilClass = new UtilClass() ;
		$result = $UtilClass->Vacuum() ;
		return $result ;
	}

}


/////////////////////////////////////////////////
////////// CLASE CommonSchedule  ////////////////
////////////////////////////////////////////////

class CommonSchedule {
	protected $now = "" ;
	protected $batch_no = 0 ;
	protected $old_batch = 0 ;
	protected $export_handler = "" ;
	protected $store_path = "" ;
	protected $block_file = "" ;
	protected $export_file = "" ;
	protected $there_was_transactions = false ;
	protected $PathToRoot = "" ;

	function CommonSchedule() {
	    $this->now = date('YmdHis') ;
		$this->s_log = new AdminLogs() ;
		$this->InitVars() ;
	}

	function InitVars() {
		$this->export_from = "" ;
		$this->batch_no = 0 ;
		$this->old_batch = 0 ;
		$this->PathToRoot = "" ;
	}

	function CreateBlockFile() {
		$e_file = fopen($this->block_file,'a') ; 
		fclose($e_file);
		return 0 ;		
	}

	function CheckorDeleteBlockFile() {
		$retorno = true ;
		if (file_exists($this->block_file)) {
			$file_last_update = date("YmdHis", filemtime($this->block_file)) ;
			$dif = $this->dateDiff("n",$file_last_update,$this->now) ;
			if ($dif > 20) {
				$this->s_log->logIt(" Se elimina archivo ".$this->block_file." por exceso de minutos") ; 
				$this->DeleteFile($this->block_file) ;
			} else {
				$retorno = false ;
			}
		}
		return $retorno ;
	}

	function DeleteFile($a_file) {
		unlink($a_file) ;
		return 0 ;
	}

	function CreateDir($dir_name) {
		do {
		   $dir = $dir_name;
		   while (!is_dir($dir)) {
		       $basedir = dirname($dir);
		       if ($basedir == '/' || is_dir($basedir))
		           $this->CheckandCreate($dir) ;
		       else
		           $dir=$basedir;
		  }
		} while ($dir != $dir_name);
	}

	function CheckandCreate($dir_name) {
		if (!file_exists($dir_name)) {
			mkdir($dir_name) ;
		}
	}

	function GetHoStore() {
		$store = "00000" ;
		$ssfQuery = " Select store_id from stores where store_ho = 'Y' " ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result)
			$store =  $db->f("store_id") ;
		$db->Close() ;
		return $store ;
	}

      function dateDiff($interval,$dateTimeBegin,$dateTimeEnd) {
        //Parse about any English textual datetime
        //$dateTimeBegin, $dateTimeEnd
        $dateTimeBegin=strtotime($dateTimeBegin);
        if($dateTimeBegin === -1) {
          return 0;
        }
        $dateTimeEnd=strtotime($dateTimeEnd);
        if($dateTimeEnd === -1) {
          return 0;
        }
        $dif=$dateTimeEnd - $dateTimeBegin;
        switch($interval) {
          case "s"://seconds
              return($dif);
          case "n"://minutes
              return(floor($dif/60)); //60s=1m
          case "h"://hours
              return(floor($dif/3600)); //3600s=1h
          case "d"://days
              return(floor($dif/86400)); //86400s=1d
          case "ww"://Week
              return(floor($dif/604800)); //604800s=1week=1semana
          case "m": //similar result "m" dateDiff Microsoft
              $monthBegin=(date("Y",$dateTimeBegin)*12)+date("n",$dateTimeBegin);
              $monthEnd=(date("Y",$dateTimeEnd)*12)+date("n",$dateTimeEnd);
              $monthDiff=$monthEnd-$monthBegin;
              return($monthDiff);
          case "yyyy": //similar result "yyyy" dateDiff Microsoft
              return(date("Y",$dateTimeEnd) - date("Y",$dateTimeBegin));
          default:
              return(floor($dif/86400)); //86400s=1d
        }
      }


	function GetSiteNumber () {
		$s_number = "" ;
		$ssfQuery = "select parameter, param_value from ssf_generic_config_values " ;
		$ssfQuery .= " where library = 'ForecourtManager' and id = 'ForecourtManager' " ;
		$ssfQuery .= " and groupname = 'general' and parameter = 'station_number' " ; 
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$Result = $db->next_record();
		if ($Result)
		{
			$s_number = $db->f("param_value") ;
		} 
		$db->close(); 
		return $s_number ;
	}
}


/////////////////////////////////////////////////
////////// CLASE FTP INPUT OUTPUT //////////////
////////////////////////////////////////////////

class FTPIO extends CommonSchedule {

	function FTPAction($action) {
		$url = "" ;
		$user = "" ;
		$pass = "" ;
		$this->GetFTPConnData($url,$user,$pass) ;
		$conn_id = ftp_connect($url); 
		// Open a session to an external ftp site
		$connected = true ;
		$login_result = ftp_login ($conn_id, $user, $pass); 
		// Check open
		if ((!$conn_id) || (!$login_result)) 
		       $connected = false ;

		// turn on passive mode transfers
		//$this->s_log->logIt("entra " ) ;
		if ($connected) {
			ftp_pasv ($conn_id, true) ;
			switch ($action){
				case "EXP":
					$this->FTPSendData($conn_id) ;
					break ;
				case "IMP":
					$this->FTPReceiveData($conn_id) ;
					break ;
			}
			ftp_close($conn_id);		
		} else {
			$this->s_log->logIt("No se puede abrir conexión FTP","E" );		
		}
	}


	function FTPSendData($conn_id) {
		//$this->s_log->logIt("entra" ) ;
		// Open a known directory, and proceed to read its contents
   		$this_dir = "../data/outbox/" ;
		$store_id = $this->GetSiteNumber() ;
		$store_id = str_pad($store_id,5,"0",STR_PAD_LEFT) ;
   	   	if (is_dir($this_dir)) {
			if ($t_dir = opendir($this_dir)) {
				$this->block_file = $this_dir."export.lck" ;
				if ($this->CheckorDeleteBlockFile()) {
					$this->CreateBlockFile() ;
					while (($e_file = readdir($t_dir)) !== false) {
						if ((strpos($e_file,".xml")>0)) {
		           			//echo "filename: ".$e_file." : filetype: " . filetype($this_dir.$e_file) . "\n";
							$ftp_file = $this_dir.$e_file ;
							ftp_mkdir($conn_id, "data") ;
							ftp_mkdir($conn_id, "data/".$store_id) ;
							ftp_mkdir($conn_id, "data/".$store_id."/inbox") ;
							$ftp_remote_name = "data/".$store_id."/inbox/".$e_file ;
							$succes = false ;
							if (ftp_put($conn_id,$ftp_remote_name,$ftp_file,FTP_ASCII)) {
								$this->s_log->logIt("envia ".$e_file." a ".$ftp_remote_name ) ;
								$succes = true ;
							} else {
								$this->s_log->logIt("no pudo enviar ".$e_file,"E" ) ;
							}
							if ($succes) {
								$this->DeleteFile($this_dir.$e_file) ;
							}
						}
					}
					$this->DeleteFile($this->block_file) ;
				}
				closedir($t_dir) ;
			}
		}
	}  // End FTPSendData

	function FTPReceiveData($conn_id) {
		//$this->s_log->logIt(" entra a receive data".$conn_id ) ; 
		$store_id = $this->GetSiteNumber() ;
		$store_id = str_pad($store_id,5,"0",STR_PAD_LEFT) ;
		$_dir = $store_id ;
		$l_file = ftp_nlist($conn_id,"data/".$_dir."/outbox") ;
		$local_dir = "../data/inbox" ;
		$this->CreateDir($local_dir) ;
		$this->block_file = $local_dir."/export.lck" ;
		if (!file_exists($this->block_file)) {
			$this->CreateBlockFile() ;
			for ($h=0;$h<=count($l_file);$h++) {  // obtiene los archivos dentro de inbox
				$str_file = basename($l_file[$h]) ;
				if (strpos($str_file,".xml") > 0 ) {
					$local_file = $local_dir."/".$str_file ;
					$server_file = $l_file[$h] ;
					//echo " local $local_file server $server_file " ;
					if (ftp_get($conn_id, $local_file, $server_file, FTP_ASCII)) {
					   $this->s_log->logIt("Successfully written to $local_file" ) ; 
					   ftp_delete($conn_id,$server_file) ;
					} else {
					   $this->s_log->logIt("problem writting $local_file","E" ) ; 
					}
				}
			}
			$this->DeleteFile($this->block_file) ;
		}
	}  // End FTPReceiveData


    function GetFTPConnData(& $url,& $user,& $pass) {
		$ssfQuery = " Select * from ssf_generic_config_values where library = 'FtpServiceHo' ".
					" and id = 'FtpServiceHo' ".
					" and groupname ='general'" ;
		$db = new clsDBConnection1();
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		while ($result) {
			$name =  $db->f("parameter") ;
			switch ($name) {
				case "url":
					$url = $db->f("param_value") ;
					break ;
				case "user":
					$user = $db->f("param_value") ;
					break ;
				case "password":
					$pass = $db->f("param_value") ;
					break ;
			}
		}
		$db->Close() ;
	}

}

////////////////////////////////////////////////////////////////
/////////////// Clase para comprimir archivos  ////////////////
//////////////////////////////////////////////////////////////

class createZip  {  

	private $compressedData = array(); 
	private $centralDirectory = array(); // central directory   
	private $endOfCentralDirectory = "\x50\x4b\x05\x06\x00\x00\x00\x00"; //end of Central directory record
	private $oldOffset = 0;

	/**
	 * Function to create the directory where the file(s) will be unzipped
	 *
	 * @param $directoryName string 
	 *
	 */
	
	function addDirectory($directoryName) {
		$directoryName = str_replace("\\", "/", $directoryName);  

		$feedArrayRow = "\x50\x4b\x03\x04";
		$feedArrayRow .= "\x0a\x00";    
		$feedArrayRow .= "\x00\x00";    
		$feedArrayRow .= "\x00\x00";    
		$feedArrayRow .= "\x00\x00\x00\x00"; 

		$feedArrayRow .= pack("V",0); 
		$feedArrayRow .= pack("V",0); 
		$feedArrayRow .= pack("V",0); 
		$feedArrayRow .= pack("v", strlen($directoryName) ); 
		$feedArrayRow .= pack("v", 0 ); 
		$feedArrayRow .= $directoryName;  

		$feedArrayRow .= pack("V",0); 
		$feedArrayRow .= pack("V",0); 
		$feedArrayRow .= pack("V",0); 

		$this -> compressedData[] = $feedArrayRow;
		
		$newOffset = strlen(implode("", $this->compressedData));

		$addCentralRecord = "\x50\x4b\x01\x02";
		$addCentralRecord .="\x00\x00";    
		$addCentralRecord .="\x0a\x00";    
		$addCentralRecord .="\x00\x00";    
		$addCentralRecord .="\x00\x00";    
		$addCentralRecord .="\x00\x00\x00\x00"; 
		$addCentralRecord .= pack("V",0); 
		$addCentralRecord .= pack("V",0); 
		$addCentralRecord .= pack("V",0); 
		$addCentralRecord .= pack("v", strlen($directoryName) ); 
		$addCentralRecord .= pack("v", 0 ); 
		$addCentralRecord .= pack("v", 0 ); 
		$addCentralRecord .= pack("v", 0 ); 
		$addCentralRecord .= pack("v", 0 ); 
		$ext = "\x00\x00\x10\x00";
		$ext = "\xff\xff\xff\xff";  
		$addCentralRecord .= pack("V", 16 ); 

		$addCentralRecord .= pack("V", $this -> oldOffset ); 
		$this -> oldOffset = $newOffset;

		$addCentralRecord .= $directoryName;  

		$this -> centralDirectory[] = $addCentralRecord;  
	}	 
	
	/**
	 * Function to add file(s) to the specified directory in the archive 
	 *
	 * @param $directoryName string 
	 *
	 */
	
	function addFile($data, $directoryName)   {
 
		$directoryName = str_replace("\\", "/", $directoryName);  
	
		$feedArrayRow = "\x50\x4b\x03\x04";
		$feedArrayRow .= "\x14\x00";    
		$feedArrayRow .= "\x00\x00";    
		$feedArrayRow .= "\x08\x00";    
		$feedArrayRow .= "\x00\x00\x00\x00"; 

		$uncompressedLength = strlen($data);  
		$compression = crc32($data);  
		$gzCompressedData = gzcompress($data);  
		$gzCompressedData = substr( substr($gzCompressedData, 0, strlen($gzCompressedData) - 4), 2); 
		$compressedLength = strlen($gzCompressedData);  
		$feedArrayRow .= pack("V",$compression); 
		$feedArrayRow .= pack("V",$compressedLength); 
		$feedArrayRow .= pack("V",$uncompressedLength); 
		$feedArrayRow .= pack("v", strlen($directoryName) ); 
		$feedArrayRow .= pack("v", 0 ); 
		$feedArrayRow .= $directoryName;  

		$feedArrayRow .= $gzCompressedData;  

		$feedArrayRow .= pack("V",$compression); 
		$feedArrayRow .= pack("V",$compressedLength); 
		$feedArrayRow .= pack("V",$uncompressedLength); 

		$this -> compressedData[] = $feedArrayRow;

		$newOffset = strlen(implode("", $this->compressedData));

		$addCentralRecord = "\x50\x4b\x01\x02";
		$addCentralRecord .="\x00\x00";    
		$addCentralRecord .="\x14\x00";    
		$addCentralRecord .="\x00\x00";    
		$addCentralRecord .="\x08\x00";    
		$addCentralRecord .="\x00\x00\x00\x00"; 
		$addCentralRecord .= pack("V",$compression); 
		$addCentralRecord .= pack("V",$compressedLength); 
		$addCentralRecord .= pack("V",$uncompressedLength); 
		$addCentralRecord .= pack("v", strlen($directoryName) ); 
		$addCentralRecord .= pack("v", 0 );
		$addCentralRecord .= pack("v", 0 );
		$addCentralRecord .= pack("v", 0 );
		$addCentralRecord .= pack("v", 0 );
		$addCentralRecord .= pack("V", 32 ); 

		$addCentralRecord .= pack("V", $this -> oldOffset ); 
		$this -> oldOffset = $newOffset;

		$addCentralRecord .= $directoryName;  

		$this -> centralDirectory[] = $addCentralRecord;  
	}

	/**
	 * Fucntion to return the zip file
	 *
	 * @return zipfile (archive)
	 */

	function getZippedfile() { 

		$data = implode("", $this -> compressedData);  
		$controlDirectory = implode("", $this -> centralDirectory);  

		return   
			$data.  
			$controlDirectory.  
			$this -> endOfCentralDirectory.  
			pack("v", sizeof($this -> centralDirectory)).     
			pack("v", sizeof($this -> centralDirectory)).     
			pack("V", strlen($controlDirectory)).             
			pack("V", strlen($data)).                
			"\x00\x00";                             
	}

	/**
	 *
	 * Function to force the download of the archive as soon as it is created
	 *
	 * @param archiveName string - name of the created archive file
	 */

	function forceDownload($archiveName) {
		$headerInfo = '';
		 
		if(ini_get('zlib.output_compression')) {
			ini_set('zlib.output_compression', 'Off');
		}

		// Security checks
		if( $archiveName == "" ) {
			echo "<html><title>Public Photo Directory - Download </title><body><BR><B>ERROR:</B> The download file was NOT SPECIFIED.</body></html>";
			exit;
		} 
		elseif ( ! file_exists( $archiveName ) ) {
			echo "<html><title>Public Photo Directory - Download </title><body><BR><B>ERROR:</B> File not found.</body></html>";
			exit;
		}

		header("Pragma: public");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: private",false);
		header("Content-Type: application/zip");
		header("Content-Disposition: attachment; filename=".basename($archiveName).";" );
		header("Content-Transfer-Encoding: binary");
		header("Content-Length: ".filesize($archiveName));
		readfile("$archiveName");
		
	 }

}

/////////////////////////////////////////////////
////////// CLASE FTP INPUT OUTPUT //////////////
////////////////////////////////////////////////

class UtilClass extends CommonSchedule {

	function Vacuum() {
		global $CCConnectionSettings ;
		switch ($CCConnectionSettings["Connection1"]["Type"]) {
		case ("PostgreSQL"):
			$strVacuum = " Vacuum analyze";
			break;
		case ("MSSQLServer"):
			$database = $CCConnectionSettings["Connection1"]["Database"] ;
			$strVacuum = " DBCC SHRINKDATABASE (".$database." ) ";
			break;
		}
		$db = new clsDBConnection1();
		$ssfQuery = $strVacuum ;
		$db->query($ssfQuery);
		if ($db->Errors->Count() > 0 ) {
			$this->s_log->logIt($db->Error,"E") ;
			return false ;
		} else {
			$this->s_log->logIt(" Se realizó optimización de la Base. Comando ".$strVacuum ) ;
		}
		return true ;
	}
}



?>