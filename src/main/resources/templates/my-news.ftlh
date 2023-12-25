<#import "blocks/template.ftlh" as t>
<@t.template user>
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
            width: 100px; /* Set your desired width */
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
    <h1 style="text-align: center">Мои статьи</h1>
    <hr>
    <a class="btn mt-3 mb-3" style="text-align: center; background-color: rgba(101,0,168,0.86); width: 100%"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
        Добавить новую статью
    </a>
    <div class="collapse mb-3" id="collapseExample" style="">
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Название Статьи</label>
                <input type="text" required class="form-control"
                       id="productName" name="title">
            </div>

            <div class="form-group">
                <label for="searchArticle">Поток</label>
                <select id="searchArticle" required name="article" class="form-control">
                    <option value="">Поток не выбран</option>

                    <option value="Статья">Статья</option>
                    <option value="Посты">Посты</option>
                    <option value="Новости">Новости</option>

                </select>
            </div>
            <div class="form-group">
                <label for="description">Описание</label>
                <textarea required class="form-control" id="description" name="description"></textarea>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input required type="file" name="file1" id="file1">
                    <label class="custom-file-label" for="file1"> фотография </label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file2" id="file2">
                    <label class="custom-file-label" for="file2">фотография</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file3" id="file3">
                    <label class="custom-file-label" for="file3">фотография</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit" style="width: 100%; background-color: rgba(101,0,168,0.86)" class="btn ">Добавить</button>
        </form>
    </div>
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card my-1 product">
                    <div class="card-top">
                        <form action="/product/delete/${product.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                    </div>
                    <div class="card-footer">
                        ${product.article}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
</@t.template>