<?php

//BindEvents Method @1-338651D7
function BindEvents()
{
    global $ssf_addin_prices_change;
    global $ssf_addin_prices_change1;
    global $ssf_addin_prices_change_d;
    global $ssf_addin_prices_change_d1;
    global $CCSEvents;
    $ssf_addin_prices_change->ssf_addin_prices_change_Insert->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow";
    $ssf_addin_prices_change->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_BeforeShow";
    $ssf_addin_prices_change1->application_date->CCSEvents["OnValidate"] = "ssf_addin_prices_change1_application_date_OnValidate";
    $ssf_addin_prices_change1->application_time->CCSEvents["OnValidate"] = "ssf_addin_prices_change1_application_time_OnValidate";
    $ssf_addin_prices_change1->ds->CCSEvents["BeforeBuildInsert"] = "ssf_addin_prices_change1_ds_BeforeBuildInsert";
    $ssf_addin_prices_change1->ds->CCSEvents["AfterExecuteInsert"] = "ssf_addin_prices_change1_ds_AfterExecuteInsert";
    $ssf_addin_prices_change1->CCSEvents["BeforeShow"] = "ssf_addin_prices_change1_BeforeShow";
    $ssf_addin_prices_change1->ds->CCSEvents["AfterExecuteDelete"] = "ssf_addin_prices_change1_ds_AfterExecuteDelete";
    $ssf_addin_prices_change1->CCSEvents["BeforeInsert"] = "ssf_addin_prices_change1_BeforeInsert";
    $ssf_addin_prices_change1->ds->CCSEvents["AfterExecuteUpdate"] = "ssf_addin_prices_change1_ds_AfterExecuteUpdate";
    $ssf_addin_prices_change1->CCSEvents["BeforeUpdate"] = "ssf_addin_prices_change1_BeforeUpdate";
    $ssf_addin_prices_change1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_addin_prices_change1_ds_AfterExecuteSelect";
    $ssf_addin_prices_change_d->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_d_BeforeShow";
    $ssf_addin_prices_change_d->ds->CCSEvents["AfterExecuteInsert"] = "ssf_addin_prices_change_d_ds_AfterExecuteInsert";
    $ssf_addin_prices_change_d->ds->CCSEvents["AfterExecuteUpdate"] = "ssf_addin_prices_change_d_ds_AfterExecuteUpdate";
    $ssf_addin_prices_change_d->ds->CCSEvents["AfterExecuteDelete"] = "ssf_addin_prices_change_d_ds_AfterExecuteDelete";
    $ssf_addin_prices_change_d1->CCSEvents["BeforeShow"] = "ssf_addin_prices_change_d1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow @10-A61A1A5F
function ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change; //Compatibility
//End ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow

//Custom Code @124-2A29BDB7
	global $EditisAllowed ;
	$ssf_addin_prices_change->ssf_addin_prices_change_Insert->Visible = $EditisAllowed ;

//End Custom Code

//Close ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow @10-5D3D03AE
    return $ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow;
}
//End Close ssf_addin_prices_change_ssf_addin_prices_change_Insert_BeforeShow

//ssf_addin_prices_change_BeforeShow @2-DCDA1252
function ssf_addin_prices_change_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change; //Compatibility
//End ssf_addin_prices_change_BeforeShow

//Custom Code @117-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close ssf_addin_prices_change_BeforeShow @2-99C67793
    return $ssf_addin_prices_change_BeforeShow;
}
//End Close ssf_addin_prices_change_BeforeShow

//DEL  	echo "valor ".$ssf_addin_prices_changeSearch->lnkReloadPrices->GetValue() ;

//ssf_addin_prices_change1_application_date_OnValidate @38-441BC874
function ssf_addin_prices_change1_application_date_OnValidate(& $sender)
{
    $ssf_addin_prices_change1_application_date_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_application_date_OnValidate

//Custom Code @83-2A29BDB7
	global $CCSLocales ;
	$l_date = $ssf_addin_prices_change1->application_date->GetValue() ;
	if (strlen($l_date) > 8 )
        $ssf_addin_prices_change1->application_date->Errors->addError($CCSLocales->GetText("CCS_IncorrectValue",array("application_date")));
//End Custom Code

//Close ssf_addin_prices_change1_application_date_OnValidate @38-AEF2CE82
    return $ssf_addin_prices_change1_application_date_OnValidate;
}
//End Close ssf_addin_prices_change1_application_date_OnValidate

