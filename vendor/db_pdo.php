<?php

try {
    $connect = new PDO('mysql:host=localhost; dbname=avtomash; charset = utf8',  "user", "hhffTTI693215", 
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    } catch (PDOException $e)
    {
        die("i`m sorry, guys");
    }
    


?>
