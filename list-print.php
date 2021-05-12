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
    
    <div class="print">
                <h2>Список заказов</h2>
                <span id="row">            
                <p>c</p><input type="date" name="date" id="" placeholder="01.01.2021">
                <p>по</p><input type="date" name="date" id="" placeholder="01.01.2021">
                </span>
                <table border="1">
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
                        <span class="noprint">
                        <input type="button" value="Печать" onclick="print()"></input>   
                        </span>
    </div>
 
 
 
 
     
                           
                          
</body>
</html>