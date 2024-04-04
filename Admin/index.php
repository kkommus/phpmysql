<?php


session_start();


if (!empty($_GET['kasutaja']) && !empty($_GET['parool'])) {

    $kasutaja = $_GET['kasutaja'];

    $parool = $_GET['parool'];

    if ($kasutaja == "admin" && $parool == "admin123") {

        $_SESSION['login'] = "1";

        header("Location:index.php");

    } else {
        
        echo "Proovi uuesti!";
    }
}




?>