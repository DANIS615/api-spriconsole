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
	$s_scale_option = CCGetParam("s_scale_option",1) ;
	$s_periods_ahead = CCGetParam("s_periods_ahead",1) ;

	///////////////////
	// Armar Query 
	///////////////////

	if ($s_scale_option == 1) // rango diario
		$range_date = datediff($s_date_from,$s_date_to) + 1 ;
	else  // rango mensual
		$range_date = monthdiff($s_date_from,$s_date_to) + 1 ;

	global $periods_before ;
	$periods_before = $range_date ;
	$par = "" ;
	if ((1&$range_date)) {
		$par = false ; // impar
		$ini_array =  0 - (($periods_before / 2) - 0.5) ;
		$step = 1 ;
	} else {
		$par = true ; //par 
		$ini_array = 0 - ($periods_before - 1) ;
		$step = 2 ;
	}

	$super_data = array() ;
	for ($i=0;$i<$periods_before;$i++) {
		$x2 = pow(abs($ini_array),2) ;
		$super_data[$i] = array("x"=>$ini_array,"xy"=>0,"x2"=>$x2) ;
		$ini_array += $step ;
	}

	$range_date += $s_periods_ahead - 1 ;	
	$datax = array() ;
	if ($s_scale_option == 1) // rango diario
		iniArrayX($datax,$range_date, $s_date_from ) ;
	else
		iniArrayXMonth($datax,$range_date, $s_date_from ) ;		


	if ($s_scale_option == 1) {  // rango diario 
		$sales_date =  " sales_date as sales_date " ;
		$q_prod_vol = " sum(b.prod_vol) as stock " ;
		$group_option = " group by  ssf_tank_day_sales.tank_id, sales_date, param_value " ;
	} else {
		$sales_date =  ReplaceSQLSubstr("SQLSubstr")."(sales_date,1,6) as sales_date " ;
		$q_prod_vol = " avg(b.prod_vol) as stock " ;
		$group_option = " group by  ssf_tank_day_sales.tank_id, ".ReplaceSQLSubstr("SQLSubstr")."(sales_date,1,6),param_value " ;
	}

 	$ssfQuery =  " Select ssf_tank_day_sales.tank_id, param_value as prod, ".$sales_date.",sum(accum_sales) as sales, ".$q_prod_vol ;
   	$ssfQuery .= " from ssf_tank_day_sales, config_values a, ssf_tank_actual_info b " ;
   	$ssfQuery .= " where sales_date >= '".$s_date_from. "'" ;
    if  ($s_date_to != "" )
   		$ssfQuery .= " and sales_date <= '".$s_date_to. "'" ; 
	$ssfQuery .= " and a.library = 'tank' " ; 
	$ssfQuery .= " and a.groupname = 'general' " ;
	$ssfQuery .= " and a.parameter = 'product' " ;
	$ssfQuery .= " and ".ReplaceNumberConvertion("a.id","'99'")." =  ssf_tank_day_sales.tank_id " ;
	$ssfQuery .= " and ssf_tank_day_sales.tank_id = b.tank_id " ;
	if ($s_tank_id != "" )
   		$ssfQuery .= " and ssf_tank_day_sales.tank_id = '".$s_tank_id."'" ; 
	$ssfQuery .= $group_option ;
    $ssfQuery .= " ORDER BY ssf_tank_day_sales.tank_id, sales_date " ;

	///////////////////
	//Inicializar Gráfico
	///////////////////

	// Create the graph. These two calls are always required
	$graph = new Graph(1000,600,"auto");    
	//$graph->img->SetMargin(40,140,40,40);
	$graph->img->SetMargin(40,140,40,80);
	if ($s_periods_ahead > 20 )
		$graph->SetScale("linlin");
	else
		$graph->SetScale("textlin");

	$graph->SetShadow();
	$graph->img->SetAntiAliasing();
	//$graph->xaxis->SetTickLabels($datax); 

	$title = $CCSLocales->GetText("ssf_tank_stock_forecast") ; //  ."range ".$datax[0]." ".$datax[1] ;
	if ($s_tank_id != "" )
		$title .= " -- ".$s_tank_id ;
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
	$graph->legend->Pos(0.02,0.05);


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
	$vez = 1 ;
	$sum_ventas = 0 ;
	$sum_xy = 0 ;
	$sum_x2 = 0;
	$prev_stock = 0 ;
	$prod = "" ;
   while ($result) {
		if ($db->f("tank_id") != $tankid) {  		
			if ($vez > 1) {
				$data1 = array() ;
				SumDataArray($super_data,$data,$periods_before,$range_date,$step,$prev_stock,$data1) ;
				$lineplot=new LinePlot($data1);
				$graph->Add($lineplot);
				$lineplot->SetColor(GetPColor($prod, $db1));
				$lineplot->SetWeight(4);
				$lineplot->SetLegend($CCSLocales->GetText("tank_id")." ".$tankid);
				$lineplot->value->SetFont(FF_FONT1,FS_BOLD);
				$lineplot->value->SetFormatCallback('barValueFormat'); 
				$lineplot->value->Show();
				//$lineplot->mark->SetType(MARK_IMG_BEVEL,'blue',0.3);
				//$lineplot->mark->SetCallbackYX('markCallback');
			}
			$data = array() ;
			iniArray($data,$range_date) ;
			$tankid = $db->f("tank_id") ;
			$vez = 2 ;
		}
		$date_tmp = $db->f("sales_date") ;
		$datax_key = array_search($date_tmp, $datax) ;
		$data[$datax_key] = round($db->f("sales"),0) ;
		$prev_stock = strval(round($db->f("stock"),0)) ;
		$prod = $db->f("prod") ;
   		$result = $db->next_record(); 
   }	
	$data1 = array() ;
	SumDataArray($super_data,$data,$periods_before,$range_date,$step,$prev_stock,$data1) ;
 	$lineplot=new LinePlot($data1);
	$graph->Add($lineplot);
	$lineplot->SetColor(GetPColor($prod, $db1));
	$lineplot->SetWeight(4);
	//$lineplot->SetLegend($tankid);
	$lineplot->value->SetFormatCallback('barValueFormat'); 
	$lineplot->value->Show();
