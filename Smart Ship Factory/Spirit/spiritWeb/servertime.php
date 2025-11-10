<?php

/* Copyright 2005 Emery Wooten - www.mresoftware.com
 This script is called from Javascript. It should be called before any
 JavaScripts that use the date.
 Place the statement below in the <head> section of your HTML page:
 <script type="text/javascript" src="servertime.php"></script>
*/

// Supress errors
//error_reporting(0);

/* If your server is not in your time zone, adjust it here.  Mine is 1 hour East of me.
To use this variable, you will need to remove the "//". */
 $myServerOffset = 0 ; //(+1) * 3600;

// Get server date
$mydate = date("U");

// Get Timezone offset
$myoffs = date("Z"); // - $myServerOffset;

// Adjust offsets for local machine
print "var tzoffset = $myoffs + (new Date().getTimezoneOffset()*60);";

// Set JavaScript variable to your server time as seen from client machine's location.
print "var servertimeOBJ=new Date(($mydate+tzoffset)*1000);";
?>
