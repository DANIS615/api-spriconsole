<?php
//BindEvents Method @1-020D9C3D
function BindEvents()
{
    global $a_bSearch;
    global $Button2;
    global $ViewMode;
    global $ssf_addin_prices_change_a;
    global $CCSEvents;
    $a_bSearch->CCSEvents["BeforeShow"] = "a_bSearch_BeforeShow";
    $Button2->CCSEvents["BeforeShow"] = "Button2_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_addin_prices_change_a->convert->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_a_convert_BeforeShow";
    $ssf_addin_prices_change_a->application_date1->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_a_application_date1_BeforeShow";
    $ssf_addin_prices_change_a->application_date->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_a_application_date_BeforeShow";
    $ssf_addin_prices_change_a->application_time->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_a_application_time_BeforeShow";
    $ssf_addin_prices_change_a->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_a_BeforeShow";
    $ssf_addin_prices_change_a->ds->CCSEvents["AfterExecuteSelect"] = "ssf_addin_prices_change_a_ds_AfterExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//a_bSearch_BeforeShow @15-7FC31ACF
function a_bSearch_BeforeShow(& $sender)
{
    $a_bSearch_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $a_bSearch; //Compatibility
//End a_bSearch_BeforeShow

//Hide-Show Component @23-286F3E6C
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Hide-Show Component

//Close a_bSearch_BeforeShow @15-842A6BF6
    return $a_bSearch_BeforeShow;
}
//End Close a_bSearch_BeforeShow

//DEL      $Parameter1 = CCGetParam("ViewMode", "");
//DEL      $Parameter2 = "Print";
//DEL      if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
//DEL          $Component->Visible = false;

//Button2_BeforeShow @66-0278C4D6
function Button2_BeforeShow(& $sender)
{
    $Button2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button2; //Compatibility
//End Button2_BeforeShow

//Custom Code @83-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Button2->Visible = false ;

//End Custom Code

//Close Button2_BeforeShow @66-87A42556
    return $Button2_BeforeShow;
}
//End Close Button2_BeforeShow

//DEL      $Parameter1 = CCGetParam("ViewMode", "");
//DEL      $Parameter2 = "Print";
//DEL      if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
//DEL  		$btnPDF->Visible = false ;

//DEL  	global $ssf_addin_prices_change_a ;
//DEL  	$ssf_addin_prices_change_a->convert->SetValue("true") ;

//DEL  //

//ViewMode_BeforeShow @77-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @78-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @77-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_addin_prices_change_a_convert_BeforeShow @96-121E4A9F
function ssf_addin_prices_change_a_convert_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_a_convert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_convert_BeforeShow

//Custom Code @97-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$ssf_addin_prices_change_a->convert->SetValue("true") ;
//End Custom Code

//Close ssf_addin_prices_change_a_convert_BeforeShow @96-ED13823A
    return $ssf_addin_prices_change_a_convert_BeforeShow;
}
//End Close ssf_addin_prices_change_a_convert_BeforeShow

//ssf_addin_prices_change_a_application_date1_BeforeShow @101-A77C0677
function ssf_addin_prices_change_a_application_date1_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_a_application_date1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_application_date1_BeforeShow

//Custom Code @102-2A29BDB7
	$strActualValue = $ssf_addin_prices_change_a->application_date1->getValue();
	$ssf_addin_prices_change_a->application_date1->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));

//End Custom Code

//Close ssf_addin_prices_change_a_application_date1_BeforeShow @101-32AC70A9
    return $ssf_addin_prices_change_a_application_date1_BeforeShow;
}
//End Close ssf_addin_prices_change_a_application_date1_BeforeShow

//DEL  	//$ssf_addin_prices_change_a->col1->SetValue(true) ;

//DEL  	$ssf_addin_prices_change_a->col2->Visible = false ;

//ssf_addin_prices_change_a_application_date_BeforeShow @46-6E2ED9C6
function ssf_addin_prices_change_a_application_date_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_a_application_date_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_application_date_BeforeShow

