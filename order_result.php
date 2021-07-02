<?php

include "config.php";

//hier worden alle bestellingen getoond per boek, je vult een titel in en die word opgeslagen als de variabele $_POST['title'].
//ook hier wordt alle nodige informatie weergegeven.


//deze eerste query telt hoevaak de titel voorkomt in de database (als bestelling).
$stmt = $conn->prepare("SELECT book_title, COUNT(*) AS count FROM history WHERE book_title = '".$_POST['title']."'");
$stmt->execute();

$rows = $stmt->fetchALL(PDO::FETCH_ASSOC);

foreach ($rows as $row) {

    echo $row['count']; 
    echo " order(s) for this title"; //die hoeveelheid word hier weergegeven.
    
}

echo "<br> <br>";


//deze query is weer hetzelfde als de andere, het laat zien wat de titel is, wie de auteur is, wie de bestelling heeft geplaatst en wanneer. ook staat het email adres van de klant erbij.
$sql = "SELECT book_title, author, customer_name, email, date FROM history WHERE book_title = '".$_POST['title']."'";
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
    <title>Order Result</title>
</head>
</html>