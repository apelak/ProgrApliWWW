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
        
        if($_GET['idp']=='')
        {$strona = './html/glowna.html';}
        if($_GET['idp']=='kontakt')
        {$strona = './html/kontakt.html';}
        if($_GET['idp']=='filmy')
        {$strona = './html/filmy.html';}
        if($_GET['idp']=='titanic')
        {$strona = './html/titanic.html';}
        if($_GET['idp']=='ben_hur')
        {$strona = './html/ben_hur.html';}
        if($_GET['idp']=='wladca_pierscieni')
        {$strona = './html/wladca_pierscieni.html';}
        if($_GET['idp']=='przeminelo_z_wiatrem')
        {$strona = './html/przeminelozwiatrem.html';}
        if($_GET['idp']=='west_side_story')
        {$strona = './html/westsidestory.html';}
        if($_GET['idp']=='pacjent')
        {$strona = './html/pacjent.html';}

        if(file_exists($strona))
        {
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

