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
                <div class="row" id="empty"></div>
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
                            <div class="card_create">
                            <div class="row">
                            <form action="">
                                <p>Найти клиента <input type="text" name="search" id="">
                                <input type="submit" value="Поиск"></p>
                                <p><b>Название организации или ФИО клиента</b></p>
                                <input type="text" name="name" id="name" placeholder='ООО "Корабль"'>
                                
                            </form>
                            </div>
                            <div class="row">
                                <label class="" for="">Ничего не найдено?</label>
                            </div>
                            <div class="row"></div>
                            <div class="row">
                                <a href="person-input.php" class="">Внести данные для нового клиента</a>
                            </div>
                            <hr>
                            <div class="row"></div>
                            <h1>Посчитать продукт</h1>
                            <div class="row">
                            
                            <form action="" method="post" placeholder = "" id="enter">       
                           
                       
                        <label class="lable_all" for="parts">Модель а/м</label>
                            <select onchange="" id="parts">
                                <option value="">Газель</option>
                            </select>
                            <label class="lable_all" for="parts">Вид кузова</label>
                            <select onchange="" id="parts">
                                <option value="">Европлатформа</option>
                            </select>
                            <label class="lable_all" for="works">Дополнительные опции</label>
                            <select onchange="" id="works">
                                <option value="">Сдвижная крыша</option>
                            </select>
                            <label class="lable_all"for="fot">Удлинение</label>
                            <select onchange="" id="fot">
                                <option value="">4 м</option>
                            </select>
                            <button type = "submit" id="spec"><a href="client-card.php">Показать карточку клиента</a></button>
                    </form>
                                <hr>
                           
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