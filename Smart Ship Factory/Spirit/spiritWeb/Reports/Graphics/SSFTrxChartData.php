<?php
define("RelativePath", "../..");
include(RelativePath . "/Common.php");
include(RelativePath . "/Myfunctions.php");
include(RelativePath . "/Reports/jpgraph/jpgraph.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_pie.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_pie3d.php");
include(RelativePath . "/Reports/jpgraph/jpgraph_canvas.php");
include_once(RelativePath . "/Service/SSFLogs.php");

    global $CCSLocales ;
	$s_date_from = CCGetParam("s_date_from") ;
	$s_date_to = CCGetParam("s_date_to") ;
	$s_pump_id = CCGetParam("s_pump_id") ;
	$s_unit_option = CCGetParam("s_unit_option",1) ;
	$s_unit_id = CCGetParam("s_unit_id") ;
	$s_time_from = CCGetParam("s_time_from") ;
	$s_time_to = CCGetParam("s_time_to") ;

	if ($s_time_from != "" )
		$s_time_from = substr($s_time_from,0,2).substr($s_time_from,3,2).substr($s_time_from,6,2) ;

	if ($s_time_to != "" )
		$s_time_to = substr($s_time_to,0,2).substr($s_time_to,3,2).substr($s_time_to,6,2)  ; 

	//import_request_variables("gp", "s_") ;
	//setcookie("SPIRITWEB",$s_unit_id) ;
	
	if ($s_unit_option == 1)
   		$ssfQuery = "SELECT grade_id, SUM(volume) as money FROM ssf_pump_sales, config_values b, config_values c  ";
	else
		$ssfQuery = "SELECT grade_id, SUM(money) as money FROM ssf_pump_sales, config_values b, config_values c ";
   $ssfQuery .= " where end_date >= '".$s_date_from. "'" ;
   if  ($s_date_to != "" )
   		$ssfQuery .= " and end_date <= '".$s_date_to. "'" ; 
	if ($s_pump_id != "" )
   		$ssfQuery .= " and pump_id = '".$s_pump_id. "'" ; 	
	if ($s_date_from != "" && $s_time_from != "" )
		$ssfQuery .= " and ( end_date ".ReplaceSqlConcat("SQLConcat") ."  end_time >= '".$s_date_from.$s_time_from. "' )" ; 
	if ($s_date_to != "" && $s_time_to != "" )
		$ssfQuery .= " and ( end_date ".ReplaceSqlConcat("SQLConcat") ."  end_time <= '".$s_date_to.$s_time_to. "' )" ; 

	$ssfQuery .= " and b.library = 'grade' ".
				 " and b.groupname = 'general' ".
				 " and b.parameter = 'number' ".
				" and b.param_value = grade_id ".
				" and c.library = b.library ".
				" and c.groupname = b.groupname ".
				" and b.id =  c.id ".
				" and c.parameter = 'vol_unit_desc' " ;
	if ($s_unit_id != "" )
		$ssfQuery .= " and c.param_value = '".$s_unit_id."'" ;
   $ssfQuery .= " GROUP BY grade_id  ";
   $db = new clsDBConnection1();
   $db1 = new clsDBConnection1();
   $db2 = new clsDBConnection1();
  
	$graph = new PieGraph(700,400,"auto");
	$graph->SetShadow();
	//$graph->SetFrame(false);
	$title = $CCSLocales->GetText("ssf_pump_sales_by_grade") ;
	$strActualValue = $s_date_from ;
	$title .= " -- ".$CCSLocales->GetText("period_start_date").": ".CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2) ;
	$strActualValue = $s_date_to ;
	$title .= " ".$CCSLocales->GetText("period_end_date").": ".CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2) ;

	$graph->title->Set($title);
	$graph->title->SetFont(FF_FONT1,FS_BOLD);


  $db->query($ssfQuery);
  $result = $db->next_record(); 

  $array_legends = array() ;
  $array_colors = array() ;
  $data = array() ;
  $vez = 0 ;
  while ($result) {
  		$prod_desc = "" ;
		$monto = $db->f("money") ;
		$monto_format =  number_format($db->f("money"),2,$CCSLocales->GetFormatInfo("DecimalSeparator"),$CCSLocales->GetFormatInfo("GroupSeparator")) ;
  		$prod_desc = GetProductName($db->f("grade_id"), $db1) ;
		$array_colors[$vez] = GetColor($prod_desc, $db2) ;

		$prod_desc .= " ( " ;
		if ($s_unit_option == 2)
			$prod_desc .= "$" ;
		$prod_desc .= $monto_format." )" ;
		$array_legends[$vez] = $prod_desc ;

		$data[$vez] = $monto ;
		$vez++ ;
		$result = $db->next_record();
	}
	
	
	$p1 = new PiePlot3d($data);
	$p1->SetCenter(0.4,0.4);
	$p1->SetSize(200);
	$p1->SetAngle(45);
	$p1->SetStartAngle(45);

	// Display the slice values
	$p1->value->SetFont(FF_FONT1,FS_BOLD,11);
	$p1->value->SetColor("navy");

	$p1->SetEdge("navy");

	$p1->SetLegends($array_legends);
	$p1->SetSliceColors($array_colors);
	$graph->Add($p1);


   $db->close() ;
   $db1->close() ;
   $db2->close() ; 


  if ($vez > 0) {
  	$graph->Stroke();
  } else {
		$g = new CanvasGraph(400,300,'auto');
		$g->SetMargin(5,11,6,11);
		$txt=$CCSLocales->GetText("ssf_no_data")." !!!";
		$t = new Text($txt,200,10);
		$t->SetFont(FF_FONT1,FS_BOLD,20);
		$t->Align('center','top');
		$t->ParagraphAlign('center');
		$t->SetBox("white","black","gray");
		$t->Stroke($g->img);
		$g->Stroke();
  }


?>