<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <#if user.isAdmin()>
            <a class="btn" style="text-align: center; width: 50%; background-color: rgba(101,0,168,0.86); text-decoration-color: #dee2e6"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <a class="btn " style="text-align: center; width: 50%; background-color: rgba(101,0,168,0.86); text-decoration-color: #dee2e6"
           href="/my/products">
            Мои статьи
        </a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 50%" class="btn btn-danger">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>