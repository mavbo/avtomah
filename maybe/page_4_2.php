<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Расчет стоимости стандартного изделия</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" />

</head>
<body>
  
    
    <!----header-->
     
    <div class="row">
        <div class="col-md-1">
            <img src="img/logo.png" width="180" height="60">
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-9">
            <p>Добро пожаловать в нашу систему! Пробуйте - и вперед</p>
        </div>
    </div>
      <!--main-->
    <h2> Расчет стоимости стандартного изделия</h2>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <div class="all_inputs">
                <div class="unit_option">
                    <label class="lable_all" for="date">Дата</label>
                    <input type="text" name="" id="date">
                </div>
                <div class="unit_option">
                    <label class="lable_all" for="model">Модель а/м</label>
                    <input type="text" name="" id="model">
                </div>
                <div class="unit_option">
                    <label class="lable_all" for="company">Клиент</label>
                    <input type="text" name="" id="company">
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <div class="all_selects">
                <div class="unit_option">
                    <label class="lable_all" for="parts">Выбрать вид кузова</label>
                    <form action="" method="post">       
                        <select onchange="" id="parts">
						    <option value="">Европлатформа</option>
					    </select>
                    </form>
                </div>
                <div class="unit_option">
                    <label class="lable_all" for="works">Выбрать доп. опции</label>
                    <form action="" method="post">
                        <select onchange="" id="works">
						    <option value="">Cдвижная крыша</option>
					    </select>
                    </form>
                </div>
                <div class="unit_option">
                    <label class="lable_all"for="fot">Выбрать удлинение</label>
                    <form action="" method="post">
                        <select onchange="" id="fot">
						    <option value="">5 или 6 метров</option>
					    </select>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <form action="" method="post"><button id="spec">Показать спецификацию</button></form>
        </div>
    </div>
    <div class="row">  
        <div class="col-md-1"></div>
        <div class="buttons">
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <form action="" method="post"><button class="design">Отменить изменения</button></form>
        </div>
        <div class="col-md-2">    
            <form action="" method="post"><button class="design">Сохранить и выйти</button></form>
        </div>
        <div class="col-md-2">
            <form action="" method="post"><button class="design">Перейти к заполнению<br>договора</button></form>
        </div>
    </div>
    
   


   
     
     
      

<script src="js/global.js"></script>

</body>
</html>