<#import "parts/common.ftl" as c>

<@c.page>


<form class="container shadowd bgg pd20 mg15-top" action="/forgot/" method="post">
    <div><label> E-mail:
        <div class="bgw"><input type="text" name="email"/></div>
    </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="center">
        <button class="btn btn-dark"><input type="submit" value="Отправить"/></button>
    </div>
</form>


</@c.page>