//ssf_addin_prices_change1_application_time_OnValidate @39-CFC0320D
function ssf_addin_prices_change1_application_time_OnValidate(& $sender)
{
    $ssf_addin_prices_change1_application_time_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_application_time_OnValidate

//Custom Code @84-2A29BDB7
	global $CCSLocales ;
	$l_time = $ssf_addin_prices_change1->application_time->GetValue() ;
	if (strlen($l_time) > 6 )
        $ssf_addin_prices_change1->application_time->Errors->addError($CCSLocales->GetText("CCS_IncorrectValue",array("application_time")));
	$l_time = str_pad($l_time, 6,"0",STR_PAD_RIGHT) ;
	$ssf_addin_prices_change1->application_time->SetValue($l_time) ;
//End Custom Code

//Close ssf_addin_prices_change1_application_time_OnValidate @39-F8A04090
    return $ssf_addin_prices_change1_application_time_OnValidate;
}
//End Close ssf_addin_prices_change1_application_time_OnValidate

//ssf_addin_prices_change1_ds_BeforeBuildInsert @33-D95E5CFB
function ssf_addin_prices_change1_ds_BeforeBuildInsert(& $sender)
{
    $ssf_addin_prices_change1_ds_BeforeBuildInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_ds_BeforeBuildInsert

//Custom Code @78-2A29BDB7
	//$ssf_addin_prices_change1->price_change_id->SetValue(CCGetParam("price_change_id")) ;
//End Custom Code

//Close ssf_addin_prices_change1_ds_BeforeBuildInsert @33-9E7ADBFE
    return $ssf_addin_prices_change1_ds_BeforeBuildInsert;
}
//End Close ssf_addin_prices_change1_ds_BeforeBuildInsert

//ssf_addin_prices_change1_ds_AfterExecuteInsert @33-0EA30EF8
function ssf_addin_prices_change1_ds_AfterExecuteInsert(& $sender)
{
    $ssf_addin_prices_change1_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_ds_AfterExecuteInsert

//Custom Code @79-2A29BDB7
        global $CCSLocales;
        global $DefaultDateFormat;
		global $Redirect ;
        $ssf_addin_prices_change1->DataSource->CmdExecution = true;
		$appl_date = $ssf_addin_prices_change1->DataSource->application_date->GetDBValue() ;
		$appl_time = $ssf_addin_prices_change1->DataSource->application_time->GetDBValue() ;
	    $ssf_addin_prices_change1->DataSource->SQL = "INSERT INTO ssf_addin_prices_change_detail ("
	         . "price_change_id, "
	         . "grade_id, "
	         . "price_level, "
			 . "ppu "
	         . ") "
			 . ManageInsertChangeDetail($ssf_addin_prices_change1->DataSource->price_change_id->GetDBValue(), $appl_date, $appl_time );
		// echo $ssf_addin_prices_change1->DataSource->SQL ;
	    $ssf_addin_prices_change1->DataSource->query($ssf_addin_prices_change1->DataSource->SQL);
		CCSetSession("ssf_price_change_modified",true);
		$Redirect = "SSFChgPricesHeader.php?price_change_id=".$ssf_addin_prices_change1->DataSource->price_change_id->GetDBValue() ;
		
//End Custom Code

//Close ssf_addin_prices_change1_ds_AfterExecuteInsert @33-8036C181
    return $ssf_addin_prices_change1_ds_AfterExecuteInsert;
}
//End Close ssf_addin_prices_change1_ds_AfterExecuteInsert
function ManageInsertChangeDetail($price_id, $appl_date,$appl_time)
{
	$appldatetime = $appl_date . $appl_time ;
	$query =  " Select " .$price_id." , a.grade_id , a.price_level , a.ppu "
			. "   from ssf_addin_prices_change_detail a, ssf_addin_prices_change b "
			. "   where a.price_change_id = b.price_change_id  "
			. "   and (b.application_date || case when b.application_time is null then '' else b.application_time end) = "
			. "  ( Select Max( c.application_date || case when c.application_time is null then '' else c.application_time end) "
			. "   from ssf_addin_prices_change_detail d, ssf_addin_prices_change c "
			. "   where d.price_change_id = c.price_change_id  "
			. "   and d.grade_id = a.grade_id "
			. "   and d.price_level = a.price_level "
			. "   and ( c.application_date || case when c.application_time is null then '' else c.application_time end) < '" .$appldatetime ."' ) "
			. "  and a.ppu <> 0  " ;
	return $query ;
}
//ssf_addin_prices_change1_BeforeShow @33-DADE1095
function ssf_addin_prices_change1_BeforeShow(& $sender)
{
    $ssf_addin_prices_change1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_BeforeShow

//Custom Code @80-2A29BDB7
	//echo " resultado ".CCGetParam("price_change_result") ;
  	//echo " valor = " . CCGetParam("ssf_addin_prices_change_Insert") ;
	if (CCGetParam("navigatorclick") == "1" )
  	{	
  		$ssf_addin_prices_change1->Visible = false;
  	} 
  	else {
  		if(CCGetParam("price_change_id") != ""  || CCGetParam("ssf_addin_prices_change_Insert") == "insert" )
  			$ssf_addin_prices_change1->Visible = true;
  		else
  			$ssf_addin_prices_change1->Visible = false;
      }
	//$ssf_addin_prices_change1->price_change_id->SetValue(CCGetParam("price_change_id")) ;
	//echo " price ".$ssf_addin_prices_change1->price_change_id->GetValue() ;
//End Custom Code

//Close ssf_addin_prices_change1_BeforeShow @33-5ECB4061
    return $ssf_addin_prices_change1_BeforeShow;
}
//End Close ssf_addin_prices_change1_BeforeShow

