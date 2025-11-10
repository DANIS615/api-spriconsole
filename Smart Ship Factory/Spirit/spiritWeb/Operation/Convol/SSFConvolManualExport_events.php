<?php
//BindEvents Method @1-382CC499
function BindEvents()
{
    global $Label2;
    $Label2->CCSEvents["BeforeShow"] = "Label2_BeforeShow";
}
//End BindEvents Method

//Label2_BeforeShow @4-5E5A3E45
function Label2_BeforeShow(& $sender)
{
    $Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label2; //Compatibility
//End Label2_BeforeShow

//Custom Code @5-2A29BDB7
$db = new clsDBConnection1() ;
$ssfQuery = " Select param_value from ssf_generic_config_values " ;
$ssfQuery .= " where library = 'Control Volumetrico' and groupname = 'general' " ;
$ssfQuery .= " and parameter = 'file_gen_dir' " ;
$db->query($ssfQuery) ;

$result = $db->next_record() ;

$strlink = "" ;
if ($result) {
	$path = trim($db->f("param_value")) ;
	$files = getFiles($path);
	//echo print_r($files) ;
	foreach ($files as $file) {
		if ($files[0]["error"] != "")
			$strlink .=  "<tr class=\"Caption\"><th><b><a>$file[error]</a></b></th></tr>\n";
		else
			$strlink .=  "<tr class=\"Caption\"><th><b><a href=\"../SSFMasterDownLoad.php?filename=".$file[fullpath]."\">$file[name]</a></b></th></tr>\n";
	}
} else {
	$strlink = "No existe parámetro de generación de archivos, en la configuración genérica" ;
}
$Component->SetValue($strlink) ;
$db->Close() ;
//End Custom Code

//Close Label2_BeforeShow @4-C8ECDC8F
    return $Label2_BeforeShow;
}
//End Close Label2_BeforeShow


function getFiles($path) {
  //Function takes a path, and returns a numerically indexed array of associative arrays containing file information,
  //sorted by the file name (case insensitive).  If two files are identical when compared without case, they will sort
  //relative to each other in the order presented by readdir()
  $files = array();
  $fileNames = array();
  $i = 0;
  
  if (is_dir($path)) {
      if ($dh = opendir($path)) {
          while (($file = readdir($dh)) !== false) {
              if ($file == "." || $file == "..") continue;
              $fullpath = $path . "/" . $file;
              $fkey = strtolower($file);
              while (array_key_exists($fkey,$fileNames)) $fkey .= " ";
              $a = stat($fullpath);
              $files[$fkey]['size'] = $a['size'];
              if ($a['size'] == 0) $files[$fkey]['sizetext'] = "-";
              else if ($a['size'] > 1024) $files[$fkey]['sizetext'] = (ceil($a['size']/1024*100)/100) . " K";
              else if ($a['size'] > 1024*1024) $files[$fkey]['sizetext'] = (ceil($a['size']/(1024*1024)*100)/100) . " Mb";
              else $files[$fkey]['sizetext'] = $a['size'] . " bytes";
              $files[$fkey]['name'] = $file;
              $files[$fkey]['type'] = filetype($fullpath);
			  $files[$fkey]['fullpath'] = $fullpath;
              $fileNames[$i++] = $fkey;
          }
          closedir($dh);
      } else {	
	  		$files["error"]["error"] = "No se puede abrir el directorio: ".$path ;
	  		$fileNames[0] = "error" ;
	  	}
  } else {
  		$files["error"]["error"] = "No se encuentra el directorio: ".$path ;
  		$fileNames[0] = "error" ;
  }
  sort($fileNames,SORT_STRING);
  $sortedFiles = array();
  $i = 0;
  foreach($fileNames as $f) 
  		$sortedFiles[$i++] = $files[$f];
  
  return $sortedFiles;
}


?>
