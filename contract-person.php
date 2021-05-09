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
        <!-- Форма данных клиента -->
        <h2> Заполнение договора на ремонтные работы</h2>
        <div class="row">
            <div class="col-md-12">
                    <form action="vendor/clients_db.php" method="post" id="enter">
                        <label>Дата</label>
                        <input type="" name="date" id="date">
                        <label>Название организации или ФИО клиента</label>
                        <input type="text" name="name" id="name" placeholder="Введите имя">
                        <label>Юр. адрес (адрес регистрации)</label>
                        <input type="text" name="address" id="address" placeholder="Введите адрес">
                        <label>Телефон</label>
                        <input type="text" name="phone" id="phone" placeholder="Введите телефон">
                        <label>Электронная почта</label>
                        <input type="text" name="email" id="email" placeholder="Введите электронную почту">
                        <label>Паспортные данные</label>
                        <input type="text" name="passport" id="passport" placeholder= "Введите паспортные данные">
                        <label>ИНН</label>
                        <input type="text" name="inn" id="inn" placeholder="Введите ИНН">
                        <label>КПП</label>
                        <input type="text" name="kpp" id="kpp" placeholder="Введите КПП">
                        <label>Расчетный счет</label>
                        <input type="text" name="ind_count" id="ind_count" placeholder="Номер расчетного счета">
                        <label>Корреспондентский счет</label>
                        <input type="text" name="corr_count" id="corr_count" placeholder="Номер корреспондентского счета">
                        <label>БИК, наименованине банка</label>
                        <input type="text" name="bik_bankname" id="bik_bankname" placeholder="БИК и наименование банка">
                        <button type = "submit" class="design">Сохранить</button>
                        <?php
                            
                            if ($_SESSION) {
                                echo '<p class="msg"> ' . $_SESSION['message'] . ' </p>';
                            }
                            unset($_SESSION['message']);
                          
                        ?>




                        
                    </form>        
                </div>
            </div>
        <div class="row">  
            <div class="col-md-2">
                <form action="change_clients.php" method="post"><button class="">Изменнить данные</button></form>
            </div>
            <div class="col-md-2">
                <form action="" method="post"><button class="">Перейти к расчету<br>зарплаты</button></form>
            </div>
        </div>
   
<script src="js/global.js"></script>

</body>
</html>