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
        <div class="row">
            <div class="col-md-12">
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
                <div class="row"></div>
                 <!--main-->
                 <div class="main">
                    <div class="row">
                    <!--навигация-->
                    <div class="col-md-3">
                    <div class="sidenav">
                            <a href="client-card-create.php">Создать карточку заказа</a>
                            <hr>
                            <a href="person-input.php">Внести данные нового клиента</a>
                            <hr>
                            <a href="person-change.php">Изменить данные клиента</a>
                            <hr>
                            <a href="list.php">Показать список заказов</a>
                            <hr>
                        </div>
                    </div>
                        <!-- Карточка -->
                  
                        <div class="col-md-9">
                        <div class="row"></div>
                        <h2>Карточка клиента</h2>
                           
                        
                        <table>
   
                       
  
     <tr>
    <td>Дата</td><td><input type="" name="date" id="date"></td>
   </tr>
   <tr>
    <td>ФИО или название организации</td><td><input type="text" name="name" id="name" placeholder="Иванов Иван Иванович"></td>
   </tr>
   <tr>
    <td>Модель автомобиля</td><td><input type="text" name="name" id="name" placeholder="Газель Некст"></td>
   </tr><tr>
    <td>Вид кузова</td><td><input type="text" name="name" id="name" placeholder="Сдвижная крыша Автомаш"></td>
   </tr>
   <tr>
    <td>Доп. опции</td><td><input type="text" name="name" id="name" placeholder="Европлатформа"></td>
   </tr>
   <tr>
    <td>Удлинение шасси</td><td><input type="text" name="name" id="name" placeholder="Удлинение 4 м"></td>
   </tr>
   <tr>
    <td>Общая стоимость заказа</td><td><input type="text" name="name" id="name" placeholder=" 220 000 рублей с НДС"></td>
  </table>   

  <a href="client-card-create.php">Внести изменения в заказ</a>
  <form action="">
      <button type = "submit" id="spec"><a href="client-card-create.php">Отправить</a></button>
  </form>
                           
                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/global.js"></script>

</body>
</html>