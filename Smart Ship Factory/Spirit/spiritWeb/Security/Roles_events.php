<?php
//BindEvents Method @1-B8D0D216
function BindEvents()
{
    global $ssf_sec_roles;
    global $ssf_sec_roles1;
    global $ssf_sec_user_access2;
    global $ssf_user_action_add;
    global $CCSEvents;
    $ssf_sec_roles->ssf_sec_roles_Insert->CCSEvents["BeforeShow"] = "ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow";
    $ssf_sec_roles1->CCSEvents["AfterInsert"] = "ssf_sec_roles1_AfterInsert";
    $ssf_sec_roles1->CCSEvents["AfterUpdate"] = "ssf_sec_roles1_AfterUpdate";
    $ssf_sec_roles1->CCSEvents["AfterDelete"] = "ssf_sec_roles1_AfterDelete";
    $ssf_sec_roles1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_sec_roles1_ds_AfterExecuteSelect";
    $ssf_sec_roles1->CCSEvents["BeforeShow"] = "ssf_sec_roles1_BeforeShow";
    $ssf_sec_user_access2->role_rights->CCSEvents["BeforeShow"] = "ssf_sec_user_access2_role_rights_BeforeShow";
    $ssf_sec_user_access2->CCSEvents["BeforeShow"] = "ssf_sec_user_access2_BeforeShow";
    $ssf_user_action_add->CCSEvents["BeforeShow"] = "ssf_user_action_add_BeforeShow";
    $ssf_user_action_add->CCSEvents["AfterSubmit"] = "ssf_user_action_add_AfterSubmit";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow @4-C31186F2
function ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow(& $sender)
{
    $ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles; //Compatibility
//End ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow

//Custom Code @55-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$ssf_sec_roles->ssf_sec_roles_Insert->Visible = false ;
	}

//End Custom Code

//Close ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow @4-707D16DD
    return $ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow;
}
//End Close ssf_sec_roles_ssf_sec_roles_Insert_BeforeShow

//ssf_sec_roles1_AfterInsert @12-D88A66D1
function ssf_sec_roles1_AfterInsert(& $sender)
{
    $ssf_sec_roles1_AfterInsert = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles1; //Compatibility
//End ssf_sec_roles1_AfterInsert

//Custom Code @49-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_roles1_AfterInsert @12-741933A5
    return $ssf_sec_roles1_AfterInsert;
}
//End Close ssf_sec_roles1_AfterInsert

//ssf_sec_roles1_AfterUpdate @12-EA12C0D1
function ssf_sec_roles1_AfterUpdate(& $sender)
{
    $ssf_sec_roles1_AfterUpdate = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles1; //Compatibility
//End ssf_sec_roles1_AfterUpdate

//Custom Code @50-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_roles1_AfterUpdate @12-BB30F22A
    return $ssf_sec_roles1_AfterUpdate;
}
//End Close ssf_sec_roles1_AfterUpdate

//ssf_sec_roles1_AfterDelete @12-933BC7BE
function ssf_sec_roles1_AfterDelete(& $sender)
{
    $ssf_sec_roles1_AfterDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles1; //Compatibility
//End ssf_sec_roles1_AfterDelete

//Custom Code @51-2A29BDB7
	CCSetSession("ssf_security_modified",true);
//End Custom Code

//Close ssf_sec_roles1_AfterDelete @12-2714545B
    return $ssf_sec_roles1_AfterDelete;
}
//End Close ssf_sec_roles1_AfterDelete

//ssf_sec_roles1_ds_AfterExecuteSelect @12-2D440D57
function ssf_sec_roles1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_sec_roles1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles1; //Compatibility
//End ssf_sec_roles1_ds_AfterExecuteSelect

//Custom Code @56-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$ssf_sec_roles1->InsertAllowed = false ;
		$ssf_sec_roles1->DeleteAllowed = false ;
		$ssf_sec_roles1->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_sec_roles1_ds_AfterExecuteSelect @12-59BC916A
    return $ssf_sec_roles1_ds_AfterExecuteSelect;
}
//End Close ssf_sec_roles1_ds_AfterExecuteSelect

