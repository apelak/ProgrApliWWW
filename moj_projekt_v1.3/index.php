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
    <a href="/index.html"><h1><b>Filmy Oskarowe</b></h1></a>
    </header>
    <div class="zakladki">
        <tr>
            <a href="/index.html"><th>Strona główna</th></a>
            <a href="html/kontakt.html"><th>Kontakt</th></a>
            <a href="html/js.html"><th>JavaScript</th></a>
        </tr>
    </div>
    <div class="zdheader">
    <img src="img/zd1.jpg" alt="zdjecie nobla" style="display: block; margin-left: 15px; ">
    <img src="img/zd2.jpg" alt="zdjecie nobla 2" style="display: block; ">
    </div><br>
    <div class="opis_strony">
    <p><i>Krótki ranking filmów wedlug zdobytych przez nich oskarów.<br>
    Po kliknięciu na tytuł filmu zostaniesz przeniesiony na stronę z dokładnym opisem danego filmu
    
    </i></p>
    </div>
    <table>
        <tr>
            <th><span style="color: red;">Nazwa</span></th>
            <th><span style="color: red;">Rok produkcji</span></th>
            <th><span style="color: red;">Krótki opis</span></th>
            <th><span style="color: red;">Zdobytych oskarów</span></th>
        </tr>
        <tr>
            <td><b><a href="html/titanic.html">Titanic</a></b></td>
            <td>1997</td>
            <td>Wyciskacz łez i romantyczna historia rozgrywająca się w 1912 roku na pokładzie brytyjskiego statku Titanic, w której niższe sfery ścierają się z elitami. Źródło niekończących się spekulacji i dyskusji. Kultowa historia o pięknej miłości, której zakończenie znane jest każdemu, a mimo to ogląda się i przeżywa ją tak, jak za pierwszym razem.</td>
            <td>11</td>
        </tr>
        <tr>
            <td><b><a href="html/ben_hur.html">Ben Hur</a></b></td>
            <td>1959</td>
            <td>Akcja filmu rozgrywa się na początku naszej ery i opowiada historię tytułowego Judy Ben Hura, bogatego żydowskiego księcia, który niesprawiedliwie zostaje skazany na galery przez starego przyjaciela - trybuna Messalę. Kiedy po morderczej tułaczce przez pustynię Ben Hur znów trafia do Jerozolimy, postanawia się zemścić.</td>
            <td>11</td>
        </tr>
        <tr>
            <td><b><a href="html/wladca_pierscieni.html">Władca Pierścieni: Powrót Króla</a></b></td></a>
            <td>2003</td>
            <td>Adaptacja powieści J.R.R. Tolkiena jest zwieńczeniem kultowej trylogii. Nieuchronnie zbliża się wielka bitwa, w której zmierzą się mieszkańcy Śródziemia i armia nikczemnego Saurona. Aragorn będzie musiał pogodzić się ze swoim losem i sięgnąć po miecz i tytuł swoich przodków, a Frodo wraz z Samem spróbują zniszczyć Pierścień, podążając w głąb Mordoru, podczas gdy Gollum będzie starał się odzyskać swój ukochany skarb.</td>
            <td>11</td>
        </tr>
        <tr>
            <td><b><a href="html/przeminelozwiatrem.html">Przeminęło z wiatrem</a></b></td>
            <td>1939</td>
            <td>Scarlett O’Hara to kultowa postać, o której słyszał chyba każdy. Bohaterka filmu "Przeminęło z wiatrem", adaptacji powieści Margaret Mitchell, której akcja rozgrywa się podczas wojny secesyjnej, lawiruje w miłosnych wzlotach i upadkach. Żywiołowa i pełna beztroski dziewczyna z bogatego domu będzie musiała zderzyć się z wieloma przeszkodami w życiu, które nie będzie usłane różami, tak, jak to było dotychczas.</td>
            <td>10</td>
        </tr>
        <tr>
            <td><b><a href="html/westsidestory.html">West Side Story</a></b></td>
            <td>1961</td>
            <td>Jeden z najsłynniejszych musicali w historii opowiada o miłości, która narodziła się w latach 50. w Ameryce. Jak to zwykle bywa, romans na wzór Romea i Julii zazwyczaj nie kończy się happy endem. Tutaj głębokiemu uczuciu Marii i Tony’ego zagrażają porachunku niebezpiecznych gangów, nad którymi w powietrzu wisi tragedia.</td>
            <td>10</td>
        </tr>
        <tr>
            <td><b><a href="html/pacjent.html">Pacjent</a></b></td>
            <td>1996</td>
            <td>Film opowiada historię pilota, który podczas II wojny światowej trafia do wojskowego szpitala. Nie pamięta, kim jest ani co się wydarzyło. Jego życiorys postanawia rozgryźć pielęgniarka, która czyta mężczyźnie historie spisane przez Herodota.</td>
            <td>9</td>
        </tr>
    </table>
        <div id="zegarek"></div>
        <div id="data"></div>
    <?php
        $autor = 'Arkadiusz Pelak';
        $nr_indeksu = '164417';
        $nrGrupy = '3';
        echo 'Autor: '.$autor.' '.$nr_indeksu.' grupa '.$nrGrupy.' <br /><br />';
    ?>
</body>

