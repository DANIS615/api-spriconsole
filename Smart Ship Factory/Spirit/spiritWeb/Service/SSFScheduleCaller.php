<?php
include("SSFScheduleTasks.php") ;

// Para llamar al programa desde un lado externo 
// php Path/SSFScheduleTasks.php --args process=DELETE (por ejemplo, para llamar a DeleteData..

	if ($argv)
	for ($i=1;$i<count($argv);$i++)
	{
	$it = split("=",$argv[$i]);
	$_GET[$it[0]] = $it[1];
	}
	$process = CCGetParam("process") ;

	$return_code = 0 ;
	$schtask = new ScheduleTasks() ;
	switch ($process) {
		case "DELETE":
			$schtask->DeleteData() ;
			break ;
		case "SENDCONVOL":
			$return_code = $schtask->SendConvolFiles(dirname(__FILE__)."/../data/convol/outbox") ;
			break ;
		case "VACUUM":
			return $schtask->Vacuum() ;
			break ;	
		}

	return $return_code ;

?>