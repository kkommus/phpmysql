SELECT ostud.id, kliendid.eesnimi, kliendid.perenimi
FROM ostud
INNER JOIN kliendid ON ostud.kliendid_id=kliendid.id
INNER JOIN albumid ON ostud.albumid_id=albumid.id;

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
            <h1>Ostud</h1>

            <?php

            $paring ="SELECT ostud.id, kliendid.eesnimi, kliendid.perenimi
            FROM ostud
            INNER JOIN kliendid ON ostud.kliendid_id=kliendid.id
            INNER JOIN albumid ON ostud.albumid_id=albumid.id";
            
            $valjund = mysqli_query($yhendus, $paring);
            //sikutame andmebaasi vastuse
            $rida = mysqli_fetch_assoc($valjund);
            while($rida = mysqli_fetch_assoc($valjund)){
            print_r($rida); 
            echo "<br>";
            }

            ?>


        </div>
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
