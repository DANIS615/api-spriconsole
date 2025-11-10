<?php
//BindEvents Method @1-29FB7D74
function BindEvents()
{
    global $masterexport;
    global $CCSEvents;
    $masterexport->del_description->CCSEvents["BeforeShow"] = "masterexport_del_description_BeforeShow";
    $masterexport->lbldate->CCSEvents["BeforeShow"] = "masterexport_lbldate_BeforeShow";
    $masterexport->CCSEvents["AfterSubmit"] = "masterexport_AfterSubmit";
    $masterexport->CCSEvents["BeforeShowRow"] = "masterexport_BeforeShowRow";
    $masterexport->ds->CCSEvents["BeforeExecuteSelect"] = "masterexport_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method


//masterexport_del_description_BeforeShow @8-C087CBDE
function masterexport_del_description_BeforeShow(& $sender)
{
    $masterexport_del_description_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_del_description_BeforeShow

//Custom Code @9-2A29BDB7
 global $CCSLocales ;
 $Component->SetValue($CCSLocales->GetText($Component->GetValue())) ;
//End Custom Code

//Close masterexport_del_description_BeforeShow @8-9A8A1337
    return $masterexport_del_description_BeforeShow;
}
//End Close masterexport_del_description_BeforeShow

//masterexport_lbldate_BeforeShow @33-CE07D1B4
function masterexport_lbldate_BeforeShow(& $sender)
{
    $masterexport_lbldate_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_lbldate_BeforeShow

//Custom Code @34-2A29BDB7
 	$strActualValue = DateAdd($masterexport->del_days->GetValue() * (-1),date()) ;
    $Component->setValue(CCSubStr($strActualValue,6,2)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,0,4));

//End Custom Code

//Close masterexport_lbldate_BeforeShow @33-A4F5AD67
    return $masterexport_lbldate_BeforeShow;
}
//End Close masterexport_lbldate_BeforeShow

//masterexport_AfterSubmit @4-CFEB84CE
function masterexport_AfterSubmit(& $sender)
{
    $masterexport_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_AfterSubmit

//Custom Code @14-2A29BDB7
  	include_once("../Service/SSFScheduleTasks.php") ;
  	$schtask = new ScheduleTasks() ;
  	global $CCSLocales ; 

  	for($masterexport->RowNumber = 1; $masterexport->RowNumber <= $masterexport->TotalRows; $masterexport->RowNumber++)
  	{
  		$del_id = $masterexport->FormParameters["del_id"][$masterexport->RowNumber] ;
		$date_from = $masterexport->FormParameters["lbldate"][$masterexport->RowNumber] ;
 		$strActualValue = $date_from ;
    	$date_from = CCSubStr($strActualValue,6,4).CCSubStr($strActualValue,3,2).CCSubStr($strActualValue,0,2);

  	    $masterexport->DataSource->CurrentRow = $masterexport->RowNumber;
 	    $masterexport->CheckBox_Update->SetText($masterexport->FormParameters["CheckBox_Update"][$masterexport->RowNumber], $masterexport->RowNumber);
  	    if ($masterexport->UpdatedRows >= $masterexport->RowNumber) {
  			if($masterexport->CheckBox_Update->Value) {
  				$schtask->DeleteData($del_id,$date_from) ;
  				//$masterexport->Errors->addError($CCSLocales->GetText("ssf_interface")." ".$del_id." ".$CCSLocales->GetText("exported")) ;
  				//echo " del_id ".$del_id." valor 1 ".$date_from ;
  			}
 		}
  	}
	
//End Custom Code

//Close masterexport_AfterSubmit @4-E44EF7A1
    return $masterexport_AfterSubmit;
}
//End Close masterexport_AfterSubmit

//masterexport_BeforeShowRow @4-45E0CA66
function masterexport_BeforeShowRow(& $sender)
{
    $masterexport_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_BeforeShowRow

//Custom Code @15-2A29BDB7
  global $thistype ;
  global $CCSLocales ;
  	if ($masterexport->type->GetValue() != $thistype ) {
  		$thistype = $masterexport->type->GetValue() ;
  		$tabla = " <tr class=\"Row\"> ".
  		" <td colspan=\"5\" style=\"FONT-WEIGHT: bold;background-color:9CA9CE\" align=\"left\">".$CCSLocales->GetText($thistype."_MODULE")."</td> ".
  		" </tr> " ;
  		$masterexport->Attributes->SetValue("newrow1",$tabla) ;
  	} else {
  		$masterexport->Attributes->SetValue("newrow1","") ;
  	}
//End Custom Code

//Close masterexport_BeforeShowRow @4-3896EA96
    return $masterexport_BeforeShowRow;
}
//End Close masterexport_BeforeShowRow

//masterexport_ds_BeforeExecuteSelect @4-066CE3E2
function masterexport_ds_BeforeExecuteSelect(& $sender)
{
    $masterexport_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_ds_BeforeExecuteSelect

//Custom Code @16-2A29BDB7
  	$Component->DataSource->Where = " del_module = 'GENERIC' " ;
  	if ( CCGetSession("POSMOD") == "Y" )	
  		$Component->DataSource->Where .= " or del_module = 'TICKET' " ;
  	if ( CCGetSession("TanksMenu") == "Y" )	
  		$Component->DataSource->Where .= " or del_module = 'TANK' " ;
//End Custom Code

//Close masterexport_ds_BeforeExecuteSelect @4-43AA5658
    return $masterexport_ds_BeforeExecuteSelect;
}
//End Close masterexport_ds_BeforeExecuteSelect


//Page_AfterInitialize @1-D6D0A9D9
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFDeleteTables; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_OPE_DEL_TBL") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//DEL  



?>
