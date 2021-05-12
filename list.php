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

                        <!-- Список заказов -->
                  
                        <div class="col-md-9">
                        <div class="row"></div>

                        <h2>Список заказов</h2>
                       <form action="">
                                <label>Ввести начало периода</label>
                                <input type="date" name="date" id="" placeholder="Введите начало периода">
                                <label>Ввести конец периода</label>
                                <input type="date" name="date" id="" placeholder="Введите конец периода">
                        <button type="submit">Выбрать</button>
                        </form>
                     
                        <table>
   <tr>
    <th>Дата</th>
    <th>ФИО или название<br>организации</th>
    <th>Описание заказа</th>
    <th>Описание заказа</th>
    <th>Зарплата производства</th>
    <th>Маржа</th>
    <th>Процент с продажи</th>
   </tr>
   <tr>
    <td>Ячейка 1</td>
    <td>Ячейка 2</td>
    <td>Ячейка 3</td>
    <td>
    <table id="tb_works">
      <tr><td>Lorem</td></tr>
      <tr><td>Ipsum</td></tr>
      <tr><td>Dolor</td></tr>
      <tr><td>Sit</td></tr>
      <tr><td>Amet</td></tr>
     </table>
    </td>
    <td>Ячейка 5</td>
    <td>Ячейка 6</td>
    <td>Ячейка 7</td>
  </tr>
  <tr>
    <td colspan="4">ИТОГО за период</td>
    <td>1000</td>
    <td>10006</td>
    <td>2000</td>
  </tr>
 </table>
 <div class="unit">
 <a href="client-card-create.php">Вернуться к новому заказу</a>
 <a href="list-print.php">Перейти в печатную форму</a>
 </div>
 
     
                           
                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</span>   
<script src="js/global.js"></script>

</body>
</html>