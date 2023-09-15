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
                    <form action="" class="d-flex flex-column">
                        <h2>Регистрация контрагента</h2>
                        <p>Зарегистрированы? <a href="/auth/login">Войти</a></p>
                        <div class="d-flex">
                            <div class="pe-3">
                                <input type="text" class="w-100" placeholder="Имя">
                            </div>
                            <div>
                                <input type="text" class="w-100" placeholder="Фамилия">
                            </div>
                        </div>
                        <input type="email" placeholder="E-mail">
                        <input type="text" placeholder="Название компании">
                        <input type="password" placeholder="Введите пароль">
                        <input type="password" placeholder="Подтвердите пароль">
                        <input type="submit" value="Зарегистрироваться">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>