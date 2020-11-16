<#import "parts/common.ftl" as c>

<@c.page>

<div class="container shadowd bgg pd20 mg15-top">
${message?ifExists}
    <form action="/registration" method="post">
        <div><label> Логин:
            <div class="bgw"><input type="text" name="username"/></div>
        </label></div>
        <div><label> E-mail:
            <div class="bgw"><input type="text" name="mail"/></div>
        </label></div>
        <div><label> Имя:
            <div class="bgw"><input type="text" name="realName"/></div>
        </label></div>
        <div><label> Фамилия:
            <div class="bgw"><input type="text" name="surname"/></div>
        </label></div>
        <div><label> Номер телефона:
            <div class="bgw"><input type="text" name="phoneNumber"/></div>
        </label></div>
        <div><label> Пароль:
            <div class="bgw"><input type="password" name="password"/></div>
        </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="center">
            <button class="btn btn-dark"><input type="submit" value="Регистрация"/></button>
        </div>
    </form>
</div></div>

</@c.page>
