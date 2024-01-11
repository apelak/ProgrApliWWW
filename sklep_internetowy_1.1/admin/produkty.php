<link rel="stylesheet" href="../css/kategorie.css">

<?php
error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
function DodajProdukt(){
    global $link;
    echo '
    <div class="">
        <h1 class="naglowek"><b>Dodaj produkt<b/></h1>
        <form method="post" name="AddForm" enctype="multipart/form-data" action="' . $_SERVER['REQUEST_URI'] . '">
            <table class="dodaj">
                <tr><td class="add_4t"><b>Nazwa produktu: <b/></td><td><input type="text" name="nazwa_produktu" required/></td></tr>
                <tr><td class="add_4t"><b>Opis produktu: <b/></td><td><textarea name="opis" rows="5" cols="60" required></textarea></td></tr>
                <tr><td class="add_4t"><b>Cena netto: <b/></td><td><input type="text" name="cena_netto" required/></td></tr>
                <tr><td class="add_4t"><b>Podatek VAT: <b/></td><td><input type="text" name="podatek_vat"/></td></tr>
                <tr><td class="add_4t"><b>Ilość sztuk: <b/></td><td><input type="text" name="ilosc" required/></td></tr>
                <tr><td class="add_4t"><b>Kategoria: <b/></td><td><input type="number" name="kategoria" required/></td></tr>
                <tr><td class="add_4t"><b>Gabaryt produktu: <b/></td><td><input type="text" name="gabaryt" required/></td></tr>
                <tr><td class="add_4t"><b>Zdjęcie: <b/></td><td><input type="file" name="zdjecie" /></td></tr>
                <tr><td class="add_4t"><b>Status Dostępności: <b/></td><td><input type="checkbox" name="status" required/></td></tr>
                <tr><td>&nbsp;</td><td><input type="submit" name="produkt_submit" class="dodaj_produkt" value="Dodaj" /></td></tr>
            </table>
        </form>
    </div>
    ';
    if (isset($_POST['produkt_submit'])) {
        $nazwa = $_POST['nazwa_produktu'];
        $opis = $_POST['opis'];
        $cena = $_POST['cena_netto'];
        $podatek = $_POST['podatek_vat'];
        $ilosc = $_POST['ilosc'];
        $kategoria = $_POST['kategoria'];
        $gabaryt = $_POST['gabaryt'];
        $zdjecie = $_POST['zdjecie'];
        $status = $_POST['status'];

        $query = "INSERT INTO produkty (nazwa, opis, cena_netto, podatek_vat, ilosc_sztuk, status_dostepnosci, kategoria, gabaryt_produktu, zdjecie) VALUES ('$nazwa', '$opis','$cena','$podatek','$ilosc','$status','$kategoria','$gabaryt','$zdjecie')";
        $result = mysqli_query($link, $query);

        if ($result) {           
            echo "<script>window.location.href='admin.php';</script>";
            exit();
        } else {
            echo "<center>Błąd podczas dodawania produktu: " . mysqli_error($link)."</center>";
        }
    }
}

function UsunProdukt()
{
    global $link;
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        $query = "DELETE FROM produkty WHERE id = $id LIMIT 1";
        $result = mysqli_query($link, $query);

        if ($result) {         
            echo "<script>window.location.href='admin.php';</script>";
            exit();
        } else {
            echo "<center>Błąd podczas usuwania produktu: " . mysqli_error($link)."</center>";
        }
    }
}

