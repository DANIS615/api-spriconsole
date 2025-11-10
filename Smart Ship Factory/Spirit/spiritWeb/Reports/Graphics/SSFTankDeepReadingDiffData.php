<?php
define("RelativePath", "../..");
include(RelativePath . "/Common.php");
include(RelativePath . "/Myfunctions.php");
include(RelativePath . "/Reports/jpgraph/jpgraph.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_line.php");

	///////////////////
	// Traer parametros
	///////////////////
	global $CCSLocales ;

	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_tank_id = CCGetParam("s_tank_id") ;

	///////////////////
	// Armar Query 
	///////////////////

	$range_date = datediff($s_date_from,$s_date_to) ;
	$datax = array() ;
	iniArrayX($datax,$range_date, $s_date_from ) ;

	$title = $CCSLocales->GetText("ssf_deep_reading_difference")." " ;

	$ssfQuery = "SELECT tank_id,date_read,prod_diff, a.param_value as prod FROM ssf_tank_manual_readings, config_values a ";
   	$ssfQuery .= " where date_read >= '".$s_date_from. "'" ;
    if  ($s_date_to != "" )
   		$ssfQuery .= " and date_read <= '".$s_date_to. "'" ; 
	if ($s_tank_id != "" )
   		$ssfQuery .= " and tank_id = ".$s_tank_id ; 
	$ssfQuery .= " and a.library = 'tank' " ; 
	$ssfQuery .= " and a.groupname = 'general' " ;
	$ssfQuery .= " and a.parameter = 'product' " ;
	$ssfQuery .= " and ".ReplaceNumberConvertion("a.id","'99'")." =  tank_id " ;
    $ssfQuery .= " ORDER BY tank_id, date_read " ;

	///////////////////
	//Inicializar Gráfico
	///////////////////

	// Create the graph. These two calls are always required
	$graph = new Graph(1000,600,"auto");    
	//$graph->img->SetMargin(40,140,40,40);
	$graph->img->SetMargin(40,140,40,80);
	if ($range_date > 20 )
		$graph->SetScale("linlin");
	else
		$graph->SetScale("textlin");

	$graph->SetShadow();
	$graph->img->SetAntiAliasing();
	$graph->xaxis->SetTickLabels($datax); 

	
	if ($s_tank_id != "" )
		$title .= " ".$CCSLocales->GetText("tank")." ".$s_tank_id ;
	$graph->title->Set($title);
	$graph->xaxis->title->Set($CCSLocales->GetText("ssf_date"));
	$graph->yaxis->title->Set($CCSLocales->GetText("volume"));

	$graph->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->xaxis->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->yaxis->SetColor("blue");
	// the default position
	$graph->xaxis->SetPos('min');
	$graph->xaxis->SetLabelAngle(90);
	///////////////////
	// Ejecutar la consulta
	///////////////////

   $db = new clsDBConnection1();
   $db1 = new clsDBConnection1();
   $db->query($ssfQuery);
   $result = $db->next_record(); 

	$data = array() ;
	iniArray($data,$range_date) ;
	$tankid = "" ;
	$prod_ant = "" ;
	$vez = 1 ;
   while ($result) {
		if ($db->f("tank_id") != $tankid) {  		
			if ($vez > 1) {
				$lineplot=new LinePlot($data);
				$graph->Add($lineplot);
				$lineplot->SetColor(GetPColor($prod_ant, $db1));
				$lineplot->SetWeight(4);
				$lineplot->SetLegend("Tanque ".$tankid);
				$lineplot->value->SetFont(FF_FONT1,FS_BOLD);
				$lineplot->value->SetFormatCallback('barValueFormat'); 
				$lineplot->value->Show();
			}
			$data = array() ;
			iniArray($data,$range_date) ;
			$tankid = $db->f("tank_id") ;
			$prod_ant = trim($db->f("prod")) ;
			$vez = 2 ;
		}
		$date_tmp = $db->f("date_read") ;
		$datax_key = array_search($date_tmp, $datax) ;
		$data[$datax_key] = $db->f("prod_diff") ;

   		$result = $db->next_record(); 
   }	

 	$lineplot=new LinePlot($data);
	$graph->Add($lineplot);
	$lineplot->SetColor(GetPColor($prod_ant, $db1));
	$lineplot->SetWeight(4);
	$lineplot->SetLegend("Tanque ".$tankid);
	$lineplot->value->SetFormatCallback('barValueFormat'); 
	$lineplot->value->Show();
	$lineplot->value->SetFont(FF_FONT1,FS_BOLD);

 $db->close() ;
 $db1->close() ;



$graph->Stroke();


function barValueFormat($aLabel) { 
    // Format '1000 english style 
	if ($aLabel == 0)
		return "" ;//number_format($aLabel,0,'','') ;
	else
		return $aLabel ;
    // Format '1000 french style 
    // return number_format($aLabel, 2, ',', ' '); 
} 


?>