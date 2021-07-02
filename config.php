<?php 

//dit is de connectie met de database, deze file include ik bovenaan elk bestand

session_start();

$servername = '127.0.0.1';
$username = 'root';
$password = '';
$databasename = 'intakebieb';

try {
  $conn = new PDO("mysql:host=$servername;dbname=$databasename", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Connected successfully";
}  
catch(PDOException $e) {
echo "Connection failed: " . $e->getMessage();
}
?>