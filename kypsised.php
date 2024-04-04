<?php

//vaja meeles pidadad, keel, theme
//setcookie("nimi","Keiti", time()-3600);

//ostukord, login
//session_start();
//$_SESSION['nimi'] = "Rain";
//print_r($_SESSION['nimi']);


$pw = "admin123";

$hash = password_hash($pw, PASSWORD_DEFAULT);

print_r($hash);

if(password_verify("admn123", $hash)){
    echo "ok";
} else {
    echo "kõik on vale";
}

?>