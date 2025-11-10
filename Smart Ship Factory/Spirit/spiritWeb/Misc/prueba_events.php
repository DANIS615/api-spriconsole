<?php
//BindEvents Method @1-96456151
function BindEvents()
{
    global $Label1;
    global $CCSEvents;
    $Label1->CCSEvents["BeforeShow"] = "Label1_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Label1_BeforeShow @2-62EBFD0A
function Label1_BeforeShow(& $sender)
{
    $Label1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Label1; //Compatibility
//End Label1_BeforeShow

//Custom Code @3-2A29BDB7
	//include("SSFPOSReturnData.php") ;
	//$a = new ProductData() ;
	//$Component->SetValue($a->GetProductsNames()) ;

    require("http.php");

    /* Uncomment the line below when accessing Web servers or proxies that
     * require authentication.
     */
    
    require("sasl.php");
    

    set_time_limit(0);
    $http=new http_class;

    /* Connection timeout */
    $http->timeout=0;

    /* Data transfer timeout */
    $http->data_timeout=0;

    /* Output debugging information about the progress of the connection */
    $http->debug=1;

    /* Format dubug output to display with HTML pages */
    $http->html_debug=1;


    /*
     *  Need to emulate a certain browser user agent?
     *  Set the user agent this way:
     */
    $http->user_agent="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";

    /*
     *  If you want to the class to follow the URL of redirect responses
     *  set this variable to 1.
     */
    //$http->follow_redirect=1;

    /*
     *  How many consecutive redirected requests the class should follow.
     */
    //$http->redirection_limit=5;

    /*
     *  If your DNS always resolves non-existing domains to a default IP
     *  address to force the redirection to a given page, specify the
     *  default IP address in this variable to make the class handle it
     *  as when domain resolution fails.
     */
    $http->exclude_address="";

    /*
     *  If basic authentication is required, specify the user name and
     *  password in these variables.
     */

    $user="0000110815";
    $password="bb6c69deef";
    //$realm="Controles Volumetricos";       /* Authentication realm or domain      */
	$realm="";       /* Authentication realm or domain      */
    $workstation=""; /* Workstation for NTLM authentication */
    $authentication=(strlen($user) ? UrlEncode($user).":".UrlEncode($password)."@" : "");

/*
    Do you want to access a page via SSL?
    Just specify the https:// URL.
    $url="https://www.openssl.org/";
*/

    $url="https://".$authentication."convol.ref.pemex.com/php/sccvp001_02.php";
    
	/*
     *  Generate a list of arguments for opening a connection and make an
     *  HTTP request from a given URL.
     */
    $error=$http->GetRequestArguments($url,$arguments);

    if(strlen($realm))
        $arguments["AuthRealm"]=$realm;

    if(strlen($workstation))
        $arguments["AuthWorkstation"]=$workstation;

    $http->authentication_mechanism=""; // force a given authentication mechanism;


    /* Set additional request headers */
    $arguments["Headers"]["Pragma"]="nocache";
/*
    Is it necessary to specify a certificate to access a page via SSL?
    Specify the certificate file this way.
    $arguments["SSLCertificateFile"]="my_certificate_file.pem";
    $arguments["SSLCertificatePassword"]="some certificate password";
*/

    $arguments["RequestMethod"]="POST";
    $arguments["PostValues"]=array(
        "clave"=>"bb6c69deef",
		"MAX_FILE_SIZE"=>"1000000",
		"alarmadispensario_checksum"=>"7db73a18b8287eaab16c4621094352e1f251b78c",
		"alarmatanque_checksum"=>"b631a0207a40dff16d34b3bf7c04d697d4e1ed90"
    );

    $arguments["PostFiles"]=array(
        "alarmadispensario"=>array(
			//"name"=>"alarmadispensario",
            "FileName"=>"C:/Program Files/Apache Group/Apache2/htdocs/SpiritWeb/data/outbox/0000110815E06695ADI20070206.172547.gpg",
			"type"=>"file",
            "Content-Type"=>"automatic/name",
        ),
        "alarmatanque"=>array(
			//"name"=>"alarmadispensario",
            "FileName"=>"C:/Program Files/Apache Group/Apache2/htdocs/SpiritWeb/data/outbox/0000110815E06695ATQ20070206.172547.gpg",
			"type"=>"file",
            "Content-Type"=>"automatic/name",
        )

    );


    //$arguments["clave"]="dedede" ; //"bb6c69deef" ;
    //$arguments["alarmadispensario"]="C:/Program Files/Apache Group/Apache2/htdocs/SpiritWeb/data/outbox/0000110815E06695ADI20070206.172547.gpg" ;
    //$arguments["alarmadispensario_checksum"]="dede" ; //"7db73a18b8287eaab16c4621094352e1f251b78c" ;

    echo "<H2><LI>Opening connection to:</H2>\n<PRE>",HtmlEntities($arguments["HostName"]),"</PRE>\n";
    flush();
    $error=$http->Open($arguments);

    if($error=="")
    {
        echo "<H2><LI>Sending request for page:</H2>\n<PRE>";
        echo HtmlEntities($arguments["RequestURI"]),"\n";
        if(strlen($user))
            echo "\nLogin:    ",$user,"\nPassword: ",str_repeat("*",strlen($password));
        echo "</PRE>\n";
        flush();
        $error=$http->SendRequest($arguments);

        if($error=="")
        {
            echo "<H2><LI>Request:</LI></H2>\n<PRE>\n".HtmlEntities($http->request)."</PRE>\n";
            echo "<H2><LI>Request headers:</LI></H2>\n<PRE>\n";
            for(Reset($http->request_headers),$header=0;$header<count($http->request_headers);Next($http->request_headers),$header++)
            {
                $header_name=Key($http->request_headers);
                if(GetType($http->request_headers[$header_name])=="array")
                {
                    for($header_value=0;$header_value<count($http->request_headers[$header_name]);$header_value++)
                        echo $header_name.": ".$http->request_headers[$header_name][$header_value],"\r\n";
                }
                else
                    echo $header_name.": ".$http->request_headers[$header_name],"\r\n";
            }
            echo "</PRE>\n";
            flush();

            $headers=array();
            $error=$http->ReadReplyHeaders($headers);
			//print_r($headers) ;
            if($error=="")
            {
                echo "<H2><LI>Response status code:</LI></H2>\n<P>".$http->response_status;
                switch($http->response_status)
                {
                    case "301":
                    case "302":
                    case "303":
                    case "307":
                        echo " (redirect to <TT>".$headers["location"]."</TT>)<BR>\nSet the <TT>follow_redirect</TT> variable to handle redirect responses automatically.";
                        break;
                }
                echo "</P>\n";
                echo "<H2><LI>Response headers:</LI></H2>\n<PRE>\n";
                for(Reset($headers),$header=0;$header<count($headers);Next($headers),$header++)
                {
                    $header_name=Key($headers);
                    if(GetType($headers[$header_name])=="array")
                    {
                        for($header_value=0;$header_value<count($headers[$header_name]);$header_value++)
                            echo $header_name.": ".$headers[$header_name][$header_value],"\r\n";
                    }
                    else
                        echo $header_name.": ".$headers[$header_name],"\r\n";
                }
                echo "</PRE>\n";
                flush();

                echo "<H2><LI>Response body:</LI></H2>\n<PRE>\n";
                for(;;)
                {
                    $error=$http->ReadReplyBody($body,1000);
                    if($error!=""
                    || strlen($body)==0)
                        break;
                    echo HtmlSpecialChars($body);
                }
                echo "</PRE>\n";
                flush();
            }
        }
        $http->Close();
    }
    if(strlen($error))
        echo "<CENTER><H2>Error: ",$error,"</H2><CENTER>\n";


/*    require("http.php");

    set_time_limit(0);
    $http=new http_class;
    $http->timeout=0;
    $http->data_timeout=0;
    $http->debug=0;
    $http->html_debug=1;

    $url="http://www.cs.tut.fi/cgi-bin/run/~jkorpela/echoraw.cgi";
    $error=$http->GetRequestArguments($url,$arguments);
    $arguments["RequestMethod"]="POST";
    $arguments["PostValues"]=array(
        "somefield"=>"Upload forms",
        "MAX_FILE_SIZE"=>"1000000"
    );
    $arguments["PostFiles"]=array(
        "userfile"=>array(
            "Data"=>"This is just a plain text attachment file named attachment.txt .",
            "Name"=>"attachment.txt",
            "Content-Type"=>"automatic/name",
        ),
        "anotherfile"=>array(
            "FileName"=>"test_http_post.php",
            "Content-Type"=>"automatic/name",
        )
    );
    $arguments["Referer"]="http://www.alltheweb.com/";
    echo "<H2><LI>Opening connection to:</H2>\n<PRE>",HtmlEntities($arguments["HostName"]),"</PRE>\n";
    flush();
    $error=$http->Open($arguments);

    if($error=="")
    {
        $error=$http->SendRequest($arguments);
        if($error=="")
        {
            echo "<H2><LI>Request:</LI</H2>\n<PRE>\n".HtmlEntities($http->request)."</PRE>\n";
            echo "<H2><LI>Request headers:</LI</H2>\n<PRE>\n";
            for(Reset($http->request_headers),$header=0;$header<count($http->request_headers);Next($http->request_headers),$header++)
            {
                $header_name=Key($http->request_headers);
                if(GetType($http->request_headers[$header_name])=="array")
                {
                    for($header_value=0;$header_value<count($http->request_headers[$header_name]);$header_value++)
                        echo $header_name.": ".$http->request_headers[$header_name][$header_value],"\r\n";
                }
                else
                    echo $header_name.": ".$http->request_headers[$header_name],"\r\n";
            }
            echo "</PRE>\n";
            echo "<H2><LI>Request body:</LI</H2>\n<PRE>\n".HtmlEntities($http->request_body)."</PRE>\n";
            flush();

            $headers=array();
            $error=$http->ReadReplyHeaders($headers);
            if($error=="")
            {
                echo "<H2><LI>Response headers:</LI</H2>\n<PRE>\n";
                for(Reset($headers),$header=0;$header<count($headers);Next($headers),$header++)
                {
                    $header_name=Key($headers);
                    if(GetType($headers[$header_name])=="array")
                    {
                        for($header_value=0;$header_value<count($headers[$header_name]);$header_value++)
                            echo $header_name.": ".$headers[$header_name][$header_value],"\r\n";
                    }
                    else
                        echo $header_name.": ".$headers[$header_name],"\r\n";
                }
                echo "</PRE>\n";
                flush();

                echo "<H2><LI>Response body:</LI</H2>\n<PRE>\n";
                for(;;)
                {
                    $error=$http->ReadReplyBody($body,1000);
                    if($error!=""
                    || strlen($body)==0)
                        break;
                    echo HtmlSpecialChars($body);
                }
                echo "</PRE>\n";
                flush();
            }
        }
        $http->Close();
    }
    if(strlen($error))
        echo "<CENTER><H2>Error: ",$error,"</H2><CENTER>\n";
?>
</UL>
<HR>
</BODY>
</HTML> */




//End Custom Code

//Close Label1_BeforeShow @2-B48DF954
    return $Label1_BeforeShow;
}
//End Close Label1_BeforeShow

//Page_AfterInitialize @1-45342DD5
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $prueba; //Compatibility
//End Page_AfterInitialize

//Custom Code @5-2A29BDB7
/*if (CCGetParam("btnImport") != "" ) {
	include("../Service/SSFScheduleTasks.php") ;
	$schtask = new ScheduleTasks() ;
	//$schtask->FTPAction("EXP") ;
	sleep(1) ;
	$schtask->Import() ;
	$schtask->Export() ;
	echo "importación realizada" ;
		//$ssfRtrClnt = new SSFRouterClient();
		//$ssfRtrClnt->RealoadPriceChangeTable();

}*/
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
