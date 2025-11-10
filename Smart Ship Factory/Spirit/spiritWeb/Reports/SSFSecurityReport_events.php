<?php
//BindEvents Method @1-5941FD6E
function BindEvents()
{
    global $ssf_sec_users;
    global $Button1;
    global $ViewMode;
    global $CCSEvents;
    $ssf_sec_users->s_role_option->CCSEvents["BeforeShow"] = "ssf_sec_users_s_role_option_BeforeShow";
    $ssf_sec_users->CCSEvents["BeforeShow"] = "ssf_sec_users_BeforeShow";
    $Button1->CCSEvents["BeforeShow"] = "Button1_BeforeShow";
    $ViewMode->CCSEvents["BeforeShow"] = "ViewMode_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//ssf_sec_users_s_role_option_BeforeShow @54-A7C56D35
function ssf_sec_users_s_role_option_BeforeShow(& $sender)
{
    $ssf_sec_users_s_role_option_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users; //Compatibility
//End ssf_sec_users_s_role_option_BeforeShow

//Custom Code @55-2A29BDB7
	if (CCGetParam("s_role_option") == "" )
		$Component->SetValue(0) ;
//End Custom Code

//Close ssf_sec_users_s_role_option_BeforeShow @54-5D2AD25A
    return $ssf_sec_users_s_role_option_BeforeShow;
}
//End Close ssf_sec_users_s_role_option_BeforeShow


//ssf_sec_users_BeforeShow @3-43B47A60
function ssf_sec_users_BeforeShow(& $sender)
{
    $ssf_sec_users_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ssf_sec_users; //Compatibility
//End ssf_sec_users_BeforeShow

//Custom Code @41-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $Component->Visible = false;
//End Custom Code

//Close ssf_sec_users_BeforeShow @3-580E2BC1
    return $ssf_sec_users_BeforeShow;
}
//End Close ssf_sec_users_BeforeShow

//Button1_BeforeShow @39-E573F4A6
function Button1_BeforeShow(& $sender)
{
    $Button1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Button1; //Compatibility
//End Button1_BeforeShow

//Custom Code @40-2A29BDB7
    $Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
		$Button1->Visible = false ;
//End Custom Code

//Close Button1_BeforeShow @39-FBC5008D
    return $Button1_BeforeShow;
}
//End Close Button1_BeforeShow

//ViewMode_BeforeShow @37-2524CACA
function ViewMode_BeforeShow(& $sender)
{
    $ViewMode_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $ViewMode; //Compatibility
//End ViewMode_BeforeShow

//Custom Code @38-2A29BDB7
	$Component->SetValue("Print") ;
//End Custom Code

//Close ViewMode_BeforeShow @37-3723B54F
    return $ViewMode_BeforeShow;
}
//End Close ViewMode_BeforeShow

//Page_AfterInitialize @1-B552051B
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFSecurityReport; //Compatibility
//End Page_AfterInitialize

//Custom Code @42-2A29BDB7
	global $SSFSpiritHeader ;
	$Parameter1 = CCGetParam("ViewMode", "");
    $Parameter2 = "Print";
    if (0 == CCCompareValues($Parameter1, $Parameter2, ccsText))
        $SSFSpiritHeader->Visible = false;
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
