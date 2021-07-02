<?php

include "config.php";


$sql = 'SELECT name, age, origin FROM author ORDER BY author_id'; //deze query toont alle auteurs met alle informatie erbij, ik heb ervoor gekozen om niet de boeken hierbij te zetten omdat het anders heel veel informatie op 1 pagina was.
foreach ($conn->query($sql) as $row) {

    print $row['name']; 
    echo "<br>";
    print $row['age'];
    echo " years old.";
    echo "<br>";
    echo "Born in ";
    print $row['origin']; 
    echo "<br><br>";

}

?>

<html>
<head>
<title>Author List</title>
</head>
</html>