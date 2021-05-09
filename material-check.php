
<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome avtomash</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,800" rel="stylesheet">

</head>
<body>
    <!----header-->
    <div class="container">
        <div class="header">
            <div class="row">
                <div class="col-md-1">
                    <img src="img/logo.png" width="180" height="60">
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h1>Добро пожаловать в нашу систему! Будем пробовать</h1>
                </div>
            </div>
        </div>
        
        <!--main-->
        <div class="row">
            <div class="col-md-12">
                <div class="materials">
                    <div class="one_material">
                        <form action="vendor/materials_db.php" method="get" id="">
                            <label for="" ><input type="checkbox" name="material_check" id="material_check">[]</label>
                            <input type="text" name="measure_unit" id="measure_unit">
                            <input type="number" name="quantity_m" id="quantity_m">   
                        </form>
                    </div>
            </div>
        </div>