<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Расчет стоимости нестандартного изделия</title>
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
                    <label class="lable_all" for="date">Дата</label>
                    <input type="text" name="date" id="date">
                    <label class="lable_all" for="parts">Модель а/м</label>
                    <form action="" method="post" placeholder = "">       
                        <select onchange="" id="parts">
                            <option value="">Газель</option>
                        </select>
                    </form>
                    <label class="lable_all" for="parts">Клиент</label>
                    <form action="db_pdo.php" method="post" placeholder = "">       
                        <select onchange="" id="parts">
                            <option value="">Выбрать</option>
                        </select>
                    </form>
                    <label class="lable_all" for="parts">Материалы</label>
                    <form action=" method= "post" placeholder = "">       
                        <lable><input type="checkbox" value=""><a href="material_check.php"></a></lable>
                    </form>
                    <label class="lable_all" for="works">Перечень работ</label>
                    <form action="" method="post">
                        <select onchange="" id="works">
                            <option value="">Демонтаж платформы</option>
                        </select>
                    </form>
                    <label class="lable_all"for="fot">Фонд оплаты труда</label>
                    <form action="" method="post">
                        <select onchange="" id="fot">
                            <option value="">2000</option>
                        </select>
                    </form>
                    <form action="" method="post"><button id="spec">Показать спецификацию</button></form>
                </div>
            </div>
        </div>
           <div class="row">  
            <div class="col-md-12">
                <form action="" method="post">
                    <button class="design">Отменить изменения</button>
                </form>
                <form action="" method="post"><button class="design">Сохранить и выйти</button>
                </form>
                <form action="" method="post"><button class="design">Перейти к заполнению<br>договора</button>
                </form>
            </div>
        </div>
    </div>
<script src="js/global.js"></script>
</body>
</html>