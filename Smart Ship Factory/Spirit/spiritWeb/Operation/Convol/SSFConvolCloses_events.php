<?php
//BindEvents Method @1-F4CB01E3
function BindEvents()
{
    global $ssf_addin_ctrl_vol_close1;
    global $CCSEvents;
    $ssf_addin_ctrl_vol_close1->Label2->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_Label2_BeforeShow";
    $ssf_addin_ctrl_vol_close1->Label1->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_Label1_BeforeShow";
    $ssf_addin_ctrl_vol_close1->ctrlvol_file_generation_status->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow";
    $ssf_addin_ctrl_vol_close1->ctrlvol_file_send_status->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow";
    $ssf_addin_ctrl_vol_close1->ctrlvol_file_send_status_desc->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow";
    $ssf_addin_ctrl_vol_close1->CCSEvents["BeforeShow"] = "ssf_addin_ctrl_vol_close1_BeforeShow";
    $ssf_addin_ctrl_vol_close1->CCSEvents["AfterSubmit"] = "ssf_addin_ctrl_vol_close1_AfterSubmit";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_ctrl_vol_close1_Label2_BeforeShow @46-87BE6B87
function ssf_addin_ctrl_vol_close1_Label2_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_Label2_BeforeShow

//Custom Code @47-2A29BDB7
global $CCSLocales ;

$Component->SetValue("( ".$CCSLocales->GetText("ssf_close_id")."  ".CCGetParam("ctrlvol_close_id")." )" ) ;
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_Label2_BeforeShow @46-A98ACC20
    return $ssf_addin_ctrl_vol_close1_Label2_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_Label2_BeforeShow

//ssf_addin_ctrl_vol_close1_Label1_BeforeShow @33-3516046A
function ssf_addin_ctrl_vol_close1_Label1_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_Label1_BeforeShow

//Custom Code @34-2A29BDB7
$value = "" ;
	switch ($ssf_addin_ctrl_vol_close1->ctrlvol_file_type->GetValue() ) {
		case "EXI":
			$value = "Existencias" ;
			break ;
		case "ATQ":
			$value = "Alarma Tanque" ;
			break ;
		case "REC":
			$value = "Recibo" ;
			break ;
		case "VTA":
			$value = "Ventas" ;
			break ;
		case "ADI":
			$value = "Alarma Dispensario" ;
			break ;
		case "TQS":
			$value = "Configuración Tanques" ;
			break ;
		case "DIS":
			$value = "Configuración Dispensarios" ;
			break ;
	}
	$Component->SetValue($value) ;
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_Label1_BeforeShow @33-D5EBE9FB
    return $ssf_addin_ctrl_vol_close1_Label1_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_Label1_BeforeShow

//ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow @27-5981588E
function ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow

//Custom Code @35-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue("&nbsp;");
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow @27-D3E98389
    return $ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_ctrlvol_file_generation_status_BeforeShow

//ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow @28-B134AAC5
function ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow

//Custom Code @36-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue("&nbsp;");
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow @28-A0D3F1F6
    return $ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_BeforeShow

//ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow @29-FB9D7699
function ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow

//Custom Code @37-2A29BDB7
if ($Component->GetValue() == "" ) 
	$Component->SetValue("&nbsp;");
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow @29-033D36D4
    return $ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_ctrlvol_file_send_status_desc_BeforeShow

//ssf_addin_ctrl_vol_close1_BeforeShow @15-C6E9C5A2
function ssf_addin_ctrl_vol_close1_BeforeShow(& $sender)
{
    $ssf_addin_ctrl_vol_close1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_BeforeShow

//Custom Code @40-2A29BDB7
if (CCGetParam("ctrlvol_close_id") != "" )
	$Component->Visible = true ;
else
	$Component->Visible = false ;
//End Custom Code

//Close ssf_addin_ctrl_vol_close1_BeforeShow @15-06946512
    return $ssf_addin_ctrl_vol_close1_BeforeShow;
}
//End Close ssf_addin_ctrl_vol_close1_BeforeShow

//ssf_addin_ctrl_vol_close1_AfterSubmit @15-084CA013
function ssf_addin_ctrl_vol_close1_AfterSubmit(& $sender)
{
    $ssf_addin_ctrl_vol_close1_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_ctrl_vol_close1; //Compatibility
//End ssf_addin_ctrl_vol_close1_AfterSubmit

//Custom Code @41-2A29BDB7
	global $CCSLocales ;
	$datatoexport = false ;
	$file_parameter = "" ;
	$i = 0 ;

	if ( CCGetParam("Button_Resend") != "" ) {
		for($ssf_addin_ctrl_vol_close1->RowNumber = 1; $ssf_addin_ctrl_vol_close1->RowNumber <= $ssf_addin_ctrl_vol_close1->TotalRows; $ssf_addin_ctrl_vol_close1->RowNumber++)
		{
			$close_id = CCGetParam("ctrlvol_close_id");
			$file_id = $ssf_addin_ctrl_vol_close1->FormParameters["ctrlvol_file_type"][$ssf_addin_ctrl_vol_close1->RowNumber] ;
		    $ssf_addin_ctrl_vol_close1->DataSource->CurrentRow = $ssf_addin_ctrl_vol_close1->RowNumber;
		    $ssf_addin_ctrl_vol_close1->CheckBox_Update->SetText($ssf_addin_ctrl_vol_close1->FormParameters["CheckBox_Update"][$ssf_addin_ctrl_vol_close1->RowNumber], $ssf_addin_ctrl_vol_close1->RowNumber);
		    if ($ssf_addin_ctrl_vol_close1->UpdatedRows >= $ssf_addin_ctrl_vol_close1->RowNumber) {
				if($ssf_addin_ctrl_vol_close1->CheckBox_Update->Value) {
					//echo "Ejecuta update role ".$master_id. " action ".$master_id ;
			  		if (strlen($file_parameter) > 1 && substr($file_parameter,-1,1) != "|" ) 
			  			$file_parameter .= "|" ;
  		
			  		if ($file_id != "") {
							$i++ ;
							$padded_i =  str_pad($i,2,"0",STR_PAD_LEFT) ;	
			  				$file_parameter .= "FILE".$padded_i ;
				  			$file_parameter .= "=".$file_id."|" ;
							$datatoexport = true ;
			  		}			
				}
			}
		}
		if ($datatoexport) {
			$file_parameter = "|".$file_parameter ;
		  	$ssfRtrClnt = new SSFRouterClient();
		    $returncode = $ssfRtrClnt->SendReqConvolSendFiles($close_id, $file_parameter);			
			//echo $file_parameter ;
		}
	}

	if ( CCGetParam("Button_Regenerate") != "" ) {
		$close_id = CCGetParam("ctrlvol_close_id");
	  	$ssfRtrClnt = new SSFRouterClient();
	    $returncode = $ssfRtrClnt->SendReqConvolClosePeriod($close_id);			
	}



		//global $Redirect ;
		//$Redirect = "SSFMasterDownLoad.php?filename=../data/master/mastersconf.zip" ; 

//End Custom Code

//Close ssf_addin_ctrl_vol_close1_AfterSubmit @15-7D527054
    return $ssf_addin_ctrl_vol_close1_AfterSubmit;
}
//End Close ssf_addin_ctrl_vol_close1_AfterSubmit

//Page_AfterInitialize @1-593272B2
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFConvolCloses; //Compatibility
//End Page_AfterInitialize

//Custom Code @3-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_OPE_CON_CLOSE_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_OPE_CON_CLOSE_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

	if ( CCGetParam("Button_NewClose") != "" ) {
		$close_id = 0;
	  	$ssfRtrClnt = new SSFRouterClient();
	    $returncode = $ssfRtrClnt->SendReqConvolClosePeriod($close_id);
		//echo $returncode ;			
	}
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
