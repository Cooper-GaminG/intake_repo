<?php

include "config.php";

//op deze pagina kom je als je het form hebt ingevuld bij de klantnamen.

$sql = "SELECT name, email, address, birthdate FROM customers WHERE name = '".$_POST['name']."'"; //deze query laat alle informatie over de ingevulde gebruiker zien, de naam, email, adres en geboortedatum.
foreach ($conn->query($sql) as $row) {                                                            // de $_POST variabele verwijst naar wat er is ingevuld op het form op de vorige pagina.

    print $row['name']; 
    echo "<br>";
    print $row['email']; 
    echo "<br>";
    print $row['address'];                                     //deze code print de resultaten uit, met wat ruimte er tussen om het overzichtelijk te houden.
    echo "<br>";
    print $row['birthdate']; 
    echo "<br><br>";

}

$sql = "SELECT book_title, author, date FROM history WHERE customer_name = '".$_POST['name']."'";  //deze query laat alle bestellingen zien die gekoppelt zitten aan de naam van de klant.
foreach ($conn->query($sql) as $row) {                                                             // ook hier word niet alles getoond, aangezien de naam en het email adres van de klant al word laten zien door de bovenstaande query.  

    print $row['book_title'];
    echo "<br>";
    print $row['author'];
    echo "<br>";
    print $row['date'];
    echo "<br><br>";


}

?>
<html>
<head>
    <title>Result</title>
</head>
</html>