//ssf_addin_prices_change1_ds_AfterExecuteDelete @33-E84EB076
function ssf_addin_prices_change1_ds_AfterExecuteDelete(& $sender)
{
    $ssf_addin_prices_change1_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_ds_AfterExecuteDelete

//Custom Code @82-2A29BDB7
		global $CCSLocales ;
		$ssf_addin_prices_change1->DataSource->SQL = "DELETE FROM ssf_addin_prices_change_detail ";
		$ssf_addin_prices_change1->DataSource->SQL = CCBuildSQL($ssf_addin_prices_change1->DataSource->SQL, $ssf_addin_prices_change1->DataSource->Where, "");
		$ssf_addin_prices_change1->DataSource->query($ssf_addin_prices_change1->DataSource->SQL);
		CCSetSession("ssf_price_change_modified",true);
		/*$ssfRtrClient = new SSFRouterClient() ;
    	$message = $ssfRtrClient->RealoadPriceChangeTable();
		if ($message == "ERROR" )
		{
			$ssf_addin_prices_change1->DataSource->Errors->addError($CCSLocales->GetText("SSF_RELOADPRICEERROR"));
		}*/
//End Custom Code

//Close ssf_addin_prices_change1_ds_AfterExecuteDelete @33-D33BA67F
    return $ssf_addin_prices_change1_ds_AfterExecuteDelete;
}
//End Close ssf_addin_prices_change1_ds_AfterExecuteDelete

//ssf_addin_prices_change1_BeforeInsert @33-D6428E7E
function ssf_addin_prices_change1_BeforeInsert(& $sender)
{
    $ssf_addin_prices_change1_BeforeInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_BeforeInsert

//Custom Code @97-2A29BDB7
// Validate duplicate fields
	global $CCSLocales ;
	$apl_date = $ssf_addin_prices_change1->application_date->GetValue() ;
	$apl_time = $ssf_addin_prices_change1->application_time->GetValue() ;
	$ssfDuplicateQuery = "select 1 as dupl from ssf_addin_prices_change where " ;
	$ssfDuplicateQuery .= " application_date = '". $apl_date ."' " ;
	$ssfDuplicateQuery .= " and application_time = '". $apl_time ."' " ;
	$ssf_addin_prices_change1->DataSource->query($ssfDuplicateQuery);
	$d_Result = $ssf_addin_prices_change1->DataSource->next_record();
	if ($d_Result == true )
	{
		$ssf_addin_prices_change1->DataSource->Errors->addError($CCSLocales->GetText("SSF_PRICEDUPLICATE"));
		return false ;
	}


//GetMaxiPriceChangeId
		$MaxValue = 0 ;
		$ssfQuery = "select max(price_change_id) as maxid from ssf_addin_prices_change ";
		$ssf_addin_prices_change1->DataSource->query($ssfQuery);
		$Result = $ssf_addin_prices_change1->DataSource->next_record();
		if ($Result == true )
		{
			$MaxValue = $ssf_addin_prices_change1->DataSource->f("maxid") ;
			if ( $MaxValue > 0)
				$MaxValue += 1 ;
			else
				$MaxValue = 1 ;
		}
		$ssf_addin_prices_change1->price_change_id->SetValue($MaxValue) ;
// End GetMaxiPriceChangeId Method

//End Custom Code

//Close ssf_addin_prices_change1_BeforeInsert @33-50B78718
    return $ssf_addin_prices_change1_BeforeInsert;
}
//End Close ssf_addin_prices_change1_BeforeInsert

