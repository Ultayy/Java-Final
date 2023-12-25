<#import "blocks/template.ftlh" as t>
<@t.template user>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .invalid-feedback {
            color: #ff0000;
            font-size: 14px;
        }

        .btn-dark {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-dark:hover {
            background-color: #555;
        }
    </style>

    <div class="container">
            <h1 style="text-align: center">Войти</h1>
            <hr>
            <form action="/login" method="post">
                <div class="login__img">
                    <img src='/static/images/login.png' alt="" style="width: 100%; height: 100%"/>
                </div>
                <div class="form-group">
                    <label for="email">Электронная почта</label>
                    <input type="email" class="form-control" id="email" name="username">
                    <div id="email" class="invalid-feedback">
                        Неверная электронная почта
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Пароль</label>
                    <input type="password" class="form-control" id="password" name="password">
                    <div id="password" class="invalid-feedback">
                        Неверный пароль
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" style="width: 100%; background-color: rgba(101,0,168,0.86)" class="btn">Войти</button>
                <button class="btn " style="width: 100%; background-color: rgba(101,0,168,0.86)" type="button"
                        onclick="window.location.href = '/registration'">
                    Регистрация
                </button>
            </form>
            <hr>
        </@t.template>

