<?php
//BindEvents Method @1-92F31349
function BindEvents()
{
    global $ssf_addin_tags_sale_data;
    global $btnPrint;
    global $ViewMode;
    global $ssf_addin_tags_sale_data1;
    global $CCSEvents;
    $ssf_addin_tags_sale_data->s_pump_id->ds->CCSEvents["BeforeBuildSelect"] = "ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect";
    $ssf_addin_tags_sale_data->CCSEvents["BeforeShow"] = "ssf_addin_tags_sale_data_BeforeShow";
    $btnPrint->CCSEvents["BeforeShow"] = "btnPrint_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $ssf_addin_tags_sale_data1->ds->CCSEvents["BeforeExecuteSelect"] = "ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect @23-D597FB8B
function ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect(& $sender)
{
    $ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tags_sale_data; //Compatibility
//End ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect

//Custom Code @72-2A29BDB7
	$strSelect = ReplaceNumberConvertion("ID","'99'") ;
    $ssf_addin_tags_sale_data->s_pump_id->DataSource->SQL = "Select ".$strSelect. " as ID from config_values \n" .
    "where library = 'pump' and groupname = 'general'\n" .
    "and parameter = 'ID' {SQL_OrderBy}";
    $ssf_addin_tags_sale_data->s_pump_id->DataSource->Order = "id";
//End Custom Code

//Close ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect @23-46EF03FE
    return $ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect;
}
//End Close ssf_addin_tags_sale_data_s_pump_id_ds_BeforeBuildSelect

//ssf_addin_tags_sale_data_BeforeShow @18-F0EA84DA
function ssf_addin_tags_sale_data_BeforeShow(& $sender)
{
    $ssf_addin_tags_sale_data_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tags_sale_data; //Compatibility
//End ssf_addin_tags_sale_data_BeforeShow

//Custom Code @78-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Component->Visible = false ;
//End Custom Code

//Close ssf_addin_tags_sale_data_BeforeShow @18-243C132F
    return $ssf_addin_tags_sale_data_BeforeShow;
}
//End Close ssf_addin_tags_sale_data_BeforeShow

//btnPrint_BeforeShow @73-013F00B3
function btnPrint_BeforeShow(& $sender)
{
    $btnPrint_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $btnPrint; //Compatibility
//End btnPrint_BeforeShow

//Custom Code @74-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$btnPrint->Visible = false ;
//End Custom Code

//Close btnPrint_BeforeShow @73-89AD538A
    return $btnPrint_BeforeShow;
}
//End Close btnPrint_BeforeShow

//ViewMode_BeforeShow @75-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @76-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @75-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect @3-6BBDD0F0
function ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect(& $sender)
{
    $ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_addin_tags_sale_data1; //Compatibility
//End ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect

//Custom Code @79-2A29BDB7
	$Component->DataSource->SQL = ReplaceSqlConcat($Component->DataSource->SQL) ;	
	$Component->DataSource->CountSQL = ReplaceSqlConcat($Component->DataSource->CountSQL) ;	
//End Custom Code

//Close ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect @3-E6CFC65E
    return $ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect;
}
//End Close ssf_addin_tags_sale_data1_ds_BeforeExecuteSelect

//Page_AfterInitialize @1-A2B3A729
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFTagSaleReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @77-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;

	$accmgr = new AccessManager() ;
	$ViewisAllowed = $accmgr->CheckUserAction("WEB_REP_TAG_SALE") ;

	global $Redirect ;
	global $PathToRoot ;
	$accmgr->CheckAllowPage(false,$ViewisAllowed,$PathToRoot,$Redirect) ;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
