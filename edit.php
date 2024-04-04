<?php include("config.php"); ?>

<!doctype html>
<html lang="et">
    <head>
        <title>Muusikapood OÜ</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>

        <div class="container">

            <h2>Albumi muutmine</h2>

            <form action="" method="get">
            
<?php


if (!empty($_GET['id']) && !empty($_GET['muuda'])) {
    $id = $_GET["id"];
    $artist = $_GET["artist"];
    $album = $_GET["album"];
    $aasta = $_GET["aasta"];
    $hind = $_GET["hind"];


    $paring = "UPDATE albumid
    SET artist = '$artist', album = '$album', aasta = '$aasta', hind = '$hind'
    WHERE id = '$id'";
    //print_r($paring);
    $valjund = mysqli_query($yhendus, $paring);
    header("Location: index.php?msg=true");
    
}

        if (!empty($_GET['id'])) {
        $id = $_GET['id'];
        $paring = "SELECT * FROM albumid WHERE id=$id";
        //print_r($paring);
        $valjund = mysqli_query($yhendus, $paring);
        $rida = mysqli_fetch_assoc($valjund);
        //print_r($rida);
        echo '
        Id <input type="number" name="id" hidden value="'.$rida['id'].'"><br>
                Artist <input type="text" name="artist" value="'.$rida['artist'].'"><br>
                Album <input type="text" name="album" value="'.$rida['album'].'"><br>
                Aasta <input type="year" name="aasta" min="1900" value="'.$rida['aasta'].'"><br>
                Hind <input type="number" name="hind" value="'.$rida['hind'].'"><br>
                <input type="submit" value="Muuda" name="muuda">
        ';
        }

        
?>

            
</form>







<!-- Bootstrap JavaScript Libraries -->
<script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

            <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>