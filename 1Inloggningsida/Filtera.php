<?php
include_once "../settings.php";
?>
<!DOCTYPE html>
<html lang="sv">

   <head>
      <meta charset="utf-8">
      <title> Titta på alla poster </title>
   </head>

<body>

      <?php
      $lista = $_POST['val'];
      $sok=$_POST['sok'];

      try {
           $db = new PDO('mysql:host='.DB_HOST.'; dbname='.DB_NAME.';charset=utf8',DB_USER,DB_PASSWORD);
           if ($lista == "fnamn"){

                  $stmt = $db->query("SELECT `fnamn`, `enamn`, `tfn` FROM `Medlemslista` WHERE '$sok' LIKE `fnamn`");

                  while ($row = $stmt->fetch()) {
                     echo $row['fnamn'].$row['enamn'].$row['tfn']."<br>";
                   }
           }

           else if ($lista == "enamn"){
                $stmt = $db->query("SELECT `fnamn`, `enamn`, `tfn` FROM `Medlemslista` Where $sok LIKE `enamn`");

                while ($row = $stmt->fetch()) {

                   echo $row['fnamn'].$row['enamn'].$row['tfn']."<br>";
                 }
           }

           else {
               $stmt = $db->query("SELECT `fnamn`, `enamn`, `tfn` FROM `Medlemslista` Where $sok LIKE `tfn`");

               while ($row = $stmt->fetch()) {
                echo $row['fnamn'].$row['enamn'].$row['tfn']."<br>";
                }
           }

       } catch (PDOException $e) {
         echo 'Connection failed: ' . $e->getMessage();
        }
         ?>

</body>

</html>
