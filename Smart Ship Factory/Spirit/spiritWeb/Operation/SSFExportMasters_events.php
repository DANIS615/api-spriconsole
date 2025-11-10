<?php
//BindEvents Method @1-444AC430
function BindEvents()
{
    global $masterexport;
    global $CCSEvents;
    $masterexport->master_description->CCSEvents["BeforeShow"] = "masterexport_master_description_BeforeShow";
    $masterexport->CCSEvents["AfterSubmit"] = "masterexport_AfterSubmit";
    $masterexport->CCSEvents["BeforeShowRow"] = "masterexport_BeforeShowRow";
    $masterexport->ds->CCSEvents["BeforeExecuteSelect"] = "masterexport_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//masterexport_master_description_BeforeShow @24-167A8B83
function masterexport_master_description_BeforeShow(& $sender)
{
    $masterexport_master_description_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_master_description_BeforeShow

//Custom Code @28-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText($Component->GetValue())) ;
//End Custom Code

//Close masterexport_master_description_BeforeShow @24-BB1001A2
    return $masterexport_master_description_BeforeShow;
}
//End Close masterexport_master_description_BeforeShow

//DEL  

//masterexport_AfterSubmit @21-CFEB84CE
function masterexport_AfterSubmit(& $sender)
{
    $masterexport_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_AfterSubmit

//Custom Code @27-2A29BDB7
	
	include_once("../Service/SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	global $CCSLocales ;
	$datatoexport = false ;

	for($masterexport->RowNumber = 1; $masterexport->RowNumber <= $masterexport->TotalRows; $masterexport->RowNumber++)
	{
		$master_id = $masterexport->FormParameters["master_id"][$masterexport->RowNumber] ;
	    $masterexport->DataSource->CurrentRow = $masterexport->RowNumber;
	    $masterexport->CheckBox_Update->SetText($masterexport->FormParameters["CheckBox_Update"][$masterexport->RowNumber], $masterexport->RowNumber);
	    if ($masterexport->UpdatedRows >= $masterexport->RowNumber) {
			if($masterexport->CheckBox_Update->Value) {
				//echo "Ejecuta update role ".$master_id. " action ".$master_id ;
				$schtask->ExportMaster($master_id) ;
				//$masterexport->Errors->addError($CCSLocales->GetText("ssf_interface")." ".$master_id." ".$CCSLocales->GetText("exported")) ;
				$datatoexport = true ;
			}
		}
	}
	if ($datatoexport) {
		$_dir = "../data/master/" ;
		$createZip = new createZip;  
		$createZip->addDirectory($_dir);

		for($masterexport->RowNumber = 1; $masterexport->RowNumber <= $masterexport->TotalRows; $masterexport->RowNumber++)
		{
			$file_des = $masterexport->FormParameters["file_des"][$masterexport->RowNumber] ;
		    $masterexport->DataSource->CurrentRow = $masterexport->RowNumber;
		    $masterexport->CheckBox_Update->SetText($masterexport->FormParameters["CheckBox_Update"][$masterexport->RowNumber], $masterexport->RowNumber);
		    if ($masterexport->UpdatedRows >= $masterexport->RowNumber) {
				if($masterexport->CheckBox_Update->Value) {
					$filename = $_dir."exportmaster".$file_des.".xml" ;
					$fileContents = file_get_contents($filename);  
					$createZip->addFile($fileContents, $filename);  
					unlink($filename) ;
				}
			}
		}
		$zipfile = $_dir."mastersconf.zip";
		$fd = fopen ($zipfile, "wb");
		$out = fwrite ($fd, $createZip->getZippedfile());
		fclose ($fd);

		global $Redirect ;
		$Redirect = "SSFMasterDownLoad.php?filename=../data/master/mastersconf.zip" ; 

	} 

//End Custom Code

//Close masterexport_AfterSubmit @21-E44EF7A1
    return $masterexport_AfterSubmit;
}
//End Close masterexport_AfterSubmit

//masterexport_BeforeShowRow @21-45E0CA66
function masterexport_BeforeShowRow(& $sender)
{
    $masterexport_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_BeforeShowRow

//Custom Code @34-2A29BDB7
global $thistype ;
global $CCSLocales ;
	if ($masterexport->type->GetValue() != $thistype ) {
		$thistype = $masterexport->type->GetValue() ;
		$tabla = " <tr class=\"Row\"> ".
		" <td colspan=\"5\" style=\"FONT-WEIGHT: bold;background-color:9CA9CE\" align=\"left\">".$CCSLocales->GetText($thistype)."</td> ".
		" </tr> " ;
		$masterexport->Attributes->SetValue("newrow",$tabla) ;
	} else {
		$masterexport->Attributes->SetValue("newrow","") ;
	}
//End Custom Code

//Close masterexport_BeforeShowRow @21-3896EA96
    return $masterexport_BeforeShowRow;
}
//End Close masterexport_BeforeShowRow

//masterexport_ds_BeforeExecuteSelect @21-066CE3E2
function masterexport_ds_BeforeExecuteSelect(& $sender)
{
    $masterexport_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterexport; //Compatibility
//End masterexport_ds_BeforeExecuteSelect

//Custom Code @35-2A29BDB7
$masterpos = "" ;
$masterconf = "SELECT 1 as id, 'CONFG' as master_id, 'ssf_generic_conf' as master_description, 'confg' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 2 as id, 'CONFD' as master_id, 'ssf_device_conf' as master_description, 'confd' as file_des,'ssf_import_spirit_admin' as type\n" .
        "union\n" .
        "SELECT 3 as id, 'TENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'tender' as file_des,'ssf_import_spirit_admin' as type\n" ;

if ( CCGetSession("POSMOD") == "Y" ) {
	$masterpos = " union\n" .
        "SELECT 1001 as id, 'UOM' as master_id, 'ssf_mnu_tkt_uom_config' as master_description, 'uom' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1002 as id, 'POSTENDER' as master_id, 'ssf_mnu_tkt_tender_config' as master_description, 'postender' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1003 as id, 'SPEED' as master_id, 'speedkey' as master_description, 'speed' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1004 as id, 'CATEG' as master_id, 'ssf_mnu_tkt_categ_config' as master_description, 'categ' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1005 as id, 'PROD' as master_id, 'ssf_mnu_tkt_prod_config' as master_description, 'prod' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1006 as id, 'TAXGRP' as master_id, 'ssf_mnu_tkt_group_taxes_config' as master_description, 'taxgrp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1007 as id, 'TAXES' as master_id, 'ssf_mnu_tkt_tax_config' as master_description, 'taxes' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1008 as id, 'CUST' as master_id, 'ssf_tkt_customers_types' as master_description, 'customer' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1009 as id, 'CUSTYP' as master_id, 'ssf_tkt_customers' as master_description, 'custyp' as file_des,'ssf_import_ticket_module' as type\n" .
        "union\n" .
        "SELECT 1010 as id, 'RECF' as master_id, 'ssf_tkt_receipt_format' as master_description, 'recf' as file_des,'ssf_import_ticket_module' as type";
}


 	$masterexport->DataSource->SQL = $masterconf.$masterpos ;
	$masterexport->DataSource->CountSQL = "SELECT COUNT(*) FROM ( ".$masterexport->DataSource->SQL.") cnt" ;

//End Custom Code

//Close masterexport_ds_BeforeExecuteSelect @21-43AA5658
    return $masterexport_ds_BeforeExecuteSelect;
}
//End Close masterexport_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-F2C1F9DB
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFExportMasters; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_OPE_EXM") ;

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
