<?php
session_start();
$username=$_SESSION['username'];
$password=$_SESSION['password'];
include_once "../settings.php";
$hash = password_hash($password, PASSWORD_DEFAULT);
try {
   $db = new PDO('mysql:host='.DB_HOST.'; dbname='.DB_NAME.';charset=utf8',DB_USER,DB_PASSWORD);
    $stmt = $db->query("SELECT * FROM Medlemslista WHERE anvandnamn='$username' LIMIT 1");
    if ($row = $stmt->fetch()) {
        if (password_verify($password, $row['password'])) {
             header("location:welcome.php");
             $_SESSION['inloggad'] = true;
             $_SESSION['username'] = $row['anvandnamn'];
             $_SESSION['fnamn'] = $row['fnamn'];
             $_SESSION['enamn'] = $row['enamn'];
             $_SESSION['tfn'] = $row['tfn'];

             exit();
        } else {
          $_SESSION['fel'] = "<h2>Användarnamnet och/eller lösenordet hittas inte</h2><a href=\"index1.php\">Logga in</a>";
          header("location:fel.php");
          exit();
        }
    } else {
        $_SESSION['fel'] = "<h2>Användarnamnet och/eller lösenordet hittas inte</h2><a href=\"index1.php\">Logga in</a>";
              header("location:fel.php");
              exit();
    }
 }
catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    die();
    $_SESSION['fel'] = "Något gick fel med databasen";
    header("location:fel.php");
    exit();
 }
$pdo = null;
header("Location: welcome.php");
?>
