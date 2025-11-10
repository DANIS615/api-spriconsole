<?php
function showalarm($pa,$la) {
 global $fondo,$start,$coloralarma,$can_img,$fondozoom, $black, $white,$div,$src_w,$comb,$zoom;
 if ($pa>$zoom)
   $yaa = ($fondo - (($fondo * $pa ) / 100)) + $start;
 else {
   $subpor = (100*$pa)/$zoom;
   $yaa = ($fondozoom - (($fondozoom * $subpor ) / 100));
 }
 if ($pa!=0 && $pa<$zoom) {
	imagefilledrectangle($can_img, 0, $yaa, $div, $yaa+1, $coloralarma);
	if ($comb>$pa) {
 	  ImageString($can_img,1, 2, $yaa, $la, $black);
	  ImageString($can_img,1, 3, $yaa+1, $la, $white);
	}
	else {
	  ImageString($can_img,1, 3, $yaa, $la, $white);
 	  ImageString($can_img,1, 2, $yaa+1, $la, $black);
	}
 }
 if ($pa!=0 && $pa>$zoom) {
	imagefilledrectangle($can_img, $div, $yaa, $src_w, $yaa+1, $coloralarma);
	if ($comb>$pa) {
	  ImageString($can_img,1, $div+118, $yaa+2, $la, $black);
	  ImageString($can_img,1, $div+119, $yaa+3, $la, $white);
	}
	else {
	  ImageString($can_img,1, $div+118, $yaa+2, $la, $white);
	  ImageString($can_img,1, $div+119, $yaa+3, $la, $black);
	}
 }
}

header('Content-type: image/jpg');

$string=implode($argv," ");
// porcentaje de combustible
$comb=0;
// porcentaje de agua
$agua=0;
// color del combustible
$r=0;
$g=0;
$v=0;
// leyenada en la medida del combustible
$leyenda1="";
// leyenda en la medida del agua
$leyenda2="";
// datos de la imagen, posicion del tanque
$start = 14;
$fondo = 70;
$div = 105;
// zoom, porcentaje que ve el zoom
$zoom = 10;
$startzoom = 1;
$fondozoom = 82;
// punto de succion
$leyendasuccion="Succión";
$porcentajesuccion=10;
// imagenes
$image = "images/tank.png";
$bomba = "images/bomba.png";
$minibomba = "images/minibomba.png";
$fondoImage = "images/fondo.png";
// descripciones vista
$descr1="Corte Lateral";
$descr2="Corte Frente Fondo";
//alarma 1
$leyendaalarma1="";
$porcentajealarma1=0;
//alarma 2
$leyendaalarma2="";
$porcentajealarma2=0;
//alarma 3
$leyendaalarma3="";
$porcentajealarma3=0;
//alarma 4
$leyendaalarma4="";
$porcentajealarma4=0;
//alarma 5
$leyendaalarma5="";
$porcentajealarma5=0;
//alarma 6
$leyendaalarma6="";
$porcentajealarma6=0;
//alarma 7
$leyendaalarma7="";
$porcentajealarma7=0;
//alarma 8
$leyendaalarma8="";
$porcentajealarma8=0;
//alarma 9
$leyendaalarma9="";
$porcentajealarma9=0;
//alarma 10
$leyendaalarma10="";
$porcentajealarma10=0;


parse_str($string);


// calculo de posiciones

$yc = ($fondo - (($fondo * $comb ) / 100)) + $start;
$ya = ($fondo - (($fondo * $agua ) / 100)) + $start;
$ys = ($fondo - (($fondo * $porcentajesuccion ) / 100));


if ($comb>$zoom)
   $ycz = $startzoom;
else {
   $subporccomb = (100*$comb)/$zoom;
   $ycz = ($fondozoom - (($fondozoom * $subporccomb ) / 100)) + $startzoom;
}

if ($agua>$zoom)
   $yaz = $startzoom;
else {
   $subporcagua = (100*$agua)/$zoom;
   $yaz = ($fondozoom - (($fondozoom * $subporcagua ) / 100)) + $startzoom;
}

if ($porcentajesuccion>$zoom)
   $yas = $startzoom;
