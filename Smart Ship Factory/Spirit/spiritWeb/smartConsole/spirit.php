<?php 
define("RelativePath", "..");
include(RelativePath . "/Common.php"); 

$directoryBaseName = dirname($PHP_SELF);

$ip = $_SERVER["HTTP_HOST"];
$pos = strpos($ip,":");
if($pos === false)
{
}
else
{
	$ip = substr($ip,0,$pos);
}
$port = 3011;
$lang = strtoupper(substr(CCGetSession("locale"),0,2));
//$lang = "ES";
$baseUrl = "http://" . $_SERVER["HTTP_HOST"] . "/smartConsole"; // $directoryBaseName;
$log = "URL:" . $baseUrl . "/smartConsole.properties";
$codebase = $baseUrl; 
 
$description = "Spirit Console";
$descriptionShort = "Pump controller console";
 
header("Content-type: application/x-java-jnlp-file");
 
echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
?>
 
<!-- JNLP File for <?php echo $description;?> -->
<jnlp spec="1.5+" version="1.0" codebase="<?php echo $codebase;?>" href="spirit.php">
  <information>
    <title><?php echo $description;?></title>
    <vendor>SmartShip Factory</vendor>
    <homepage href="index.html"/>
    <description><?php echo $description;?></description>
    <description kind="short"><?php echo $descriptionShort;?></description>
    <icon href="spirit.jpg" />
    <shortcut online="true">
      <desktop/>
      <menu submenu="SSF"/>
    </shortcut>
  </information>
  <security>
      <all-permissions/>
  </security>
 
  <resources>
       <j2se version="1.5+" href="http://java.sun.com/products/autodl/j2se"/>

       <jar href="GUIConsole.jar" />
       <jar href="GUIConfig.jar" />
	   <jar href="GUIClose.jar" />
       <jar href="GUIPay.jar" />
       <jar href="GUIPump.jar" />
       <jar href="GUISound.jar" />
       <jar href="GUIVersion.jar" />
       <jar href="GUITouchScreen.jar"/>
       <jar href="log4j-1.2.12.jar"/>
       <jar href="logkit-1.0.1.jar"/>
       <jar href="GUITicket.jar" />
       <jar href="GUIPrinter.jar" /> 
       <jar href="GUITransit.jar" /> 
       <jar href="htmlparser.jar" /> 
       <jar href="RXTXcomm.jar" /> 
       <jar href="BasicUI.jar" />

 	 <property name="IP" value="<?php echo $ip;?>"/>
 	 <property name="PORT" value="<?php echo $port; ?>"/>
 	 <property name="LANGUAGE" value="<?php echo $lang; ?>"/>
 	 <property name="LOG" value="<?php echo $log; ?>"/>
  </resources> 
     
  <resources os="Windows"> 
   	<jar href="win32/swt.jar"/>
   	<jar href="win32/win32-install.jar"/>
  	<nativelib href="win32/swt-win32.jar"/>
  	<nativelib href="win32/Fonts.jar"/>
        <nativelib href="win32/win32-serial.jar"/>
        <nativelib href="win32/buzzer.jar"/>
  </resources>
      
  <resources os="Linux"> 
       <jar href="linux/swt.jar"/>
      <nativelib href="linux/swt-linux.jar"/>
      <nativelib href="linux/linux-serial.jar"/>
  </resources>


  <application-desc main-class="smartConsole.SmartConsole"/>
 </jnlp>  

 