function EdytujProdukt()
{
    global $link;

    if (isset($_GET['id'])) {
        $id = $_GET['id'];
    } else {
        return; 
    }

    $query = "SELECT * FROM produkty WHERE id='$id' LIMIT 1";
    $result = mysqli_query($link, $query);
    $row = mysqli_fetch_array($result);

    echo '
    <div class="edit_produkt">
    <h1 class="naglowek"><b>Edytuj produkt<b/></h1>
    <form method="post" name="EditProduktForm" enctype="multipart/form-data" action="' . $_SERVER['REQUEST_URI'] . '">
        <table class="edycja">
            <tr><td class="edit_4t"><b>Nazwa produktu: <b/></td><td><input type="text" name="edit_nazwa_produktu" value="' . $row['nazwa'] . '" required/></td></tr>
            <tr><td class="edit_4t"><b>Opis produktu: <b/></td><td><textarea name="edit_opis" rows="5" cols="60" required>' . $row['opis'] . '</textarea></td></tr>
            <tr><td class="edit_4t"><b>Cena netto: <b/></td><td><input type="text" name="edit_cena_netto" value="' . $row['cena_netto'] . '" required/></td></tr>
            <tr><td class="edit_4t"><b>Podatek VAT: <b/></td><td><input type="text" name="edit_podatek_vat" value="' . $row['podatek_vat'] . '"/></td></tr>
            <tr><td class="edit_4t"><b>Ilość sztuk: <b/></td><td><input type="text" name="edit_ilosc" value="' . $row['ilosc_sztuk'] . '" required/></td></tr>
            <tr><td class="edit_4t"><b>Kategoria: <b/></td><td><input type="number" name="edit_kategoria" value="' . $row['kategoria'] . '" required/></td></tr>
            <tr><td class="edit_4t"><b>Gabaryt produktu: <b/></td><td><input type="text" name="edit_gabaryt" value="' . $row['gabaryt_produktu'] . '" required/></td></tr>
            <tr><td class="edit_4t"><b>Zdjęcie: <b/></td><td><input type="file" name="edit_zdjecie" /></td></tr>
            <tr><td class="edit_4t"><b>Status Dostępności: <b/></td><td><input type="checkbox" name="edit_status" ' . ($row['status_dostepnosci'] == 1 ? 'checked' : '') . ' required/></td></tr>
            <tr><td>&nbsp;</td><td><input type="submit" name="edit_produkt_submit" class="edycja" value="Edytuj" /></td></tr>
        </table>
    </form>
</div>';

    if (isset($_POST['edit_produkt_submit']) && isset($_GET['id'])) {
        $id = $_GET['id'];
        $nazwa = $_POST['edit_nazwa_produktu'];
        $opis = $_POST['edit_opis'];
        $cena = $_POST['edit_cena_netto'];
        $podatek = $_POST['edit_podatek_vat'];
        $ilosc = $_POST['edit_ilosc'];
        $kategoria = $_POST['edit_kategoria'];
        $gabaryt = $_POST['edit_gabaryt'];
        $zdjecie = $_POST['edit_zdjecie'];
        $status = isset($_POST['edit_status']) ? 1 : 0;

        if (!empty($id)) {
            $query = "UPDATE produkty SET nazwa = '$nazwa', opis = '$opis', cena_netto = '$cena', podatek_vat = '$podatek', ilosc_sztuk = '$ilosc', kategoria = '$kategoria', gabaryt_produktu = '$gabaryt', status_dostepnosci ='$status' WHERE id = $id LIMIT 1";

            $result = mysqli_query($link, $query);
        


            if ($result) {  
                echo "<script>window.location.href='admin.php';</script>";
                exit();
            } else {
                echo "<center>Błąd podczas edycji: " . mysqli_error($link)."</center>";
            }
        }
    }
}

function PokazProdukt()
{
    global $link;

    $query = "SELECT * FROM produkty ORDER BY id ASC";
    $result = mysqli_query($link, $query);

    echo '<h1 class="naglowek">Lista produktów</h1><center><table>';
    if ($result) {
        while ($row = mysqli_fetch_array($result)) {
            echo '<tr><td class="tdid"><b>' . $row['id'] . '<b></td><td class="tdnazwa"><b>' . $row['nazwa'] . '<b></td>';
            echo '<td class="tdusun"><a href="admin.php?action=usunprodukt&id=' . $row['id'] . '"><b>Usuń</b></a></td>';
            echo '<td class="tdedytuj"><a href="admin.php?funkcja=edytuj&id=' . $row['id'] . '"><b>Edytuj</b></a></td></tr>';
        }
        echo '</table></center><br>';
    } else {
        echo "Brak produktów";
    }
}
if (isset($_GET['action']) && $_GET['action'] == 'usunprodukt') {
        UsunProdukt();
    }