<link rel="stylesheet" href="./css/koszyk.css">
<?php
session_start();
include('cfg.php');

function PokazProdukt() {
    global $link;
    $query = "SELECT p.*, k.nazwa AS nazwa_kategorii FROM produkty p INNER JOIN kategorie k ON p.kategoria = k.id ORDER BY p.id ASC";
    $result = mysqli_query($link, $query);
    echo '<div class="produkty"><h1 class="naglowek">Lista produktów</h1><center><table>';
    if ($result) {
        while ($row = mysqli_fetch_array($result)) {
            echo '<tr>';
            if($row['zdjecie'])
            {
                echo '<td><img src="data:image/jpeg;base64,'.base64_encode($row['zdjecie']).'" height="100" width="100" class="img-thumnail" /></td>';
            }
            else
            {
                echo '<td height="100" width="100">Brak Zdjęcia</td>';
            }
            echo '<td class="tdid"><b>' . $row['id'] . '<b></td>';
            echo '<td class="tdnazwa"><b>' . $row['nazwa'] . '<b></td>';
            echo '<td class="tdkategoria"><b>Kategoria: ' . $row['nazwa_kategorii'] . '</b></td>';
            echo '<td class="tdcena"><b>' . $row['cena_netto']*$row['podatek_vat'] . 'zł<b></td>';
            echo '<td class="tddodajdokoszyka"><button onclick="dodajDoKoszyka(' . $row['id'] . ', 1); return false;"><b>Dodaj do koszyka</b></button></td>';
            echo '</tr>';
        }
        echo '</table></center></div>';
    } else {
        echo "Brak produktów";
    }
}

function pobierzInformacjeOProdukcie($produktId) {
    global $link;
    if (!$link) {
        die("Błąd połączenia z bazą danych");
    }
    $stmt = $link->prepare("SELECT nazwa, cena_netto, podatek_vat FROM produkty WHERE id = ?");
    $stmt->bind_param("i", $produktId);
    $stmt->execute();
    $stmt->bind_result($nazwa, $cenaNetto, $vat);
    if ($stmt->fetch()) {
        return array('nazwa' => $nazwa, 'cenaNetto' => $cenaNetto, 'vat' => $vat);
    } else {
        return false;
    }
}

function dodajProduktDoKoszyka($produktId, $ilosc) {
    $produktInfo = pobierzInformacjeOProdukcie($produktId);
    if ($produktInfo) {
        if (!isset($_SESSION['koszyk'])) {
            $_SESSION['koszyk'] = array();
        }
        if (isset($_SESSION['koszyk'][$produktId])) {
            $_SESSION['koszyk'][$produktId]['ilosc'] += $ilosc;
        } else {
            $_SESSION['koszyk'][$produktId] = array('nazwa' => $produktInfo['nazwa'], 'cenaNetto' => $produktInfo['cenaNetto'], 'ilosc' => $ilosc, 'vat' => $produktInfo['vat']);
        }
    }
    
}

function usunProduktZKoszyka($produktId) {
    if (isset($_SESSION['koszyk'][$produktId])) {
        unset($_SESSION['koszyk'][$produktId]);
    }
}

function resetujIloscWKoszyku() {
    $_SESSION['koszyk'] = array();
}

function PokazKoszyk() {
    echo '<div class="koszyk">';
    echo "<h2>Zawartość koszyka:</h2>";
    if (isset($_SESSION['koszyk']) && count($_SESSION['koszyk']) > 0) {
        echo "<ul>";
        foreach ($_SESSION['koszyk'] as $produktId => $produkt) {
            $cenaBrutto = $produkt['cenaNetto'] * ($produkt['vat']);
            echo "<li>{$produkt['nazwa']} - Ilość: {$produkt['ilosc']}, Cena brutto: {$cenaBrutto} zł ";
            echo "<a href=\"#\" onclick=\"usunProduktZKoszyka({$produktId}); return false;\">Usuń</a></li>";
        }
        echo "</ul>";
        $wartoscKoszyka = zliczWartoscKoszyka();
        echo "<p>Łączna wartość koszyka: $wartoscKoszyka zł</p>";
        echo "<button onclick=\"resetujIloscWKoszyku(); return false;\">Resetuj koszyk</button>";
        echo "<button onclick=\"zakupProdukty(); return false;\">Zakup Produkty</button>";
    } else {
        echo "<p>Koszyk jest pusty.</p>";
    }
    echo '</div>';
}

function zliczWartoscKoszyka() {
    $suma = 0;
    if (isset($_SESSION['koszyk'])) {
        foreach ($_SESSION['koszyk'] as $produkt) {
            $cenaBrutto = $produkt['cenaNetto'] * ($produkt['vat']);
            $suma += $cenaBrutto * $produkt['ilosc'];
        }
    }
    return $suma;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action'])) {
    if ($_POST['action'] === 'dodaj' && isset($_POST['produktId']) && isset($_POST['ilosc']) && is_numeric($_POST['produktId']) && is_numeric($_POST['ilosc'])) {
        dodajProduktDoKoszyka($_POST['produktId'], $_POST['ilosc']);
        echo "Produkt dodany do koszyka.";
    } elseif ($_POST['action'] === 'usun' && isset($_POST['produktId']) && is_numeric($_POST['produktId'])) {
        usunProduktZKoszyka($_POST['produktId']);
        echo "Produkt usunięty z koszyka.";
    } elseif ($_POST['action'] === 'resetuj') {
        resetujIloscWKoszyku();
        echo "Koszyk został zresetowany.";
    } elseif ($_POST['action'] === 'zakup') {
        zakupProdukty();
        echo "Koszyk został zresetowany.";
    }
    else {
        echo "Błąd: Nieprawidłowa akcja.";
    }
}
function zakupProdukty() {
    $_SESSION['koszyk'] = array();
    echo '<script>wyswietlPopup();</script>';
}


?>

<script>
function dodajDoKoszyka(produktId, ilosc) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "koszyk.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var params = "action=dodaj&produktId=" + encodeURIComponent(produktId) + "&ilosc=" + encodeURIComponent(ilosc);
    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
        } else {
            console.error("Błąd AJAX: " + xhr.statusText);
        }
    };
    xhr.send(params);
    window.location.reload();
}
function usunProduktZKoszyka(produktId) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "koszyk.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var params = "action=usun&produktId=" + encodeURIComponent(produktId);
    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
        } else {
            console.error("Błąd AJAX: " + xhr.statusText);
        }
    };
    xhr.send(params);
    window.location.reload();
}
function resetujIloscWKoszyku() {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "koszyk.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var params = "action=resetuj";
    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
        } else {
            console.error("Błąd AJAX: " + xhr.statusText);
        }
    };
    xhr.send(params);
    window.location.reload();
}
function zakupProdukty() {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "koszyk.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    var params = "action=zakup";
    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
            wyswietlPopup();
        } else {
            console.error("Błąd AJAX: " + xhr.statusText);
        }
    };
    xhr.send(params);
}

function wyswietlPopup() {
    var popup = document.getElementById("popup");
    popup.style.display = "block";
}

function ukryjPopup() {
    var popup = document.getElementById("popup");
    popup.style.display = "none";
    window.location.reload();
}
</script>
<?php
echo '<div class="container">';
PokazProdukt();
PokazKoszyk();
?>
<div id="popup" class="popup">
    Dziękujemy za zakupy!
    <span class="close" onclick="ukryjPopup()">&times;</span>
</div>
<?php
echo '</div>';
?>

