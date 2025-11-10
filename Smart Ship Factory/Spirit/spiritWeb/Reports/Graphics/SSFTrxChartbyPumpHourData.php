<?php
define("RelativePath", "../..");
include(RelativePath . "/Common.php");
include(RelativePath . "/Myfunctions.php");
include(RelativePath . "/Reports/jpgraph/jpgraph.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_line.php");
include(RelativePath . "/Reports/jpgraph/FC_Colors.php");

	///////////////////
	// Traer parametros
	///////////////////
	global $CCSLocales ;

	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_unit_option = CCGetParam("s_unit_option",1) ;
	//1 = Por Volumen
	//2 = Por Monto
	//3 = Por Cant. de Transacciones
	$s_rep_option = CCGetParam("s_rep_option",1) ;
	// 1 = promedio
	// 2 = toda la suma
	$s_scale_option = CCGetParam("s_scale_option",1) ;
	// 1 = cada dos horas
	// 2 = todas las horas

	///////////////////
	// Armar Query 
	///////////////////


	$range_date = datediff($s_date_from,$s_date_to) + 1 ;
	$title = $CCSLocales->GetText("ssf_pump_sales")." " ;
	$title .= $CCSLocales->GetText("pump")."/".$CCSLocales->GetText("ssf_time")." ( " ;

	switch ($s_unit_option) {
		case 1:
			$str_type = "sum (volume) as money " ;
			$title .=  $CCSLocales->GetText("ssf_by_volume")." )" ;
			break ;
		case 2:
			$title .=  $CCSLocales->GetText("ssf_by_amount")." )" ;
			$str_type = "sum (money) as money " ;
			break;
		case 3:
			$str_type = "count(*) as money " ;
			$title .=  $CCSLocales->GetText("ssf_by_transaction_qty")." )" ;
			break ;	
	}

		$str_mod_end_time = ReplaceModConvertion(ReplaceNumberConvertion(ReplaceSubstrConvertion("end_time",1,2),'99'),2) ;
		$str_end_time = ReplaceNumberConvertion(ReplaceSubstrConvertion("end_time",1,2),'99') ;

 	if ($s_scale_option == 1) 
		$ssfQuery = "SELECT pump_id, case when ".$str_mod_end_time." > 0 then ".$str_end_time." - 1 when ".$str_mod_end_time." = 0 then ".$str_end_time."  end as end_time, ".$str_type." FROM ssf_pump_sales ";
	else
		$ssfQuery = "SELECT pump_id, ".$str_end_time."  as end_time, ".$str_type." FROM ssf_pump_sales ";
   	$ssfQuery .= " where end_date >= '".$s_date_from. "'" ;
   if  ($s_date_to != "" )
   		$ssfQuery .= " and end_date <= '".$s_date_to. "'" ; 
	if ($s_pump_id != "" )
   		$ssfQuery .= " and pump_id = '".$s_pump_id. "'" ; 
    $ssfQuery .= " and sale_type <> 0 " ; 
   	if ($s_scale_option == 1) {		
	   $ssfQuery .= " GROUP BY pump_id, case when ".$str_mod_end_time." > 0 then ".$str_end_time." - 1 when ".$str_mod_end_time." = 0 then ".$str_end_time."  end ";
	   $ssfQuery .= " ORDER BY pump_id, case when ".$str_mod_end_time." > 0 then ".$str_end_time." - 1 when ".$str_mod_end_time." = 0 then ".$str_end_time."  end ";
   } else {
		$ssfQuery .= " GROUP BY pump_id, ".$str_end_time ;
	    $ssfQuery .= " ORDER BY pump_id, ".$str_end_time ;
	}
	//	setcookie("SPIRITWEB",$ssfQuery) ; 


	///////////////////
	//Inicializar Gráfico
	///////////////////

	$datax = array() ;
	$bound_x = 23 ;
	$step = 1 ;
	if ($s_scale_option == 1) {
		$bound_x = 12 ;
		$step = 2 ;
	}
	for ($i=0;$i<=$bound_x;$i++) {
		if ($i==0)
			$datax[$i] = $i  ;
		else
			$datax[$i] = $datax[$i-1] + $step ;
	}

	// Create the graph. These two calls are always required
	$graph = new Graph(1000,600,"auto");    
	$graph->img->SetMargin(40,140,40,40);
	$graph->SetScale("textlin");
	$graph->SetShadow();
	$graph->img->SetAntiAliasing();
	$graph->xaxis->SetTickLabels($datax); 

	
	if ($s_pump_id != "" )
		$title .= " ".$CCSLocales->GetText("pump")." ".$s_pump_id ;
	$graph->title->Set($title);
	$graph->xaxis->title->Set($CCSLocales->GetText("ssf_time"));
	$graph->yaxis->title->Set($CCSLocales->GetText("ssf_pump_sales"));

	$graph->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->xaxis->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->yaxis->SetColor("blue");

	///////////////////
	// Ejecutar la consulta
	///////////////////

   $db = new clsDBConnection1();
   $db->query($ssfQuery);
   $result = $db->next_record(); 

	$data = array() ;
	iniArray($data,$bound_x) ;
	$pumpid = "" ;
	$vez = 1 ;
   while ($result) {
		if ($db->f("pump_id") != $pumpid) {  		
			if ($vez > 1) {

				$lineplot=new LinePlot($data);
				$graph->Add($lineplot);
				$lineplot->SetColor(GetPumpColor($pumpid));
				$lineplot->SetWeight(4);
				$lineplot->SetLegend("Surt ".$pumpid);
				$lineplot->value->Show();
				$lineplot->value->SetFont(FF_FONT1,FS_BOLD);
			}
			$data = array() ;
			iniArray($data,$bound_x) ;
			$pumpid = $db->f("pump_id") ;
			$vez = 2 ;
		}
		if ($s_rep_option == 1) 
			$money = $db->f("money") / $range_date ;
		else
			$money = $db->f("money") ;

   		if ($s_scale_option == 1)
			$data[$db->f("end_time")/2] = $money ;
		else
			$data[$db->f("end_time")] = $money ;
		

   		$result = $db->next_record(); 
   }	

 $db->close() ;

	$lineplot=new LinePlot($data);
	$graph->Add($lineplot);
	$lineplot->SetColor(GetPumpColor($pumpid));
	$lineplot->SetWeight(2);
	$lineplot->SetLegend("Surt ".$pumpid);
	$lineplot->value->Show();
	$lineplot->value->SetFont(FF_FONT1,FS_BOLD);