//ssf_sec_roles1_BeforeShow @12-49117F0D
function ssf_sec_roles1_BeforeShow(& $sender)
{
    $ssf_sec_roles1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_roles1; //Compatibility
//End ssf_sec_roles1_BeforeShow

//Custom Code @57-2A29BDB7
global $Tpl ;
	if (CCGetParam("role_id") != "" || CCGetParam("ssf_sec_roles_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
	
	if (CCGetParam("role_id") != "")
		$Tpl->setvar("readonlyparam","readonly") ;
	else
		$Tpl->setvar("readonlyparam","") ;
//End Custom Code

//Close ssf_sec_roles1_BeforeShow @12-D963548A
    return $ssf_sec_roles1_BeforeShow;
}
//End Close ssf_sec_roles1_BeforeShow

//ssf_sec_user_access2_role_rights_BeforeShow @100-85BD4B65
function ssf_sec_user_access2_role_rights_BeforeShow(& $sender)
{
    $ssf_sec_user_access2_role_rights_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_user_access2; //Compatibility
//End ssf_sec_user_access2_role_rights_BeforeShow

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

//Close ssf_sec_user_access2_role_rights_BeforeShow @100-A18F884D
    return $ssf_sec_user_access2_role_rights_BeforeShow;
}
//End Close ssf_sec_user_access2_role_rights_BeforeShow

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
	if(CCGetFromGet("role_id") == "" || !$EditisAllowed )
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

//Custom Code @130-2A29BDB7
	global $EditisAllowed ;
	if(CCGetFromGet("role_id") == "" || !$EditisAllowed )
		$Component->Visible = false ;
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

//Custom Code @131-2A29BDB7
	for($ssf_user_action_add->RowNumber = 1; $ssf_user_action_add->RowNumber <= $ssf_user_action_add->TotalRows; $ssf_user_action_add->RowNumber++)
	{
		$action_id = $ssf_user_action_add->FormParameters["action_id"][$ssf_user_action_add->RowNumber] ;
		$role_id = CCGetParam("role_id") ;
		$access_type = CCGetParam("lstAccessType") ;
	    $ssf_user_action_add->DataSource->CurrentRow = $ssf_user_action_add->RowNumber;
	    $ssf_user_action_add->CheckBox_Update->SetText($ssf_user_action_add->FormParameters["CheckBox_Update"][$ssf_user_action_add->RowNumber], $ssf_user_action_add->RowNumber);
	    if ($ssf_user_action_add->UpdatedRows >= $ssf_user_action_add->RowNumber) {
			if($ssf_user_action_add->CheckBox_Update->Value) {
				//echo "Ejecuta update role ".$role_id. " action ".$action_id. " access_type ".$access_type ;
	       		$ssf_user_action_add->DataSource->CmdExecution = true;
			    $ssf_user_action_add->DataSource->SQL = "INSERT INTO ssf_sec_role_access values ("
	         		. "'". $role_id . "',"
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

//DEL  // -------------------------
//DEL      // Write your own code here.
//DEL  	if(CCGetFromGet("role_id") == "")
//DEL  		$ssf_sec_role_access->Visible = false;
//DEL  // -------------------------

//DEL  // -------------------------
//DEL      // Write your own code here.
//DEL  	global $EditisAllowed ;
//DEL  	if(CCGetFromGet("role_id") == "" || !$EditisAllowed )
//DEL  		$ssf_sec_role_access1->Visible = false;
//DEL  // -------------------------

//DEL  	CCSetSession("ssf_security_modified",true);

//DEL  	CCSetSession("ssf_security_modified",true);

//Page_AfterInitialize @1-49FA144E
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Roles; //Compatibility
//End Page_AfterInitialize

//Custom Code @54-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_SEG_ROL_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_SEG_ROL_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