//Custom Code @63-2A29BDB7
	$strActualValue = $ssf_addin_prices_change_a->application_date->getValue();
	$ssf_addin_prices_change_a->application_date->setValue(CCSubStr($strActualValue,0,4)."/".CCSubStr($strActualValue,4,2)."/".CCSubStr($strActualValue,6,2));

//End Custom Code

//Close ssf_addin_prices_change_a_application_date_BeforeShow @46-F86352C7
    return $ssf_addin_prices_change_a_application_date_BeforeShow;
}
//End Close ssf_addin_prices_change_a_application_date_BeforeShow

//ssf_addin_prices_change_a_application_time_BeforeShow @48-3EC5D836
function ssf_addin_prices_change_a_application_time_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_a_application_time_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_application_time_BeforeShow

//Custom Code @64-2A29BDB7
	$strActualValue = $ssf_addin_prices_change_a->application_time->getValue();
	$ssf_addin_prices_change_a->application_time->setValue(CCSubStr($strActualValue,0,2).":".CCSubStr($strActualValue,2,2).":".CCSubStr($strActualValue,4,2));

//End Custom Code

//Close ssf_addin_prices_change_a_application_time_BeforeShow @48-AE31DCD5
    return $ssf_addin_prices_change_a_application_time_BeforeShow;
}
//End Close ssf_addin_prices_change_a_application_time_BeforeShow

//ssf_addin_prices_change_a_BeforeShow @2-B56BB2D7
function ssf_addin_prices_change_a_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_a_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_BeforeShow

//Custom Code @73-2A29BDB7
	global $Tpl ;
	$Tpl->SetVar("vcol1", "style=\"TEXT-ALIGN: center\"");
	$Tpl->SetVar("vcol2", "style=\"TEXT-ALIGN: center\"");
	$Tpl->SetVar("vcol3", "style=\"TEXT-ALIGN: right\"");
	$Tpl->SetVar("vcol5", "style=\"TEXT-ALIGN: right\"");
	$Tpl->SetVar("vcol6", "style=\"TEXT-ALIGN: right\"");
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	{
		$ssf_addin_prices_change_a->col1->Visible = false ;
		$ssf_addin_prices_change_a->col2->Visible = false ;
		$ssf_addin_prices_change_a->col3->Visible = false ;
		$ssf_addin_prices_change_a->col4->Visible = false ;
		$ssf_addin_prices_change_a->col5->Visible = false ;
		$ssf_addin_prices_change_a->col6->Visible = false ;		
	   for($i = 1; $i <= 30; $i++)
	   {
	   		$col = CCGetParam("col".$i,0) ;
			if ($col == 0)
			{
				switch ($i):
				case 1: // price_change_id
					$Tpl->SetVar("vcol1", "style=\"display: none\"");
					break;
				case 2: // grade_id
					$Tpl->SetVar("vcol2", "style=\"display: none\"");
					break;
				case 3: // price_level
					$Tpl->SetVar("vcol3", "style=\"display: none\"");
					break;
				case 4: // application_date
					$Tpl->SetVar("vcol4", "style=\"display: none\"");
					break;
				case 5: // application_time
					$Tpl->SetVar("vcol5", "style=\"display: none\"");
					break;
				case 6: // ppu
					$Tpl->SetVar("vcol6", "style=\"display: none\"");
					break;
				endswitch;
			}
	   } 	// end for
	}	//  end if
//End Custom Code

//Close ssf_addin_prices_change_a_BeforeShow @2-85F9486D
    return $ssf_addin_prices_change_a_BeforeShow;
}
//End Close ssf_addin_prices_change_a_BeforeShow

//ssf_addin_prices_change_a_ds_AfterExecuteSelect @2-EB7A439B
function ssf_addin_prices_change_a_ds_AfterExecuteSelect(& $sender)
{
    $ssf_addin_prices_change_a_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_a; //Compatibility
//End ssf_addin_prices_change_a_ds_AfterExecuteSelect

//Custom Code @85-2A29BDB7
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 != CCCompareValues($Parameter1, $Parameter2, ccsText))
	{
		$ssf_addin_prices_change_a->col1->SetValue(true) ;
		$ssf_addin_prices_change_a->col2->SetValue(true) ;
		$ssf_addin_prices_change_a->col3->SetValue(true) ;
		$ssf_addin_prices_change_a->col4->SetValue(true) ;
		$ssf_addin_prices_change_a->col5->SetValue(true) ;
		$ssf_addin_prices_change_a->col6->SetValue(true) ;	
	}
		
