<#import "parts/common.ftl" as c>

<@c.page>

<form class="profile-block shadowd bgg" action="/addtask" method="post" align="center">
    <div><label> Задача:
        <div class="bgw"><input type="text" name="taskname"/></div>
    </label></div>
    <div><label> Описание:
        <div class="bgw"><input type="text" name="description"/></div>
    </label></div>
    <div><label> Категория:
        <div class="bgw"><input type="text" name="category"/></div>
    </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="center">
        <button class="pull-left btn btn-success" type="button"><input type="submit" value="Добавить"/></button>
    </div>
</form>

</@c.page>