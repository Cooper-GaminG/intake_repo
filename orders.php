<?php

include "config.php";

//op deze pagina worden dus alle bestellingen getoond, ze staan op alfabetische volgorde.
//deze pagina laat zien wat voor boek door wie is besteld en wanneer, ook staat de auteur en het email adres van de klant er bij. ik vond het hier niet nodig om het woon adres te laten zien, die zijn te vinden op de klanten pagina.

$sql = 'SELECT customer_name, book_title, author, email, date FROM history ORDER BY book_title';
foreach ($conn->query($sql) as $row) { 

    
    print $row['book_title'];
    echo "<br>";
    echo "By ";
    print $row['author'];
    echo "<br>";
    echo "Ordered by: ";
    print $row['customer_name']; 
    echo "<br>";
    echo "Date: ";
    print $row['date']; 
    echo "<br>";
    print $row['email'];
    echo "<br><br>";

}

?>


<html>
<head>
<title>Order List</title>
</head>
</html>