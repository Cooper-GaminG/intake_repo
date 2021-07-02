<?php

include "config.php";


$sql = 'SELECT title, author, genre FROM books ORDER BY author'; //hier zijn alle boeken dus te vinden, met de naam van de schrijver er bij.
foreach ($conn->query($sql) as $row) {

    echo "Title: ";
    print $row['title']; 
    echo "<br>";
    echo "By ";
    print $row['author'];
    echo "<br>";
    echo "Genre: ";
    print $row['genre']; 
    echo "<br><br>";

}

?>


<html>
<head>
<title>Book List</title>
</head>
</html>