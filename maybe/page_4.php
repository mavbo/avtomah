<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="container">
    
    <!----header-->
      <div class="top">
          <img src="img/logo.png" alt="" srcset="">
      <p>Добро пожаловать в нашу систему! Пробуйте - и Вам понравится</p>
      </div>
      <!--main-->
      <div id="field_3">          
       <h2> Расчет стоимости нестандартного изделия</h2>
       <div class="all_fields">    
            <div class="all_inputs">
                    <input type="text" name="" id="date">
                    <input type="text" name="" id="model">
                    <input type="text" name="" id="company">
            </div>
            <div class="all_selects">
                <label for="parts">Выбрать материал</label>
                       <select onchange="" id="parts">
							<option value="">Материал</option>
						</select>
                <label for="works">Выбрать вид работ</label>
                        <select onchange="" id="works">
							<option value="">Работы</option>
						</select>
                <label for="fot">Фонд оплаты труда</label>
                        <select onchange="" id="fot">
							<option value="">Цифра</option>
						</select>
    
            </div>
            <form action="" method="post"><button class="design">Отменить изменения</button></form>
            <form action="" method="post"><button class="design">Сохранить и выйти</button></form>
            <button class="design">Перейти к заполнению<br>договора</button>

            </div>

        
        </div>



    </div>
     
     
      

<script src="js/global.js"></script>

</body>
</html>