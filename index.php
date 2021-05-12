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
        
            <!-- Форма авторизации -->
            <div class="main">
                <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="vendor/log.php" method="post" id="enter">
                            <label>Логин</label>
                            <input type="text" name="login" placeholder="Введите свой логин">
                            <label>Пароль</label>
                            <input type="password" name="password" placeholder="Введите пароль">
                            <button type="submit" id="btn_enter">Войти</button>
                            <p>
                                У вас нет аккаунта? - обратитесь к администратору!
                            </p>
                        </form>
                </div>
            </div>
    </div>
    </div>
          
<script src="js/global.js"></script>

</body>
</html>