//End Custom Code

//Close ssf_addin_prices_change_a_ds_AfterExecuteSelect @2-37126801
    return $ssf_addin_prices_change_a_ds_AfterExecuteSelect;
}
//End Close ssf_addin_prices_change_a_ds_AfterExecuteSelect


//Page_AfterInitialize @1-D2B36088
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPriceChangeReportbyDate; //Compatibility
//End Page_AfterInitialize

//Custom Code @81-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_REP_CHP") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-B702A21E
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFPriceChangeReportbyDate; //Compatibility
//End Page_BeforeShow

//Declare Variable @91-C5F1537E
    global $ini_s_date;
	$fifteendaysbefore = date("Ymd", mktime(0, 0, 0, date("m")  , date("d")-15, date("Y")));
    $ini_s_date = $fifteendaysbefore ;
    global $ini_e_date;
	$today = date("Ymd", mktime(0, 0, 0, date("m")  , date("d"), date("Y")));
    $ini_e_date = $today ;

//End Declare Variable

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//DEL  if (CCGetParam("btnPDF") != "" ) {
//DEL      global $main_block;
//DEL      $Command = '"' . "C:\\Program Files\\CodeChargeStudio3\\SuperPDF 1.0\\bin\\pdftool.exe" . '"';
//DEL      $Options = "{InputFile} -f {ResultFile} -root {Root}";
//DEL      $TempFolder = "c:\\temp";
//DEL      if (CCSubStr($TempFolder, -1) != DIRECTORY_SEPARATOR && CCSubStr($TempFolder, -1) != "/" && CCSubStr($TempFolder, -1) != "\\") $TempFolder .= DIRECTORY_SEPARATOR;
//DEL      $TempFileName = $TempFolder . "pdf" . session_id() . mt_rand(100000, 999999) . ".html";
//DEL      $ResultFileName = $TempFolder . "pdf" . session_id() . mt_rand(100000, 999999) . ".pdf";
//DEL      $WindowsQuote = DIRECTORY_SEPARATOR == "\\" ? '"' : "";
//DEL      if ($TempFileName && $TmpFH = fopen($TempFileName, "wb")) {
//DEL          fwrite($TmpFH, $main_block);
//DEL          fclose($TmpFH);
//DEL          $Options = str_replace("{InputFile}", escapeshellarg($TempFileName), $Options);
//DEL          $Options = str_replace("{Root}", escapeshellarg(getcwd()), $Options);
//DEL          if (strpos($Options, "{ResultFile}") !== false && !file_exists($ResultFileName)) {
//DEL              $Options = str_replace("{ResultFile}", escapeshellarg($ResultFileName), $Options);
//DEL              exec($WindowsQuote . $Command . " " . $Options . $WindowsQuote);
//DEL              if ($fh = fopen($ResultFileName , "rb")) {
//DEL                  Header("Content-Type: application/pdf");
//DEL                  while($str = fread($fh, 1024)) echo $str;
//DEL              }
//DEL              fclose($fh);
//DEL              unlink($ResultFileName);
//DEL              $Page_BeforeOutput = false;
//DEL          } elseif ($fh = popen($WindowsQuote . $Command . " " . $Options . $WindowsQuote, "rb")) {
//DEL              $firstPass = true;
//DEL              while($str = fread($fh, 1024)) {
//DEL                  if ($firstPass) {
//DEL                      Header("Content-Type: application/pdf");
//DEL                      $firstPass = false;
//DEL                  }
//DEL                  echo $str;
//DEL              }
//DEL              pclose($fh);
//DEL              $Page_BeforeOutput = false;
//DEL          }
//DEL          unlink($TempFileName);
//DEL      }
//DEL  }


?>
