<?php
define("RelativePath", "../..");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Myfunctions.php");
include(RelativePath . "/Reports/jpgraph/jpgraph.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_line.php");
include(RelativePath . "/Reports/jpgraph/FC_Colors.php");

	global $CCSLocales ;
	///////////////////
	// Traer parametros
	///////////////////
	
	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_grade_id = CCGetParam("s_grade_id") ;
	$btnrepoption = CCGetParam("btnrepoption",1) ;
	$s_is_detail = (CCGetParam("isdetail") == 1) ;


	///////////////////
	// Armar Query 
	///////////////////

	$range_date = datediff($s_date_from,$s_date_to) ;
	//echo "range date ".$range_date;
	$datax = array() ;
	iniArrayX(& $datax,$range_date, $s_date_from ) ;
		
		$ssfQuery = " select fl_date, fl_pump, fl_hose, fl_max_flow, (fl_hose ".ReplaceSqlConcat("SQLConcat") ." fl_pump) as cutcontrol, d.param_value as flow_critical, e.param_value as flow_warn, c.param_value as grade_id   " ;
		$ssfQuery .= " from ssf_addin_flow_control_data a , config_values b, config_values c, ssf_generic_config_values d, ssf_generic_config_values e " ;
		$ssfQuery .= " where fl_date >= '".$s_date_from. "'" ; 
		$ssfQuery .= " and fl_date <= '".$s_date_to. "'" ; 
		$ssfQuery .= " and  b.library = 'pump' " ;
		$ssfQuery .= " and b.groupname = 'subinfo' " ;
		$ssfQuery .= " and b.parameter = 'logical_id' " ;
		$ssfQuery .= " and ".ReplaceNumberConvertion("b.id","'99'")." = a.fl_pump " ;
		$ssfQuery .= " and ".ReplaceNumberConvertion("b.param_value","'99'")." = a.fl_hose " ;
		if ($s_pump_id != "" )
   			$ssfQuery .= " and a.fl_pump = ".$s_pump_id ; 	
		$ssfQuery .= " and b.library = c.library " ;
		$ssfQuery .= " and b.id = c.id " ;
		$ssfQuery .= " and b.groupname = c.groupname " ;
		$ssfQuery .= " and b.device_id = c.device_id " ;
		$ssfQuery .= " and c.parameter = 'grade' " ;
		if ($s_grade_id != "" )
   			$ssfQuery .= " and c.param_value = '".$s_grade_id. "'" ; 	
		$ssfQuery .= " and d.library = 'Flow Control' and d.groupname = 'device:pump' and d.device_id = b.id " ;
		$ssfQuery .= " and d.parameter = 'flow_critical' and d.param_value <> '0' " ;
		$ssfQuery .= " and e.library = 'Flow Control' and e.groupname = 'device:pump' and e.device_id = b.id " ;
		$ssfQuery .= " and e.parameter = 'flow_warn' and e.param_value <> '0' " ;
		if ($btnrepoption == 1) 
			$ssfQuery .= " order by fl_hose, fl_pump, fl_date " ;
		else
			$ssfQuery .= " order by c.param_value, fl_pump, fl_date " ;

	//setcookie("SPIRITWEB",$datax[0]." ".$datax[1]) ; 

	///////////////////
	//Inicializar Gráfico
	///////////////////

	// Create the graph. These two calls are always required
	if ($s_is_detail) {
		$graph = new Graph(400,300,"auto");    
		$graph->img->SetMargin(40,50,40,70);
	} else {
		$graph = new Graph(1000,600,"auto");    
		$graph->img->SetMargin(40,250,40,80);
		$graph->SetShadow();
	}
	if ($range_date > 20 )
		$graph->SetScale("linlin");
	else
		$graph->SetScale("textlin");
	
	$graph->img->SetAntiAliasing();
	$graph->xaxis->SetTickLabels($datax); 
	if ($btnrepoption == 1) 
		$title = $CCSLocales->GetText("ssf_flow")." ".$CCSLocales->GetText("hose")." - ".$CCSLocales->GetText("pump") ;
	else
		$title = $CCSLocales->GetText("ssf_flow")." ".$CCSLocales->GetText("grade_id")." - ".$CCSLocales->GetText("pump") ;
	$graph->title->Set($title);
	$graph->xaxis->title->Set("Días");
	$graph->yaxis->title->Set($CCSLocales->GetText("ssf_flow"));

	$graph->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
	$graph->xaxis->title->SetFont(FF_FONT1,FS_NORMAL,11);
	$graph->xaxis->SetLabelAngle(90); 
	$graph->yaxis->SetColor("blue");
	$graph->legend->Pos(0.02,0.05);

	///////////////////
	// Ejecutar la consulta
	///////////////////

   $db = new clsDBConnection1();
   $db->query($ssfQuery);
   $result = $db->next_record(); 

	$data = array() ;
	iniArray(& $data,$range_date) ;
	$pumpid = "" ;
	$hose_ant = "" ;
	$pump_ant = "" ;
	$grade_ant = "" ;
	$vez = 1 ;
	global $flow_critical;
	$flow_critical = 0 ;
	global $flow_warn ;
	$flow_warn = 0 ;
    while ($result) {
		if ($db->f("cutcontrol") != $pumpid) {  		
			if ($vez > 1) {
				$lineplot=new LinePlot($data);
				SetLinePlotParameters(& $lineplot, $pumpid, $hose_ant, $pump_ant, $grade_ant ) ;
				$graph->Add($lineplot);
			}
			$data = array() ;
			iniArray(& $data,$range_date) ;
			$pumpid = $db->f("cutcontrol") ;
			$vez = 2 ;
			$hose_ant = $db->f("fl_hose")  ;
			$pump_ant = $db->f("fl_pump") ;
			$grade_ant = $db->f("grade_id") ;
			$flow_critical = $db->f("flow_critical") ;
			$flow_warn = $db->f("flow_warn") ;
		}
		
		$date_tmp = $db->f("fl_date") ;
		$datax_key = array_search($date_tmp, $datax) ;
		$data[$datax_key] = $db->f("fl_max_flow") ;

   		$result = $db->next_record(); 
   } 

	$db->Close() ;
	$lineplot=new LinePlot($data);
	SetLinePlotParameters(& $lineplot, $pumpid, $hose_ant, $pump_ant, $grade_ant ) ;
	$graph->Add($lineplot);
	//setcookie("SPIRITWEB",$data) ; 

