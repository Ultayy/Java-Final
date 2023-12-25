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

        .btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-login {
            background-color: rgba(101, 0, 168, 0.86);
            color: #fff;
        }

        .btn-register {
            background-color: rgba(101, 0, 168, 0.86);
            color: #fff;
        }

        .btn:hover {
            background-color: #555;
        }
    </style>

    <div class="container">
        <h1 style="text-align: center">Регистрация</h1>
        <hr>
        <form action="/registration" method="post">
            <div class="form-group">
                <label for="name">Имя пользователя</label>
                <input type="text" class="form-control" required id="name" name="name">
            </div>
            <div class="form-group">
                <label for="email">Электронная почта</label>
                <input type="email" class="form-control" id="email" required name="email">
            </div>
            <div class="form-group">
                <label for="phoneNumber">Номер телефона</label>
                <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" class="form-control" id="password" required name="password">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-login">Зарегистрироваться</button>
        </form>
        <#if errorMessage??>
            <h2 style="color: red">${errorMessage}</h2>
        </#if>
    </div>
</@t.template>
