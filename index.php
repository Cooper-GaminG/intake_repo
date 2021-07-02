<?php

include "config.php";

//hier worden alle klanten uit de database gehaald en getoond op de pagina.
//ik heb het zo gemaakt dat hier alleen de namen worden geprint en dan kun je onder aan de pagina een naam invullen om de volledige informatie te tonen.

$sql = 'SELECT name FROM customers ORDER BY name'; //deze query selecteert dus alleen de naam van de klant en het wordt georderd op alfabetische volgorde.
foreach ($conn->query($sql) as $row) {

    print $row['name']; 
    echo "<br><br>";

}

?>

<!-- in dit form vul je een naam in waar je meer over wilt weten en dan word je, wanneer je op de knop drukt, doorgestuurd naar het resultaat op een andere pagina. -->
<!-- wat je invuld word meegestuurd als de $_POST variabel -->

<form action= "result.php" method= "POST"> 
  
  <label for= "name">Name:</label><br>
  
  <input type="text" id="name" name="name"  value="" require><br>
  
  <input type="submit" name= "submit" value = "Search" >

</form>

<html>
<head>
<title>Customer List</title>
</head>
</html>

