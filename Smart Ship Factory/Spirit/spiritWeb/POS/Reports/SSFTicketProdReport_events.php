<?php
//BindEvents Method @1-C1373B0F
function BindEvents()
{
    global $prod_search;
    global $Button1;
    global $ViewMode;
    global $Report1;
    global $CCSEvents;
    $prod_search->Label1->CCSEvents["BeforeShow"] = "prod_search_Label1_BeforeShow";
    $prod_search->Label2->CCSEvents["BeforeShow"] = "prod_search_Label2_BeforeShow";
    $prod_search->Label3->CCSEvents["BeforeShow"] = "prod_search_Label3_BeforeShow";
    $prod_search->CCSEvents["BeforeShow"] = "prod_search_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Report1->Sorter1->CCSEvents["BeforeShow"] = "Report1_Sorter1_BeforeShow";
    $Report1->Sorter_cat2_tkt_category_desc->CCSEvents["BeforeShow"] = "Report1_Sorter_cat2_tkt_category_desc_BeforeShow";
    $Report1->Sorter_cat3_tkt_category_desc->CCSEvents["BeforeShow"] = "Report1_Sorter_cat3_tkt_category_desc_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//prod_search_Label1_BeforeShow @82-52D112A2
function prod_search_Label1_BeforeShow(& $sender)
{
    $prod_search_Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $prod_search; //Compatibility
//End prod_search_Label1_BeforeShow

//Custom Code @85-2A29BDB7
	global $lbl_Level1 ;
	$Component->SetValue($lbl_Level1) ;

//End Custom Code

//Close prod_search_Label1_BeforeShow @82-740BB009
    return $prod_search_Label1_BeforeShow;
}
//End Close prod_search_Label1_BeforeShow

//prod_search_Label2_BeforeShow @83-34CB096B
function prod_search_Label2_BeforeShow(& $sender)
{
    $prod_search_Label2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $prod_search; //Compatibility
//End prod_search_Label2_BeforeShow

//Custom Code @86-2A29BDB7
	global $lbl_Level2 ;
	$Component->SetValue($lbl_Level2) ;

//End Custom Code

//Close prod_search_Label2_BeforeShow @83-086A95D2
    return $prod_search_Label2_BeforeShow;
}
//End Close prod_search_Label2_BeforeShow

//prod_search_Label3_BeforeShow @84-A0120213
function prod_search_Label3_BeforeShow(& $sender)
{
    $prod_search_Label3_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $prod_search; //Compatibility
//End prod_search_Label3_BeforeShow

//Custom Code @87-2A29BDB7
	global $lbl_Level3 ;
	$Component->SetValue($lbl_Level3) ;

//End Custom Code

//Close prod_search_Label3_BeforeShow @84-956574A4
    return $prod_search_Label3_BeforeShow;
}
//End Close prod_search_Label3_BeforeShow

//prod_search_BeforeShow @67-4E8497BA
function prod_search_BeforeShow(& $sender)
{
    $prod_search_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $prod_search; //Compatibility
//End prod_search_BeforeShow

//Custom Code @79-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close prod_search_BeforeShow @67-4DB63BF4
    return $prod_search_BeforeShow;
}
//End Close prod_search_BeforeShow

//Button1_BeforeShow @76-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @80-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close Button1_BeforeShow @76-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

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

//Report1_Sorter1_BeforeShow @90-DA5534AA
function Report1_Sorter1_BeforeShow(& $sender)
{
    $Report1_Sorter1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_Sorter1_BeforeShow

//Custom Code @91-2A29BDB7
global $Tpl ;
  	global $lbl_Level1 ;
  	$Component->Title = $lbl_Level1 ;
	$Tpl->setvar("cat1_tkt_category_desc_text",$lbl_Level1) ;
//End Custom Code

//Close Report1_Sorter1_BeforeShow @90-726D92F3
    return $Report1_Sorter1_BeforeShow;
}
//End Close Report1_Sorter1_BeforeShow

//Report1_Sorter_cat2_tkt_category_desc_BeforeShow @57-FD5AAABA
function Report1_Sorter_cat2_tkt_category_desc_BeforeShow(& $sender)
{
    $Report1_Sorter_cat2_tkt_category_desc_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_Sorter_cat2_tkt_category_desc_BeforeShow

//Custom Code @92-2A29BDB7
global $Tpl ;
  	global $lbl_Level2 ;
  	$Component->Title = $lbl_Level2 ;
	$Tpl->setvar("cat2_tkt_category_desc_text",$lbl_Level2) ;
//End Custom Code

//Close Report1_Sorter_cat2_tkt_category_desc_BeforeShow @57-ECB6F391
    return $Report1_Sorter_cat2_tkt_category_desc_BeforeShow;
}
//End Close Report1_Sorter_cat2_tkt_category_desc_BeforeShow

//Report1_Sorter_cat3_tkt_category_desc_BeforeShow @59-0BC8CB1F
function Report1_Sorter_cat3_tkt_category_desc_BeforeShow(& $sender)
{
    $Report1_Sorter_cat3_tkt_category_desc_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_Sorter_cat3_tkt_category_desc_BeforeShow

//Custom Code @93-2A29BDB7
global $Tpl ;
  	global $lbl_Level3 ;
  	$Component->Title = $lbl_Level3 ;
	$Tpl->setvar("cat3_tkt_category_desc_text",$lbl_Level3) ;
//End Custom Code

//Close Report1_Sorter_cat3_tkt_category_desc_BeforeShow @59-1D6CF63B
    return $Report1_Sorter_cat3_tkt_category_desc_BeforeShow;
}
//End Close Report1_Sorter_cat3_tkt_category_desc_BeforeShow

//Page_AfterInitialize @1-FCF84E91
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketProdReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @81-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_PRO_REP_VIEW") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;

global $DBConnection1 ;
global $prod_search ;
global $lbl_Level1 ;
global $lbl_Level2 ;
global $lbl_Level3 ;
	$db = new clsDBConnection1();
	$sql = " Select * from ssf_tkt_catalog where tkt_catalog_id = 'cat_level' " ;
	$db->query($sql);
	$Result = $db->next_record();
	while ($Result) {
		switch ($db->f("tkt_catalog_code")) {
		case "level1":
			$lbl_Level1 = $db->f("tkt_catalog_value") ;
			break ;
		case "level2":
			$lbl_Level2 = $db->f("tkt_catalog_value") ;
			break ;
		case "level3":
			$lbl_Level3 = $db->f("tkt_catalog_value") ;
			break ;
		}
		$Result = $db->next_record();
	}


	$prod_search->lstLevel1->Caption = $lbl_Level1 ;
	$prod_search->lstLevel2->Caption = $lbl_Level2 ;
	$prod_search->lstLevel3->Caption = $lbl_Level3 ;



//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
