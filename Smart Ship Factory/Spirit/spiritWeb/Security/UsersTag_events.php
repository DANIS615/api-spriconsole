<?php
//BindEvents Method @1-A6EC5B7B
function BindEvents()
{
    global $ssf_addin_tagat_user_tags;
    global $ssf_addin_tagat_user_tags1;
    global $CCSEvents;
    $ssf_addin_tagat_user_tags->tagat_enabled->CCSEvents["BeforeShow"] = "ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow";
    $ssf_addin_tagat_user_tags->ssf_addin_tagat_Insert->CCSEvents["BeforeShow"] = "ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow";
    $ssf_addin_tagat_user_tags1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect";
    $ssf_addin_tagat_user_tags1->CCSEvents["BeforeShow"] = "ssf_addin_tagat_user_tags1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow @15-DF4FD351
function ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow(& $sender)
{
    $ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tagat_user_tags; //Compatibility
//End ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow

//Custom Code @35-2A29BDB7
global $CCSLocales ;
	$Component->SetValue($Component->GetValue() == "Y" ? $CCSLocales->GetText("ssf_yes") : $CCSLocales->GetText("ssf_no") ) ;
//End Custom Code

//Close ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow @15-36E3C294
    return $ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow;
}
//End Close ssf_addin_tagat_user_tags_tagat_enabled_BeforeShow

//ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow @6-BF8F5FC5
function ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow(& $sender)
{
    $ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tagat_user_tags; //Compatibility
//End ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow

//Custom Code @28-2A29BDB7
	global $EditisAllowed ;
	if (!$EditisAllowed) {
		$Component->Visible = false ;
	}
//End Custom Code

//Close ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow @6-3EC691C2
    return $ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow;
}
//End Close ssf_addin_tagat_user_tags_ssf_addin_tagat_Insert_BeforeShow

//ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect @17-1078A135
function ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tagat_user_tags1; //Compatibility
//End ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect

//Custom Code @29-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect @17-724D306E
    return $ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect;
}
//End Close ssf_addin_tagat_user_tags1_ds_AfterExecuteSelect

//ssf_addin_tagat_user_tags1_BeforeShow @17-83C99353
function ssf_addin_tagat_user_tags1_BeforeShow(& $sender)
{
    $ssf_addin_tagat_user_tags1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tagat_user_tags1; //Compatibility
//End ssf_addin_tagat_user_tags1_BeforeShow

//Custom Code @30-2A29BDB7
global $Tpl ;
	if (CCGetParam("tagat_tag_id") != "" || CCGetParam("ssf_addin_tagat_Insert") == "insert" ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;

	if (CCGetParam("tagat_tag_id") != "" ) 
		$Tpl->setvar("readonlyparam", "readonly") ;
//End Custom Code

//Close ssf_addin_tagat_user_tags1_BeforeShow @17-03881E91
    return $ssf_addin_tagat_user_tags1_BeforeShow;
}
//End Close ssf_addin_tagat_user_tags1_BeforeShow

//Page_AfterInitialize @1-DDADA4A9
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $UsersTag; //Compatibility
//End Page_AfterInitialize

//Custom Code @27-2A29BDB7
	global $EditisAllowed ;
	
	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_SEG_USR_TAG_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_SEG_USR_TAG_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
