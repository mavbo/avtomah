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
                        <!-- Форма данных клиента -->
                    <div class="col-md-9">
                        <form action="<?= $_SERVER['SCRIPT_NAME'] ?>">
                            <p>Найти клиента <input type="text" name="search" id="">
                            <input type="submit" value="Поиск"></p>
                            <hr>
                        </form>
                        <h2> Изменить данные</h2>
                            <form action="vendor/change_clients.php" method="post" id="enter">
                                <label>Дата</label>
                                <input type="" name="date" id="date">
                                <label>Изменить название или ФИО клиента</label>
                                <input type="text" name="name" id="name" placeholder="ООО "Корабль">
                                <label>Изменить юр. адрес (адрес регистрации)</label>
                                <input type="text" name="address" id="address" placeholder="г. Пермь">
                                <label>Изменить телефон</label>
                                <input type="text" name="phone" id="phone" placeholder="Введите телефон">
                                <label>Изменить электронную почту</label>
                                <input type="text" name="email" id="email" placeholder="Введите электронную почту">
                                <label>Изменить паспортные данные</label>
                                <input type="text" name="passport" id="passport" placeholder= "Введите паспортные данные">
                                <label>Изменить ИНН</label>
                                <input type="text" name="inn" id="inn" placeholder="Введите ИНН">
                                <label>Изменить КПП</label>
                                <input type="text" name="kpp" id="kpp" placeholder="Введите КПП">
                                <label>Изменить расчетный счет</label>
                                <input type="text" name="ind_count" id="ind_count" placeholder="Номер расчетного счета">
                                <label>Изменить корреспондентский счет</label>
                                <input type="text" name="corr_count" id="corr_count" placeholder="Номер корреспондентского счета">
                                <label>Изменить БИК, наименованине банка</label>
                                <input type="text" name="bik_bankname" id="bik_bankname" placeholder="БИК и наименование банка">
                                <button type = "submit" class="design">Внести изменения</button>
                                <?php
                                    
                                    if ($_SESSION) {
                                        echo '<p class="msg"> ' . $_SESSION['message'] . ' </p>';
                                    }
                                    unset($_SESSION['message']);
                                
                                ?>    
                            </form>   
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
<script src="js/global.js"></script>

</body>
</html>