/*$ydata = array(11,3,8,12,5,1,9,13,5,7);
$y2data = array(35,20,25,9,11,9,18,25,23,31);

$Pump3 = array(1,2,3,4,5,5,4,3,2,1,0);
$Pump4 = array(4,7,9,15,13,16,19,5,3,15,1,3);
$Pump5 = array(1,3,5,12,3,1,13,15,25,17,1,6,8);


// Create the linear plot
$lineplot=new LinePlot($ydata);
$lineplot2=new LinePlot($y2data);
$lineplot3=new LinePlot($Pump3);
$lineplot4=new LinePlot($Pump4);
$lineplot5=new LinePlot($Pump5);

// Add the plot to the graph
$graph->Add($lineplot);
$graph->Add($lineplot2);
$graph->Add($lineplot3);
$graph->Add($lineplot4);
$graph->Add($lineplot5);
$lineplot2->SetColor("orange");
$lineplot2->SetWeight(2);



$lineplot->SetColor("blue");
$lineplot->SetWeight(5);

$lineplot2->SetColor("orange");
$lineplot2->SetWeight(5);

$lineplot3->SetColor("red");
$lineplot3->SetWeight(5);

$lineplot4->SetColor("yellow");
$lineplot4->SetWeight(2);

$lineplot5->SetColor("black");
$lineplot5->SetWeight(2);


$lineplot->SetLegend("Pump 1");
$lineplot2->SetLegend("Pump 2");
$lineplot3->SetLegend("Pump 3");
$lineplot4->SetLegend("Pump 4");
$lineplot5->SetLegend("Pump 5"); */


$graph->Stroke();

function GetPumpColor($pump) {
	global $arr_FCColors ; 
	$color = $arr_FCColors[$pump] ;
	return "#".$color ;
}

?>