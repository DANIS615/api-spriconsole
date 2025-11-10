<?php

/////////////////////////////////////////////////
////////// CLASE ConvolGnupg ////////////////////
////////////////////////////////////////////////


class ConvolGnupg extends CommonSchedule {
	
	function GnuFiles() {	   
		$this->s_log->logIt(" Se van a eliminar tablas ") ;
		$db = new clsDBConnection1();
		$ssfQuery = " Select * from config_values limit 1 " ;
		$db->query($ssfQuery);
		$result = $db->next_record(); 
		if ($result) 
			echo "valor ".$db->f("library") ;
		$db->Close() ;		
	}


}

?>