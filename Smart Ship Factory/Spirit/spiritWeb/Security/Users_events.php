<?php

//BindEvents Method @1-44E1637D
function BindEvents()
{
    global $ssf_sec_users;
    global $ssf_sec_users1;
    global $ssf_sec_user_roles;
    global $ssf_sec_user_roles1;
    global $btnLine;
    global $ssf_sec_user_access2;
    global $ssf_user_action_add;
    global $CCSEvents;
    $ssf_sec_users->ssf_sec_users_Insert->CCSEvents["BeforeShow"] = "ssf_sec_users_ssf_sec_users_Insert_BeforeShow";
    $ssf_sec_users1->btnBlankPsw->CCSEvents["BeforeShow"] = "ssf_sec_users1_btnBlankPsw_BeforeShow";
    $ssf_sec_users1->CCSEvents["BeforeShow"] = "ssf_sec_users1_BeforeShow";
    $ssf_sec_users1->CCSEvents["AfterInsert"] = "ssf_sec_users1_AfterInsert";
    $ssf_sec_users1->CCSEvents["AfterUpdate"] = "ssf_sec_users1_AfterUpdate";
    $ssf_sec_users1->CCSEvents["AfterDelete"] = "ssf_sec_users1_AfterDelete";
    $ssf_sec_users1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_sec_users1_ds_AfterExecuteSelect";
    $ssf_sec_users1->CCSEvents["OnValidate"] = "ssf_sec_users1_OnValidate";
    $ssf_sec_user_roles->CCSEvents["BeforeShow"] = "ssf_sec_user_roles_BeforeShow";
    $ssf_sec_user_roles1->CCSEvents["BeforeShow"] = "ssf_sec_user_roles1_BeforeShow";
    $ssf_sec_user_roles1->CCSEvents["AfterInsert"] = "ssf_sec_user_roles1_AfterInsert";
    $ssf_sec_user_roles1->CCSEvents["AfterDelete"] = "ssf_sec_user_roles1_AfterDelete";
    $btnLine->CCSEvents["BeforeShow"] = "btnLine_BeforeShow";
    $ssf_sec_user_access2->user_rights->CCSEvents["BeforeShow"] = "ssf_sec_user_access2_user_rights_BeforeShow";
    $ssf_sec_user_access2->CCSEvents["BeforeShow"] = "ssf_sec_user_access2_BeforeShow";
    $ssf_user_action_add->CCSEvents["BeforeShow"] = "ssf_user_action_add_BeforeShow";
    $ssf_user_action_add->CCSEvents["AfterSubmit"] = "ssf_user_action_add_AfterSubmit";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_sec_users_ssf_sec_users_Insert_BeforeShow @4-5BD02708
function ssf_sec_users_ssf_sec_users_Insert_BeforeShow(& $sender)
{
    $ssf_sec_users_ssf_sec_users_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users; //Compatibility
//End ssf_sec_users_ssf_sec_users_Insert_BeforeShow

//Custom Code @87-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$ssf_sec_users->ssf_sec_users_Insert->Visible = false ;
	}

//End Custom Code

//Close ssf_sec_users_ssf_sec_users_Insert_BeforeShow @4-A7A3D1A0
    return $ssf_sec_users_ssf_sec_users_Insert_BeforeShow;
}
//End Close ssf_sec_users_ssf_sec_users_Insert_BeforeShow

//ssf_sec_users1_btnBlankPsw_BeforeShow @82-992D3088
function ssf_sec_users1_btnBlankPsw_BeforeShow(& $sender)
{
    $ssf_sec_users1_btnBlankPsw_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_btnBlankPsw_BeforeShow

//Custom Code @86-2A29BDB7
	global $EditisAllowed ;
	if (CCGetParam("user_id") != "" ) {
		if ($EditisAllowed)
			$ssf_sec_users1->btnBlankPsw->Visible = true ;
	} else {
		$ssf_sec_users1->btnBlankPsw->Visible = false ;
	}


//End Custom Code

//Close ssf_sec_users1_btnBlankPsw_BeforeShow @82-025C110A
    return $ssf_sec_users1_btnBlankPsw_BeforeShow;
}
//End Close ssf_sec_users1_btnBlankPsw_BeforeShow

