<?php
//BindEvents Method @1-96456151
function BindEvents()
{
    global $Label1;
    global $CCSEvents;
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Label1_BeforeShow @3-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @4-2A29BDB7
	define('TINYAJAX_PATH', '../tinyajax'); 
    require_once(TINYAJAX_PATH . "/TinyAjax.php"); 
	global $CCSLocales ;

// Extend TinyAjax 
class TinyAjaxInterface extends TinyAjax  
{     
    // Constructor exports the function 
    function __construct() { 
    } 
} 

    function callViewData($valor) { 
		global $CCSLocales ;
		$values = split("!",$valor) ;
		$event_id = $values[2] ;
	  	$event_date = $values[6] ;
		$event_date_to = $values[10] ;
		$event_time_from = $values[14] ;
		$event_time_to = $values[18] ;
		$user_id = $values[22] ;

        $estructura = " <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"> ".
          			  " <tr> ". 
            				" <td class=\"HeaderLeft\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> ". 
            				" <th> ".$CCSLocales->GetText("ssf_events_done")." </th> ".
		            		" <td class=\"HeaderRight\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> ".
          			  " </tr> ".
        			  " </table> " ;

		$estructura .= " <table class=\"Grid\" cellspacing=\"0\" cellpadding=\"0\"> ".
          				" <tr class=\"Caption\"> ".
            				" <th> ".$CCSLocales->GetText("slb_event_id")." </th> ".
 				            " <th style=\"text-align:center\" > ".$CCSLocales->GetText("ssf_date")." </th> ".
							" <th style=\"text-align:center\" > ".$CCSLocales->GetText("ssf_time")." </th> ".
 			            	" <th style=\"text-align:center\" > ".$CCSLocales->GetText("user_id")."</th> ".
             				" <th> ".$CCSLocales->GetText("slb_desc"). " </th> ".
          					" </tr> " ;

		$db = new clsDBConnection1() ;	
		$event_id_empty = $event_id != "" ? " slb_event_id = ".$event_id : " slb_event_id > 0 " ;

		$where = " where ".$event_id_empty ;
		if ($event_date != "") {
			$where .= " and slb_event_date >= '".$event_date."'"  ;
			if ($event_time_from != "")
				$where .= " and slb_event_date SQLConcat slb_event_time >= '".$event_date.$event_time_from. "'"  ;
		} else {
			if ($event_time_from != "")
				$where .= " and slb_event_time >= '".$event_time_from. "'"  ;
		}

		if ($event_date_to != "") {
			$where .= " and slb_event_date <= '".$event_date_to."'"  ;
			if ($event_time_to != "")
				$where .= " and slb_event_date SQLConcat slb_event_time <= '".$event_date_to.$event_time_to. "'"  ;
		} else {
			if ($event_time_to != "")
				$where .= " and slb_event_time <= '".$event_time_to. "'"  ;
		}
		if ($user_id != "")
			$where .= " and slb_userid = '".$user_id."'"  ;
		
		$order = " order by slb_event_date desc,slb_event_time desc " ;
		$where = ReplaceSqlConcat($where) ;
		global $CCConnectionSettings ;
		switch ($CCConnectionSettings["Connection1"]["Type"]) {
			case ("PostgreSQL"):
				$sql = "Select * from ssf_addin_slb_events_log ".$where.$order. " limit 30 " ;
				break;
			case ("MSSQLServer"):
				$sql = "Select top 30 * from ssf_addin_slb_events_log ".$where.$order ;
				break;
			default:
				$sql = "Select * from ssf_addin_slb_events_log ".$where.$order." limit 30 " ;
		}
		$db->query($sql) ;
		$result = $db->next_record() ;		
		if ($result) {
			$i = 1 ;
			while ($result) {
				$estructura .= " <tr class=\"Row\"> " ;
				$estructura .= " <td> ". $db->f("slb_event_id")." </td> " ; 

				$strActualValue =  $db->f("slb_event_date") ;
			    $strActualValue = CCSubStr($strActualValue,6,2)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,0,4);

				$estructura .= " <td align=\"center\" >". $strActualValue." </td> " ; 

				$strActualValue =  $db->f("slb_event_time") ;
			    $strActualValue = CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2);

				$estructura .= " <td align=\"center\" >". $strActualValue." </td> " ; 

				$estructura .= " <td align=\"center\" > ". $db->f("slb_userid")." </td> " ; 
				$estructura .= " <td> ". $db->f("slb_desc")." </td> " ; 
				$estructura .= " </tr> " ;
				$result = $db->next_record() ;	
			}
		}
		$estructura .= " </table> " ;
		$db->Close() ;
		return  $estructura ;	
		//return  print_r($values) ;	
		//return  $sql  ;	
    } 
     
    // Create a instance of our extended TinyAjax-class 
    $ajax = new TinyAjaxInterface(); 
    $ajax->showLoading(true); 
     
    // Export the functions we want to use 
	$ajax->exportFunction("callViewData", "log_search","#filas");      
    // Magic 
    $ajax->process(); 
	$ajax->drawJavaScript(true, true) ;
//End Custom Code

//Close Label1_BeforeShow @3-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//Page_AfterInitialize @1-EFFAB1AE
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFLogBookViewer; //Compatibility
//End Page_AfterInitialize

//Custom Code @16-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = false ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CONF_EVENT_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  //


?>
