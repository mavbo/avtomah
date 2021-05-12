<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Расчет стоимости изделия</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" />

</head>
<body>
<?php

	
?>
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
            <!-- Форма расчета работ -->
            <h2> Заполнение спецификации к договору</h2>
        <div class="all_selects">
            <div class="row">
                <div class="col-md-12">
                    <form action="" method="post" placeholder = "" id="enter">       
                        <label class="lable_all" for="date">Дата</label>
                        <input type="text" name="date" id="date">
                        <label class="lable_all" for="parts">Модель а/м</label>
                            <select onchange="" id="parts">
                                <option value="">Газель</option>
                            </select>
                            <label class="lable_all" for="parts">Клиент</label>
                            <select onchange="" id="parts">
                                <option value="">ООО "Клиент"</option>
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
                            <button type = "submit" id="spec">Показать спецификацию</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">  
            <div class="col-md-12">
               <button class="design">Отменить изменения</button>
               <button class="design">Сохранить и выйти</button>
               <button class="design">Перейти к заполнению<br>договора</button>
            </div>
        </div>
    </div>
<script src="js/global.js"></script>
</body>
</html>