//ssf_sec_users1_BeforeShow @12-5E82445C
function ssf_sec_users1_BeforeShow(& $sender)
{
    $ssf_sec_users1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_BeforeShow

//Custom Code @23-2A29BDB7
// -------------------------
    // Write your own code here.
global $Tpl ;
	if (CCGetParam("user_id") != "" || CCGetParam("ssf_sec_users_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("user_id") != "")
		$Tpl->setvar("readonlyparam","readonly") ;
	else
		$Tpl->setvar("readonlyparam","") ;

	if($ssf_sec_users1->user_number->getValue() >= 100000)
	{
		$ssf_sec_users1->Button_Delete->Visible = false;
		$ssf_sec_users1->Button_Update->Visible = false;
	}
// -------------------------
//End Custom Code

//Close ssf_sec_users1_BeforeShow @12-DB6FB8E5
    return $ssf_sec_users1_BeforeShow;
}
//End Close ssf_sec_users1_BeforeShow

//ssf_sec_users1_AfterInsert @12-FBC8F3DC
function ssf_sec_users1_AfterInsert(& $sender)
{
    $ssf_sec_users1_AfterInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_AfterInsert

//Custom Code @75-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_users1_AfterInsert @12-A9164380
    return $ssf_sec_users1_AfterInsert;
}
//End Close ssf_sec_users1_AfterInsert

//ssf_sec_users1_AfterUpdate @12-C95055DC
function ssf_sec_users1_AfterUpdate(& $sender)
{
    $ssf_sec_users1_AfterUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_AfterUpdate

//Custom Code @76-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_users1_AfterUpdate @12-663F820F
    return $ssf_sec_users1_AfterUpdate;
}
//End Close ssf_sec_users1_AfterUpdate

//ssf_sec_users1_AfterDelete @12-B07952B3
function ssf_sec_users1_AfterDelete(& $sender)
{
    $ssf_sec_users1_AfterDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_AfterDelete

//Custom Code @77-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_users1_AfterDelete @12-FA1B247E
    return $ssf_sec_users1_AfterDelete;
}
//End Close ssf_sec_users1_AfterDelete

//ssf_sec_users1_ds_AfterExecuteSelect @12-CD86444C
function ssf_sec_users1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_sec_users1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_ds_AfterExecuteSelect

//Custom Code @84-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$ssf_sec_users1->InsertAllowed = false ;
		$ssf_sec_users1->DeleteAllowed = false ;
		$ssf_sec_users1->UpdateAllowed = false ;
		$ssf_sec_users1->btnBlankPsw->Visible = false ;
	}
//End Custom Code

//Close ssf_sec_users1_ds_AfterExecuteSelect @12-135FEA02
    return $ssf_sec_users1_ds_AfterExecuteSelect;
}
//End Close ssf_sec_users1_ds_AfterExecuteSelect

//ssf_sec_users1_OnValidate @12-A832785E
function ssf_sec_users1_OnValidate(& $sender)
{
    $ssf_sec_users1_OnValidate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users1; //Compatibility
//End ssf_sec_users1_OnValidate

//Custom Code @88-2A29BDB7
global $CCSLocales ;
if (CCGetParam("btnBlankPsw") != "" ) {
	$user_id = CCGetParam("user_id") ;
	$ssfRtrClnt = new SSFRouterClient();
	$returncode = $ssfRtrClnt->SendReqBlankPassword($user_id);
	if ($returncode != "OK" )
		$ssf_sec_users1->Errors->addError($CCSLocales->GetText($returncode));	
	else
		CCSetSession("ssf_security_modified",true);		
}
//End Custom Code

//Close ssf_sec_users1_OnValidate @12-E494DC6C
    return $ssf_sec_users1_OnValidate;
}
//End Close ssf_sec_users1_OnValidate

