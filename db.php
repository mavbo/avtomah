<?php
define('db_host', 'localhost');
define('db_user', 'root');
define('db_password', '');
define('db_name', 'avtomash');

$mysql = new mysqli(db_host, db_user, db_password, db_name);
if ($mysql->connect_errno) exit ('ошибка');
$mysql -> set_charset('utf8');
$mysql -> close();

?>

    
 



