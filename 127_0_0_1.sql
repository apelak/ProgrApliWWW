-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 11, 2024 at 03:02 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moja_strona`
--
CREATE DATABASE IF NOT EXISTS `moja_strona` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `moja_strona`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `matka` int(11) NOT NULL DEFAULT 0,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `matka`, `nazwa`) VALUES
(1, 0, 'Elektronika'),
(2, 1, 'telefony i akcesoria'),
(3, 1, 'RTV i AGD'),
(4, 0, 'Kuchnia'),
(5, 4, 'Zmywarki'),
(7, 4, 'Lodówki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `page_list`
--

CREATE TABLE `page_list` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_list`
--

INSERT INTO `page_list` (`id`, `page_title`, `page_content`, `status`) VALUES
(1, 'ben_hur', '    <h2>BEN HUR</h2>\r\n    <div class=\"ben_hur_zd\">\r\n        <img src=\"img/ben_hur.jpg\" alt=\"ben hur\" style=\"margin-left: 125px; margin-right: auto;\">\r\n    </div>\r\n    <br>\r\n    <div class=\"ben_hur1\">\r\n        Czasy rzymskie w Judei. Żydowski książę, Juda Ben Hur, przyjaźni się z rzymskim żołnierzem, Messalą, którego zna od dziecka, człowiekiem o wysokich ambicjach, pragnącym zdławić żydowską rebelię. W tym celu prosi o pomoc Ben Hura, ten jednak odmawia działań przeciw swojemu ludowi. Messala poczytuje to za zdradę.\r\n<br>\r\nW czasie wjazdu nowego rzymskiego namiestnika, odbywającego się obok domu Ben Hura, jego siostra przypadkowo strąca dachówkę, która pechowo płoszy konia i powoduje upadek namiestnika. „Winę” bierze na siebie Juda Ben Hur, a sądzi go Messala. Bohater zostaje skazany na galery, a jego matka i siostra – wtrącone do lochu. Juda poprzysięga, że wróci i pomści tę niesłuszną karę.\r\n<br>\r\nPodczas transportu więźniów na statek dowódca zarządza postój w jednej z wiosek. Wycieńczonych więźniów poi miejscowa ludność, dowódca odmawia wody Ben Hurowi. Do konającego Judy podchodzi jednak mężczyzna z wioski i podaje mu wodę. Nikt nie wie, że jest to Jezus Chrystus. Dowódca rzymski, patrząc w twarz nieznajomego, nie ma odwagi zaprotestować.\r\n<br>\r\nW tym samym czasie za Ben Hurem świadczą jego dawni słudzy, którym darował wolność, w tym stary kupiec z córką Esterą, zakochaną w Judzie. Messala skazuje kupca na karę więzienia. Tymczasem na galerze trwa mordercza praca. Gdy galery rzymskie zostają zaatakowane przez wroga, Ben Hur ratuje od śmierci dowódcę, konsula rzymskiego. Ten z wdzięczności postanawia usynowić Judę, nadając mu swoje imię. Juda odnajduje Messalę i nakazuje mu odnaleźć matkę i siostrę. Jednak kobiety w lochu zachorowały na trąd i zostały oddalone do wioski trędowatych. O prawdzie wiedzą jedynie Messala i Estera. Ben Hur myśli, że one nie żyją. Postanawia wziąć udział w wyścigu rydwanów, w których faworytem jest Messala. Wyścig wygrywa Juda Ben Hur; Messala zostaje ciężko ranny. Na łożu śmierci wyjawia Judzie prawdę o losie jego matki i siostry, po czym umiera. Juda udaje się do miasta trędowatych i odkrywa, że Estera znała prawdę o chorobie kobiet. Nie widzi się z nimi, oboje z Esterą odchodzą. Po drodze widzą tłumy, które udają się na nauki tajemniczego Mistrza, Nauczyciela. Estera zostaje tam, Ben Hur się oddala (na jednym z kadrów widać, jak oczy Nauczyciela śledzą sylwetkę oddalającego się Judy).\r\n<br>\r\nPodczas kolejnej wizyty w wiosce trędowatych Juda i Estera postanawiają zabrać stamtąd chore kobiety, by udać się z nimi do Nauczyciela. Okazuje się jednak, że właśnie dokonuje się nad nim sąd. Cała czwórka udaje się zatem na miejsce, gdzie już odbywa się droga krzyżowa Chrystusa. Widząc udrękę więźnia, Ben Hur postanawia dać mu wodę. Gdy się doń zbliża, rozpoznaje w nim człowieka, który przed laty ocalił mu życie, podając wodę właśnie. Ben Hur udaje się za Jezusem aż do miejsca ukrzyżowania, podczas gdy Estera i chore kobiety chowają się w jaskini przed burzą. Matka Ben Hura słusznie interpretuje burzę jako znak śmierci udręczonego więźnia. Ben Hur pozostaje pod krzyżem aż do śmierci Chrystusa. Zaczyna rozumieć, co tak naprawdę oznaczało owo podanie mu wody przed laty. Wraca do domu, gdzie czeka na niego Estera oraz matka i siostra – zdrowe, choć jeszcze tak niedawno ich ciała pokryte były trądem.\r\n</div>', 1),
(2, 'kontakt', '\r\n    <div class=\"kontakt\">\r\n        <h3> Skontaktu się z nami!</h3>\r\n                \r\n                <form action=\"mailto:nbskontakt@gmail.com\" method=\"post\" enctype=\"text/plain\">\r\n                <br>Podaj adres e-mail:</label><br>\r\n                <input type=\"email\" id=\"email\" name=\"email\" required><br><br>\r\n                <label for=\"wiadomosc\">Wiadomość:</label><br>\r\n                <textarea id=\"wiadomosc\" name=\"wiadomosc\" rows=\"5\" cols=\"25\" required></textarea><br><br>\r\n                \r\n                <input type=\"submit\" value=\"Wyślij\">\r\n\r\n                </form>\r\nNapisz do: Arkadiusz Pelak\r\n', 1),
(3, 'filmy', '<body>\r\n</br>\r\n<div class=\"filmy\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NgQjPWbU1mk?si=Nw_CQK5ubmLzEsKw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n</div>\r\n</br>\r\n</br>\r\n<div class=\"filmy\">\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/82YUhTpIzww?si=bQcOypGhrngxefLc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n</div>\r\n</br>\r\n</br>\r\n<div class=\"filmy\">\r\n    <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E9E1jiz39Ms?si=vZzLIpgIsTlNq53m\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n</div>\r\n</body>\r\n', 1),
(4, 'glowna', '<div class=\"zdheader\">\r\n    <img src=\"img/zd1.jpg\" alt=\"zdjecie nobla\" style=\"display: block; margin-left: 15px; \">\r\n    <img src=\"img/zd2.jpg\" alt=\"zdjecie nobla 2\" style=\"display: block; \">\r\n    </div><br>\r\n    <div class=\"opis_strony\">\r\n    <p><i>Krótki ranking filmów wedlug zdobytych przez nich oskarów.<br>\r\n    Po kliknięciu na tytuł filmu zostaniesz przeniesiony na stronę z dokładnym opisem danego filmu\r\n    \r\n    </i></p>\r\n    </div>\r\n    <table>\r\n        <tr>\r\n            <th><span style=\"color: red;\">Nazwa</span></th>\r\n            <th><span style=\"color: red;\">Rok produkcji</span></th>\r\n            <th><span style=\"color: red;\">Krótki opis</span></th>\r\n            <th><span style=\"color: red;\">Zdobytych oskarów</span></th>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=titanic\">Titanic</a></b></td>\r\n            <td>1997</td>\r\n            <td>Wyciskacz łez i romantyczna historia rozgrywająca się w 1912 roku na pokładzie brytyjskiego statku Titanic, w której niższe sfery ścierają się z elitami. Źródło niekończących się spekulacji i dyskusji. Kultowa historia o pięknej miłości, której zakończenie znane jest każdemu, a mimo to ogląda się i przeżywa ją tak, jak za pierwszym razem.</td>\r\n            <td>11</td>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=ben_hur\">Ben Hur</a></b></td>\r\n            <td>1959</td>\r\n            <td>Akcja filmu rozgrywa się na początku naszej ery i opowiada historię tytułowego Judy Ben Hura, bogatego żydowskiego księcia, który niesprawiedliwie zostaje skazany na galery przez starego przyjaciela - trybuna Messalę. Kiedy po morderczej tułaczce przez pustynię Ben Hur znów trafia do Jerozolimy, postanawia się zemścić.</td>\r\n            <td>11</td>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=wladca_pierscieni\">Władca Pierścieni: Powrót Króla</a></b></td></a>\r\n            <td>2003</td>\r\n            <td>Adaptacja powieści J.R.R. Tolkiena jest zwieńczeniem kultowej trylogii. Nieuchronnie zbliża się wielka bitwa, w której zmierzą się mieszkańcy Śródziemia i armia nikczemnego Saurona. Aragorn będzie musiał pogodzić się ze swoim losem i sięgnąć po miecz i tytuł swoich przodków, a Frodo wraz z Samem spróbują zniszczyć Pierścień, podążając w głąb Mordoru, podczas gdy Gollum będzie starał się odzyskać swój ukochany skarb.</td>\r\n            <td>11</td>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=przeminelo_z_wiatrem\">Przeminęło z wiatrem</a></b></td>\r\n            <td>1939</td>\r\n            <td>Scarlett O’Hara to kultowa postać, o której słyszał chyba każdy. Bohaterka filmu \"Przeminęło z wiatrem\", adaptacji powieści Margaret Mitchell, której akcja rozgrywa się podczas wojny secesyjnej, lawiruje w miłosnych wzlotach i upadkach. Żywiołowa i pełna beztroski dziewczyna z bogatego domu będzie musiała zderzyć się z wieloma przeszkodami w życiu, które nie będzie usłane różami, tak, jak to było dotychczas.</td>\r\n            <td>10</td>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=west_side_story\">West Side Story</a></b></td>\r\n            <td>1961</td>\r\n            <td>Jeden z najsłynniejszych musicali w historii opowiada o miłości, która narodziła się w latach 50. w Ameryce. Jak to zwykle bywa, romans na wzór Romea i Julii zazwyczaj nie kończy się happy endem. Tutaj głębokiemu uczuciu Marii i Tony’ego zagrażają porachunku niebezpiecznych gangów, nad którymi w powietrzu wisi tragedia.</td>\r\n            <td>10</td>\r\n        </tr>\r\n        <tr>\r\n            <td><b><a href=\"index.php?idp=pacjent\">Pacjent</a></b></td>\r\n            <td>1996</td>\r\n            <td>Film opowiada historię pilota, który podczas II wojny światowej trafia do wojskowego szpitala. Nie pamięta, kim jest ani co się wydarzyło. Jego życiorys postanawia rozgryźć pielęgniarka, która czyta mężczyźnie historie spisane przez Herodota.</td>\r\n            <td>9</td>\r\n        </tr>\r\n    </table>\r\n\r\n\r\n', 1),
(5, 'js', '<!DOCTYPE html>\r\n<html>\r\n <head>\r\n    <script src=\"js/kolorujtlo.js\" type=\"text/javascript\" defer></script>\r\n    <script src=\"js/timedate.js\" type=\"text/javascript\"></script>\r\n</head>\r\n <body onload=\"startclock()\">\r\n    <FORM METHOD=\"POST\" NAME=\"background\">\r\n        <INPUT TYPE=\"button\" value=\"zółty\" onclick=\"changeBackground(\'#FFF000\')\">\r\n        <INPUT TYPE=\"button\" value=\"czarny\" onclick=\"changeBackground(\'#000000\')\">\r\n        <INPUT TYPE=\"button\" value=\"biały\" onclick=\"changeBackground(\'#FFFFFF\')\">\r\n        <INPUT TYPE=\"button\" value=\"zielony\" onclick=\"changeBackground(\'#00FF00\')\">\r\n        <INPUT TYPE=\"button\" value=\"niebieski\" onclick=\"changeBackground(\'#0000FF\')\">\r\n        <INPUT TYPE=\"button\" value=\"pomarańczowy\" onclick=\"changeBackground(\'#FF8000\')\">\r\n        <INPUT TYPE=\"button\" value=\"szary\" onclick=\"changeBackground(\'#c0c0c0\')\">\r\n        <INPUT TYPE=\"button\" value=\"czerwony\" onclick=\"changeBackground(\'#FF0000\')\">\r\n        \r\n    </FORM>\r\n', 1),
(6, 'pacjent', '\r\n    <div class=\"pacjentzd\">\r\n        <img src=\"img/pacjent.jpg\" alt=\"Angielski Pacjent\" style=\"margin-left: 220px;\">\r\n\r\n    </div>\r\n    <div class=\"pacjent1\">\r\n        Obsada:<br>\r\nRalph Fiennes jako hrabia László de Almásy\r\n<br>Kristin Scott Thomas jako Katharine Clifton\r\n<br>Juliette Binoche jako Hana\r\n<br>Willem Dafoe jako David Caravaggio\r\n<br>Naveen Andrews jako Kip\r\n<br>Colin Firth jako Geoffrey Clifton\r\n<br>Julian Wadham jako Madox\r\n<br>Jürgen Prochnow jako major Muller\r\n<br>Kevin Whately jako sierżant Hardy\r\n<br>Clive Merrison jako Fenelon-Barnes\r\n<br>Nino Castelnuovo jako D’Agostino\r\n<br>Hichem Rostom jako Fouad\r\n<br>Peter Rühring jako Bermann\r\n    </div>\r\n    <div class=\"pacjent2\">\r\n        Nagrody\r\n<br><br><span style=\"color: red;\">Oscary 1997:</span>\r\n\r\n<br><br>najlepszy film (Saul Zaentz)\r\n<br>najlepsza aktorka drugoplanowa (Juliette Binoche)\r\n<br>najlepszy reżyser (Anthony Minghella)\r\n<br>najlepsza muzyka oryginalna do dramatu (Gabriel Yared)\r\n<br>najlepsza scenografia (Stephenie McMillan, Stuart Craig)\r\n<br>najlepsze kostiumy (Ann Roth)\r\n<br>najlepsze zdjęcia (John Seale)\r\n<br>najlepszy dźwięk (Christopher Newman, David Parker, Mark Berger, Walter Murch)\r\n<br>najlepszy montaż (Walter Murch)\r\n<br>Złote Globy 1997:\r\n\r\n<br><br>najlepszy dramat\r\n<br>najlepsza muzyka (Gabriel Yared)\r\n<br>Berlinale 1997:\r\n\r\n<br><br>najlepsza aktorka (Juliette Binoche)\r\n<br>BAFTA 1997:\r\n\r\n<br><br>najlepszy film (Anthony Minghella, Saul Zaentz)\r\n<br>nagroda im. Anthony’ego Asquitha za najlepszą muzykę filmową (Gabriel Yared)\r\n<br>najlepsza aktorka drugoplanowa (Juliette Binoche)\r\n<br>najlepsze zdjęcia (John Seale)\r\n<br>najlepszy montaż (Walter Murch)\r\n<br>najlepszy scenariusz adaptowany (Anthony Minghella)\r\n<br>Europejska Akademia Filmowa 1997:\r\n\r\n<br><br>najlepsza europejska aktorka roku (Juliette Binoche)\r\n<br>najlepszy europejski operator roku (John Seale)\r\n<br>Grammy 1998:\r\n\r\n<br><br>najlepsza kompozycja instrumentalna napisana dla filmu kinowego lub na potrzeby telewizji (Gabriel Yared)\r\n<br>Amerykańska Gildia Producentów Filmowych 1997:\r\n\r\n<br>najlepszy producent (Saul Zaentz)\r\n<br>nagroda Kodak Vision honorująca wyobraźnię oraz osiągnięcia artystyczne - kinowa\r\n<br>Amerykańska Gildia Reżyserów Filmowych 1997:\r\n\r\n<br><br>najlepsze osiągnięcie reżyserskie w filmie fabularnym (Anthony Minghella)\r\n<br>Amerykańska Gildia Scenografów 1997:\r\n\r\n<br><br>najlepsza scenografia w filmie (Aurelio Crugnola, Stuart Craig)\r\n<br>Amerykańskie Stowarzyszenie Montażystów 1997:\r\n\r\n<br><br>najlepszy montaż filmu fabularnego (Walter Murch)\r\n<br>Amerykańskie Stowarzyszenie Operatorów Filmowych 1997:\r\n\r\n<br><br>najlepsze zdjęcia do filmu fabularnego (John Seale)\r\n<br>Bostońskie Stowarzyszenie Krytyków Filmowych 1997:\r\n\r\n<br><br>najlepsze zdjęcia (John Seale)\r\n<br>Satelity 1997:\r\n\r\n<br><br>najlepsza muzyka (Gabriel Yared)\r\n<br>najlepsze zdjęcia (John Seale)\r\n<br>najlepszy scenariusz adaptowany (Anthony Minghella)\r\n<br>Stowarzyszenie Krytyków Filmowych z Los Angeles 1996:\r\n</div>\r\n', 1),
(7, 'przeminelozwiatrem', '\r\n    <div class=\"przeminelozwiatrem1\">\r\n        <div class=\"przeminelozwiatrem_zd\">\r\n            <img src=\"img/przeminelo_z_wiatrem.jpg\" alt=\"Erzeminęlo z wiatrem\" style=\"margin-left: 120px;\">\r\n                </div>\r\n        <div class=\"przeminelozwiatrem2\">\r\n            Fabuła filmu jest osadzona w czasach wojny secesyjnej i jest przedstawiana z pozycji pięknej Scarlett O’Hary, córki plantatora z Południa, Geralda O’Hary. Przegrana wojna wystawia na ciężką próbę przyzwyczajoną do wygód Scarlett. Na tym tle rozgrywa się historia wielkiej miłości Rhetta Butlera do pięknej Scarlett.\r\n        </div>\r\n    </div>\r\n    <div class=\"przeminelozwiatrem3\">\r\n        Scenariusz filmu został oparty na powieści Przeminęło z wiatrem Margaret Mitchell, do której prawa zakupił, za 50 tys. dolarów, producent David O. Selznick[3]. Zdjęcia do filmu rozpoczęto 10 grudnia 1938 roku sceną pożaru Atlanty, a ukończono 11 listopada 1939[4]. Premiera filmu odbyła się w Atlancie 15 grudnia 1939 roku[5]. Jest to jeden z najsłynniejszych filmów w technikolorze[6].\r\n        <br>\r\nFilm zarobił na świecie ponad 400 mln dolarów amerykańskich, z czego połowę w Stanach Zjednoczonych[7]. Według strony internetowej Box Office Mojo film ten do dziś pozostaje najbardziej dochodowym filmem w USA, jeśli brać pod uwagę inflację – przychód wyniósłby dzisiaj 1,8 mld dolarów (dla porównania, lider rankingu pod względem wartości bezwzględnej Gwiezdne wojny: część VII – Przebudzenie Mocy, według tych danych osiągnął przychód ponad 930 mln; stan na 10 stycznia 2020)[8]. Po polskiej premierze w 1963 roku miał 7 719 000 widzów[9], jako najbardziej udany film roku[10]. Do 1989 roku zostało sprzedanych łącznie 12 mln biletów kinowych[11].\r\n    </div>\r\n', 1),
(8, 'titanic', '\r\n    <h2>TITANIC</h2>\r\n    <div class=\"titanic\">\r\n        \r\n        <img src=\"img/titanic.jpg\" alt=\"titanic\">\r\n    </div>\r\n    <div class=\"titanic1\">\r\n        <pre>\r\n            Film fabularny produkcji amerykańskiej z 1997,\r\n        oparty na historycznym wydarzeniu – zatonięciu\r\n        „Titanica” w 1912. Został wyreżyserowany na \r\n        podstawie własnego scenariusza przez Jamesa Camerona. \r\n        Produkcją zajęły się studia filmowe 20th Century Fox, \r\n        Paramount Pictures i Lightstorm Entertainment.<br></pre>\r\n        <pre>\r\n            Film zdobył 11 Nagród Amerykańskiej Akademii Filmowej, \r\n        w tym za najlepszy film. Jest trzecim na najbardziej \r\n        kasowym filmem w historii kina[1] – jako pierwszy \r\n        przekroczył barierę 1 mld dol. przychodów \r\n        (w sumie ponad 2 mld dol.).\r\n        </pre>\r\n        </div>\r\n        </div>\r\n        <div class=\"titanic2\">\r\n        <p>\r\n            Premiera filmu opóźniła się względem terminu\r\n             początkowego planowanego na 2 lipca \r\n             1997. Studia filmowe 20th Century Fox \r\n             (posiadające prawa do filmu i międzynarodowej \r\n             dystrybucji) oraz Paramount Pictures \r\n             (posiadające prawa na terenie Stanów Zjednoczonych)\r\n              zaczęły się niepokoić wciąż rosnącymi kosztami\r\n            produkcji – już w połowie 1997 Titanic był \r\n            najbardziej kosztownym filmem wszech czasów,\r\n            a wydatki wciąż rosły. By zmniejszyć koszta,\r\n            a także by nie narażać ekipy na ewentualne\r\n            kontuzje przy kręceniu niebezpiecznych scen,\r\n           część ujęć z udziałem przeszło 100 kaskaderów                \r\n           zastąpiono efektami komputerowymi[14].                 \r\n           Ostateczny koszt produkcji przekroczył \r\n            200 mln dol.[15], co wyniosło więcej niż\r\n             koszt produkcji i wykończenia prawdziwego\r\n                      „Titanica”. Cameron poświęcił swoją reżyserską\r\n                       gażę, byle tylko doprowadzić do zrealizowania\r\n                        swojego dzieła[16]. Ostateczna wersja, którą\r\n                         reżyser dostarczył dystrybutorowi, trwała ponad \r\n                         trzy godziny. O fakcie dość chłodnego przyjęcia\r\n                          świadczy fakt, iż zastanawiano się, czy dane \r\n                          będzie Cameronowi po raz kolejny pracować nad\r\n                           jakimkolwiek hollywoodzkim filmem. Trzymał się \r\n                           on jednak twardo swoich racji, kwitując sugestie\r\n                            o skróceniu obrazu filmowego słowami: „Jeśli\r\n                             chcecie pociąć mój film, będziecie musieli \r\n                             mnie zwolnić. A żeby mnie zwolnić, będziecie \r\n                             musieli mnie zabić”[17]. Film łącznie trwa 3 \r\n                             godz. i 14 min.[18].\r\n        </p>\r\n        \r\n    </div>\r\n', 1),
(9, 'westsidestory', '\r\n    <div class=\"westsidestory_zd\">\r\n        <img src=\"img/westsidestory.jpg\" alt=\"West Side Story\">\r\n    </div>\r\n    <div class=\"westsidestory\">\r\n        Amerykańsko-brytyjski film muzyczny z 1961 roku w reżyserii Roberta Wise’a i Jerome’a Robbinsa. Film stanowi adaptację broadwayowskiego musicalu o tym samym tytule Arthura Laurentsa[2], który z kolei jest inspirowany dramatem Williama Szekspira Romeo i Julia. Obraz nagrodzony Oscarem dla najlepszego filmu roku (1961) i Złotym Globem dla Najlepszego filmu komediowego lub musicalu (1962).\r\n        <br>\r\n        Stany Zjednoczone, lata 50. XX wieku. Bernardo (George Chakiris) dowodzi gangiem Sharków – Portorykańczyków rywalizującym z grupą Jetsów – białych Amerykanów, na czele których stoi Riff (Russ Tamblyn). Wbrew obowiązującym zasadom jego przyjaciel Tony (Richard Beymer) zakochuje się w Marii (Natalie Wood), siostrze Bernarda. Chcą razem uciec. Tymczasem oba gangi szykują się do ostatecznego starcia.\r\n    </div>\r\n', 1),
(10, 'wladca_pierscieni', '\r\n    <h2>Władca Pierścieni: Powrót Króla</h2>\r\n    <div class=\"wladca_zd\">\r\n        <img src=\"img/wladca_pierscieni.jpg\" alt=\"Władca pierścieni: Powrót Króla\" style=\"text-align: center; margin-left: 100px;\">\r\n    </div>\r\n    <div class=\"wladca1\">\r\n        Władca Pierścieni: Powrót króla (ang. The Lord of the Rings: The Return of the King) – trzeci i ostatni film z trylogii Władca Pierścieni, powstały w koprodukcji kinematografii amerykańskiej i nowozelandzkiej – w reżyserii Petera Jacksona. Światowa premiera filmu odbyła się 17 grudnia 2003 r.\r\n<br>\r\nFilm jest adaptacją trzeciej części powieści J.R.R. Tolkiena Władca Pierścieni zatytułowanej Powrót króla. Kręcono go w plenerach Nowej Zelandii równocześnie z dwiema pozostałymi częściami trylogii. Poprzednią częścią trylogii był film Dwie wieże.\r\n<br>\r\nW 2004 roku film zdobył 11 Oscarów (we wszystkich kategoriach, w których go nominowano). Film otrzymał również 2 MTV Movie Awards w kategoriach Najlepszy Film i Najlepsza Scena Akcji (bitwa na polach Pelennoru). W serwisie Rotten Tomatoes 93% recenzji filmu uznano za pozytywne[1].\r\n    <br>\r\n    Frodo Baggins i Samwise Gamgee kontynuują wędrówkę w celu zniszczenia Jedynego Pierścienia. Nie wiedzą jednak, że ich przewodnik Gollum planuje dla nich zasadzkę w jaskini Szeloby. Siły Mordoru rozpoczynają najazd na Gondor, a Rohan spieszy mu z pomocą.\r\n    <br>\r\n    Aragorn, Gimli i Legolas sprowadzają armię Umarłych. Namiestnik Gondoru Denethor zamierza spalić siebie i swojego ostatniego syna. Poradziwszy sobie z Shelobą, Frodo i Sam przemierzają Mordor i docierają do Góry Przeznaczenia. Po zwycięstwie na Polach Pelennoru, siły zachodu prowadzone przez Aragorna stają do walki z siłami orków u wrót Mordoru.\r\n</div>\r\n', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `opis` text NOT NULL,
  `data_utworzenia` date NOT NULL DEFAULT current_timestamp(),
  `data_modyfikacji` date NOT NULL DEFAULT current_timestamp(),
  `data_wygasniecia` date DEFAULT NULL,
  `cena_netto` float NOT NULL,
  `podatek_vat` float NOT NULL DEFAULT 1.23,
  `ilosc_sztuk` int(11) NOT NULL,
  `status_dostepnosci` tinyint(4) NOT NULL DEFAULT 1,
  `kategoria` int(11) NOT NULL,
  `gabaryt_produktu` enum('maly','sredni','duzy') NOT NULL,
  `zdjecie` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `opis`, `data_utworzenia`, `data_modyfikacji`, `data_wygasniecia`, `cena_netto`, `podatek_vat`, `ilosc_sztuk`, `status_dostepnosci`, `kategoria`, `gabaryt_produktu`, `zdjecie`) VALUES