//ssf_sec_user_roles_BeforeShow @24-FAA2E198
function ssf_sec_user_roles_BeforeShow(& $sender)
{
    $ssf_sec_user_roles_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_roles; //Compatibility
//End ssf_sec_user_roles_BeforeShow

//Custom Code @45-2A29BDB7
// -------------------------
    // Write your own code here.
	if(CCGetFromGet("user_id") == "")
		$ssf_sec_user_roles->Visible = false;
// -------------------------
//End Custom Code

//Close ssf_sec_user_roles_BeforeShow @24-009ABAD4
    return $ssf_sec_user_roles_BeforeShow;
}
//End Close ssf_sec_user_roles_BeforeShow

//ssf_sec_user_roles1_BeforeShow @34-73BE2D47
function ssf_sec_user_roles1_BeforeShow(& $sender)
{
    $ssf_sec_user_roles1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_roles1; //Compatibility
//End ssf_sec_user_roles1_BeforeShow

//Custom Code @46-2A29BDB7
// -------------------------
    // Write your own code here.
	global $EditisAllowed ;
	if(CCGetFromGet("user_id") == "" || !$EditisAllowed )
		$ssf_sec_user_roles1->Visible = false;
// -------------------------
//End Custom Code

//Close ssf_sec_user_roles1_BeforeShow @34-B6EAC89F
    return $ssf_sec_user_roles1_BeforeShow;
}
//End Close ssf_sec_user_roles1_BeforeShow

//ssf_sec_user_roles1_AfterInsert @34-B9CDF6FC
function ssf_sec_user_roles1_AfterInsert(& $sender)
{
    $ssf_sec_user_roles1_AfterInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_roles1; //Compatibility
//End ssf_sec_user_roles1_AfterInsert

//Custom Code @78-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_user_roles1_AfterInsert @34-19AB5ED2
    return $ssf_sec_user_roles1_AfterInsert;
}
//End Close ssf_sec_user_roles1_AfterInsert

//ssf_sec_user_roles1_AfterDelete @34-AABDD597
function ssf_sec_user_roles1_AfterDelete(& $sender)
{
    $ssf_sec_user_roles1_AfterDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_roles1; //Compatibility
//End ssf_sec_user_roles1_AfterDelete

//Custom Code @79-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_user_roles1_AfterDelete @34-4AA6392C
    return $ssf_sec_user_roles1_AfterDelete;
}
//End Close ssf_sec_user_roles1_AfterDelete

//btnLine_BeforeShow @134-724704FC
function btnLine_BeforeShow(& $sender)
{
    $btnLine_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnLine; //Compatibility
//End btnLine_BeforeShow

//Custom Code @135-2A29BDB7
	global $EditisAllowed ;
	if(CCGetFromGet("user_id") == "" || !$EditisAllowed )
		$Component->Visible = false;
//End Custom Code

//Close btnLine_BeforeShow @134-B8298032
    return $btnLine_BeforeShow;
}
//End Close btnLine_BeforeShow

//ssf_sec_user_access2_user_rights_BeforeShow @100-2982292E
function ssf_sec_user_access2_user_rights_BeforeShow(& $sender)
{
    $ssf_sec_user_access2_user_rights_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_access2; //Compatibility
//End ssf_sec_user_access2_user_rights_BeforeShow

//Custom Code @117-2A29BDB7
  	global $CCSLocales ;
  	switch ($Component->GetValue())
  	{
  	case "1":
  		$Component->SetValue($CCSLocales->GetText("Allowed")) ;
  		break ;
  	case "2":
  		$Component->SetValue($CCSLocales->GetText("ReqAuthorization")) ;
  		break ;
  	}

//End Custom Code

//Close ssf_sec_user_access2_user_rights_BeforeShow @100-1D680DB7
    return $ssf_sec_user_access2_user_rights_BeforeShow;
}
//End Close ssf_sec_user_access2_user_rights_BeforeShow

