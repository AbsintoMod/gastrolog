<?php
$host = "localhost";
$user = "root";
$pass = "";
$banco = "estoque";

$usuario = $_POST ["nmUSER"];
$email = $_POST ["nmEMAIL"];
$senha = $_POST ["nmSENHA"];
$senha2 = $_POST ["nmSENHA2"];

$c = mysqli_connect("$host","$user","$pass") or mysql(error());
mysqli_select_db($c,$banco);


$query = "insert into login values (0,'$usuario','$senha','$email')";

mysqli_query($c, $query) or die (mysql_error());

header('Location://localhost/resta/cadastro_y.php');

?>