(1, 'xiaomi redmi note 8 pro', 'najlepszy telefon na rynku jaki możesz znaleźć', '2024-01-08', '2024-01-08', NULL, 1000, 1.23, 50, 1, 2, 'maly', 0x524946466642000057454250565038205a420000d054019d012a690212023e49228e45a2a221a125909a585009096533db780dafcc7af979fa33a6b6c44e053cc03d31f8e91933233f07a0543df20a9e733de6c29e7eeb9c5f693b451b3da2767f97579b7f21ff9ffcafe577d4affa9ebf7fe1fee07b8dffa2f4f7e97ffedfa0dfd6cfdaaf749ffb3fb87eea7f6b7d823fa5ff8cf55effb9ffffde57f98ffddffffff9be10bf97ffb0fff3ed89ffcbf713e30bfb07fd5fd89f86efdbaffff9e9be4bbe8bd86fe87d30f967f51ff33816f757fda783e7fa4f5d284e7c66817eb97eb47f5df562fdcf37bf4bff43cf9f977fd0fd13fd2ab8c5ff333b1f935c9bf631ad64fbd6599eb2ccf59667acb33d6599eb2ccf58fcc352c7c4aeedceffbe6a23f95a82541664ce73816ffe9f3177b4551f5755c6390398238fddcd152910fccb91b0871bb6a0c28ed04833ab2ccf59667ac89cc0d806b993d5adfb25cb7061f1a2f51e291a23f079424d467fd13d4fa80daf9b5f385dc3982642127d1e46749103c9f152bb7f2e623588e27e1ac63ca379dbc48161abbfef272c3b0b0827e829cddd5901d5fcd76d11e0d9adb8894cfff664f27cf59667acb33d646711d121fb563f6cf4c7f27f9a435aac7a30cfcbf3b6af6d4a261cd1c3c42ce5cf469489d75ee05f14b4c017edaa24c5f03c8d93e7a11648be3f6486a92738d6afcd78b8842d8e92e092be5b62413d7de31ad64fbd659938650666ee5daf1c7dd90475713a1e604729ca630933f022fb490cc7c649b664a66903d6b1942cc4a6312e01009773bff9ae2947361a28aac4b7f67220bffe5d0965a81e1f457475109d80977f9e55c9609646f3a2515cd58fcec95057730f1464173737fa41576e7897925fbc78cdb80536092ce2a50173dabf2c1f88bae2addad81e051ef9edf177dafd659f965a2e32d17194988737aa3556c6d52113dfe85a7639a63b29df0f2789e59e227290aeb8ee2b5a8a6c95b1efae4af9ceacde80c91fbc4aad4427bc5e7a3ea69ab5c7d64050b36053dc8af020c2c3c837cd154127555a827deb2ccf59664038b866cc1f0943780075da33942ef16d9d82b01d844bcefdbb574b7395a2353076b30bd7d1b4cbccbac3219220fcad412607cb5f58b78d1b8f788e1676fdaf631a59b58c6b593ef552ce841e902753cbc9c3704ad96ea57692bfac6c4eca307512e9a0dddc5496ac6c96e0014213500395573a939d114d658178405371b322875c48f65914fc0e766db0ac5b9761206f3b58c6b593ef59634540373823cf2321ae822c8abb7aee1b2e63aaa2952a7ca37c86fb959d116d3439efc0a36c723f4c149cd9361aa3beae5ad8f84c3a603a6f5486ddb0ab541480e3e62bf1254b36b18d6b27ddd28c8016ca13c9af3d9f2d9b6d564012fcc4a7200737cf4195224574af54c9390aef2fc5cb6aa488abf1d2623c08f2e576ae0b4f35784043397ecae20e6ade7192682b5396deaf7d49ab32cb33d6599eb2cc9c328333773644fba325cd18fef1d2f3cecb7f0382cd556877ccdb435c758b02ea4fb9c931d87d2fc038f5bc254e9ed07ba256d3d819d943411001a7e0297a837c9f9e55c9bf631a9d96d99cfd7186f14dbac4922bc02cc84e5e8561433435530e78bc3f3a7525cb0cccb8a44d2bf3a92d9a5201dddc2571046412179287690f59042705fb2182ebce9d2d9b9260f0bd729dcd63ee177f9e55c9bf5e4933740c0a073d4d3ed0c8acff18e7eca4d36f488ad3f11fe38bbb897f65efa3bb06bfabb2f68923b0b7a2695ba03827068e35ec5920c7724375638cfd20493f8be6e805606f754ab937ec635ac9b80a2b6742ff2ebcab99c275d4e23e173d3796a816389ee44204cd85b83f93aa4ea64ec88245719116aaba58e1cb7ef49ebae01e6cb6561dea75e2ae046ef1311a1ab7cb15c222453d6c875d7f9e55c9bf6317f6e744f0df7a4e79d766e46395ae2164338899e701c56379eee6e8e8a1cb1ddf762fc69bdc26a7852c3dfa0255dfc398e9cb4edec82cc0aaf026dacc617c080b2cdac635ac9f785c740c09d5f5356d56107c640ef318037d5e9de1997bb84b42c54c7dad2675b2f25f904766ffad2c45aa175bf9bc5359c6ae553d88b5f4aec6a56432d821a41d417044b65b2291fbfa32c119dab1f968b8cb45c659e1d68181d226610190724b94ecd8745a24d1aad8587e19ad2f658251277f427a49786a0d67e4cd81cf7e5533a60a988d4c029e645ac356751c425ca0f9acae240b0a4caaba6ca55c9bf631ad631f19f79c8e4c4aa0eeb9e7259667a2f1e343c5869f73c6da7d1aaaafc337ddee8310daacd2e0ad91c57208ac2ce1acf1c573566b6de1a5c6cbb11b9cf697b7c2323332cb45c65a2e32a5bd417bb221d057c43f1e68fd8b47ef98ae980cb227ef1556f4e01d047dffce34f7754d148a1e6d90c095cbb674a9695980905c740e5a20be32b58e954a751d303c9c7cfecb23332cb45c65a2e32a5bd41995c740e4c5c7d6c0493640cd3020493b33363c54ae2e23f744f2754881dae6739206874b9b04bc7227393bfc349e2805bd8550f2e87b62a3eb6ad14634226e217fb7a537707ef59667acb33c2e3a06074f1f952d985090901505492f8bb2c0ac279af50c4bd81ef97ec37931bd60f6a831bcb5beb189cc6ba1a673912e4b0217b7a8614d35e3d3036ee5b2e22a342ab6901659b58c6b593ef0b8e8181d3c86a867877ef9a1a7fd1fd77df33c0922fc8b97852e9d682ca9556986046e5a57361f7f8a8f67b0a27e302493092d4c4c856f711df0c0b937ec635ac9f4e1945ec556b0288c69d4249af70794c7fdb196773f62b3777d3a0c45a2dda2befa1d6d5205749b2d855bd6624a339568542601fcb2a5ce1a25c6843b43ef1beac7e5a2e32d171967875a06074f1d428a2531b1a075947af02cfc1ebcae6f70e3a455e13754338adbc5ea8a66cdecd686ead7b6bb2bce93dd0ed34511dde77869581fcfe79c371519eb3dd3d8024fc46665968b8cb45c654b7a8333754f0795a75f512ad37d3c92e82321f0dfdb78fa7c7aa8a35d92211895d8bae64d2d96e94364d18f6d5a0d2cae1b5c83dce000fd11039b81029dc5b09431eb5255c4d518f4abbbe6df2d85c65a2e32a5bd41996590263eaa54f55f7f66d98d3c7cf00508720c617a20cc4fa1ef62397966b5c1517e0d023a47d87341b43bcb5c36c422b628051d38ae0c77fd01584813ed7863466f71ee1142f3e99127deb2ccf59634540373e26d92c8a237c349ca4ddc1506166171cb5750e62f6f9a35148b356cfa408b4847f7e531cc01597861254e21f2d8debd6a5faa48ce90d203cf1afff9bf850c69e4559667acb33d64ab8cfa7d6f8474d233e392e93f581fb77187591e177d277a7571715968c92f80629741ae6c0aced1293a2efd2cd981d7f429b4527e972ddaca59c99b275ccb440750ee01a7593ef59667ac88b7fb16e83431e7f66b09f54b9aec0674a9577a8005349f76cd779b03c5085375d8765445e60a45d0b320a8310a1d6eb6ac86be9587486c0efbd6acc8e15a03f1677b4e67b92c2e70c5dc6b32cb45c65a2e329a6c2d194f04a0159ae331fab9239eeb8b6e2c26b56a1092686983f78e4c758d1417b8657f194b183a38be8747c7089305b8692464211a579c3f628ae0dc23252dad736a0dedbc4ae9955bf40bc897e819fa77419907a360ccc6d1b687e66cc4619141a5968b8cb45c65a273a531767c4af61d45089158b1c88fd6a1c96bbb9c20e60d37624a178ba9b7bb10ef72e454b3105da8eb75d6caf78ff6af9e650dfb18d6b27deb2ccf59667acb33d6599eb2ccf59667acb33d6599eb2ccf59667acb33d6599eb2ccf59667ac7c0000feff9be80000000000abd333b83f44334fbb39dee43d0236dcd8bc38d8b0abca5b716c6b2c571ea5c8b2fb4289944e0785b8f87a8ff9eea7651841ff52ed75337ee18ecb41bdad72cbcdc1eef44c8355a641b03ab642ff0075afaa21e0fb093b43e7f38cd73ad0f681429e0837e8f9ae45abd702a78ad62f7fcb29246014ce6c02e462d2cfc6a6d68fd42f821fc4c283feb93c516347f0f1c8179fbf01c3836c7505736bed83137380e35ce2f88fff3b49b8dd3f0a70c81d3e40fdc8576674903a2ca14ef0d24db942ecbad0164a2403714c557820310ca14f8cacbb627fbc3782e81d5608f01920acb5f2bb3a25ffc4767cf862fa9a041e52c8c82d15daa3f846da3f21c759f8373ffe3cfc65aa77bb73be67bc00eba20fca4850e26ea26ef2ff7220f16facecdb359dfaea07641b43f3375d42e97f9cff65d8e194ebab718ef552e1825a34bbe869f94b460c4cc535dc6aa897bd6a225470c4def50f8165a83f1426b3511fa58ba0f0dcaf81d2f60dbbae84c2c5f6ab4a28f76d61b5673036febd2a407c9c42be57c444da813dcf5b4cb57a30bdd663fd71f3c3c7dc9393c60fa02467728cc5ae15f2db64a27bf450ad04d700805130dc99f5c787b2bf071b20b751d5d2948e325fb00183066de4da27d3ce468f950bcc1111d00d540a7a9817267efa6dd8b87add0843a5936bcd89698b0ce1609699bd14ade4168d54efb8f644174d217e98fe32846acd686c9aa3d55129f4bb0378f53f57f10d1b438ca624e43cc6c1c01ddfddf89f3947274f9a9b94ddb2f7aefeda34bee4046052423be1134acada74bfbac415f0ef766b8501818d4cf32798e562adbce64b2e079be37d9893d55a9bcc3b9ce7bc770fea028b77e30a8faa8c62188b8d1fdac23ea8206db2001020b0f4a6edf55ea8399b73910f9ca92ec336efd762348d58299be7d117bf850988bf4a025a890ea25c1c31b3694902c54d0f528b983de87369921e2de84ce2794ac5700f8db3c5a15a4d128b9c1ebd8ffe47163a3a2aca3e95a96e135ceba1d76e8db6dce9a11ab9255e7535fcfd8e163356fb71716e8379fac4dd554f8ab816a8cf919e28ea76128e6b34299c718b33c7357b0ae2134115acb305d9ce523328e970abae4520c226442d64612803e20f6a07ce3c9daf0d4619f0618a624faef7555a91e6f5d04bc4575832ee27b97f35b8e01b9873b18bccc8a31dea33708bfc15407b1b09cc933d0cc33292964800e86bad95f1ae6aaf816fe22a89675a7bd82ebb438eb5e420b9fe458ff5b56f2337f59121b85b7b71a979019812d38c6a919c2915ca7e854ade4672c9a9cf8dc2a1f16bed99ad74cbc1e2aaac433c335d0345e613fed0884206246f1da93340bf3b9b1a40a0ad02017e0c79d468bac224f19ea5234c48c63c9ed1e556c8c03852725cf08baca661c7992cb7cd35f5f518f5aa628b3f86599411cc0f1003a961137e2752cee9d042dda3a27be4b3b2eba01943db884f79e200c4758fa111dc86d1845ce82131d72acb934a1f585bf0b82cce41ac105d7797ae489a58364cd297c9a767328885e716f73ed5c5812be6bc4ce33739e98e9a8dd7efa5348be20512077359d20622dba2c1909e22d11baaf883f5b5099fc1e0c11d10a719e6caa516e84d8c87a810de8321f31ac749fbb9ecf1d8cc4000f6bf73593a052a9f28053091ba93b7707960e2542160f696b10c00258d950534e7b7ab3727436bd33d2f1e32bd61ed9c745c02d328216079075395376d444e66f04a935414e03c1c5aa6e65699515cccde5eed173f98df2026a78a0ce82bddb39e95b3aa4fb8bdaeac26b9163b5ad4e1af82261943de82460b7aa549d4e9afe6c174a30928730db496acd1dcce4faf93e92819105f1f18bbdef6ab1494a94084bcceda1bf9130ef6ee35a76b887f74107fedf74020b99cd358e23ea5b5f5bbb659168e8f6fbc833fb4fe5bf2469b78df2e036a0acb88c7a13572e74ba76ca5a2b6312cf7c6f823d2689d70a27b08b90e97abc606acdd163d27dd7e1a78ca10ac8f1e19e5ba61ddab96fac1442d4a4de2e58e849e76e3827f3457491815ebe600094b505a9fd0954a46cecccd631033d1c7a3b55a5557cad9bf81e93dec9acdd1bd83b50f1df17038ad75d797577f22cc094a375b6f8471ca8cece03cf7ef2a9cc54cba66c29f3b35760360344f32f9b45118e6148752b5870ff96abd340f441d139361859dff6afb365088550de1c860c918f6effe3a883c7fd797599bfae7261bbf7c3861c6c298c24143ee386fe3ba486c2a19943c2909bfcb2d48c4cfd0bce0422b434cfbcc06369d3d09b2a797fee8f8534fff2d23885d4de1811d508d8d1dba9537b73954cc7d6fd1a5cfe6d45186d3bf3d5e38b492e0d772945809dbc69c01fbdd76111cd48ec2e5836d5213f0fe8ba2d3d100e7d36553f271364b548526a6d57f2cf90105536da94546ae0de3d95e79963201edd39b9fb5e4005dc92a3916030e5230c3cb918ac69a1047bda32b7393d2f6ca7e245d52a899167e7272f561669e1bfe814cd9f5a37054b071aa50c47d3f79e0aa8b69a4b3a366d80c9a02a103221fc63fbf99a037032e7d984eb3a5894773d15b183852942bf2a4bb39ae0620c83c2475c64cd30ddda8cb62eadf46d5090c08283d8ccdc694024bdd73930083c4a074677dd323d027a7f33d77556d471bf734114263d841380ade04bd562126e460488eba8f83530f433756b2dd1d0087feb454235249681c3baf46524d09734bfc5a831e32043a11ccfeabfd656d35ca1d338241271694c2a72f940cb8787dca4f1bab0a195fd05f3b85b796375ea411bc4fc0cb999c0d4331a284f363c4aa43da41a2b825f02678936000004b6b11d49d6f42fbb2a9481c7963ec1d5eba3b280d417c81cfbd70074cce5946621c8f9e3f9a0a3eff47eedefaf560b3df7aa9cac9f03b1e106f87da767b1cd2a98caabe7e88a8ae32f051a54cceb191beac1e2a4ed928482a9c7c95742b888216043dcdbc25e978cf3512268dd59e7a3434bb8054dc6eb0719e5ef742fcec8aa243767976d02c9a1b1312c06c9be84498f9a6694d69ed5a822250dccde954376048cc43a00e6f3ca86e0a81e9b76138db9fdb4319740bd259e91804a0e5196b6777c553efa1b54e1a939e0f52998a40885c0fcdaceebbd8172b617a98bfeff854aac1c6120f7aa53f325f507add546700b7309a322940e6e6f5ea1a5a189582517abbeafa0855f8d4a149b55dcc7723dd6e62815a0210b521cf6f3b13996736b8e309362bd0abccd4f985aef79ef72cebc7f1f74b4aae28ddc5991993b026191326b979c107e385e7a9161c2c3c90413eda9013b18efe6d2ffbd094b7c2d8954eeb68fbf63279844bb459e1fe86921943b5dd0d9d415e4b44d0773babefc6dff535189ea0824a8f09aadec09fb17c41e820f1aebc9734357ce8e06152254f9179e8d640000df49895cb920432e1b505dc6bb3aa2b56c801d26603b182e30b3686795d6c96e1f4182586c51ab09b6f5b0e451bb7cddb0f15ada36da2e6607a5f298a4bb27339cb7f3acda71707ba2022ae0805ed05eddc6f475826b73e987a27045381f3e1b013152a83b5231e238e517ce3a8cd176339bc7da4b0b41931062127317ab123ffaf05537eb3d4d645e56ee81fcd9b409fd8f159109ba493c61f9bcf768aaccaae08530ca8e611f4856681cb7f8c7fc8fbfb3701d3181d139c6acdb28fe68556016519d2918c784aac23dde56e2d2e496659820cc0cde52846809f2f13e200336f34756a7f8b5223245f4f40370225cbca3d74e319350457acc17de379a97ff025fe9afe62020e7426747fbeb9aa4f4e9b1461f10dd1ad9331d437e6efffcb1e5f55ea84d04812b72d0979576c73cd3691c67bb1dcd6edcd202d494a5ff7ca6f1e3657c8da53915c72c8c3d1c9a5af8b5b789c3584f321c5232b4829b3b8e840e14c082ce1790e24eb1a118fb9eaa50fd3106aca7237f4a9a7369e6e7c0004d03ad8b7415635b4f38a720fb380f6c939116973209b658da785bfe51d5b7c9f1fe583ced21d72045fdec360a8ee2fa7fc59fbe44c1a881fb40aec279a5deeb03eac7862b8746a0c8e0af30e3b6bcde745bcfd2ec4567cc602fda7f84187c0c9de3029f2e220680608dd33fbc06765411bd92537786a85efa71dd8e3d1fc81e307ad782ef83e90733ea172e93b8fcae93439de981d25317308dcba704a019b5dd36ce15dbd439962b50c1165bc4ecb142e492d6364f47f6c7ce28d8e52b6768fc2d248d3a92bfe06a5fab34c1ecda2353e3ae223ec146ac77abd5b55b6d20b650554a486cb040fd27a576bce72f80cad230c59bbbfcfff83b6261aadd1e474c191985afdb4fc14e5ce87c1ac419ec7e40b5a6fb7254610c95cf25d75e8f183f60efe549b474fc6add9cf64e5384e1e4dc7f4327f338a79b391bdcfc7b6889aa53f547f8e790cfd5fe3c0b218d27748f956750303ff09002fdd8cab17447c8075612cfa3ecfb343ce499c043002bf7e33a3ccc374b24854068c45f379e88f837365068615f29153f9dd051d2e343b4bf382ac0c2aaab8b7ce4fb0d8144635e59d3d0de4fa36ffd41ba6b6d7e12c9bdba2293116832c710bc207b32317cd26d3964a40a20615d4632df343e68d9caaff6e4101d2eb2f54141bfbe73fd164a1fe580c90ccc4d1d85b80305cc5539600a3734267c99bdd13f2e6ebcf0c2db2fd4e0e68e303907b206744949c9f92b462aa7105ad2e4ab2dab784d857f1149a51508ad16922cd29c0899f7aabb8a44b11b10ce2d5a9392a9eb7d79f864393cac0800c6b1643a64664dc777174572b64914cb39e7859701fa9815528382bf93b216131c8f8d423170f0e57c1c2989c01fc2a1409bab6c60adf158e9ac818276ec0567b58417624b7507c5244108091610c48464f7c6c3551464fa6382d64288f4e0f1ff599a017f98e94871ef087e55a2c42af51875e5864363fff9f7fd91e400ebd41c62bb166187ed4cc04a5b29706402dd8286263fc02ea786394b5180bcde619561ae40fe3de16d2c0f170592d678e57d45f1435597cd6a9aee7a940ba6b21c905a04ce1ecef3606b6e2a8000005f823660c4d0ee1c9cec5321913eefa4eb0ff126f02d51177035573df9e865fe024f4e2333f06bae3559abebf3fb1bb966f80930314cc4ef4a7b68be70f81faa42803ff4a4f4f93fd64c89fb2394b164f85cca579d6455d51fbc3b4b5574b4e924ecaf5fb260723625aeb3b730253291889cd173c3b84ed99bd8f6eeae04a1ec606b24bacc6f88d8c737bb1a91f1fcbfa6f63a3a9a04e7b96561c1cb81abd09f4e36a8000e7f058d7214c043d9ef893712d6813c46eaed264fa5d6103f34387e42678b263b0a786e233644457e28d7ce41bc5493b2047ad9e56aea8e0880d9badf3e8bd1b27c950a859fbbc79a91a91f82d5800696350f00a275babd8f9e554ad1fe61f11d172a72354aefcf2d22edbc132fa0692d2bfa299ac88954e6dd264af3111ea54e82371129bb8cb9c46f1603d003664c3307e1a07c08e617979de5d2ce5fb52aee2ed3186f191397d589a9d63d76f8d03d59fed6ab936b89eba4caaf2973282849c9b43bec2e06ea62faf2a830bfc9cc30d758307129fd5313bb2e35ae572e7c9a47405ac65c4c7691a67da9e944e5f2c74c3fdfe5cf0e6efb46fdc941e619178f62805eb638d837e99cfab8a000e8a1775985d8b2535a344435ca70c2f87ec084b9cd4a26a5e17ffd683b9b0565bd966e32f7fe90b42fef5464af0d04ed9f9c30afb6cb9df842b58a455a7fe2735552228888760a08b927daef96c8acfc0ea6fe0bf7638cd0634b7fba5087db684778727fbcc48dc23c9971f59f2879b5abb4a32ab44b7f02f88c51cf92ec50b026c348094b8db7a4f694b4d22aac7af70ffb2339ca75c9e03b5a87c8995eb743a904bde7a376d90350f353bf4891ca41d70a56c9e742dced7596dcd6c2facaff584bd23b07b751e5b8ccd3b465fcaa7f742740a6d432b188baadcedc4f8f82167e94c852f42863b186755d5f7ab21580989b7f695698a49998215af5fa4ef35047c30c301901941bbabe31998aa9136706112fa58ca3c0da5a0f27c19e59f3e69cd3666c6883720552cd3de77bf1f0adea84dd254ea05e52ff6de30ffaae63e9a04f731730f5673fd7844d7e65a228fc8327ae708cffaf9b5aee608d7b2616ca867bb5249210cc70334dcf96e2862c51152a25b64d5361c834e7f086bf1d3330609214ec2a203cfcbfa07d9df1389153cd69afe4389049a7762cdb675d70cbb53cb96d70e57f1db3a82d9908010325022c157a97977c3ec79f22ae3b60dcf21b374b01226474b7f992b0837eeddd5c95b9fa9bfd1ba634d65b4b2348e09a43fba45aab8aeaf932364d67157f350f98498494d39add194e5d1f81b452ed000f05331e45045ea4ee121c9324a3e24fb94c7ca0827c21345dfeba8c100a1a8d902ce0af1da92e5a5ccd1a846f071569a16e1c6d4f7492d24bdc4546db47a7e12f5eb529d4a2170bcc1a41108797969b5ebc5138a00673457bd7d4e02164a7dbde43b1cab4923c8f25ce99be37c0e3a1fac7b1f6c539c58b2bcc57f28761a89565a7c4bf01446a0b3746c9862907020a8163f5e9c4354b09d24c26ea57817cc3d63cb3e41c952a6075712e1bd31bfaac7e730e4c4307c91ad39e4d203fd585ae1e745c912999d6c1f48e12aa96ce75b2510ac7a0b9bf9e8435c814d58c3bcc36a16ec91d23e20efa765170b8c1a192e9dc9b127d6374e4b0e43b94b4126211d1294df925b614589cdf8a5e2523474fdb82025977a25f08818db419eb7df161b8b87974acc1c2ea5da9e45190ca857f2ec20dcd761f4c50e90610fbaa36dfde2076fed4de42f9b5a7fbc839497ce02da0772b3f5cad8b7f6f2e47871a5cef4eee0ee023010c946379221638b939dadda7826ca1e48e004fd58ba383dbae19deb0cd9a190197f4811a202f578fb34f05787473fc4e5cc36b00044c3b1ec0449614dc7bdf9f3c35ad46534be05cc7d6abc105ea829ed16491a8ac4b261636044af47a7533ec1774037cf075b6ac395c466633983169262f53c31a64d924fa3baa540e20ba575fa9aa6b92aec692cb9cbbeec2b64aaf1e1b34eed4bb93f8cb18808a84842e596841eb572416753781e90d5ebffb2940f51e3b197ae9300a83830b6232228af1c0622f38d3f12b6feae3646b66dbe80380db882eb6d00735378bd6761436c52232b95b961bc1490161ca7d4eabc0bcebf09ab74d0bbda3fd8fa7315c81f31cfa4f35f84db046130208ca4080c2209e6176434d3d159fd82b0e48da4a4f687966a6652d7c7d69522417581d2b2ca8d59769cfcad4a0a54f4dc5a21d5614c05ccfee93c457b62b9546ee2934fbe19b5a6ec28fe07d64e2a122df954c7fd525f870b37ba9499acc3bc62abf8738549614aef9ae175d52ab9e92a7475b01214d6ced961d82cbd29deaf556f9ec039a97659af180d0110500f39f12e52af8ff95bd29bff5a0a71555b86ea5ecc92b345cb6a561930ccd71b51d74d1087ff054de81d056028554224bec8fd1b15c958131cf30169457e5b7343223c4c712d8422e860f4c94cf72ac73d4806f13911c3dc9109764e44e3f041885820878eece51ca0ff48cd4f52280441289695ac6b9ba910f3b6335e000b1deb3b6ca2130176d44ec0324d2e2c9565daf2b9be7cd49019dc19d182ce69e957d172e88033c4fb7ef8c6b2565668fd9d865ae53e2827c90bdd367b9dae611e4c97c4455642d4312173a4871a7047f91380c96b4d66586504ac7fdc8e3e0cff346a2f0fe65b6ee9cc4ebb59684c1c614abc583d74a51660e66ce36dcf46fe664de75d607c17b52b2e93b528e621778734273e9bc2b3f4349241ddab6c338101887ce26abfed7ce0f2e5f43abd9c8c7a753f8ff27baf181a83b1bd915f6f391b15f1d5ed3d8f688cc8508750402770e7415f2c1698dec68127868de9441af4b10e458436cb7d8f2b8fffc229cdb53f6f44f8f74e59a7c506c7c94817e981a274de04f9ad48cf573b7bf34ba8e4861354ad57350dbc9c128072ba0bb115da3e453a8a824afbb7f416e367f33ca1af8f1ebe359feccfbb4099ccf9aee05956c2a0a76c6ef3ccaa294a629216b8b11bd0e4acc0d43bf1987df982e3f1e1c93c5e5dbb5a8a417c6d4c074fa2cc27e29e967fa64be4d8eec5c9277fd3ec77f008480babc3041d328c46db6eb8681eec78d84952d92080352a7d8e9c2ddc1943134a91e49a458832e44f367214d9605e5af3510f5dd1495815c0b6d2b834e7344b97fa63a7e130b4719de265e90358070ee74541845ecc8b794da7e6ad268ff9c4c7b9555c12c552a11ed1f082a327b54e7df20ae5dcecee55e89704a0a1d2bd5fbea7717a30bb4ca2e013a4cab18288994b07f3e15f6544bafdd1d31188da8310a109d60b780017cd524948a806d93cf04725400f4ef09cec598c3f3cb8e6fda4e8035f767592f06b9d90f781ef6d8e3578f098f89d6d256efbde5f8c31bb4409c95de2a7079187564caffbf8c3f6379b86dd8c3e3fd86fd66f1c5b2d0284f32d578f1d420058b72729662dbd0fbfe1fb0f23e77b0b9cbb2b2a044a0aa44ce3e1d615b700f7aec895dbcddc1e0c4704395025743ee08fc38f1a9541eb0a92049d07b77f36a191232f419ffad98959d99846fbb38c80d930b9784f9eaba9ea2cad5ac9ab6517eb165159971285636b678d79e3b4d1cc22fcd308aac4aed268eab6e75b4cddc0ae6c3e9ba4f6ac2f9bcd6cb23317cdc9329101141bb673803de9771c9abc1d501883e028487456b3cf5237e462060b8122d7faa15a0c700db1e62f74037aedf94133cdc2e64cd589269feb7e195da3336b5c0f056e749672f01f333dc8bf2dad8463e9be1d125bfd340103f41c35598ee0709c8dc9aceec8503c62434dcc2aa0866158b9aada2ad26b2e6a1118356b68db7e4fc59998230d40ae40538ad3df74d215e9e80262c39d1b5cbdc951b2d94cb2ade31b04bce33a0640b89bf74a4890032bc0fdd0b5d011189d21e4c0eb1ec55c623ab9800bb6081547e9e86965b3e842cc941b400c38539f26025841e0cc40ed60ac7bfa0b7bd936d17f235a6a3de7919a26838c6686a0b3272a5631c7e4000d9a53e1a6f13b3a653a3340f92d4c3f6f49baa7480fbca3a477cfac841fa1126623972e564c99418f2984737fa8f4f26e60499f7f1cb3f5d7a53b558e23420a08d072dcfdce8c401386c2f5bd663bd267f6e8c2aa1e66a083636fca2ea190c705fefabe7789f110ee3d8ad107496353eaf549412d0033a50a3f9cf681d2c3b826661c8f467a8a3e00f72160ddcfddff4ffc668b441481af068b9dc97422ddbca557aadecdbc44069eae3f7b7016f223b17505fe5c23765497464261cf5bb2d0573058380c5fdf4e131039a0157590062a9d9d80d8185d54bde5c2753327981915b85490b0bca080afcc747723a53a8ccc8ca4963bff4518ee8769caeb4d873cc531592d7cedf7881cf63fdf5c5b611348900afc097ce25f1c33116e26a3fe00d2e883fb87a9288ff586535b6949d37a184de2425748fd17d7fdc7ad0a003e47a4dcacfb148d9611feb482a581fe7630af9d392c4d18489995702143f1ae8545333fefa770d0b89776a46cecc1fee7919d587500891e8b146a259bc4fe4fa5d63f2de976b0df527cec5811f0bcd1c616f9a80bba5c9e911edd334cf014ff3416e246b94277745626b3dceeccfdaaea8bd876a1ea253b1f8ace117787596e4219d3d797bf1674830ba4d923e436043b0f9ea93eef6548c5fa6c5a7c4f5a48552d6fd2df13d2214d3ac08ac1c7e6c385eccd821ed273eb313f2c870663cb71be15f2a08864d38fc1175f268cac7df2a9b2a6d410da6a1f64dc2bfc274f669b6b30200091eecc747d59a67327952a332611dc4bbd57d58a240dbe6eec0cdf8cdd147ddfff99d5710c036088e06627364e9ec63db21936817739fff43a5a97f9b1997060376fca804a6e89cf4faa3d18aa4a4e8b7b485fd2184b3692a44520a949bdc342d2d177c1b27f67054821c60ca7846e996c50f9c550a9238b5b549ae8db13924a807bd23c7a1bb0fa76bcced7152d36edf2f7541f30052af395a19b8052f7f17524b433e75c9c34227f90833735ef5edb2e805dbb2699de26243f05f9ee0d8507f9d1ea7fb941026c11d2890ae424b6209cf91a6c5e90202e0852ebbf6b9e27603253f6f2847e1e1386c14ec64043c6e74b737ccf1186f0102eb4e911b460fef03bffcd1647b1d4ff6a8b69250560efa11d8a88fa2c922cbb8bd6cbd27f8ce2a9bea2cd140d3f24a426c54e65c663b2a7ec5ea8db753bb2f1a323258f29617bc8a181835afe5a1895629b359fa6fef2dfeb19137ba6fd21da11a9eccecd69de147ef1b3be62dc7df2371c3248e9d4e3f22bd17c12c297f5b4e465b9841c05ae964b21525002b4184c533e0b75481fbf3be92cb536428b6caffc7b482c36914fc392fe97862861bca79236cf8d180d7946b7bcb532725f1751ab3abf1484f84ceab8870a570f80e8194513c54dc0a237da0fb5be164edd04555de9cad5baa2f6ab8c1e0f0b09b4b44468b1c7300050dbd8c1f07f23291dd7abfbb35a20917c45c30c42c77785fb2a23d89993d1a34aa0306b36dec21f77801a185f5d3cdb869feccc37c343cf6072cea8156945824ab33b424726de767179bcbe15dd863a280be04b1e0d993c8c55267eb880b554becc6fc826734d8ff9a16c2b9d6ff450f9aa126554944dd4b622fb708b31c177267108ba234237daf182d4203a6677245938e120bd5b11b82715a5368874dfa5ea057ce26c52930a0d099318ec28c029db5bfb5563b8af568f6796d449f1255b932769c3667d2448d910c8bcc80a3472743c278aeaf66f171145f1cc5af03ed58f1d4c244c8b78c9246298cef5d7ea97c79ff87c70d6febc4e7130718a1537fe905e43a2881021824931d079c1bbd4b38e0d9b4e9213cf5ed266d99fe1e5e0680dcc18d8684c884303bdb4781037f51330cbe789537864f9889275b5452ee7a7b338c37f6e91c35e5d1c8bcebbebe8bc61214beda877eba176b1dba5d90e8712678fa4c5c0dada94c295127067e1bfb3fa674ae84395aba52916bd2a8823839e3735328fc58f50a2695a9a818b1986c8e3ca7ea15378b7389b89c41f872dc943af032f15038a000aa148da2894d7a52852b50e142524e7c2abc793a31b890314c30a2f444652e0091669d04bf6dff1193834f97097b068a32427e335756c38e5a94baf73104ef52fbc4e705c33db3af3627a264754bfc07d17e9d8222d23977403bb8c868032a7e1626bc091f9ebbfcc7f4554a97e141b162dd9f5cd44179267cc3485728f6205169f0dcf2eddb4cad56af39b54c6daf3e2918d500b306d120d029579da191979d494a68b2868c24ad58fcf4236c47054d65f4fc8f3e36ef4c6bb53ecc2e10d13327608fd5b38c26cf735f897c3a6549be8e78be3145850825ea6fd40b6363956b11ec35eed7aee18fb3fc3d0218293120d94a3d4011c3b89ad5e2697001643fd716e6198303281c70fe373e50698494230b998467fddd8462f07416e7738ac33505ede7190804e104864eb4ed1740005be11c5ff7413aeb257137ae855f82fcd5c044fc1ec8a57ddde58bb56397188c26341e43d91603926877fc0f5c1b4827e03dfe8b8e20ad6854bff741029140e01984c53ec8c5feb10d1c6212021d6f48d47fc5892e995e99aa1bd03df08cf929e795975506cc1cac454547b4b158ae77d196f5bccf6ac273ff1db5df783b6edef76eb1e00200ee06c53109423c7d2941880a421a31697f924eb4d3840a8ec64e4bd6bdcfad7612e31dce81b2108f118f62ee417a0ae19a121c69fc5e0a4add1eaf374c6de6699c6d40c42d15758606375bf503bea2a54c6e216cd9da4a94ad35ef909d715f22c18170516b75c9e6d96e2a1c65fcdccd999c1cc2075b6bdebf01c9c27b5bfd17b4c162a36c6eadaf7366d0f31eeac03c531f4a7b4eee57114a6f41bc67ea7c0dff1b3078d4a20ddd6b11ec8f894c50e7c0eb73eab99ee0bdf5e62f55ea34f671ff0a88250f789cf6748379b9c7eae1e5597a64cd4738f96e59f87e27c5562664cad12a690acc881a465e430dfe81973ed1ddb789bd40966fad067d23e46894eea9a2c271ea1ca83eb8f7827127aae82f092b83beffd3f8dc492dc42c044e9c3eac18b6dd0cceba2e2c2b76c5b6e0c355b9d266668d8edb587c9afe20378d340c05da8caee70cbe9c40acc9fa913d38a92ba597e4e5f0214ea243235666f86e6056f09797b9797e7f0eae6195c24bb93989a859c767466b67088144e5b0316429f90fbf017a65e3c9d6e59c7cbc2b23edd49a22080e1d5800237e400059830c014cf93f777417916556e4f9edc453d1103e14ece43151110f2bfb66e2302b47a3f391eb3c21152192697dcbedbf22f5b9b418929fc7dbf376efd268421470913984f674bd6791787f679af0e2bb2f6710a0b7830b995ac9d8fa4fb06193e6342758f0e478f339c2691bc2c41fc59a9d70bf40607bb02d3180074da60828b92e093613959e09fee3744b1a592a920103f79ee96b8b3404bcb3814ee1db844b8e0e77a4c323f7ca7d2e74c307a84d0ea4ea6139377decb4b218bd13d0e299fbf4645fb286d6842cc6ccaf1260b5209eaf85bc7369f55695f25b1e21f61991cbd9176b13144dd61100d1880266015ad1b3f6cbd40601fc598c248a59ba3be288a47d07a1b5aaa915dc4fc214996dd09197ba6c2fb449e5426a231edd171517cce97493664f4e20ab2ffa2ca017feac9dec67096980681f45e9f5a71bec78613af81aaf5199eb948ef89af5df1b4ccc5ce809479e843cdee30521011990b1915dd0bf4a344adb7f7d34a058167b4c99911dac98a134cfe68acaebb586ee0c53f47e89004fc85c9424770a559d5edc3f0d0785706527a3daba4d2904a045168761123c4b680055a753d12e43a23e8af3956b492c5abe7298e630b4f357da1cada2792272ac55bd68d6f58042797ee8cc858f5c32f883862b5dfc9b2bd92428209d8387488e0a18fcbe63c36d5d833681ad77dac8db45385397774f30a009743f3c672179d9f4d0f1dcdc31d519b107015b7216b6402a0c7e2f6273a187e96f9a1e5af159a49ce6b474a4065e988ab1d3e1a0ed3ff164e567db4767655f5de7062f4286b9a8cd4327cdb12189b1022e52d4c09a0035571ee8a8a1e4c9b59b381504fd462354698acaa779737c159fe1fc64e811c10f85b5c088de3362c49d9446fbb414ca3bb4a666adb1a095c34518ba64d136e1c4512442e0c4449cdaab385f299ea39391d9bfbccb7e9b27260aafb66238af182b243c1ae4e604886c818042a15b7e1b99e9c1d4b4a478a0d4e5dcb2fff85df43b1598571a114102fb6d5e796d181e4ff0c2c6e8817caffd3c781dbed1fc3eae940dbc275c453c32545965377b17e1ac982734c55146abe7915abbe5cafc1ca8cda99efd8e031ef7924dc3d604c0ce5200045e8e605d759e5c1e95394babd034d6b65d3b7b23c55d8dfb4c62b337439a8db50038e15f498e84484d6a211b3c602a5ee7387db9dd8daa6667eadf16d99fb042c0381d30c4f756dec593f4dbe836c826b68d5e038e9e8ed7657d01ecf18b59d6332accce07107841c81a2564b2668531fd78aa1f213dbc6291564853022dc095b18ed435dcb98f392c2edb3b9edcfee3c536e6aa98eaa9a2f4cd13e3fa84041b253ec1506dfa05fd77cacdff6acda025a55aa8628908f20ef12c41d16d4232cf3b4b377bc9b4ec14a274c1a3cc7a3fa5fb5db17a4470c2e9ace5129e8666ae09f93e6f4ab1822360e4581a864ed613391e88cf2a5f945146858536e99a760cb462b09a31b899e5d0a96f0a43a795f51551ef0b3793218f6ff6abb7b4cf20253bc81f6195b98ae93bfa0806a2fcdc79be6bccaf0fabe0eea2029641dc5baec84fc4172e7aec97d712f447fe6833b823e14917154f58a085a90fa4a65bb1e03f1ea0865da9b8000f8001f6c70c111664484a33f535318d9d582a45bc2f4ae6e561937c862fea4f9ab981f33e711868329100e7e1cbc66fa49d3d85b92ea534e35433a757490a45135b35565cc5da0c95331b239c9e3348b01e4cc8645b108d99f88d537ec4df8f2d04be81825f8b7b67c635a4cfe86a3b68ba1c7bd343f6f11c1f4db825d28ef6a8989d422793c58b87f3b67bbb85446c3ce834923a70a5cffef095abbee33e97edbcb23f1d0af478046f276a82a97df5577e313f50b460b27e94ad05c02cbc733a909d7a30b15f9424ac3d2687919b10c8325af2cae88291445a64737f9372a6326861a5539cd5390379d22acd163862b44902f131b6c6c9c39146b06d2e26ffee86f304cb202fbd687607eb813952008a3c834ec9689d609d867448738b6083039d7664e6b791f0956086a42fc892ffbef5f936cd1a2797c644fc17255712e97cbd6d0e286eed747efc939d2e5587c544ffc5b8499813b9a6c27af5a08d3486363716155da3a16aff95bec005049088a479e47cd6e5b03ab6deb308a2ae988f6d2a1b98c9ee8caf69cb9a1db22b6c92174dd430952e0e2cfd1f67977ad7600a9e581348f21aaee8053713fe3c8eb3775d8997d597087d3077dec07512f280a4530b0a915d66fdfb14bade77ce4e05a6938357da79bb2f3353cf243aab0980ae9af38b89ae1f6b05913f011f34ee8a6392fcc74ac180a6e9dfb72146696c253c58badab651bf421f193e25ea2555654855388df16bbb984d5842d46cc8984e97f6c56780726d932f67b10e6332d09b4195c16f00b5dc08a180a4a49e4047a60a33c47376134c0d2915ca4630b2c6636fa4630e751c923b02644c0b3a93058bfc8e8c169660ab9f28ca0209ab8270ae62bf6973c5dc7e8a8d3d4aa160fe1d106453031a64390ac63e2b773da5f2045f1041e7134627478e5c427f4ae57b2798d4b8720b5f01aa51d6a52201fc436efa5686913e01a523cc0de48c4df80adbb5fab3ebf1817baf00010d2d58e508f3c054658de7e4bf895414b006e1bfbcddaf12ed68fd7eaee38bace33fd5e87e6f55753632332ff1e63f0d2f93ffeac5a3e5b9bea7e562fc5f40555347e20df91d7c2669312004e5e5e98b8e887b715112eba25a3418a4d190560c10f092574a19de9bc534f8bfe023662bfae231ec91b814e21207601ffa45497dad9b20dde0432d70c2593b8754fa277cae48a8729f3a8022dc7122928cb74182508b6f8748e998d088a92a819175bb5ed756c75a9a59214c9dc6b2bc0cb196c1e06d598851203a3f40856245d03e110eb5def206b1515ac4edb94600b830cc5bc680f0d7e079be14cfe143554c5b4e22ef90ea4e80837020e03b9ec92ff487212eb23523ec63f196bd4cd88c7543b5b8eeb34884fc0e8d1b6845b9637d9b18f55f0383938b2b7ee72bfff7ec68b1feac80cb84a373c7ded23e2caf0e686aca8d5e593b2d1272efcd4a6a6619ba0698241db564571d864df88e33ec03df60e0ee60ecb7bc15d3f502f02afc726152712a1a9bff72eaf3692357087ede89fa4dce785c88b66cb8ed58225dad64ee6580006447c565e01824db1dc856b5cab980db3e4e411ddbcc7f4b01e3c1c2bf16ed43bd17f69adac52121fb35c5bcf7e5fc2bcdebbdf3ef6c1f0bd221ecdf578042fe5a964100d985affdf3769f749e6141168b5e482dce71fbe4cf61c058f26084a1ddd691cf9eb3d015623315f747816306c3d08b264a47f860776eef0453e271328cf4f4b4fafd8fd810957fa1a054450ec23e8192b76aae7867774ca5b6b52aeb07dd3a51d7b6c77e96c300c0af76a96797c26500be45324d53a2a48a48a7fa95de49e038f81231f4dae5c0fdbe07e808f09cd6ebe23ca372ccd497f277a6a76b3f1236768e453ab206fc6d0decb894ff78d54548e2a339236a313eb832b38e0d364747e4366585681b72c915e1a4904f02d106b0555e99daee2711df13f9954c34404e3850392e9050d53188f3c32ae54852a3782c9ab95614538bc221c5c55d533a9ad1aad71636b6fbfd35a1c40c700fe4fb74749e426c5eb67ed818ecaa741108f0a6c0e94f0cc552d9b20dbf3b24d5632440d8b6957cbabb799b7292e8ade874ba616deababc978b2b56d70eeba60124393f6ea5582303550a526ca877337377ecd8f74ad9213307b576215080b5285b8d9833803d4002cb07a3943695405fd6e5bcbe9b0bc07d5d2d3c53a3ccca7a3f1256665403535b3abffd70a678bc0dcb0570c5894f9395707eb48f7e259a4e4d9fa5bfd755a247fef03c3fd899c7d563a4283e5f7415584c6035bd63c3b69314d65faa018460b61a367dbd49b699d467a1b06897c1393a8442e8359064912fffb4d91833635148c9002219445f69b0912ca9e4af743c2ad4b48a8e4e84dedbdba37067bf8a628075f395b922cc5b5c5a1f412a13783474813d0330c317e7ac3fc3a796922fa41f0723199a031a02dc244c7081b77b14042c236fb6f74adff46aa97cc70265aeb828a6bba267d55ce7521b4f2dd611cee42fee5871671f1221fb8d2e73776941ea98bb95888dfb678d835acf5c9c0f0420a811a84478f9b6da5478050838684b86ad343c0a7886cfa89349ee5a5d10cc41955e97590bd649c143cad263ed1c7c1820f6f3be8c319c748e08e9026b9b43089bcb282fc3508ab897bd8f8d3ebbbb389decc484804c5d8068cda894438cfde0003d878720241c24abf4c585ae44ca297081960869b79315f519faae4128788dc3b5c9eb5e782ac2bfdc1704bafe294fe265b386638915180b14f771256b4b8d74d2e4c8516e14dbf766974643d52640413bf49a518238ed1bb48615712e41fbadf540305bc946c1200567187787188c56aeb8aa004fc713aa6d0ccf21e869fd15cb6ee7d1565eb77946ba4a48b32cf09d52f7753e7ae6cf062693cb499cc611c81bad125f943786d024547f021548804692675cd1bfcd12ba80666a2f2889e4eb0531ee059da7a2925d42d16d2d3d2e620f9bae90a42aee14d5791c9eb363832f275332fb1cab1b11a022473851c1099092b7daff72642a26a3ee3532f1141176c4998fbb48bf659de35eecc126390715221adc59487ee25e58fb4002b4c121622fbf92861604f5c5b24647467ca47f672ab2ac88a00d41cb334f1851cbbc01a84c00a0da6383f0cbea6c11d25f3a0ae40397905ec0d063388a7cf734792fa6446fb19590787ccaaca04299ac0645554a1380093949394f6c050416a23bd23324ecde17470f2b1a2dcb875bbbbe49d2f32f0622a506f0df3c59bdf3beb00255c0c282ddc48a9b0180ed83295957723cd41c5e19da2314644dcd349d12515fc37ce4553e4c5af0f99349d2078ce3bfcefd46e812c339d035b4ffe70e299c16004adc82a6aa4d0bf9d3de84e3214c1742c41b7b7a6296bd05c1bbe82bbab113cb0280d34ea99ffd95444b2419ff6f9c1d65a7623b8caf2d614642f0e091bcef4277648d32b25edee4f7b391b82b76b670e57dcae002dd8c96944def27c755fa8b46b75ef3acecbcde269cadc40a8baf0ecdc6070261d7d37132c30bd1cf5af6855ba20cc7bb9f81603f04d47fd518c28de9dbf3ea3b10967cb8c1e677861ee370476dacb7d9dc80d9adb505ab44e7dcd59cf3dfc1ea6bc6d82f8af1855a98239387eb1583d3510c6ca6f90d33d53acf409ccc8d045b913ba41170ca7aa532e571d6c0a4f6947c50adb118613ab41163588bfacf95ae13723e93425bcf215748c1d9989c7acc10b43c24019fe7400c2c3c144fff1020034bf5f7fc2e8ccc1bff99204b80a3762385ece21943ca1022ba805fd986dbd3d1551489e2980c2b64db337f91ec6691e70c07498e0a2f43d0d2af05116de59ba8baba1b9bf1026e21da2f959f0373b73a348198aef74bc4919c338fe1c4b498f93c91c47624588ba6af695d84efe65837f3b0a476b83ea8d8423456032e56eea802239676dc6158d67d0a6a821ed4b235ca06702017f1e8a20e09642eb64fe036c7a472ce8aec33995a3b057de5ed9e1b521e9505939991018c05cb870d1ba9c0e5db8589cdfeab92ff4227e928041fae92b4d20e0b5ff0b640d6016caeba4f1213fc65d3f9e6e1c31b0228fbafcb5e5f0bb010cd057e7995fa93fb4d194a526a223a390029a1660677f72d91800025926677687d22411f6f62d33ed86ac4c14c59dc7e3bddba610878d1a869d12d464402d0d79cce84f31976b56e3e5ba9576b41f57f387d17d7f5c61ab6f841ca304898cc66de3b3cdcb90e6c5ba53deb4f2da8a5f61d98fa78f12d8927facea8eb0e79926f3242fa798302a7f648ebb47deb9007bfb3ed179f2dc6d55e6d6d1ac6f9965852148836e0d5731be58c9b8d9204e6798109d7a27632b1081127ccc002bbc783c69067585c9f934aed2e95642a05f73f4bf09d60b15e1b43b412d42c286dbee1bc47760bb2ff73628afdaa3e02beb56f6cd4ffc55e86c570268d40ec025ec641157614bfca0eb043889aaae18a4e65e16a2da0ab75818635879eec1c01e4d5f3d3e5a9a1c5b7d1269a892842f5a72c42eb8b941eb071aea428f4ed769ba6b4563f5b6b0d8a83572ec045869f911d04305a72d6faa797f275cc2f0e9a765a0d94bd77fd06a90274273170ce56f62d98114ed7f887de0b75e7a000c21b1f643eead8ed84ff9cfcd5dfdb47f2586b4f3ffd5c707c084ffbdc5086ff1b462bf4bc5bfe58563cede8356665fa263c2448a199e8c70c5a7649570513a7f353d0397af514c1feaf2b4a6e8612824232921732d8e445940b8325b1d363a6e847a9d63ebb6545d03b7550c79a8389e7a111e0193d321a6e6816dd90b4b610f1a6644340864ead08096472e57b341471594474aa701afdca4513ff10c76f00bb1d84ea83a42cd193d9668f32b932fd4d94382d33bea9415cf78b8de754d1431ade314966d43aec4d1939c68335053754aeab4107e0fae6a547577757634ce54ec4f096d1d5671fabc18470e32d3393470acbea5dd1bcb7a5808cea1b7b8a34240405ba0da94a9cdbcfb95ccc32e00d4cd3fdee4fe7812329010a08acfdf8c48c64ec5e073e88a836166399ef8d279a46a7a054bbda69274276823bf85eac77d3bd1efcdb6ba7f565ed26784b5a9f8398dfc29cd9fc62489de89ea6623f3dd2ddbad7fd9c8f60154ff5abdfb23dd4a322a57f5dd591b27dc760c646ad730872eb2a2a0bfdf2bd733ce71f16675796bbaad671a7953f39c8b49a47686c33799c9112e8da53bdcc6da1dfb2cec68305b7faf2313f965056c7822d7f53fe53a5a5a276b5297fd5daa66cbb0c05545c0000faac852355bb1f93eac7ae62e1e570ffb3bfed47627f146467fb850ae82e3cbf1c42f8062ada2f2e394a599fb0e78b11a61ee2e67da6ef176dafff87145f576f01cbb656373a6a4e3f61603c12eb15cde143df6b2faf5944e7a0aabe24d5de5595b4a7cd0f0881f609a111fdef4f0c704ab98a5681d20475017c98ceeceb09752770290e7614844175605f486245f365de3823449c3eb485c64325e94b9cd5269c1bab8e8128ae88a8bcf27c407aeff8a7e32b44bbc50075c4584c61f77386cf3ffa6922a20e18a6a134d3987cd36d06fda926ab37bbdb980b7b4e73a38e1bde678d4a4d7972b68b666700aad93fb4dd863e4deeb8ab2c8eecaff2fcf874e9f1fb97b923b80f267a47d5775eab278b0317719e8dfc396a550088dd823db00fca0ec976a96985fa05b340727cd031982e8d9bf75e5919cbe6ceab08f775aa7802bb86209d10fb1034737074d1cebff35a33fd092cda1259b42407210bb88cb4457cfcf66b00eac03fb95c1cc8b896580aaf8104171ce1e09510303406923bb52a5df3b937eb3fe5c3ccae5d06bb1e1086bd37020e2dbea17b9f43d9100b770c38d377a27177c41e86c0e4c19ed900816a774b29221dfad5819d06b1510fddfaf1ff742e1b59da40057add2b505ba7f259725041ac14f2f529e81d1f7cadc2325f8dd8700a25e0b9f8fbafd6982cedc6c5d000000000000000000000000000000);
INSERT INTO `produkty` (`id`, `nazwa`, `opis`, `data_utworzenia`, `data_modyfikacji`, `data_wygasniecia`, `cena_netto`, `podatek_vat`, `ilosc_sztuk`, `status_dostepnosci`, `kategoria`, `gabaryt_produktu`, `zdjecie`) VALUES
(2, 'zmywarka samsung', 'zmywarka wolnostojaca firmy samsung', '2024-01-08', '2024-01-08', NULL, 3000, 1.23, 5, 1, 5, 'duzy', 0xffd8ffe000104a46494600010200000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080214025803012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a29b24b1c285e575441d598e00ac1bef18e9569958a46b971da21c7e678fcb3401d054734f0dbc6649e548d075676007eb5e7d7be36d4ae72b6cb1daa7a8f99bf33c7e95833dc5c5d49e65c4d24afeaec4d03b1e817de34d36db2b6fbee5c7f70617f33fd335cedc78b754be94246eb6d1938c4639c7d4ff4c573e16a7b65ff00484fad20b1dd5a93fd9b03bc93b48eb92c6e24cffe854eddfedcff00f81327ff001548836d95aaff00d331495421dbcf6927ff00c0893ff8aa5f3241d279c7fdb563fccd32971400ef3a71d2eee07fc081fe6297ed175ff3ff0071f947ff00c453314628024fb4dd8ff97e9ff158ff00f88a5fb65d8ff97b73f544ff000a8b14628026fb75e8e93a7e318ff1a3fb42ff00fe7b5bfe301ffe2ea1c518a009ff00b46fff00e7a5b7fdf86ffe2e97fb4ef47536e7fed9b0ff00d9aabe2931401686ab763ac5037e247f8d3bfb5eebfe7d61ff00bfc47fecb5531462802e7f6bdc7fcfac3ff7fdbff88a5fed89bbdaa7e131ff00e26a8e28c5005ffed96ef68df8482946b43bd9dc7e053ff8aaa18a31401a23594ff9f4b81f8a7ff154bfdaf177b79c7e0bfe359b8a31480d4fed7b7ee930ff008067f951fdaf69dccc3fed8bff008565e2971401a8357b33fc52ff00df87ff000a51aad9ff00cf461f58d87f4acaa31401ae353b2ff9f941f538a5fed2b1ff009fcb7ffbf82b1f14b401b0350b23d2f2dffefeaff8d385e5a9e97309ff00b682b13148514f551f9500740b344df76443f4614fae68dbc2dd6243f5514dfb25b8391045ff007c0a00e9e8ae67ecf10e9120fa28a3ca51d063e871401d3515cd6d61d25987d2561fd693f7a3fe5e2e3feffbff008d0074d45733e64cbd2e27ff00bfac7fad1f68ba5e97530fc73fce803a6a2b98fb6df0e97b2ffdf29ffc4d21d43501ff002f8fff007c27ff0013401d4515c769be24bf3e308747b9649609edda457da032b2fd382319aec6800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a4660aa5988000c927b52d667889f6787af8838cc447e7c50056bef16e936595139b8907f0c2377ebd3f5ae66fbc757d3e56ce18edd7fbc7e76ff000fd2b96c5281814864d7579757cfbeeae2499bb6f6ce3e9e95085a88dd423856321f4419fd7a0fc4d30cf337dc5541eadf31fc874fccd005b0b51bdddbc6c54bee71d5501623ea074aac62327fad7793d98f1f90e0d4a881542a8000e0014007da6e6560b0dbaa678dd337f45ce7f3158d7b7faa45772c5f6cd86272bfb98c283838ef93fad6fc4bfbc4fa8ae7b5319d4eecff00d367fe668039cb8f1ef8a2de3864fed695d4cd240a1ff8422a1ed8feff00e948bf12bc52bd3513f8a035cfea5ff1e1687fe9fee7ff004086a95023b15f89fe2b5ff98883f5850ff4a997e2a78a875bd43ff6c23ffe26b89a51401dd2fc56f128eb708df5893fc2a65f8b5e221d4c0df58c7f4ae045385007a0afc5ef100eb0d937d633fd0d4cbf1835def69a79ff00b64fff00c5d79d0a78a067a3afc60d67bd9581fa46e3ff0067a957e30ea9fc5a7599fa161fd6bcd453c5007a62fc62befe2d1edcfd2623fa54abf18ae3be8519ff00b7a23ff6435e6229e2803d417e313ff16823f0bc3ffc6ea45f8c31ff00168728ff0076e01ffd96bcb853851703d517e305a7f168d743e9229a917e2fe9bfc5a4ea03e9b0ff00ecd5e5429c29dc0f585f8bda2ff1e9baa2fd1233ff00b3d4abf16fc3c7adb6a4bf5817fa35791d3a8b81ebc3e2c7868f517cbf5b63fd2a45f8abe163d6e2e97eb6b27f415e3bc7a5181e828b81ecebf143c227aea522ff00bd6b2fff0013522fc4bf07b7fcc6547d60947fecb5e28557d07e549b17fba3f2a2e23dc57e22f845ba6b96c3fde0c3f98a957c7be1473c6bf63f8ca057846c5fee8a698d0f55145c0f7f5f19f861fa6bfa6fe37283fad4e9e29f0f3fddd774c3f4bb8ffc6be7530c67aa2fe54c36f0f7893f1145c0fa4d75ed19fee6ad60df4b943fd6a65d4f4f7fbb7d6cdf4957fc6be6336d07fcf08bfef814c36b6fff003c631f45145c0fa956e207fbb346df4606a4e0f4e6be5336907fcf31482de35fbaa47d188feb45c0fab71495f2a8dcbf7659d7e9338feb4f5bcbc8fee5fdeafd2e5ffc68b81f53e29315f2eaeb3ac27dcd6b535fa5dbff008d48be24f1027ddf10eae3fededa8b81f4e114d2b5f352f8bbc4c9d3c45a91ff007a6cff003a917c71e2b4e9afdd9fa853fd28b81f4732d46c2be795f883e2e5e9aec87fde8233fd2b42c7e25ebd1b0fb6ea33ca3fe994512ff35345c67acc43cbf89da1b67efc532ffe38c6bd2abc2bc27e3bd1b52f1968e2ea1d564be694c304924917968cea4721514d7bad020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800ac9f134524de1cbe58865847bb19c700827f406b5aa96afff00205bff00faf793ff00413401e306699ba6d41edf31ff003f8530c41ffd61327fbe723f2e829f8a76290c4029e05005380a060053c0a00a7a8a009211fbd4fa8ae775218d4eeffebb3ff335d2443f78bf515ceea7ff00213bcffaecff00ccd023cd752ff907da7fd842ebff0045c154aaf6a3ff0020db43ff00510baffd170551a0414e14da70a0070a9a5b79adca8963642c32030c1c536d65105d433150c23756c30c83839c63bd5dd52f96fe78e45329da854b4a72e72ccd9273cfdefcb03b5005214f14c14f140c70a78a68a70a0078a78a60a78a0078a92d8c5f65b9fb4b1fb460791e5fddcf7dd9e7d3a54628b7302c4e258c96c7753fa7bff9f6200e8bccd9fbcdbbbfd9e9520cf9d103c445809180c955ee40e327db22a1b71843c77a26c6f8f7fddcf3fa5004f784c577225906b8b718d9248046cdc739505b1ce7b9a42d209557cbca11cb6ee9f85555680dca6ef962c8dc33daacc86d7ce8becae0e49dc03138e3dc0f7a00a3fdb2bff3c0ff00df5ffd6a51ac21ff00962ff9d640c6467a56969f790daab2f9f2a032c721dabf782eec8ebfed0f6a044dfdb10f78dff4a77f6b425777972e3a6703fc6962d59091233a4721022032f848c7d38c9dabf7460e4e4565dc5cb48d22ab6622e4ae546704e7fc8a066bc37f14fbb62c9955c918eb41bc5ef0ce3eb19aced309592523aecfea2b48893ecaf309d72b81b4e32739e9f950030de47dd641f54353672323bd336c860f33cdfc303d714e072a0fa8a00864b986372aef861ec691268e52763038eb53c51493b4bb1946c5cf238eb8ebdbf1e2a36568e568df692bc657a50034d34d38d34d0030d30d3cd30d0034d34d38d2885de367552557ae3b5004469a69c69b40843494b49401bbe08ff9281e1cff00b0845fcebebbaf913c11ff002503c39ff6108bf9d7d774200a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400553d5ff00e40b7dff005ef27fe826ae553d5bfe40d7dff5ef27fe826803c671cd380a762940a450805380a5029e1680100a900a4029e2810f8c7cebf5ae7353ff00909de7fd767fe66ba34fbebf5ae7754653aa5e00727ce7e0727a9a0679aea3ff0020bb2ffb085dff00e8b82a855fd4c6cb5b7b6605668afae5a443c150c90819faed3f9550fc47e741228a51498f71f9d380fa7e7400a29c29a29c2801c29e298053c038ce38a063853c53403e869e2801c29e29829e2801e29c29a29c2801e29c29a29c2801e8c15b2515c7a367fa1a95e5474c0823439cee52738f4e4e2a014ea006f9687aa29fc2adc7a2dccd00992c4bc64160c132081d6abd68db6b9a85ada0b5866db080401b47439cf3ff00023fa7a500535d1a4906459a60e705954038193d7d8d553631142ff664da0e0b6c18cff907f2aeaa4f18dda46c90282c5b2249060a8eea00e9f5cfe5595a8eb777a9c7b2e3cbc6fdff00283d718f5f4ff1ea4920192b6f0c79d91a2e460e054c62b12b831499c0e840e71cfeb4da69a0088c31ff0074fe6697181814e34d34002476c7799bcd071f2ec34c9121461e4b48cb8e778c107f334a69a6801869a69c69a6801869a69c6986801a69f15ccd6e498a42b9eb8ef4c34d340168ea975c65d4e3fd915135f4a6329b63dac307e5ebd7fc4d4069b40843494a6928037bc0ff00f2503c3bff006108bf9d7d755f23f81067e20f8747fd3fc7fd6beb8a100514514c028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a9eadff206beff00af793ff413572a9eadff00206beffaf793ff00413401e3d4e1494e0291428a78a4029c2810a296928a063d7ef0fad7391ff0e6ba58143cf1a1ce19803f9d61db69e8d7088f2c8559802a08031f967f5a62679af88d4bf88aff006f4f39bf90aca3037a57d11a7f807c2da9e9905e5de90b2cf30669243712824ee2bd9fd00a95be17f8348ff90391f4bb987fecf408f9c7c96a5f25abe89ff8557e0d3d34b947d2f26ffe2ab2f5ef85be18b7d1ee67b582ee296342ca45d31e7f1cd00785f92d4792de94cd495ec75096de39d9d50e327ad578e6b891b6ac8d9fa52b8173c97f4a7081bd2a311de01feb7f3a426ed47fadcd302710bfbd384527a9aa7f69bd5ff9683fcfe14ffb6dc82712b63b74ff000a2e05af2e4f56a5d92ff79bf3aae350b803fd6b7e429cbaadc0ff00969c7ba834013ed987f137e74bfbf1fc6ff99a886af71cfcf173eb18a70d5e7c63743ff7e850049ba7ff009e8df9d289271fc6d51b6b13ff00d31fc221518d5a461bbf759f4298a00b225b8fef9a5f3ee3fbff00a0aabfdb0e3a88bfefd9a70d6589ff005701ff008091480b3f68b8feff00e8297ed371fdeffc74541fdb89ded6dcff00df43fad035a8c9cfd9203ff023fe34c0b1f699fd47e547daa6f6fcaa21adc1dec6dffefeb7f8d2ff006d5af436310fa4c68025fb54de8bf951f6997fba9f91a60d5ed36e4d8a63b91353ff00b4ec88ff008f16fc25ff00eb5001f6993fbabfad1f686fee8a4fed1b23d6ce51f493ff00ad4bf6fb13ff002eb37fdfc07fa500279e7fbb48663fddfd694df5863fe3de71ff00031fe14dfb6d8778a71f422800f33fd9fd69bbff00d93f9d06fb4ee9fbf07e8290ddd8767947fc068002c3d0d3091ef4efb4599e92bfe2b4d33da7fcf63ff7cd002123de9a48f7a5335b7fcf6ffc7693cc80f4907e5400d38a69c7ad4842e7839fc29c2de561958a423d421a0083f1a4e3d6a468d97ef2b03ee298768eaca3ea6803a3f87a11be21e805dc28178a7241e4e0e0703d715f5a57c97e0008ff00103410aca4fdb10e01f435f5a50014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154f56ff009035f7fd7bc9ff00a09ab954f56ff9035f7fd7bc9ffa09a00f21c52a8e28c5385218a296814b40c28a5a28025b5ff8fb87fdf5fe759b6dff001f917fbe3f9d69daff00c7dc3fefaff3accb6ff8fd8bfdf1fce811e83e1e3ff14f597fbaff00fa31ab44d66f874ffc53d63fee3ffe8c6ad3eb5421b589e2d94c1e14d4e51d52063fa56d9ac4f174125d784b5586152d23db38551d49c1c0a00f95407ba959db25dcd759a378698c5e6caa7245278574169e517132111a9c2823a9af5ad2fc3ece8af3a8441d17b9a919e74de19965e22858fbe0d5793c177c4f309fc057b7476b1c4a151000294c433d053b01e10fe0bbd1ff002c4fe550b783ef87fcb06fcabdecc4bfdc14d302e3eeafe54580f016f0a5e2ff00cb16fcaa26f0cdd29f9a071f857d01e421fe05fcaa26b588ff00cb24cfd2803c00f87e60798d87e14d3a0cbdd187e15eef2d942739850ffc06a8cda74183fb84ff00be45203c50e8729e81bf2a89f43954f438af5cb8d3610722251f8553934f8b39d8bf96280b1e5a745971d0fe549fd8d27f75bf2af4e3611138d8b51369d103c463f0a02c79aff63cbd851fd8f367a1fcabd27fb3e2ee8293fb3e2e86314058f363a44c3b1fca93fb267c74af4a3a745fdce3e947f6747fdde280b1e709a44e470a69dfd8f703f84d7a3269d083c2d3ce9f1f5da280b1e6dfd8f703f84d1fd953838039af4836319fe1a5fb0463f8680b1e6e34db81d8d3d6caed7a035e8474f8c9cecc521d3e3f4a02c70b1db5e640c1ab4b657646763576496310e7156e2b788755fce80384165760f28d8fa54c9a64f30c2e41f4aef85bc078c0a77d9adc1e983f4a00e2ed7c11e20bd20dba654f72d8af41f05780f54d2ef96e75286ce7880e629230f9fc48ab9a46b234b90061ba3cf3eb5e87a4eb161a9463c991777f74f5a603869b64143c5690a29fe111818f6acfd6309e5228dab82401c0ae80a05cf1f29eb5cf6bd859e319fe1a0463b633c806a26443d517f2a7b1a6374a0663681f27c66b7441b17fb358955e01e5bfc057af5790f87ce7e33c3eda59ff00d09abd7a81051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400553d5bfe40d7dff005ef27fe826ae553d5bfe40d7dff5ef27fe826803c8e9c292945218a29d4829475a0618a5a28a0096d7fe3ee1ff007d7f9d665aff00c7ec5fef8fe75a76bff1f90ffd745fe75996bff1fd17fbe3f9d0077fe1cff917ac7fdc6ffd0dab4eb37c3e3fe29eb1ff00ae6dff00a1b56955122535806041190474a75211401971e85a6c372675b45df9cfb67e9577cb83fe79feb4f6a61a00431c3fdc3f9d34c701fe06fce949e69a4d0313ca80ff000b7e74d30c1e8df9d2d148061b783fdbfce9a6da0ff6ff0031521a6934010b59db9eee3f2a85f4eb761f79ff004ab468a60673e8b6edff002d24fd2a16f0f5bb7499c7e02b5b3452b01887c3307698fe2b487c3111e93fe6b5b94b9a2c0609f0b29ff96e3fef9a6ffc22be93affdf35d166941a00e6ffe1153da74ff00be68ff008451fb4e9f8a9ae96973401cc7fc22b283c4d1fe468ff845a7ff009eb19fc2ba8a33401ca9f0b4f9ff00591521f0b5c1e8f17e75d5e68cd007247c2b758e1a3fce987c2b77ff004cbf3aec334668038cff00845af07fcf3ffbea8ff8462f07409ff7d5765484d00719ff0008e5f8fe14ff00beaa36d0350ff9e4bff7d57684d349a2c0710da16a5ff3c07e74f834dd52d650e913ab039ca9aec49a8c9a2c05ad13c41788041a940ecb8e25039fc69baaddc77575ba204201819ef54c9a613400d34c6a79a6350063786f9f8d23db4cfea6bd7ebc87c2fcfc6797db4cfeb5ebd40828a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a9eadff00206beffaf793ff00413572a9eadff206beff00af793ff413401e494a293bd2d218e14e14d14ea061452d140125affc7dc3fefaff003accb41fe9d0ff00be3f9d6a5aff00c7e43fefaff3accb4ff8ff0087feba0fe7408efbc3ff00f22fd87fd723ff00a13569d66787ff00e45fb0ff00ae47ff004235a75421290d2d3588a006354669ed51b500349a69a71a61a430cd2668269b400139a292929805252d36800cf345252d002d2e69b4b400e069734ca5a007e452e699452024cd19a6034a2801f9a29b9a33400ea4a4cd213400ecf14c27de8cd2134c009a6134a4d349a006b1a8cd389a8c9a00434d34a4d34f348069a8cd3d8d46c68032fc27cfc66b9f6d2fff006615ebb5e45e10e7e325efb6963ff425af5da0414514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154f57ff9035f7fd7bc9ffa09ab954b57ff00902df7fd7bc9ff00a09a00f25a5a2945218e14b48296818b4514b40125affc7dc3fefaff003accb31ff13087feba0fe75a96bff1f70ffbebfceb36c87fc4c21ffae83f9d023bcd03fe45fd3ffeb8ff00ecc6b4ab37c3ff00f22f69ff00f5c7fa9ad135420a4a0d21a0069a889c5486a33400c34d34e34d348634d3694d25300cd250692800a69a5a4a00296928a005a51494a2800a5a4a5a005a28a2800a506928a007d2525148028a4a0d300a69a5a693400530d389a613400c3d69a4d29a61348069a434a4f14d26801ac6a334e634c34019de0be7e316a5eda58ffd092bd72bc8fc0fcfc60d58e7a698bffa1257ae5020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aa5abffc816fbfebde4ffd04d5daa5ac7fc816fbfebde4ff00d04d0079353853053e9142d2d20a70a005a292968025b5ff008fb87fdf5fe759b65ff21187feba0fe75a56bff1f90ffbebfceb36cb9d461ffae83f9d023bdd03fe45fd3ffeb80fe66b42b3f41ff917f4ff00faf75feb5a154210d34d29a43400d3d29869c69a6801869869c69a690c61a4a53d6929808690d0692800a4a0d1400514514085a05145031696929680168a4a5a0028a28a005a4a28a002928a4a0029a694d34d0021a61a7134c26801a6984d29a69348069a6934134c3f4a00434d34a69868028f8139f8bdac9f4d357ff424af5caf23f00f3f16b5c3e9a7a0fd52bd7281051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400552d63fe40b7dff005ef27fe826aed52d63fe4097dff5ef27fe826803c9453c534528a431c29d4d14b40c5a5a4a5a0096d7fe3ee1ff00ae8bfceb3ac7fe4250ff00d7415a36bff1f90ffbebfceb3acbfe4250ff00be2811dde83ff200d3bfebdd7fad68550d0bfe401a77fd7b255f3542129a69c698680118d3334e26986801a69a69c6987a5218d34da5a4a6021a4a5349400949451408052d20a5a005a2929450316969b4b400b45149400ea2928a005a4a2928016928a4cd0025349a5a69a004351934e6a8c9a4021351934e2698d9a00693cd349a09a6e68010d34d19a69a00a9f0fb9f8afe20f6b18c7ea95eb95e47f0ec67e29f888fa59c63ff0041af5ca0414514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154b58ff9025fff00d7bc9ffa09abb54b59ff009025ff00fd7bc9ff00a09a00f2614b4d14ea450e14ea68a70a005a292968025b5ff8fb87feba2ff3aceb1e75287fdfad1b5ff8fb87fdf5fe759d63ff0021287fdfa04779a1ff00c8074eff00af64fe557cd50d0cff00c4874eff00af58ff00955e3cd508434d2714e26986801ac69a4e694d34d031a69a79a71a61348069a4a534da6021a4a53494084a4145140c2969b4bda810e14520a5cd002d2d3696818b45145002d149450014668a4a00292969b408426984d389f7a61340c69a61a71e9519a40358d464d389a61340084d3294d34d00349a631a71eb4c6a0083e1c73f13bc467fe9d621ff00a0d7ae5791fc35e7e24f894ffd3bc43ff41af5ca0414514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500154759ff009025ff00fd7bc9ff00a09abd54759ff901dfff00d7bc9ffa09a00f26a70a68a514863c53853453a81852d2514012daff00c7dc3fefaff3aceb1ff90943fefd68db7fc7dc3fefaff3aceb1ff908c5fef5023bcd13fe405a77fd7ac7fcaaf1aa3a27fc80b4effaf48bff0041abc6a8434d349c5389a613400d34d2694d349e690c43519a79a61a00434da5a4a602521341a42681099a4cd0692818ecd149466801d4b4d14b408752d3452d002d1494503168a28a00283494500069a4d29a69a0421a6134e34c2690c69a8da9cd4c6a0061351934f34c26801a6984d38d30d0021a631a7734c6eb4011fc33e7e23789cffd31887e8b5eb75e4bf0c39f1ff8a0ff00b110fd057ad5020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aa3acff00c80eff00febde4ff00d04d5eaa3ad7fc80efff00ebddff00f413401e4a29c2994e14863c1a70a68a5140c7514514012db1ff004b87fdf5fe759b63ff001ff17fbd5a36dff1f70ffbe3f9d67589ff004f8bfdea0477ba31ff00891e9dff005e917fe822aed52d1bfe409a77fd7a45ff00a08ab879aa1086a3269e4d30e2801a69a6949a69348634d34d2934d2698086909a0d213408434da5269a68181349499a2900ea29b9a5cd301c0d2d36945003852d3734b9a00751494502168a4a28016928a4a000d34d2934d340c43519a71a61a4023544c69e4d46c6801a69869c6984f3400d34c34e34d340084d318d389a8dcd0027c2de7c73e2a3ed10fd2bd6abc9be14f3e32f159f4310fe75eb340828a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a8eb5ff00203bff00faf77ffd04d5eaa3ad7fc80aff00febde4ff00d04d007920e94e14c069c290c78a70a68a70a062d2d25140125b7fc7e43fefaff3aceb2ff8fe8feb5a16dff1f70ffbe3f9d6758ffc7f47f53fca981dfe91ff00206d3ffebd21ff00d0055c26a96927fe24da7ffd7a43ff00a00ab99a648d26a334f24d466818d269bf8d2b5349a402669a6949a69a602134d26949a69a00426909a0d34d200cd19a4cd1400b4a2928a00753a9b4b4c05cd2d3696801c28a4a280173451c628a000d251494001a6934a69a6801a69869e6986900c6a8c9a7b62a33400d34c6a71a61a0069a69a71a6f140086a36a90d31fa5001f09b9f1678b8ffd3487ff0066af58af28f84633e25f179ffa6d08ff00d0ebd5e81051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400550d6ffe4057ff00f5ef27fe826afd50d6ff00e405a87fd7bc9ffa09a00f2314e069a294521920a70a6034e140c752f6a4a3b5003edbfe3ee2ff007c7f3aceb1ff008fd4fa9fe55a36dff1f517fbe3f9d66d8ffc7e27e3fca981e81a4ffc81f4ff00faf387ff004015698fbd55d2f8d234ff00faf487ff0040156989f5a648c34c63e94e26a32690c434ca534dcd300269a6949a61340084d34d04d3734001a4268269b9a402e68cd3734b400ecd029b4a2801c29d4ccd3b3400b9a5a6d3a801697f1a6d2d30168cd251400514949400134d2694d34d2010d30d389a61a006b1f7a8da9e6a33400d34c34e34c34009494b498e28013f0a89fa5486a37e9400ff0084233aef8c1bfe9e611ffa1d7ab5795fc1ff00f90b78b8ff00d3dc63ff0043af54a041451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015435bff900ea1ff5ef27fe826afd50d73fe403a87fd7bbff00e826803c8853a9829f48a1c29d4d14ea043a8a41450324b6ff008fa8bfdf1fceb3acbfe3f13f1fe55a301c5cc7fef0fe759b647fd2d7f1fe46811e81a67fc82ac3febce1ff00d005596e6aae9a7fe25763ff005e907fe8b15649aa01a6a33d69ed519a4034d349a534ca6004d349e294d309a00434da09a4cd20034da534dcd0014b4945002834ea6d28a00514ecd368a007669c29829d400b9a334829680173c519a4a28017f2a6e696928010d21341a43400d34d278a71a61e9400d26a334f34c3400c34d34e34d22801b494ec5211400d351bf4a94d46fd28024f83dcdff8b1bd6f947fe855ea75e5bf0707fa478a9bd750c7fe855ea540828a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a86b9ff201d43febddff00f41357eb3f5cff00900ea1ff005eefff00a09a00f2214e14d14e148a1e29d4c14e14085a5a4a5a00741cdc463fda159d67ff001f43e87f91ad084e2e23ff007856759ffc7d8fa37f23401e83a771a5d88ffa7483ff0045ad4e4f155f4fcff66d971ff2e907fe8b5a9c9c5301a4fbd30d389a8c9e698086987ad2934c2680026984d2934d26900869b4a69b4001a6e694d37bd002834b9a68a5a00752834da51400ea5a6d2d003a969a2973400ecd14945002d14945002e78a4a292800cd34d2d34d0021a6934e34c3400d34c34f34c3400c34da71a4a004a4a5a280194c7e9521a8dfa1a0097e0d8e7c4edeba89feb5ea35e61f06bfd4f890faea4dfd6bd3e81051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400567ebbff200d43febddff0091ad0acfd77fe401a87fd7bbff0023401e454e14c14e148a1e29c29a296810b4b4828a00743ff1f09fef0acfb3ff008fa1f46fe46b421ff8f88ffde159d67ff1f3f837f23401e81a7ffc832cbfebd20ffd16b53b1155ec08fecdb3cffcfa41ff00a2d6a66a6035aa334f351b7d698086a3269c4fbd464d200269a6834da000d25213484d0004d36826933400b4a29b9a506801f4b4dcd2e6801d4b4da506801d4b4da5a0070a2928a005a2928a0053452514009486969a68003d29869c69868010d30d38d349a0069a6d38d25002514b41a006114c71c54951c9d0d004df0687fa0f881bd7527af4eaf33f833ff209d71bd75292bd3281051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400567ebbff200d43febddff0091ad0acfd77fe401a87fd7bbff002a00f2114e14da70a450e14ea60a7502168ed494b400f84ffa447fef0acdb3ff008f8ff80b7f235a10ff00c7c47fef0acfb4ff008f8ff80b7f23401e8163ff0020eb3ffaf587ff0045ad4cd50d89c69f67c0ff008f587ff45ad4aded4c0631a8cfd69cd51b1e2980d26984d2b1a61348009a6134a6984d00266909a09a6e68003466933480d003e9734c06973400fcd2834ca506801e0d3b351d381a007834b9a68a51400ecd19a6d2e680168cd251400b9a4cd149400b484d2507de80109a61a71a69a0069a434a690d0034d2529a4a004a5a28a00435149d0d4d8f6a8a4fba6802cfc181ff00121d5dbd75293f90af4aaf36f82fff0022cea67d75397f92d7a4d020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800acfd7bfe401a87fd7bbff2ad0aced7bfe45fd43feb83ff002a00f22a70a68a70a450a29c29b4b4085a28a4a007c5febe3ff785675a7fc7c7fc05bf91ad08bfd7c7fef0acfb4ff5e7fdc6fe46803d02cb1f60b4e3fe5d61ff00d16b52354569c58daffd7ac3ff00a2d6a4626980c635131a7b1a8d8d00318d3334e63519340084d349a0d349a000d266909a4cd0004d1484d203400ecd3b34ca5cd003b34e14ccd283400fa514cef4e1400ecd381a60a5cd003e9734dcd1400ecd14dcd2d002d2519a4a003345252500069b4a69280129a69d487eb400d345045277a005a28a28013151c83e53529a8e41f21fa5005af82dff00228df37aea537f25af47af39f82bff002255c9f5d4663fa2d7a35020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aced7bfe45fd43feb83ff2ad1aced7ff00e45fd43feb83ff002a00f2114f14c14e148a1d45028a005a2928cd021f17faf4ff00785675affaf3fee37f235a317faf4ff785675aff00ae6ff71bff0041340cf40b4ff8f2b5ff00af687ff45ad3d8d456bff1e76dff005ed0ff00e8b5a7b7b5508631cfa544c7b53d88a889a40349351934ac41a613400134dcd04d349a00426933484d26680173cd029b9a01a007e69734ca5cd003b34e14c1d296801f9a5078a6034ecd003c1a334ccd385003c1a334dcd2e6801d9a334dcd1400e273de8cd368a005a4a29334001a4a5a4a0043494a6928010d2529a2800a2814bda800a8e4fb87e9525325ff0056df4a00b5f0587fc50b21f5be94ff00e835e8b5e79f05c7fc5020faddca7f957a1d020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aced7ff00e45fd43feb83ff002ad1acdf107fc8bda87fd707fe5401e4229e2a314e148a1f4b4d14b400b499a5a8e591225dd23055f53d05004d17fae4ff0078567daffad6ff0071bff41357a13996320e412306a85b7fad7ff71fff00413401dfdaff00c79db7fd7bc3ff00a00a731a6db9ff0045b71ff4ef17fe80287eb54218c6a2634f6e95131a40318d464d398d309a004269a4d04d349a00426933484d266801d9a4cd213499a007669d9a666973400f069734c069c0d003c1a506a3cd381a007834b4c069d9a0078345373466801d9a334dcd2d003b3499a4cd19a005a2928cd002d25149400514514009451450014a2929d40054737faa73ec6a5a8ae78b790ffb26802f7c1918f87b09f5b890fea2bd06b81f83831f0eed7de590feb5df5020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800aa7ab5b4977a45ddbc40192489954138c922ae51401e20f1bc52347229575255948e41a0574de3bb78e1d796440019a10cd8ee7247f202b98148a1c29c29829c28016a781432b86008f7a82ac5b746a00a92e98236df67335bbe738032a7fe0278fc47359f652bb5cdcc5242f1c908746dc383f26e183df820fe35d03561fdb259f5cd4e190e5238d0afb7ee71fc957f2a0477f6e7fd1601ff004c22ff00d0050c692127ecd0e3fe7845ff00a00a47269811b9fcaa1635239cd42c6801a4f14c26958d309a00434d268269a4d00213499a09a4cd002e68cd266933400ecd2e69b466801f9a5cd3734a3a500381a766980d3bf1a007034b9a666941a009334669b4b9a00764d19a6e6806801d9a334da5a007668069b4b400b45251400b499a28a003ad14514000a70a414a28016a1bce2ce63fec1fe553d56bf38d3ee0fa46dfca8035fe102e3e1cd8fbbc87ff001eaeeeb88f84831f0df4dfac9ffa19aede8105145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401e77f103fe4316dff5ee3ff4235c98aeb7e207fc85edbfeb87fecc6b92148628a5a4a2818fab16dd1aaaf7ab36df75beb40133573908c7887583ff004cd7ff00459ae91ab9d4e35dd5bfeb98ff00d15401e8710c41175ff531ff00e8029afd6953fd547ff5ca3ffd00535ce7d298885c9a858d48ddea263400c26984d398d464d0021e69a4d2934d268010d1494940c5a28a4cd002d28a68a51400ea5cf14cef4ecd00381e29734d06973408752834d06945003f34669b9a5cd003a8a6e6973400ecd19a4cd1400ea514d14a280169693345002d145140052d252d0014e14da51400f155353e34bba3ff004c9bf91ab60554d58e348bcf685ff91a00dff85031f0db49f7121ffc7dabb4ae3fe160c7c36d1ffdc7ff00d0dabb0a04145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450079e7c40ff90bdaff00d70ffd98d7235d6fc41ff90b5aff00d70ffd98d7254863a8a4a2818eab36bf75beb556ad5afdc6fad004cdd6b9e5ff0090deac7fe998ff00d155d0b573ebff00219d5bfeb9ff00ed2a047a08ff005483fe99c7ff00a00a89cd484908a3fd84ff00d0454121a60318d42d4f6351b1a006134c34ad4d26801334d34a69a68188693ad2d25002d25149400a0d28a4a2801c2969a297bd002d2e69bde96801c0d3a994b9a043ff001a334da2801d9a5069b9a506801d4b4dcd283400e14a29b91ea283220eaea3f1a007d2d576bcb64fbf710afd5c0a89b57d353efea16abf5997fc6802f5159a7c41a32fded56c87fdb75ff1a8dbc53a0af5d5ecff000981a00d7a5ac17f1978763386d5adff00024ff2a89bc79e1a4ebaa21fa46e7fa5007474a2b9493e23f85a3196d458fd2090ff00ecb5037c51f0b83f2dd4edf481bfa8a00ed075aa9acf1a25f1ff00a60fff00a09ae49be2af8717a7db1be90fff005eab5efc51d0afac27b48e1bd0d346d187688606463279e9401eb9f0c86df871a2ff00d7127ff1f6aeb6b98f87cb6d078274db4b6d42daf8411ec796ddb2b9c938e791d7b815d3d020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803cf3e20ff00c856d7feb87fecc6b9115dcf8f34bbcb8961bd86132431c7b5caf25792738f4ae141a4343a8a4a5a06156ad7fd5b7d6aad5ab6ff0056df5a0098d72ada959c3e25d52ce5b848e778b2aae71bb31e38f53ed5d51acfb9f0e68bacde29d4b4f8a724aa97e55b1f5183408ea26d42ca3003de5b8c2a8e641fdd1ef5425d734a53f36a5683eb3aff008d73b71e03f09c3752c69a382aad81bae65ffe2a9abe0bf0b29ff902427eb3cc7ff67a606cbf893435fbdac580fadc27f8d5793c59e1f5ebac591fa4c0d535f0a78693eee876bf8973fcdaa55f0fe829f7745b01f58437f3a4023f8cbc3cbff31583f0c9fe950378dfc383fe62687e88e7fa55b5d23475e9a3e9bff8071fff0013520b0d397eee99a7afd2d231ff00b2d0065b78f3c383fe5fc9fa42ff00e15137c40f0f8e9732b7d216add105b2fdcb4b65ff0076041fc854ab214fb9f2ff00ba31401cc9f883a213f20ba7ff00761ffebd27fc27960dfeaec3527ff7601ffc55753f6a9c749a4ffbe8d06ea63d6693fefa3401cc0f1907ff0055a16aeff4b7ff00ebd2ff00c2557cff00eafc2fac37fdb06ff0ae8cccc4f2c4fd4d377d0073dff0926b47ee7847533fef230ffd9697fb7bc44df73c25743fdf971ffb2d741ba82d401cf7f6bf8a9c7cbe1955ff007ae97ffad47f6878c9beee8366bfef5da7ff00155d16ea3750073df6af1b31e34bd313eb3a9fe4f46ff1bb8ff53a447f5727f931ae877d1be8039df27c6eff00f2f5a3c7ff007d9ffd94d1f61f1ab75d674a4fa46c7ff64ae8f7d1ba8039cfecaf18b7def11d92ff00bb067ff64a41a1f89dbfd678a40ff72dc7ff005aba4dd46fa00e73fe11ad71beff008b6e47fbb6ff00fd951ff08a6a2df7fc5ba89ff7508ffd9eba4dd49be8039bff00843653feb3c4dab3ff00c0b1ff00b31a3fe106b56ff59ac6acff00f6d80fe86ba4dd46ea00e6ff00e100d25befdeea8ff59d7ff89a55f87ba00fbc6fdbfdeb81ff00c4d7481e97750073ebf0ff00c383adb5c37fbd39fe952af813c343ae9c5beb3c9ffc556e06a706a6063af82bc34bd3498ff19a43ff00b354abe11f0e2f4d1edff1673fcdab50353b750163397c31a02ffcc1eccffbd1e7f9d4cba0688bf7747d3c7fdbaa7f855bdd46ea0085748d257a695603fedd63ff000a996c6c13eed85a2ffbb020fe94a1a9775003d5214fbb0c6bfeea014e2ff29c71516691db084fb5006a7c275260d6e4393baec0cfd01ff1af45ae03e12ae7c3fa84bfdfbe7fd157fc6bbfa04145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015cb6bbe0cb6d4375c596db7b93c95c7c8e7dc763ee2ba9a2803c5af2c6e74eb96b7bb85a290763dfdc1ee2a0af65d434db4d52dcc1770ac8bd8f753ea0f6af3cd77c2377a56e9edf3716a39dc07cc83dc7f51fa521dce76ad5b7fab3f5aa956adbfd51fad0326a585b170a7d185369a870e3fdea009ee1b75cc87d5aa2cd3e4fbe4d47400669a4d2e6928013346690d19a042e69334949400ecd26690d373400ecd2669a4d19a007e68ce6999c519e2801e1a9437351e68079a0649ba8dd51e697340893346ea8f34b9a00933499a6668cd003f751baa3cd19a007eea5dd51e68dd40126ea76ea87752eea009835286a8775383503260d4bbaa1dd4bbb9a0098b7346ea8b75283401306a5dd50e69775004bbaa2b9936db48de8a4d1baaa6a526cd3e73fec1a00edfe16c3e578315ffe7adc48ff00c87f4aed6b9cf01dbfd9bc13a5a1182632ff00f7d313fd6ba3a64851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401cb6bbe0cb6d4375c58edb7b93c95c7c8e7fa1f715c3c96773a7caf6f7513452a9e87b8f51ea2bd86b1f5bf0f5beb0bbc9315ca8c2c83d3d08ee281dcf35a62fdf51fed55dd434cbbd2e7f2aea32bfdd71cab7d0d528f9953eb9a432593ef1a8cd3e43f31a8c9a004a33484d34b5021c4d25373484d002e68cd34b534b5031e4d349a696a42d400ecd26699ba8dd400fdd46ea8f70f5a69957fbc3f3a0097346ea62866fbaa4fd054ab6b72df76da66fa464d0213751baa65d37517fbba75e37d2073fd2a55d13576e9a5de7e30b0fe940153752eeabebe1cd69ba69b71f8ae2a55f0aebcdd34d93f1741fd68032b751bab64783b5f3d6c40facc9fe352af8275c6eb0c4bf5947f4a00c1dd49baba45f01eb4dd5ed17eb2b7f45a917e1feaa7ef5cd98fa331ff00d9680b9cbeea37575abf0f6f8fdebdb71f40c6a45f875707ef6a918fa404ff00ecc280b9c7eea50d5da2fc39fef6ab9fa5be3ff66a957e1dc23ef6a329fa4607f5a02e70fba9435778bf0f6c87debeb93f40a3fa548bf0ff004c1d6eaf4ffc0d3ff89a02e703ba94357a12f813495eaf74df5907f854cbe0ad157ac5337d653fd2803ce3753b35e94be10d0d7fe5cc9faccffe352af85f455e9609f8b31feb405cf30ddc51bebd4d7c3ba3affcc3adcffbc99fe752ae8ba5a7ddd36cc7fdb05ff0a02e79317154356667b268d016790850aa324fd2bdb574eb24fbb676ebf4897fc2a648628ce522453eca0530b906996df62d2aced718f26048ff002502ad5145020a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28021bab582f20682e2259236eaac2b90baf02badc79965769e5f64941c8fc475fcabb5a280384ff8416f58e5af201f404d3c780663f7b5241f4849feb5dc51401c50f87ffded4cfe107ff654f1f0fe0fe2d4253f48c0feb5d951401c92f802c7f8ef6e8ffbbb47f4a9078074a1d6e2f1beaebffc4d7534500734be05d1c75372df593fc0548be09d0c75b795beb337f435d0d140184be0dd057fe5c73f599cff00ecd52af857435e9a7447ea49fe66b628a00cc5f0e68abd34bb43f5881fe752ae8ba52fddd32cc7d205ff000abd4500565d3ac93eed9dbafd2251fd2a658a34fb91aafd0629f45001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007ffd9),
(3, 'zmywarka beko', 'adadasdasd', '2024-01-09', '2024-01-09', NULL, 3100, 1.23, 3, 0, 5, 'duzy', ''),
(6, 'lodówka beko', 'drfsdfsf', '2024-01-09', '2024-01-09', NULL, 3100, 1.23, 3, 0, 7, 'duzy', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `page_list`
--
ALTER TABLE `page_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategoria` (`kategoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page_list`
--
ALTER TABLE `page_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `fk_kategoria` FOREIGN KEY (`kategoria`) REFERENCES `kategorie` (`id`);
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"testowa\",\"table\":\"page_list\"},{\"db\":\"testowa\",\"table\":\"test_baza\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-07 13:35:57', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pl\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `przychodnia`
--
CREATE DATABASE IF NOT EXISTS `przychodnia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `przychodnia`;
--
-- Database: `przychodnia_online`
--
CREATE DATABASE IF NOT EXISTS `przychodnia_online` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `przychodnia_online`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dokumentacja_medyczna`
--

CREATE TABLE `dokumentacja_medyczna` (
  `ID_DOK` int(11) NOT NULL,
  `PESEL` varchar(11) NOT NULL,
  `ID_LEKARZ` int(10) UNSIGNED NOT NULL,
  `ALERGIE` varchar(150) DEFAULT NULL,
  `HISTORIA_CHOROBY` text DEFAULT NULL,
  `OPERACJE` text DEFAULT NULL,
  `ID_RECEPTY` int(10) UNSIGNED NOT NULL,
  `SZCZEPIENIA` varchar(150) DEFAULT NULL,
  `WYNIKI_BADAN` varchar(150) DEFAULT NULL,
  `ZALECENIA_LEKARSKIE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz`
--

CREATE TABLE `lekarz` (
  `ID_PRACOWNIK` int(10) UNSIGNED NOT NULL,
  `SPECJALIZACA` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent`
--

CREATE TABLE `pacjent` (
  `PESEL` varchar(11) NOT NULL,
  `IMIE` varchar(45) NOT NULL,
  `DRUGIE_IMIE` varchar(45) DEFAULT NULL,
  `NAZWISKO` varchar(45) NOT NULL,
  `NUMER_TELEFONU` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paragon`
--

CREATE TABLE `paragon` (
  `NR_PARAGON` int(10) UNSIGNED NOT NULL,
  `KWOTA` float UNSIGNED NOT NULL,
  `METODA_PLATNOSCI` enum('karta','gotowka') NOT NULL,
  `LISTA_PRODUKTOW` varchar(150) NOT NULL,
  `DATA_WYDANIA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `ID_PRACOWNIK` int(10) UNSIGNED NOT NULL,
  `IMIE` varchar(45) NOT NULL,
  `DRUGIE_IMIE` varchar(45) DEFAULT NULL,
  `NAZWISKO` varchar(45) NOT NULL,
  `LOGIN` varchar(45) NOT NULL,
  `HASLO` varchar(45) NOT NULL,
  `STANOWISKO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recepta`
--

CREATE TABLE `recepta` (
  `ID_RECEPTA` int(10) UNSIGNED NOT NULL,
  `DATA_WYSTAWIENIA` datetime NOT NULL,
  `DAWKOWANIE` varchar(100) NOT NULL,
  `LEKI` varchar(150) NOT NULL,
  `ID_LEKARZ` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyta`
--

CREATE TABLE `wizyta` (
  `ID_WIZYTA` int(10) UNSIGNED NOT NULL,
  `PESEL` varchar(11) NOT NULL,
  `ID_PRACOWNIK` int(10) UNSIGNED NOT NULL,
  `NR_SALI` int(11) NOT NULL,
  `STATUS_WIZYTA` tinyint(4) NOT NULL DEFAULT 0,
  `TERMIN_WIZYTA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dokumentacja_medyczna`
--
ALTER TABLE `dokumentacja_medyczna`
  ADD PRIMARY KEY (`ID_DOK`),
  ADD KEY `PACJENT_DOKUMENTACJA_idx` (`PESEL`),
  ADD KEY `LEKARZ_DOKUMENTACJA_idx` (`ID_LEKARZ`),
  ADD KEY `RECEPTA_DOKUMENTACJA_idx` (`ID_RECEPTY`);

--
-- Indeksy dla tabeli `lekarz`
--
ALTER TABLE `lekarz`
  ADD PRIMARY KEY (`ID_PRACOWNIK`);

--
-- Indeksy dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  ADD PRIMARY KEY (`PESEL`);

--
-- Indeksy dla tabeli `paragon`
--
ALTER TABLE `paragon`
  ADD PRIMARY KEY (`NR_PARAGON`);

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`ID_PRACOWNIK`);

--
-- Indeksy dla tabeli `recepta`
--
ALTER TABLE `recepta`
  ADD PRIMARY KEY (`ID_RECEPTA`),
  ADD KEY `RECEPTA_LEKARZ_idx` (`ID_LEKARZ`);

--
-- Indeksy dla tabeli `wizyta`
--
ALTER TABLE `wizyta`
  ADD PRIMARY KEY (`ID_WIZYTA`),
  ADD UNIQUE KEY `WIZYTA_PACJENT` (`PESEL`),
  ADD UNIQUE KEY `WIZYTA_PRACCOWNIK` (`ID_PRACOWNIK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paragon`
--
ALTER TABLE `paragon`
  MODIFY `NR_PARAGON` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `ID_PRACOWNIK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wizyta`
--
ALTER TABLE `wizyta`
  MODIFY `ID_WIZYTA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumentacja_medyczna`
--
ALTER TABLE `dokumentacja_medyczna`
  ADD CONSTRAINT `LEKARZ_DOKUMENTACJA` FOREIGN KEY (`ID_LEKARZ`) REFERENCES `lekarz` (`ID_PRACOWNIK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PACJENT_DOKUMENTACJA` FOREIGN KEY (`PESEL`) REFERENCES `pacjent` (`PESEL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RECEPTA_DOKUMENTACJA` FOREIGN KEY (`ID_RECEPTY`) REFERENCES `recepta` (`ID_RECEPTA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lekarz`
--
ALTER TABLE `lekarz`
  ADD CONSTRAINT `LEKARZ_PRACOWNIK` FOREIGN KEY (`ID_PRACOWNIK`) REFERENCES `pracownik` (`ID_PRACOWNIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paragon`
--
ALTER TABLE `paragon`
  ADD CONSTRAINT `WIZYTA_PARAGON` FOREIGN KEY (`NR_PARAGON`) REFERENCES `wizyta` (`ID_WIZYTA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recepta`
--
ALTER TABLE `recepta`
  ADD CONSTRAINT `RECEPTA_LEKARZ` FOREIGN KEY (`ID_LEKARZ`) REFERENCES `lekarz` (`ID_PRACOWNIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wizyta`
--
ALTER TABLE `wizyta`
  ADD CONSTRAINT `WIZYTA_LEKARZ` FOREIGN KEY (`ID_PRACOWNIK`) REFERENCES `lekarz` (`ID_PRACOWNIK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `WIZYTA_PACJENT` FOREIGN KEY (`PESEL`) REFERENCES `pacjent` (`PESEL`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testowa`
--
CREATE DATABASE IF NOT EXISTS `testowa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testowa`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `page_list`
--

CREATE TABLE `page_list` (
  `ID` int(11) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_content` text DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_list`
--

INSERT INTO `page_list` (`ID`, `page_title`, `page_content`, `status`) VALUES
(1, 'kontakt', '<!DOCTYPE html5>\r\n<head>\r\n    <meta http-equiv=\"Content-type\" content=\"text/html; charset=UTF-8\" />\r\n    <meta http-equiv=\"Content-Language\" content=\"pl\" />\r\n    <meta name=\"Author\" content=\"Arkadiusz Pelak\" />\r\n    <script src=\"timedate.js\" type=\"text/javascript\"></script>\r\n    <link rel=\"stylesheet\" href=\"style.css\">\r\n    <title>Filmy Oskarowe</title>\r\n</head>\r\n<body onload=\"startclock()\">\r\n    <header>\r\n    <a href=\"glowna.html\"><h1><b>Filmy Oskarowe</b></h1></a>\r\n    </header>\r\n    <div class=\"zakladki\">\r\n        <tr>\r\n            <a href=\"glowna.html\"><th>Strona główna</th></a>\r\n            <a href=\"kontakt.html\"><th>Kontakt</th></a>\r\n        </tr>\r\n    </div>\r\n    <div class=\"kontakt\">\r\n        <h3> Skontaktu się z nami!</h3>\r\n                \r\n                <form action=\"mailto:nbskontakt@gmail.com\" method=\"post\" enctype=\"text/plain\">\r\n                <br>Podaj adres e-mail:</label><br>\r\n                <input type=\"email\" id=\"email\" name=\"email\" required><br><br>\r\n                <label for=\"wiadomosc\">Wiadomość:</label><br>\r\n                <textarea id=\"wiadomosc\" name=\"wiadomosc\" rows=\"5\" cols=\"25\" required></textarea><br><br>\r\n                \r\n                <input type=\"submit\" value=\"Wyślij\">\r\n\r\n                </form>\r\nNapisz do: Arkadiusz Pelak\r\n    </div>\r\n    <div id=\"zegarek\"></div>\r\n    <div id=\"data\"></div>\r\n</body>', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test_baza`
--

CREATE TABLE `test_baza` (
  `ID` int(11) NOT NULL,
  `name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `page_list`
--
ALTER TABLE `page_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `test_baza`
--
ALTER TABLE `test_baza`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page_list`
--
ALTER TABLE `page_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_baza`
--
ALTER TABLE `test_baza`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