//DEL  
//DEL  

//ssf_addin_prices_change1_ds_AfterExecuteUpdate @33-0EB01C45
function ssf_addin_prices_change1_ds_AfterExecuteUpdate(& $sender)
{
    $ssf_addin_prices_change1_ds_AfterExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_ds_AfterExecuteUpdate

//Custom Code @99-2A29BDB7
		CCSetSession("ssf_price_change_modified",true);
//End Custom Code

//Close ssf_addin_prices_change1_ds_AfterExecuteUpdate @33-4F1F000E
    return $ssf_addin_prices_change1_ds_AfterExecuteUpdate;
}
//End Close ssf_addin_prices_change1_ds_AfterExecuteUpdate

//ssf_addin_prices_change1_BeforeUpdate @33-57D079A4
function ssf_addin_prices_change1_BeforeUpdate(& $sender)
{
    $ssf_addin_prices_change1_BeforeUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_BeforeUpdate

//Custom Code @100-2A29BDB7
	global $CCSLocales ;
	$apl_date = $ssf_addin_prices_change1->application_date->GetValue() ;
	$apl_time = $ssf_addin_prices_change1->application_time->GetValue() ;
	$price_id = CCGetParam("price_change_id") ;
	$ssfDuplicateQuery = "select 1 as dupl from ssf_addin_prices_change where " ;
	$ssfDuplicateQuery .= " application_date = '". $apl_date ."' " ;
	$ssfDuplicateQuery .= " and application_time = '". $apl_time ."' " ;
	$ssfDuplicateQuery .= " and price_change_id <> ". $price_id ." " ;
	$ssf_addin_prices_change1->DataSource->query($ssfDuplicateQuery);
	$d_Result = $ssf_addin_prices_change1->DataSource->next_record();
	if ($d_Result == true )
	{
		$ssf_addin_prices_change1->DataSource->Errors->addError($CCSLocales->GetText("SSF_PRICEDUPLICATE"));
		return false ;
	}
//End Custom Code

//Close ssf_addin_prices_change1_BeforeUpdate @33-9F9E4697
    return $ssf_addin_prices_change1_BeforeUpdate;
}
//End Close ssf_addin_prices_change1_BeforeUpdate

//ssf_addin_prices_change1_ds_AfterExecuteSelect @33-D11B9EDA
function ssf_addin_prices_change1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_addin_prices_change1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change1; //Compatibility
//End ssf_addin_prices_change1_ds_AfterExecuteSelect

//Custom Code @103-2A29BDB7
	global $EditisAllowed ;
	$AllowABM = false ;
	$prc_result = CCGetParam("price_change_result") ;
	$AllowABM = ($prc_result != "OK") ;
	if ($AllowABM == false || $EditisAllowed == false) 
	{
		$ssf_addin_prices_change1->InsertAllowed = false ;
		$ssf_addin_prices_change1->UpdateAllowed = false ;
		$ssf_addin_prices_change1->DeleteAllowed = false ;			
	}
//End Custom Code

//Close ssf_addin_prices_change1_ds_AfterExecuteSelect @33-756F382C
    return $ssf_addin_prices_change1_ds_AfterExecuteSelect;
}
//End Close ssf_addin_prices_change1_ds_AfterExecuteSelect

//ssf_addin_prices_change_d_BeforeShow @49-54C108CC
function ssf_addin_prices_change_d_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_d_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_d; //Compatibility
//End ssf_addin_prices_change_d_BeforeShow

