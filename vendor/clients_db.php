

<?php
session_start();
    

$date = $_POST['date'];
$name = $_POST['name'];
$address = $_POST['address'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$passport = $_POST['passport'];
$inn = $_POST['inn'];
$kpp = $_POST['kpp'];
$ind_count = $_POST['ind_count'];
$corr_count = $_POST['corr_count'];
$bik_bankname = $_POST['bik_bankname'];
  
require_once 'db_pdo.php';

$result = $connect -> query("INSERT INTO `client` (`date`, `name`, `address`, `phone`, `email`, `passport`, `inn`, `kpp`, 
`ind_count`, `korr_count`, `bik_bankname`) VALUES ('$date', '$name', '$address', '$phone', '$email', '$passport',
'$inn', '$kpp', '$ind_count', '$corr_count', '$bik_bankname')");

$_SESSION['message'] = 'Успешно!';
header('Location: ../client-card-create.php');
    
?>
