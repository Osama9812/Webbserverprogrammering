<?php
  $username = $_POST['username'];
  $password = $_POST['password'];
  $fnamn = $_POST['fnamn'];
  $enamn = $_POST['enamn'];
  $tfn = $_POST['tfn'];

?>
<!DOCTYPE html>
<html lang="sv">

   <head>
      <meta charset="utf-8">
      <title>  Inmatning av nya poster </title>
   </head>

<body>

      <?php
         define("DB_HOST", "localhost");
         define("DB_NAME", "db_register");
         define("DB_USER", "phpmyadmin");
         define("DB_PASSWORD", "grEPut017");
      ?>

      <?php

      try {
           $db = new PDO('mysql:host='.DB_HOST.'; dbname='.DB_NAME.';charset=utf8',DB_USER,DB_PASSWORD);



          $stmt = $db->prepare("INSERT INTO Medlemslista (anvandnamn, password, fnamn, enamn, tfn) VALUES ('$username','$password','$fnamn','$enamn','$tfn')");
          $stmt->execute();
          echo "Vällkommen";

       } catch (PDOException $e) {
         echo 'Connection failed: ' . $e->getMessage();
        }
         ?>

</body>

</html>
