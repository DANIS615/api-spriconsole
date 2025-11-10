<?php
define (LOGDIR, dirname(__FILE__)."/../logs") ;

class AdminLogs {

	public function logIt($msg, $type="I") {
		 if(!is_resource($this->logFileRes)) {
			if (!file_exists(LOGDIR)) {
				mkdir(LOGDIR) ;
			}		
			$logfilename = $this->CheckLogFile() ;
		 	$this->logFileRes=fopen($logfilename,'a+') ;
		 }

		 switch ($type) {
		 	case "E": 
				$type_of_msg = "ERROR" ;
				break ;
		 	case "W": 
				$type_of_msg = "WARNING" ;
				break ;
		 	default:
				$type_of_msg = "INFO" ;
		 }

		 $f_date = date('d/m/Y H:i:s');
		 fwrite($this->logFileRes,$f_date." "."[".$type_of_msg."]	". $msg."\r\n") ;
		 fclose($this->logFileRes);
	}

	function CheckLogFile() {
		$file_size = 1048576 ;  // 1Mb.
		$logback = LOGDIR."/"."logfile_back.log" ;
		$logfile = LOGDIR."/"."logfile.log" ;
		if (file_exists($logfile )) {
			if ( filesize($logfile) > $file_size ) {
				if (file_exists($logback) ) {
					unlink($logback) ;
				}	
				rename($logfile, $logback) ;
			}
		}
		return $logfile ;
	}

}


?>