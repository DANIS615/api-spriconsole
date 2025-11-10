<?php
//BindEvents Method @1-953917B8
function BindEvents()
{
    global $prod_search;
    global $lnkExcel;
    global $Button1;
    global $ViewMode;
    global $Report1;
    global $Report2;
    global $Report3;
    global $CCSEvents;
    $prod_search->Label1->CCSEvents["BeforeShow"] = "prod_search_Label1_BeforeShow";
    $prod_search->Label2->CCSEvents["BeforeShow"] = "prod_search_Label2_BeforeShow";
    $prod_search->Label3->CCSEvents["BeforeShow"] = "prod_search_Label3_BeforeShow";
    $prod_search->CCSEvents["BeforeShow"] = "prod_search_BeforeShow";
    $lnkExcel->CCSEvents["BeforeShow"] = "lnkExcel_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $Report1->ds->CCSEvents["BeforeExecuteSelect"] = "Report1_ds_BeforeExecuteSelect";
    $Report2->ds->CCSEvents["BeforeExecuteSelect"] = "Report2_ds_BeforeExecuteSelect";
    $Report3->ds->CCSEvents["BeforeExecuteSelect"] = "Report3_ds_BeforeExecuteSelect";
    $Report3->CCSEvents["BeforeSelect"] = "Report3_BeforeSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
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

//lnkExcel_BeforeShow @272-2C9D6EA9
function lnkExcel_BeforeShow(& $sender)
{
    $lnkExcel_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lnkExcel; //Compatibility
//End lnkExcel_BeforeShow

//Custom Code @276-2A29BDB7
       $Parameter1 = CCGetParam("ViewMode", "");
       $Parameter2 = "Print";
       if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
	   		$Component->Visible = false ;
//End Custom Code

//Close lnkExcel_BeforeShow @272-54E205B5
    return $lnkExcel_BeforeShow;
}
//End Close lnkExcel_BeforeShow

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

//Report1_ds_BeforeExecuteSelect @132-BE5EDA92
function Report1_ds_BeforeExecuteSelect(& $sender)
{
    $Report1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report1; //Compatibility
//End Report1_ds_BeforeExecuteSelect

//Custom Code @213-2A29BDB7
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close Report1_ds_BeforeExecuteSelect @132-14BF4803
    return $Report1_ds_BeforeExecuteSelect;
}
//End Close Report1_ds_BeforeExecuteSelect

//Report2_ds_BeforeExecuteSelect @172-A3FEEEB8
function Report2_ds_BeforeExecuteSelect(& $sender)
{
    $Report2_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report2; //Compatibility
//End Report2_ds_BeforeExecuteSelect

//Custom Code @214-2A29BDB7
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close Report2_ds_BeforeExecuteSelect @172-E6E8A5FB
    return $Report2_ds_BeforeExecuteSelect;
}
//End Close Report2_ds_BeforeExecuteSelect

//Report3_ds_BeforeExecuteSelect @228-A89EFD5E
function Report3_ds_BeforeExecuteSelect(& $sender)
{
    $Report3_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report3; //Compatibility
//End Report3_ds_BeforeExecuteSelect

//Custom Code @254-2A29BDB7
	$strtoNumberCatalog = ReplaceNumberConvertion("ssf_tkt_catalog.tkt_catalog_value","'99'") ;
	$Component->DataSource->SQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->SQL); 
	$Component->DataSource->CountSQL = str_replace("ReplacetoNumberCatalog", $strtoNumberCatalog, $Component->DataSource->CountSQL) ;	
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close Report3_ds_BeforeExecuteSelect @228-01F5036C
    return $Report3_ds_BeforeExecuteSelect;
}
//End Close Report3_ds_BeforeExecuteSelect

//Report3_BeforeSelect @228-691782CD
function Report3_BeforeSelect(& $sender)
{
    $Report3_BeforeSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Report3; //Compatibility
//End Report3_BeforeSelect

//Custom Code @277-2A29BDB7
 	If(CCGetParam("export") != "") {
		//Show up to 10,000 records
	    $Component->PageSize = 10000;
	    $Component->ds->PageSize = 10000;
		//Hide the Navigator
	    $Component->Navigator->Visible = false ;
	} 
//End Custom Code

//Close Report3_BeforeSelect @228-4B67C5AD
    return $Report3_BeforeSelect;
}
//End Close Report3_BeforeSelect

//Page_AfterInitialize @1-77DDD938
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSalesbyProd; //Compatibility
//End Page_AfterInitialize

//Custom Code @81-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_TKT_SBP_REP_VIEW") ;

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

//Page_BeforeShow @1-AE4943BD
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSalesbyProd; //Compatibility
//End Page_BeforeShow

//Custom Code @212-2A29BDB7
global $Report1 ;
global $Report2 ;
global $Report3 ;

	$Report1->Visible = false ;
	$Report2->Visible = false ;
	$Report3->Visible = false ;
		
	if (CCGetParam("rboption","0") == "0" )
		$Report1->Visible = true ;
	if (CCGetParam("rboption") == "1" )
		$Report2->Visible = true ;
	if (CCGetParam("rboption") == "2" )
		$Report3->Visible = true ;

global $Tpl ;

 	if (CCGetParam("export") == "") {
		$Tpl->SetVar("page_style","../../Styles/Spiritnew/Style.css") ;
	}
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_OnInitializeView @1-DF8401BD
function Page_OnInitializeView(& $sender)
{
    $Page_OnInitializeView = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTicketSalesbyProd; //Compatibility
//End Page_OnInitializeView

//Custom Code @275-2A29BDB7
global $SSFSpiritHeader ;
global $lnkExcel ;
	$ExportFileName = "Report.xls";
 	if (CCGetParam("export") != "") {
		//Hide the ToExcelLink Link 
		$SSFSpiritHeader->Visible = false;
		$lnkExcel->Visible = false ;
		//Set Content type to Excel
        header("Content-Type: application/vnd.ms-excel");
		//header("Content-Type: application/vnd.notepad");
        //Fix IE 5.0-5.5 bug with Content-Disposition=attachment
		if (strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.5;") || 
            strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.0;")) {
	  		header("Content-Disposition: filename=" . $ExportFileName);
		} else {
	  		header("Content-Disposition: attachment; filename=" . $ExportFileName);
		} 
	}
//End Custom Code

//Close Page_OnInitializeView @1-81DF8332
    return $Page_OnInitializeView;
}
//End Close Page_OnInitializeView


?>
