<?php
//BindEvents Method @1-71AE53E1
function BindEvents()
{
    global $Path_ssf_tkt_categories;
    global $ssf_tkt_categories;
    global $ssf_tkt_categories1;
    global $ssf_tkt_categories_ssf_tk;
    global $CCSEvents;
    $Path_ssf_tkt_categories->ds->CCSEvents["AfterExecuteSelect"] = "Path_ssf_tkt_categories_ds_AfterExecuteSelect";
    $ssf_tkt_categories->Link1->CCSEvents["BeforeShow"] = "ssf_tkt_categories_Link1_BeforeShow";
    $ssf_tkt_categories->Link2->CCSEvents["BeforeShow"] = "ssf_tkt_categories_Link2_BeforeShow";
    $ssf_tkt_categories1->tkt_category_level->CCSEvents["BeforeShow"] = "ssf_tkt_categories1_tkt_category_level_BeforeShow";
    $ssf_tkt_categories1->CCSEvents["BeforeShow"] = "ssf_tkt_categories1_BeforeShow";
    $ssf_tkt_categories1->ds->CCSEvents["AfterExecuteSelect"] = "ssf_tkt_categories1_ds_AfterExecuteSelect";
    $ssf_tkt_categories1->ds->CCSEvents["BeforeExecuteDelete"] = "ssf_tkt_categories1_ds_BeforeExecuteDelete";
    $ssf_tkt_categories_ssf_tk->CCSEvents["BeforeShow"] = "ssf_tkt_categories_ssf_tk_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Path_ssf_tkt_categories_ds_AfterExecuteSelect @3-4101CDD8
function Path_ssf_tkt_categories_ds_AfterExecuteSelect(& $sender)
{
    $Path_ssf_tkt_categories_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Path_ssf_tkt_categories; //Compatibility
//End Path_ssf_tkt_categories_ds_AfterExecuteSelect

//Custom Code @45-2A29BDB7
	global $LevelCount ;
	$LevelCount = $LevelCount + 1 ;
//End Custom Code

//Close Path_ssf_tkt_categories_ds_AfterExecuteSelect @3-7AFEA19B
    return $Path_ssf_tkt_categories_ds_AfterExecuteSelect;
}
//End Close Path_ssf_tkt_categories_ds_AfterExecuteSelect

//ssf_tkt_categories_Link1_BeforeShow @24-F7060A77
function ssf_tkt_categories_Link1_BeforeShow(& $sender)
{
    $ssf_tkt_categories_Link1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories; //Compatibility
//End ssf_tkt_categories_Link1_BeforeShow

//Custom Code @65-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) 
		$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_categories_Link1_BeforeShow @24-E2803D36
    return $ssf_tkt_categories_Link1_BeforeShow;
}
//End Close ssf_tkt_categories_Link1_BeforeShow

//ssf_tkt_categories_Link2_BeforeShow @27-B0706A46
function ssf_tkt_categories_Link2_BeforeShow(& $sender)
{
    $ssf_tkt_categories_Link2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories; //Compatibility
//End ssf_tkt_categories_Link2_BeforeShow

//Custom Code @66-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) 
		$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_categories_Link2_BeforeShow @27-9EE118ED
    return $ssf_tkt_categories_Link2_BeforeShow;
}
//End Close ssf_tkt_categories_Link2_BeforeShow
 

//ssf_tkt_categories1_tkt_category_level_BeforeShow @40-201B3290
function ssf_tkt_categories1_tkt_category_level_BeforeShow(& $sender)
{
    $ssf_tkt_categories1_tkt_category_level_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories1; //Compatibility
//End ssf_tkt_categories1_tkt_category_level_BeforeShow

//Custom Code @44-2A29BDB7
	global $LevelCount ;
	if (CCGetParam("edit_id") == ""  ) {
		if ($LevelCount == 0)
			$Component->SetValue($LevelCount + 1) ;
		else
			$Component->SetValue($LevelCount) ;
	}
//End Custom Code

//Close ssf_tkt_categories1_tkt_category_level_BeforeShow @40-CB32F304
    return $ssf_tkt_categories1_tkt_category_level_BeforeShow;
}
//End Close ssf_tkt_categories1_tkt_category_level_BeforeShow

//ssf_tkt_categories1_BeforeShow @31-E64466D2
function ssf_tkt_categories1_BeforeShow(& $sender)
{
    $ssf_tkt_categories1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories1; //Compatibility
//End ssf_tkt_categories1_BeforeShow

//Custom Code @43-2A29BDB7
 
  if(!CCGetFromGet("parent_id","")) {
    $ssf_tkt_categories1->tkt_category_parent->SetValue(CCGetFromGet("categ_id",""));
  } else {
    $ssf_tkt_categories1->tkt_category_parent->SetValue(CCGetFromGet("parent_id",""));
  }

  global $Tpl ;
	if (CCGetParam("edit_id") != ""  ) 
		$Tpl->setvar("readonlyparam", "readonly") ;

	global $EditisAllowed ;

	if (!$EditisAllowed ) 
		$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_categories1_BeforeShow @31-6BE9ABF4
    return $ssf_tkt_categories1_BeforeShow;
}
//End Close ssf_tkt_categories1_BeforeShow

//ssf_tkt_categories1_ds_AfterExecuteSelect @31-516C149C
function ssf_tkt_categories1_ds_AfterExecuteSelect(& $sender)
{
    $ssf_tkt_categories1_ds_AfterExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories1; //Compatibility
//End ssf_tkt_categories1_ds_AfterExecuteSelect

//Custom Code @64-2A29BDB7
	global $EditisAllowed ;

	if (!$EditisAllowed ) {
		$Component->InsertAllowed = false ;
		$Component->DeleteAllowed = false ;
		$Component->UpdateAllowed = false ;
	}
//End Custom Code

//Close ssf_tkt_categories1_ds_AfterExecuteSelect @31-73076480
    return $ssf_tkt_categories1_ds_AfterExecuteSelect;
}
//End Close ssf_tkt_categories1_ds_AfterExecuteSelect

//ssf_tkt_categories1_ds_BeforeExecuteDelete @31-757B9209
function ssf_tkt_categories1_ds_BeforeExecuteDelete(& $sender)
{
    $ssf_tkt_categories1_ds_BeforeExecuteDelete = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories1; //Compatibility
//End ssf_tkt_categories1_ds_BeforeExecuteDelete

//Custom Code @67-2A29BDB7
	global $DBConnection1 ;
	global $CCSLocales ;
	$table = "ssf_tkt_plu" ;
	$level = $ssf_tkt_categories1->tkt_category_level->GetValue() ;
	
	switch ($level) {
		case 1:
			$where = " tkt_plu_cat1" ;
			break;
		case 2:
			$where = " tkt_plu_cat2" ;
			break;
		case 3:
			$where = " tkt_plu_cat3" ;
			break;
	}
	$where .= " = '".$ssf_tkt_categories1->tkt_category_id->GetValue()."' " ;
	$ExistRelation = CCDLookUp("tkt_plu_id",$table,$where,$DBConnection1) ;
	if ($ExistRelation != "" ) {
		$Component->DataSource->Errors->addError($CCSLocales->GetText("ssf_delete_exist_relation",$CCSLocales->GetText($table))) ;	
	}
//End Custom Code

//Close ssf_tkt_categories1_ds_BeforeExecuteDelete @31-9964C647
    return $ssf_tkt_categories1_ds_BeforeExecuteDelete;
}
//End Close ssf_tkt_categories1_ds_BeforeExecuteDelete

//ssf_tkt_categories_ssf_tk_BeforeShow @47-3DCE177A
function ssf_tkt_categories_ssf_tk_BeforeShow(& $sender)
{
    $ssf_tkt_categories_ssf_tk_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_tkt_categories_ssf_tk; //Compatibility
//End ssf_tkt_categories_ssf_tk_BeforeShow

//Custom Code @60-2A29BDB7
	if ( CCGetParam("categ_id") != ""  ) 
		$Component->Visible = true ;
	 else 
	 	$Component->Visible = false ;
//End Custom Code

//Close ssf_tkt_categories_ssf_tk_BeforeShow @47-7D0A8101
    return $ssf_tkt_categories_ssf_tk_BeforeShow;
}
//End Close ssf_tkt_categories_ssf_tk_BeforeShow

//Page_AfterInitialize @1-371B058B
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketInvCat; //Compatibility
//End Page_AfterInitialize

//Custom Code @61-2A29BDB7
	global $EditisAllowed ;

	$accmgr = new AccessManager() ;
	$EditisAllowed = $accmgr->CheckUserAction("WEB_TKT_JER_EDIT") ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_JER_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage($EditisAllowed,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
