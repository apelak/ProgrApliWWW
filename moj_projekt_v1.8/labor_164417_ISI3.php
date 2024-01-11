<?php
    $nr_indeksu ='164417';
    $nrGrupy ='ISI3';
    $_GET["name"] = 'Arkadiusz';

    echo 'Arkadiusz Pelak '.$nr_indeksu.'grupa '.$nrGrupy.'<br/><br/>';
    echo 'Zastosowanie metody include() <br/>';

    include 'var.php';

    echo "A $color $fruit<br/>"; // A green apple

    echo 'Zastosowanie metody IF:<br/>';

    $a = 5;
    $b = 6;
    if($a > $b)
        echo "$a jest większe od $b";
    else
        echo "$a jest mniejsze lub równe $b";

    echo "<br/><br/>";
    echo 'zastosowanie metody while:<br/>';
    $i = 1;
    while ($i <= 10):
        echo $i.', ';
        $i++;
    endwhile;
    echo 'Zastosowanie metody GET:<br/>';
    echo 'Hello ' . $_GET["name"] . '!';
?>