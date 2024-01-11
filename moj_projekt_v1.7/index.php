<?
 error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
 /* po tym komentarzu będzie kod do dynamicznego ładowania stron */
?>


<!DOCTYPE html5>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Language" content="pl" />
    <meta name="Author" content="Arkadiusz Pelak" />
    <script src="js/timedate.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Filmy Oskarowe</title>
</head>
<body onload="startclock()">
    <header>
    <a href="index.php?idp="><h1><b>Filmy Oskarowe</b></h1></a>
    </header>
    <div class="zakladki">
        <tr>
            <a href="index.php?idp=">Strona główna</a>
            <a href="index.php?idp=kontakt"><th>Kontakt</th></a>
            <a href="index.php?idp=filmy"><th>Filmy</th></a>
        </tr>
    </div>
        <div id="zegarek"></div>
        <div id="data"></div>
    <?php
        include 'cfg.php';
        include 'showpage.php';
        $idp = isset($_GET['idp']) ? $_GET['idp'] : '';
        
        $strona = '';

        if ($_GET['idp'] == '') {
            echo PokazPodstrone('4');
        } elseif ($_GET['idp'] == 'kontakt') {
            include 'contact.php';
        } elseif ($_GET['idp'] == 'filmy') {
            echo PokazPodstrone('3');
        } elseif ($_GET['idp'] == 'titanic') {
            echo PokazPodstrone('8');
        } elseif ($_GET['idp'] == 'ben_hur') {
            echo PokazPodstrone('1');
        } elseif ($_GET['idp'] == 'wladca_pierscieni') {
            echo PokazPodstrone('10');
        } elseif ($_GET['idp'] == 'przeminelo_z_wiatrem') {
            echo PokazPodstrone('7');
        } elseif ($_GET['idp'] == 'west_side_story') {
            echo PokazPodstrone('9');
        } elseif ($_GET['idp'] == 'pacjent') {
            echo PokazPodstrone('6');
        }
        if (file_exists($strona)) {
            include($strona);
        }
    ?>
    <div class="footer">
    <?php
        $autor = 'Arkadiusz Pelak';
        $nr_indeksu = '164417';
        $nrGrupy = '3';
        echo 'Autor: '.$autor.' '.$nr_indeksu.' grupa '.$nrGrupy.' <br /><br />';
    
    ?>
    </div>
</body>

