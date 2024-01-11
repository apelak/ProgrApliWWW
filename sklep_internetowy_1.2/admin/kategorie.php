<link rel="stylesheet" href="../css/kategorie.css">

<?php
error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
function DodajKategorie(){
    global $link;
	echo '
    <div class="">
        <h1 class="naglowek"><b>Dodaj kategorię<b/></h1>
            <form method="post" name="AddForm" enctype="multipart/form-data" action="' . $_SERVER['REQUEST_URI'] . '">
                <table class="dodaj">
                    <tr><td class="add_4t"><b>Nazwa kategorii: <b/></td><td><input type="text" name="nazwa_kategorii_add" required/></td></tr>
                    <tr><td class="add_4t"><b>Matka kategorii: <b/></td><td><input type="number "name="matka_kategorii_add" required/></td></tr>
                    <tr><td>&nbsp;</td><td><input type="submit" name="dodaj_kategorie" class="dodaj" value="Dodaj" /></td></tr>
                </table>
            </form>
    </div>
    ';
    if (isset($_POST['dodaj_kategorie'])) {
        $nazwa = $_POST['nazwa_kategorii_add'];
        $matka = $_POST['matka_kategorii_add'];

        $query = "INSERT INTO kategorie (nazwa, matka) VALUES ('$nazwa', '$matka')";
        $result = mysqli_query($link, $query);

        if ($result) {           
            echo "<script>window.location.href='admin.php';</script>";
            exit();
        } else {
            echo "<center>Błąd podczas dodawania kategorii: " . mysqli_error($link)."</center>";
        }
    }
}


function UsunKategorie()
{
    global $link;
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        $query = "DELETE FROM kategorie WHERE id = $id LIMIT 1";
        $result = mysqli_query($link, $query);

        if ($result) {         
            echo "<script>window.location.href='admin.php';</script>";
            exit();
        } else {
            echo "<center>Błąd podczas usuwania kategorii: " . mysqli_error($link)."</center>";
        }
    }
}



function EdytujKategorie()
{
    global $link;
	if (isset($_GET['id'])) {
		$id = $_GET['id'];
	}
	$query = "SELECT * FROM kategorie WHERE id='$id' LIMIT 1";
	$result = mysqli_query($link ,$query);
	$row = mysqli_fetch_array($result);
	echo '
    <div class="add_kategorie">
        <h1 class="naglowek"><b>Edytuj Kategorię<b/></h1>
            <form method="post" name="EditForm" enctype="multipart/form-data" action="' . $_SERVER['REQUEST_URI'] . '">
                <table class="edycja">
                    <tr><td class="edit_4t"><b>Nazwa kategorii: <b/></td><td><input type="text" name="nazwa_kategorii" value='.$row['nazwa'].' /></td></tr>
                    <tr><td class="edit_4t"><b>Matka kategorii: <b/></td><td><input type="number" name="matka_kategorii"value="'.$row['matka'].'"/></td></tr>
                    <tr><td>&nbsp;</td><td><input type="submit" name="edytuj_kategorie" class="edycja" value="Edytuj" /></td></tr>
                </table>
            </form>
    </div>
    ';
    if (isset($_POST['edytuj_kategorie'])&& isset($_GET['id'])) {
        $id = $_GET['id'];
        $nazwa = $_POST['nazwa_kategorii'];
        $matka = $_POST['matka_kategorii'];

        if (!empty($id)) {
            $query = "UPDATE kategorie SET nazwa = '$nazwa', matka = '$matka' WHERE id = $id LIMIT 1";

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

function PokazKategorie($matka = 0, $ile = 0)
{
    global $link;

    $query = "SELECT * FROM kategorie WHERE matka = '$matka'";
    $result = mysqli_query($link, $query);

    if ($result) {
        $brak = 0;
        $tableContent = '';

        while ($row = mysqli_fetch_array($result)) {
            $brak = 1;

            $tableContent .= '<tr>';
            for ($i = 0; $i < $ile; $i++) {
                $tableContent .= '<td>&nbsp;&nbsp;&nbsp;<span style="color: #0000FF;"></span></td>';
            }

            $tableContent .= '<td><b><span style="color:#008000;">' . $row['id'] . '</span> ' . $row['nazwa'] . '</b></td>';
            $tableContent .= '<td><a href="?id=' . $row['id'] . '&action=edytuj">Edytuj</a></td>';
            $tableContent .= '<td><a href="?id=' . $row['id'] . '&action=usun">Usuń</a></td>';
            $tableContent .= '</tr>';

            $tableContent .= PokazKategorie($row['id'], $ile + 1);
        }

        if ($brak == 0 && $ile == 0) {
            $tableContent .= "<tr><td colspan='3'>Brak kategorii</td></tr>";
        }

        return $tableContent;
    }
}

echo '<table><tr><th>ID i Nazwa</th><th>Edytuj</th><th>Usuń</th></tr>' . PokazKategorie() . '</table>';


if (isset($_GET['action']) && $_GET['action'] == 'usun') {
    UsunKategorie();
}
if (isset($_GET['action']) && $_GET['action'] == 'edytuj') {
    UsunKategorie();
}

?>