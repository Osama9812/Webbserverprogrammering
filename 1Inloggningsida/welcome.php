<?php
  session_start();
  if (!$_SESSION['inloggad'])
  {
    $_SESSION['fel'] = "<h2>Du har inte rätt att vara här</h2><a href=\"index1.php\">Logga in</a>";
    header("location:fel.php");
    exit();
  }
?>
<!DOCTYPE html>
<html lang="sv">
   <head>
      <meta charset="utf-8">
      <title>Hemlig sida</title>
      <style>
      table {
          border-collapse: collapse;
      }
      td {
        border-style: solid;
        border-width: 2px;
        padding: 3px;
      }
     </style>
   </head>
   <body>


<h1>Välkommen till min hemliga sida</h1>

<form name="mittFormular" action="Filtera.php" method="post">
  <select name="val">
    <option value="fnamn">Förnamn</option>
    <option value="enamn">Efternamn</option>
    <option value="tfn">Telefonnummer</option>
  </select>
  <input type="text" name="sok">
  <input type="submit" value="sok">
</form>

<table>
  <tr><td>Användarnamn</td><td><?php echo $_SESSION['username'] ?></td></tr>
  <tr><td>Förnamn</td><td><?php echo $_SESSION['fnamn'] ?></td></tr>
  <tr><td>Efternamn</td><td><?php echo $_SESSION['enamn'] ?></td></tr>
  <tr><td>Telefon</td><td><?php echo $_SESSION['tfn'] ?></td></tr>
</table>
<a href="nyanvandare.php">Ny användare</a>
<a href="loggout.php">Logga ut</a>

   </body>
   </html>
