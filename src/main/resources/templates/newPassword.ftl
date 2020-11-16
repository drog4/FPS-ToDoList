<#import "parts/common.ftl" as c>

<@c.page>

<div class="container shadowd bgg pd20 mg15-top">
    <form action="/forgot/${code}" method="post">
        <div><label> Пароль:
            <div class="bgw"><input type="text" name="password"/></div>
        </label></div>
        <input type="hidden" name="hash" value="${code}"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="center">
            <button class="btn btn-dark"><input type="submit" value="Отправить"/></button>
        </div>
    </form>
</div>

</@c.page>