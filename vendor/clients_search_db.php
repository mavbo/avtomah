

<?php

    

//$date = $_POST['date'];
//$name = $_POST['name'];
//$address = $_POST['address'];
//$phone = $_POST['phone'];
//$email = $_POST['email'];
//$passport = $_POST['passport'];
//$inn = $_POST['inn'];
//$kpp = $_POST['kpp'];
//$ind_count = $_POST['ind_count'];
//$corr_count = $_POST['corr_count'];

$search_name = $_POST['search_name'];
  
require_once 'db_pdo.php';

trim($_POST['search_name']);

$result = $connect -> query("SELECT `name`, `id` FROM client WHERE name LIKE '%$search_name%'")
->fetch(PDO::FETCH_ASSOC);

 while ($result>0) {
    print_r($result);
 }


?>


    

