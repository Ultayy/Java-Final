<#import "blocks/template.ftlh" as t>
<@t.template userByPrincipal>
        <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #343a40;
        }

        form {
            margin: 20px 0;
        }

        label {
            margin-right: 10px;
            color: #343a40;
        }

        select, input {
            padding: 5px;
            margin-right: 10px;
        }

        button {
            padding: 5px 10px;
            background-color: rgba(101,0,168,0.86);
            color: #ffffff;
            border: none;
            cursor: pointer;
        }

        hr {
            border: 1px solid #dee2e6;
            margin: 20px 0;
        }

        .product-link {
            text-decoration: none;
            color: #212529;
        }

        .product {
            border: 1px solid #343a40;
            border-radius: 5px;
            margin: 10px;
            padding: 10px;
            background-color: #ffffff;
        }

        img {
            width: 300px; /* Set your desired width */
            height: auto; /* Auto adjust the height to maintain aspect ratio */
            border-radius: 5px;
            margin-bottom: 10px;
        }

        h5 {
            margin: 0;
            color: #007bff;
        }

        .card-footer {
            color: #868e96;
        }

        h1.not-found {
            text-align: center;
            color: #dc3545;
        }

        .product-container {
            display: flex;
            align-items: center;
        }

        .product-description {
            flex: 1;
            margin-left: 10px; /* Adjust margin as needed */
        }
        </style>
    <h1 style="text-align: center">Пользователь</h1>
    <hr>
    <div style="text-align: center">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
    </div>
    <br>
    <hr>
    <h1 style="text-align: center">Все статьи пользователя ${user.name}</h1>
    <br>
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="product-container">
                    <img src="/images/${product.previewImageId}">
                    <div class="product-description top-nav">
                        <h5>${product.title}</h5>
                        <div class="card-footer">
                            ${product.article} от ${product.user.name}
                        </div>
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>

</@t.template>