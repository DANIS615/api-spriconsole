<?php
//BindEvents Method @1-5EB9A9B7
function BindEvents()
{
    global $NewRecord1;
    global $masterimport;
    global $CCSEvents;
    $NewRecord1->Label2->CCSEvents["BeforeShow"] = "NewRecord1_Label2_BeforeShow";
    $masterimport->master_description->CCSEvents["BeforeShow"] = "masterimport_master_description_BeforeShow";
    $masterimport->CheckBox_DeleteData->CCSEvents["BeforeShow"] = "masterimport_CheckBox_DeleteData_BeforeShow";
    $masterimport->CCSEvents["AfterSubmit"] = "masterimport_AfterSubmit";
    $masterimport->CCSEvents["BeforeShowRow"] = "masterimport_BeforeShowRow";
    $masterimport->ds->CCSEvents["BeforeExecuteSelect"] = "masterimport_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//NewRecord1_Label2_BeforeShow @46-F318C7FE
function NewRecord1_Label2_BeforeShow(& $sender)
{
    $NewRecord1_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $NewRecord1; //Compatibility
//End NewRecord1_Label2_BeforeShow

//Custom Code @47-2A29BDB7
	$Component->SetValue("(mastersconf.zip)") ;
//End Custom Code

//Close NewRecord1_Label2_BeforeShow @46-DA1490B4
    return $NewRecord1_Label2_BeforeShow;
}
//End Close NewRecord1_Label2_BeforeShow

//DEL  

//masterimport_master_description_BeforeShow @24-7C3D50F5
function masterimport_master_description_BeforeShow(& $sender)
{
    $masterimport_master_description_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterimport; //Compatibility
//End masterimport_master_description_BeforeShow

//Custom Code @28-2A29BDB7
global $CCSLocales ;
$Component->SetValue($CCSLocales->GetText($Component->GetValue())) ;
//End Custom Code

//Close masterimport_master_description_BeforeShow @24-DB5E1B62
    return $masterimport_master_description_BeforeShow;
}
//End Close masterimport_master_description_BeforeShow


//masterimport_CheckBox_DeleteData_BeforeShow @42-AC725DF9
function masterimport_CheckBox_DeleteData_BeforeShow(& $sender)
{
    $masterimport_CheckBox_DeleteData_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterimport; //Compatibility
//End masterimport_CheckBox_DeleteData_BeforeShow

//Custom Code @43-2A29BDB7
global $Tpl;
global $PathToRoot ;

	if ($masterimport->master_id->GetValue() == "CONFD") {
		global $PathToRoot ;
		$Tpl->setvar("disabledparam","disabled") ;
		$Component->SetValue(true) ;
	} else {
		$Tpl->setvar("disabledparam","") ;
	}
	
	global $AllowFileImport ;

	$namefile = $PathToRoot."data/master/exportmaster".$masterimport->file_des->GetValue().".xml" ;
	if (file_exists($namefile)) {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/yep.ico") ;
		$AllowFileImport = true ;
	} else {
		$Tpl->SetVar("imgfileexists", $PathToRoot."/Styles/images/nop.ico") ;
	}

	if (!$AllowFileImport)
		$Tpl->setvar("disabledbuton","disabled") ;
	else
		$Tpl->setvar("disabledbuton","") ;

//End Custom Code

//Close masterimport_CheckBox_DeleteData_BeforeShow @42-46830578
    return $masterimport_CheckBox_DeleteData_BeforeShow;
}
//End Close masterimport_CheckBox_DeleteData_BeforeShow



//masterimport_AfterSubmit @21-BD718049
function masterimport_AfterSubmit(& $sender)
{
    $masterimport_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterimport; //Compatibility
//End masterimport_AfterSubmit

//Custom Code @27-2A29BDB7
	
	include("../Service/SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	global $CCSLocales ;
	global $PathToRoot ;

	for($masterimport->RowNumber = 1; $masterimport->RowNumber <= $masterimport->TotalRows; $masterimport->RowNumber++)
	{
		$master_id = $masterimport->FormParameters["master_id"][$masterimport->RowNumber] ;
	    $masterimport->DataSource->CurrentRow = $masterimport->RowNumber;
	    $masterimport->CheckBox_Update->SetText($masterimport->FormParameters["CheckBox_Update"][$masterimport->RowNumber], $masterimport->RowNumber);
	    if ($masterimport->UpdatedRows >= $masterimport->RowNumber) {
			if($masterimport->CheckBox_Update->Value) {
				$deletealldata = $masterimport->CheckBox_DeleteData->Value ;
				//echo "Ejecuta update role ".$master_id. " action ".$master_id ;
				$schtask->Import($master_id,true,$deletealldata,$PathToRoot) ;
				$masterimport->Errors->addError($CCSLocales->GetText("ssf_interface")." ".$master_id." ".$CCSLocales->GetText("imported")) ;
			}
		}
	}

//End Custom Code

//Close masterimport_AfterSubmit @21-1AB07CFA
    return $masterimport_AfterSubmit;
}
//End Close masterimport_AfterSubmit

//masterimport_BeforeShowRow @21-FF1A68EC
function masterimport_BeforeShowRow(& $sender)
{
    $masterimport_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterimport; //Compatibility
//End masterimport_BeforeShowRow

//Custom Code @51-2A29BDB7
global $thistype ;
global $CCSLocales ;
	
	if ($masterimport->type->GetValue() != $thistype ) {
		$thistype = $masterimport->type->GetValue() ;
		$tabla = " <tr class=\"Row\"> ".
		" <td colspan=\"5\" style=\"FONT-WEIGHT: bold;background-color:9CA9CE\" align=\"left\">".$CCSLocales->GetText($thistype)."</td> ".
		" </tr> " ;
		$masterimport->Attributes->SetValue("newrow",$tabla) ;
	} else {
		$masterimport->Attributes->SetValue("newrow","") ;
	}
    
//End Custom Code

//Close masterimport_BeforeShowRow @21-1BB3CA5F
    return $masterimport_BeforeShowRow;
}
//End Close masterimport_BeforeShowRow

//DEL  

//masterimport_ds_BeforeExecuteSelect @21-13BB17AC
function masterimport_ds_BeforeExecuteSelect(& $sender)
{
    $masterimport_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $masterimport; //Compatibility
//End masterimport_ds_BeforeExecuteSelect

//Custom Code @57-2A29BDB7
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


 	$masterimport->DataSource->SQL = $masterconf.$masterpos ;
	$masterimport->DataSource->CountSQL = "SELECT COUNT(*) FROM ( ".$masterimport->DataSource->SQL.") cnt" ;
//End Custom Code

//Close masterimport_ds_BeforeExecuteSelect @21-B205E0BE
    return $masterimport_ds_BeforeExecuteSelect;
}
//End Close masterimport_ds_BeforeExecuteSelect

//DEL  

//Page_AfterInitialize @1-174E8611
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFImportMasters; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_OPE_IMM") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;

	global $AllowFileImport ;
	$AllowFileImport = false ;
	if ($_FILES['FileUpload1_File']['name'] == "mastersconf.zip" ) {
		$zipfile = $PathToRoot."data/master/mastersconf.zip" ;
		if ( move_uploaded_file($_FILES['FileUpload1_File']['tmp_name'], $zipfile) ) {
			require_once($PathToRoot."Service/SSFUnzip.php") ;
			$zip = new dUnzip2($zipfile); 
			// Activate debug 
			//$zip->debug = true; 
			// Unzip all the contents of the zipped file to a new folder called "uncompressed" 
			$zip->getList(); 
			$zip->unzipAll($PathToRoot."data/master","",false) ; 
			$zip->Close() ;
			unlink($zipfile) ;
		}
	    
	}
	//print_r($_FILES) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-F93BF22B
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFImportMasters; //Compatibility
//End Page_BeforeShow

//Custom Code @48-2A29BDB7
	global $PathToRoot ;
	CreateDir($PathToRoot."data/master") ;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

	function CreateDir($dir_name) {
		do {
		   $dir = $dir_name;
		   while (!is_dir($dir)) {
		       $basedir = dirname($dir);
		       if ($basedir == '/' || is_dir($basedir))
		           CheckandCreate($dir) ;
		       else
		           $dir=$basedir;
		  }
		} while ($dir != $dir_name);
	}

	function CheckandCreate($dir_name) {
		if (!file_exists($dir_name)) {
			mkdir($dir_name) ;
		}
	}




?>