//Custom Code @74-2A29BDB7
	global $EditisAllowed ;
	$AllowABM = false ;
	$prc_result = CCGetParam("price_change_result") ;
	$AllowABM = ($prc_result != "OK" ) ;
	if ($AllowABM == false || $EditisAllowed == false ) 
	{
		$ssf_addin_prices_change_d->Visible = false ;
	} else {
		if (CCGetParam("navigatorclick") == "1" )
		{	
			$ssf_addin_prices_change_d->Visible = false;
		} 
		else {
		if(CCGetParam("price_change_id") != ""  )
			$ssf_addin_prices_change_d->Visible = true;
		else
			$ssf_addin_prices_change_d->Visible = false;
		}
	}
//End Custom Code

//Close ssf_addin_prices_change_d_BeforeShow @49-015A2600
    return $ssf_addin_prices_change_d_BeforeShow;
}
//End Close ssf_addin_prices_change_d_BeforeShow

//DEL  	CCSetSession("ssf_price_change_modified",true);

//ssf_addin_prices_change_d_ds_AfterExecuteInsert @49-2095C61B
function ssf_addin_prices_change_d_ds_AfterExecuteInsert(& $sender)
{
    $ssf_addin_prices_change_d_ds_AfterExecuteInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_d; //Compatibility
//End ssf_addin_prices_change_d_ds_AfterExecuteInsert

//Custom Code @120-2A29BDB7
	CCSetSession("ssf_price_change_modified",true);
//End Custom Code

//Close ssf_addin_prices_change_d_ds_AfterExecuteInsert @49-9C7D4B59
    return $ssf_addin_prices_change_d_ds_AfterExecuteInsert;
}
//End Close ssf_addin_prices_change_d_ds_AfterExecuteInsert

//ssf_addin_prices_change_d_ds_AfterExecuteUpdate @49-6236C06E
function ssf_addin_prices_change_d_ds_AfterExecuteUpdate(& $sender)
{
    $ssf_addin_prices_change_d_ds_AfterExecuteUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_d; //Compatibility
//End ssf_addin_prices_change_d_ds_AfterExecuteUpdate

//Custom Code @121-2A29BDB7
	CCSetSession("ssf_price_change_modified",true);
//End Custom Code

//Close ssf_addin_prices_change_d_ds_AfterExecuteUpdate @49-53548AD6
    return $ssf_addin_prices_change_d_ds_AfterExecuteUpdate;
}
//End Close ssf_addin_prices_change_d_ds_AfterExecuteUpdate

//ssf_addin_prices_change_d_ds_AfterExecuteDelete @49-93391EB2
function ssf_addin_prices_change_d_ds_AfterExecuteDelete(& $sender)
{
    $ssf_addin_prices_change_d_ds_AfterExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_d; //Compatibility
//End ssf_addin_prices_change_d_ds_AfterExecuteDelete

//Custom Code @122-2A29BDB7
	CCSetSession("ssf_price_change_modified",true);
//End Custom Code

//Close ssf_addin_prices_change_d_ds_AfterExecuteDelete @49-CF702CA7
    return $ssf_addin_prices_change_d_ds_AfterExecuteDelete;
}
//End Close ssf_addin_prices_change_d_ds_AfterExecuteDelete

//ssf_addin_prices_change_d1_BeforeShow @105-389BD2A0
function ssf_addin_prices_change_d1_BeforeShow(& $sender)
{
    $ssf_addin_prices_change_d1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_prices_change_d1; //Compatibility
//End ssf_addin_prices_change_d1_BeforeShow

//Custom Code @118-2A29BDB7
	global $EditisAllowed ;
	$AllowABM = false ;
	$prc_result = CCGetParam("price_change_result") ;
	$AllowABM = ($prc_result != "OK" ) ;
	if (($AllowABM == false || $EditisAllowed == false) && CCGetParam("price_change_id") != "" ) 
		$ssf_addin_prices_change_d1->Visible = true ;
	else
		$ssf_addin_prices_change_d1->Visible = false ;
//End Custom Code

//Close ssf_addin_prices_change_d1_BeforeShow @105-37551ECE
    return $ssf_addin_prices_change_d1_BeforeShow;
}
//End Close ssf_addin_prices_change_d1_BeforeShow

//Page_AfterInitialize @1-DA9F1AA8
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFChgPricesHeader; //Compatibility
//End Page_AfterInitialize

//Custom Code @123-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_CHANGEPRICE_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_CHANGEPRICE_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;

//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

?>
