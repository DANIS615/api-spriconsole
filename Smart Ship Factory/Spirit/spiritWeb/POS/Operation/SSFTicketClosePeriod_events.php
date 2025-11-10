<?php
//BindEvents Method @1-45A3123D
function BindEvents()
{
    global $Label2;
    global $ssf_tkt_periodsSearch;
    global $ssf_tkt_periods;
    global $ssf_tkt_periods1;
    global $CCSEvents;
    $Label2->CCSEvents["BeforeShow"] = "Label2_BeforeShow";
    $ssf_tkt_periodsSearch->lstperiodGroup->CCSEvents["BeforeShow"] = "ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow";
    $ssf_tkt_periodsSearch->btnClose->CCSEvents["BeforeShow"] = "ssf_tkt_periodsSearch_btnClose_BeforeShow";
    $ssf_tkt_periods->tkt_period_type->CCSEvents["BeforeShow"] = "ssf_tkt_periods_tkt_period_type_BeforeShow";
    $ssf_tkt_periods->tkt_period_status->CCSEvents["BeforeShow"] = "ssf_tkt_periods_tkt_period_status_BeforeShow";
    $ssf_tkt_periods1->tkt_period_type->CCSEvents["BeforeShow"] = "ssf_tkt_periods1_tkt_period_type_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Label2_BeforeShow @61-5E5A3E45
function Label2_BeforeShow(& $sender)
{
    $Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label2; //Compatibility
//End Label2_BeforeShow

//Custom Code @62-2A29BDB7
	define('TINYAJAX_PATH', '../../tinyajax'); 
    require_once(TINYAJAX_PATH . "/TinyAjax.php"); 
	global $CCSLocales ;

// Extend TinyAjax 
class TinyAjaxInterface extends TinyAjax  
{     
    // Constructor exports the function 
    function __construct() { 
    } 
} 

    function callclose($valor) { 
		global $CCSLocales ;
		$values = split("!",$valor) ;
		$period_group = $values[6] ;
	  	$period_type = CCGetParam("s_tkt_period_type") ;

		if ($period_type == "" )
			$period_type = "S" ;

		//return $period_type." ".$period_group ;
	  	$ssfRtrClnt = new SSFRouterClient();
		$ret_code =  $ssfRtrClnt->SendReqTktClosePeriod($period_type, $period_group);

	  	if ($ret_code != "OK" ) 
	  		return  $CCSLocales->GetText(trim($ret_code));	
		else
			return "OK" ; 
    } 
     
    // Create a instance of our extended TinyAjax-class 
    $ajax = new TinyAjaxInterface(); 
    $ajax->showLoading(true); 
     
    // Export the functions we want to use 
	$ajax->exportFunction("callclose", "ssf_tkt_periodsSearch","#closerror");      
    // Magic 
    $ajax->process(); 
	$ajax->drawJavaScript(true, true) ;
//End Custom Code

//Close Label2_BeforeShow @61-C8ECDC8F
    return $Label2_BeforeShow;
}
//End Close Label2_BeforeShow

//ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow @49-EB42A2E4
function ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow(& $sender)
{
    $ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_periodsSearch; //Compatibility
//End ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow

//Custom Code @53-2A29BDB7
global $Tpl;
if (CCGetParam("s_tkt_period_type") == "S" or CCGetParam("s_tkt_period_type") == "") 
	$Tpl->setvar("disabledparam","") ;
else
	$Tpl->setvar("disabledparam","disabled") ;


//End Custom Code

//Close ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow @49-67F989E9
    return $ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow;
}
//End Close ssf_tkt_periodsSearch_lstperiodGroup_BeforeShow

//ssf_tkt_periodsSearch_btnClose_BeforeShow @44-B5E6A739
function ssf_tkt_periodsSearch_btnClose_BeforeShow(& $sender)
{
    $ssf_tkt_periodsSearch_btnClose_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_periodsSearch; //Compatibility
//End ssf_tkt_periodsSearch_btnClose_BeforeShow

//Custom Code @45-2A29BDB7
global $EditisAllowed ;
	if (!$EditisAllowed)
		$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_periodsSearch_btnClose_BeforeShow @44-7583B84B
    return $ssf_tkt_periodsSearch_btnClose_BeforeShow;
}
//End Close ssf_tkt_periodsSearch_btnClose_BeforeShow

//ssf_tkt_periods_tkt_period_type_BeforeShow @15-1FF2B9EE
function ssf_tkt_periods_tkt_period_type_BeforeShow(& $sender)
{
    $ssf_tkt_periods_tkt_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_periods; //Compatibility
//End ssf_tkt_periods_tkt_period_type_BeforeShow

//Custom Code @21-2A29BDB7
	GetPeriodType(& $Component) ;
//End Custom Code

//Close ssf_tkt_periods_tkt_period_type_BeforeShow @15-AC347B8D
    return $ssf_tkt_periods_tkt_period_type_BeforeShow;
}
//End Close ssf_tkt_periods_tkt_period_type_BeforeShow

//ssf_tkt_periods_tkt_period_status_BeforeShow @17-4879DC2C
function ssf_tkt_periods_tkt_period_status_BeforeShow(& $sender)
{
    $ssf_tkt_periods_tkt_period_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_periods; //Compatibility
//End ssf_tkt_periods_tkt_period_status_BeforeShow

//Custom Code @20-2A29BDB7
	GetPeriodStatus(& $Component) ;
//End Custom Code

//Close ssf_tkt_periods_tkt_period_status_BeforeShow @17-51350CB3
    return $ssf_tkt_periods_tkt_period_status_BeforeShow;
}
//End Close ssf_tkt_periods_tkt_period_status_BeforeShow

//ssf_tkt_periods1_tkt_period_type_BeforeShow @38-53C3AEF8
function ssf_tkt_periods1_tkt_period_type_BeforeShow(& $sender)
{
    $ssf_tkt_periods1_tkt_period_type_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_periods1; //Compatibility
//End ssf_tkt_periods1_tkt_period_type_BeforeShow

//Custom Code @47-2A29BDB7
	GetPeriodType(& $Component) ;
//End Custom Code

//Close ssf_tkt_periods1_tkt_period_type_BeforeShow @38-A3CB5709
    return $ssf_tkt_periods1_tkt_period_type_BeforeShow;
}
//End Close ssf_tkt_periods1_tkt_period_type_BeforeShow

//Page_AfterInitialize @1-BD5A8812
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketClosePeriod; //Compatibility
//End Page_AfterInitialize

//Custom Code @46-2A29BDB7
global $CCSLocales ;
global $ssf_tkt_periodsSearch ;
global $EditisAllowed ;

  if (CCGetParam("btnClose") != "" ) {
  	$period_type = CCGetParam("s_tkt_period_type") ;
	/*if ($period_type == "" )
		$period_type = "S" ;

	if ($period_type == "S") 
		$period_group = $ssf_tkt_periodsSearch->lstperiodGroup->GetValue() ;

  	$ssfRtrClnt = new SSFRouterClient();
  	$returncode = $ssfRtrClnt->SendReqTktClosePeriod($period_type,$period_group);
  	if ($returncode != "OK" ) {
  		  $ssf_tkt_periodsSearch->Errors->addError($CCSLocales->GetText($returncode));	
	}*/
  } else {
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("REQ_TKT_PERIOD_CLOSE") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,false,$PathToRoot,$Redirect) ;
  }

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function GetPeriodStatus(& $Component) {
	global $CCSLocales ;
	if ($Component->GetValue() == "O" )
		$Component->SetValue($CCSLocales->GetText("opened")) ;
	else
		$Component->SetValue($CCSLocales->GetText("closed")) ;
}

function GetPeriodType(& $Component)  {
	global $CCSLocales ;
	switch  ($Component->GetValue())
	{
	case "S":
		$Component->SetValue($CCSLocales->GetText("Shift")) ;
		break ;
	case "D":
		$Component->SetValue($CCSLocales->GetText("day")) ;
		break ;
	case "M":
		$Component->SetValue($CCSLocales->GetText("month")) ;
		break ;
	case "Y":
		$Component->SetValue($CCSLocales->GetText("year")) ;
		break ;
	}
}

?>