else {
   $subporcagua = (100*$porcentajesuccion)/$zoom;
   $yas = ($fondozoom - (($fondozoom * $subporcagua ) / 100));
}


$src_img = ImageCreateFromPng($fondoImage);
$olay_img = imagecreatefromPng($image); 
$olay2_img = imagecreatefromPng($bomba); 
$olay3_img = imagecreatefromPng($minibomba); 

$src_w = ImageSX($src_img);
$src_h = ImageSY($src_img);

$can_img = @imagecreatetruecolor($src_w, $src_h);

$black = ImageColorAllocate ($olay_img, 0, 0, 0);
$white = ImageColorAllocate ($olay_img, 255, 255, 255);

$colorcomb = ImageColorAllocate ($olay_img, $r, $g, $b);
$coloragua = ImageColorAllocate ($olay_img, 150, 204, 188);

if ($r>200 && $g<50 && $b<50)
	$coloralarma = ImageColorAllocate ($olay_img, 255, 255 , 0);
else
	$coloralarma = ImageColorAllocate ($olay_img, 255, 0 , 0);

ImageColorTransparent($olay_img, $black);
ImageColorTransparent($olay2_img, $black);
ImageColorTransparent($olay3_img, $black);

imagecopy($can_img, $src_img, 0,0,0,0, $src_w, $src_h);

imagefilledrectangle($can_img, $div, $yc, $src_w, $src_h, $colorcomb);
imagefilledrectangle($can_img, $div, $ya, $src_w, $src_h, $coloragua);

imagefilledrectangle($can_img, 0, $ycz, $div, $src_h, $colorcomb);
imagefilledrectangle($can_img, 0, $yaz, $div, $src_h, $coloragua);


if ($porcentajesuccion!=0) {
	imagecopymerge($can_img, $olay2_img, 1,$startzoom,0,ImageSY($olay2_img)-$yas, ImageSX($olay2_img), ImageSY($olay2_img),100); 
	imagecopymerge($can_img, $olay3_img, 155,$start,0,ImageSY($olay3_img)-$ys, ImageSX($olay3_img), ImageSY($olay3_img),100); 

	imagefilledrectangle($can_img, 0, $yas, $div, $yas+1, $coloralarma);
	ImageString($can_img,1, 65, $yas-10, $leyendasuccion, $black);
	ImageString($can_img,1, 66, $yas-9, $leyendasuccion, $white);
}

showalarm($porcentajealarma1,$leyendaalarma1);
showalarm($porcentajealarma2,$leyendaalarma2);
showalarm($porcentajealarma3,$leyendaalarma3);
showalarm($porcentajealarma4,$leyendaalarma4);
showalarm($porcentajealarma5,$leyendaalarma5);
showalarm($porcentajealarma6,$leyendaalarma6);
showalarm($porcentajealarma7,$leyendaalarma7);
showalarm($porcentajealarma8,$leyendaalarma8);
showalarm($porcentajealarma9,$leyendaalarma9);
showalarm($porcentajealarma10,$leyendaalarma10);

imagecopymerge($can_img, $olay_img, 0,0,0,0, ImageSX($olay_img), ImageSY($olay_img),100); 



if ($ya-$yc>10) {
	ImageString($can_img,1, $div+118, $yc+2, $leyenda1, $black);
	ImageString($can_img,1, $div+119, $yc+1, $leyenda1, $white);
}
else {
	ImageString($can_img,1, $div+119, $yc-10, $leyenda1, $white);
	ImageString($can_img,1, $div+118, $yc-9, $leyenda1, $black);
}

if ($ya<$fondo+$start-10) {
	ImageString($can_img,1, $div+119, $ya+1, $leyenda2, $white);
	ImageString($can_img,1, $div+118, $ya, $leyenda2, $black);
}

ImageString($can_img,1, $div+2,  $src_h-11, $descr1, $white);
ImageString($can_img,1, $div+3, $src_h-11, $descr1, $black);

ImageString($can_img,1, 4, $src_h-11, $descr2, $white);
ImageString($can_img,1, 5,  $src_h-11, $descr2, $black);


imagepng($can_img);

imagedestroy($src_img);
imagedestroy($olay_img);

?>