//ssf_sec_user_access2_BeforeShow @90-4789A3E3
function ssf_sec_user_access2_BeforeShow(& $sender)
{
    $ssf_sec_user_access2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_access2; //Compatibility
//End ssf_sec_user_access2_BeforeShow

//Custom Code @118-2A29BDB7
	global $EditisAllowed ;
	if(CCGetFromGet("user_id") == "" || !$EditisAllowed )
		$Component->Visible = false;
//End Custom Code

//Close ssf_sec_user_access2_BeforeShow @90-10979D22
    return $ssf_sec_user_access2_BeforeShow;
}
//End Close ssf_sec_user_access2_BeforeShow

//ssf_user_action_add_BeforeShow @119-0E37EAD2
function ssf_user_action_add_BeforeShow(& $sender)
{
    $ssf_user_action_add_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_user_action_add; //Compatibility
//End ssf_user_action_add_BeforeShow

//Custom Code @125-2A29BDB7
		global $EditisAllowed ;
	if(CCGetFromGet("user_id") == "" || !$EditisAllowed)
		$Component->Visible = false;
//End Custom Code

//Close ssf_user_action_add_BeforeShow @119-46CE1C4A
    return $ssf_user_action_add_BeforeShow;
}
//End Close ssf_user_action_add_BeforeShow

//ssf_user_action_add_AfterSubmit @119-71B9344F
function ssf_user_action_add_AfterSubmit(& $sender)
{
    $ssf_user_action_add_AfterSubmit = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_user_action_add; //Compatibility
//End ssf_user_action_add_AfterSubmit

//Custom Code @127-2A29BDB7

	for($ssf_user_action_add->RowNumber = 1; $ssf_user_action_add->RowNumber <= $ssf_user_action_add->TotalRows; $ssf_user_action_add->RowNumber++)
	{
		$action_id = $ssf_user_action_add->FormParameters["action_id"][$ssf_user_action_add->RowNumber] ;
		$user_id = CCGetParam("user_id") ;
		$access_type = CCGetParam("lstAccessType") ;
	    $ssf_user_action_add->DataSource->CurrentRow = $ssf_user_action_add->RowNumber;
	    $ssf_user_action_add->CheckBox_Update->SetText($ssf_user_action_add->FormParameters["CheckBox_Update"][$ssf_user_action_add->RowNumber], $ssf_user_action_add->RowNumber);
	    if ($ssf_user_action_add->UpdatedRows >= $ssf_user_action_add->RowNumber) {
			if($ssf_user_action_add->CheckBox_Update->Value) {
				//echo "Ejecuta update user ".$user_id. " action ".$action_id. " access_type ".$access_type ;
	       		$ssf_user_action_add->DataSource->CmdExecution = true;
			    $ssf_user_action_add->DataSource->SQL = "INSERT INTO ssf_sec_user_access values ("
	         		. "'". $user_id . "',"
	         		. "'". $action_id . "',"
	         		. $access_type. " ) " ;
				 //echo $ssf_user_action_add->DataSource->SQL ;
			    $ssf_user_action_add->DataSource->query($ssf_user_action_add->DataSource->SQL); 
			}
		}
		
	    $ssf_user_action_add->DataSource->close(); 
	}


//End Custom Code

//Close ssf_user_action_add_AfterSubmit @119-18A2F3EB
    return $ssf_user_action_add_AfterSubmit;
}
//End Close ssf_user_action_add_AfterSubmit

//Page_AfterInitialize @1-0223CF79
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Users; //Compatibility
//End Page_AfterInitialize

//Custom Code @83-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_SEG_USR_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_SEG_USR_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize



?>
