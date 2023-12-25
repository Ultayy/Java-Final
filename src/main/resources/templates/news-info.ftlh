<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Your Page Title</title>

    <!-- Bootstrap CSS (Assuming you are using Bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Add your custom styles here */

        body {
            padding-top: 56px; /* Adjust the padding based on your navigation bar height */
        }

        #myCarousel {
            margin-top: 20px;
        }

        .carousel-item {
            width: 100%;
            height: 0;
            padding-bottom: 100%; /* 1:1 aspect ratio */
            position: relative;
        }

        .carousel-item img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        h1 {
            color: #007bff; /* Bootstrap primary color */
        }

        p {
            color: #333; /* Dark gray color for paragraphs */
        }

        hr {
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }

        /* Add more styles as needed */
    </style>
</head>
<body>

<#import "blocks/template.ftlh" as t>
<@t.template user>
    <p style="text-align: left">
        <a href="/user/${authorProduct.id}">
             ${authorProduct.name}
        </a>
    </p>
    <p><h1 style="text-align: left">${product.title}</h1></p>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <#list images as image>
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            </#list>
        </ol>
        <div class="carousel-inner">
            <#list images as image>
                <div class="carousel-item <#if image.previewImage>active</#if>">
                    <img class="d-block w-100" src="/images/${image.id}" alt="">
                </div>
            </#list>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <hr>
    <p style="text-align: center"><h2>${product.description}</h2></p>
    <p style="text-align: center">Номер телефона: <b>${authorProduct.phoneNumber}</b></p>
    <hr>
</@t.template>

<!-- Bootstrap JS (Assuming you are using Bootstrap) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
