<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вход</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/style/auth.css">
</head>
<body>
    <div class="container-fluid h-100">
        <div class="row vh-100">
            <div class="col left-background">

            </div>
            <div class="col auth h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-6">
                        <form action="/auth/login" class="d-flex flex-column" method="post">
                            <h2>Вход</h2>
                            <p>Нет аккаунта? <a href="/auth/register">Зарегистрироваться</a></p>
                            <input type="email" name="username" placeholder="E-mail">
                            <input type="password" name="password" placeholder="Введите пароль">
                            <p>Забыли пароль? <a href="#">Восстановить</a></p>
                            <input type="submit" value="Войти">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>