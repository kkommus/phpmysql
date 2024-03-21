<?php

$kasutaja = "keiti";
$dbserver = "localhost";
$andmebaas = "muusikapood";
$pw = "sh2mp00n";

$yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);

if(!$yhendus){
    die("Sa jälle ebaõnnestusid!");
}  

?>