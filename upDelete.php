<?php
$f= $_GET['f'];
$f = "img/uploads/" . $f;
//echo $f;
unlink($f); 