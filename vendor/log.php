<?php
session_start();
require_once 'db_pdo.php';

$login = $_POST['login'];
$password = $_POST['password'];

$checkuser = $connect -> query("SELECT * FROM `users` WHERE `login`='$login' AND `password`='$password'");

$result =$checkuser->rowCount();
if ($result>0) {
   
    header('Location: ../client-card-create.php');
} else {
   
    header('Location: ../index.php');
}

?>