$graph->Stroke();


function GetPumpColor($pump) {
	global $arr_FCColors ; 
	$color = $arr_FCColors[$pump] ;
	return "#".$color ;
}

function markCallback($y,$x) {
global $flow_critical ;
global $flow_warn ;

	if ($y <= 0)
		return array(false,false,false,'green',0.1);

	if ($y <= $flow_critical)
		return array(false,false,false,'red',0.8);
	
	if ($y <= $flow_warn)
			return array(false,false,false,'yellow',0.3);

	return array(false,false,false,'green',0.3);

}	


function SetLinePlotParameters(&$lineplot, $pumpid, $hose_ant, $pump_ant, $grade_ant ) {
global $s_is_detail ;
global $btnrepoption  ;
		$lineplot->SetColor(GetPumpColor($pumpid));
		$lineplot->SetWeight(2);
		if ($btnrepoption == 1) {
			if ($s_is_detail)
				$lineplot->SetLegend("(".$grade_ant.")");
			else
				$lineplot->SetLegend("Hose ".$hose_ant." (".$grade_ant.") Surt ".$pump_ant);
		} else {
			if ($s_is_detail)
				$lineplot->SetLegend("(".$pump_ant.")");
			else
				$lineplot->SetLegend("Prod ".$grade_ant." ( Surt ".$pump_ant." )");
		}
		$lineplot->value->Show();
		$lineplot->value->SetFont(FF_FONT1,FS_NORMAL);
		$lineplot ->value->SetFormat( "%d");
		$lineplot->mark->SetType(MARK_IMG_BEVEL,'blue',0.3);
		//$lineplot->mark->SetType(MARK_IMAGE,'user.gif',0.5); 
		$lineplot->mark->SetCallbackYX('markCallback');
}

?>