//	$lineplot->mark->SetType(MARK_IMG_BEVEL,'blue',0.3);
//	$lineplot->mark->SetCallbackYX('markCallback');
	$lineplot->value->SetFont(FF_FONT1,FS_BOLD);
	$lineplot->SetLegend($CCSLocales->GetText("tank_id")." ".$tankid);

 $db->close() ;
 $db1->close() ;

	$data_tmp = array() ;
	$x_bound = ($range_date-($perdiods_before-1)) ;
	for ($i=0;$i<=$x_bound;$i++) {
		$data_tmp[$i] = $datax[($periods_before -1) + $i] ;
	}

	$datax = array() ;
	for ($i=0;$i<=$x_bound;$i++) {
		$datax[$i] = "" ;
	}
	for ($i=0;$i<=$x_bound;$i++) {
		//$data[$i] = strval(round($data_tmp[$i],0)) ;
		$datax[$i] = $data_tmp[$i] ;
	}


	$graph->xaxis->SetTickLabels($datax); 

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

function MonthAdd($v,$d=null , $f="Ymd"){ 
 $d=($d?$d:date("Ymd")); 
 return date($f,strtotime($v." months",strtotime($d))); 
}

function iniArrayXMonth(&$data, $bound, $s_date) {
	$s_date_tmp = strtotime($s_date) ;
	$data[0] = date("Ym",$s_date_tmp) ;
	for ($i=1;$i<=$bound;$i++) {
		$s_date_tmp = strtotime(MonthAdd($i,$s_date)) ;
		$data[$i] = date("Ym",$s_date_tmp) ;
	} 
}

function markCallback($y,$x) {
global $periods_before ;
    // Return array width
    // width,color,fill color, marker filename, imgscale
	//if ($datax_key > $periods_before)
	if ($x >= $periods_before)
		return array(false,false,false,'green',0.8);
	else
		return array(false,false,false,'green',0.2);

}	

function SumDataArray(&$s_data, &$data,$b_periods,$range_date,$step,$stock,&$data1) {
	$sum_ventas = 0 ;
	$sum_xy = 0 ;
	$sum_x2 = 0;
	$stock_tmp ;
	for ($i=0;$i<=$b_periods;$i++) {
		$sum_ventas += $data[$i] ;
		$sum_xy += ($s_data[$i]["x"] * $data[$i]) ;
		$sum_x2 += $s_data[$i]["x2"] ;
	}
	$data[$b_periods - 1] = $stock ;
	$coeficiente = $s_data[$b_periods-1]["x"] ;
	$stock_tmp = $stock ;
	for ($i=$b_periods;$i<=$range_date;$i++) {
		$a = $sum_ventas / $b_periods ;
		$b = $sum_xy / $sum_x2 ;
		$coeficiente += $step ;
		$pronostico = $a + ($b * $coeficiente) ;
		$pronostico = round($pronostico,0) ;
		if ($pronostico < 0 )
			$pronostico = 0 ;
		$stock_tmp -= $pronostico ;
		$data[$i] =  strval($stock_tmp) ; //strval($pronostico) ; //strval($coeficiente) ;
	}

	$data_tmp = array() ;
	$x_bound = $range_date-($b_periods-1) ;
	for ($i=0;$i<=$x_bound;$i++) {
		$data_tmp[$i] = $data[($b_periods -1) + $i] ;
	}
	$data = array() ;	
	for ($i=0;$i<=$range_date;$i++) {
		$data[$i] = 0 ;
	}
	for ($i=0;$i<=$x_bound;$i++) {
		//$data[$i] = strval(round($data_tmp[$i],0)) ;
		$data1[$i] = $data_tmp[$i] ;
	}
}


?>