<?php
//BindEvents Method @1-31286738
function BindEvents()
{
    global $lblMessageReturn;
    global $CCSEvents;
    $lblMessageReturn->CCSEvents["BeforeShow"] = "lblMessageReturn_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method
//lblMessageReturn_BeforeShow @8-9E832896
function lblMessageReturn_BeforeShow(& $sender)
{
    $lblMessageReturn_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $lblMessageReturn; //Compatibility
//End lblMessageReturn_BeforeShow

//Custom Code @9-2A29BDB7
if (CCGetParam("Button_SendREQ") != "" ) {
	$message = CCGetParam("message") ;
	$parameter = CCGetParam("parameter") ;
	$login = (CCGetParam("chkLogin") == "1") ;
	$ssfRtrClnt = new SSFRouterClient();
	$return_message = $ssfRtrClnt->SendGenericMessage($message,$parameter,$login);
	$labelstr = MakeAnswerTable($return_message) ;
	$lblMessageReturn->SetValue($labelstr) ;
	$lblMessageReturn->Visible = true ;
} else {
	$lblMessageReturn->Visible = false ;
}

//End Custom Code

//Close lblMessageReturn_BeforeShow @8-035D59AC
    return $lblMessageReturn_BeforeShow;
}
//End Close lblMessageReturn_BeforeShow

//Page_AfterInitialize @1-506CBCD7
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $SSFMessageReview; //Compatibility
//End Page_AfterInitialize

//Custom Code @11-2A29BDB7
	if (CCGetSession("UserID") != "SSF" ) {
		global $Redirect ;
		global $PathToRoot ;
		$accmgr->CheckAllowPage(false,false,$PathToRoot,$Redirect) ;
	}
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

function MakeAnswerTable($return_message) {

$answer_array = explode("|",$return_message) ;
//print_r($answer_array) ;
$labelstr  = "  <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"> " .
    			" <tr> " .
      			"  <td valign=\"top\"> " .
        			" <table class=\"Header\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"> ".
          				" <tr> ".
            			" <td class=\"HeaderLeft\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> ".
            			" <th>Respuesta del Mensaje&nbsp;</th> " .
 		            	" <td class=\"HeaderRight\"><img src=\"../Styles/Spiritnew/Images/Spacer.gif\" border=\"0\"></td> ".
          				" </tr> ".
        			" </table> ".
        	" <table class=\"Record\" cellspacing=\"0\" cellpadding=\"0\"> " ;
    	    	/*" <tr class=\"Error\"> " .
        	 	"  <td colspan=\"2\">{Error}</td> " .
          		"	</tr> " .*/
				for ($i=0;$i<=count($answer_array);$i++) {
					if ($answer_array[$i] != "" && $answer_array[$i] != "^") {
						$array_values = explode("=",$answer_array[$i]) ;
	          			$labelstr .= " <tr class=\"Controls\"> " .
	            			" <th>".$array_values[0]."</th> " .
	            			" <td>".$array_values[1]."</td> ".
	          			" </tr> " ;
					}
				}
          		$labelstr .= " <tr class=\"Bottom\"> ".
            		" <td align=\"right\" colspan=\"2\">&nbsp; ".
          		" </tr> ".
        	" </table> ".
      	" </td> ".
    	"</tr>".
  	" </table> " ;
    return $labelstr ;
}

?>
