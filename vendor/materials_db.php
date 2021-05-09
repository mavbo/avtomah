<?php
session_start();
require_once 'db_pdo.php';


foreach($connect->query("SELECT mat_name from `materials`") as $row) {
printf ("<tr><td>%s</td><td>%s</td></tr>", $row["f"], $row["m"]);
}
?>
                            
