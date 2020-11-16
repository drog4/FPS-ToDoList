<#import "parts/common.ftl" as c>

<@c.page>

<form class="profile-block shadowd bgg" action="/task/edit" method="POST" enctype="multipart/form-data">
    <li><label> Задача:
        <div class="bgw"><input type="text" name="taskName" value="${task.taskName}"/></div>
    </label></li>
    <li><label> Описание:
        <div class="bgw"><input type="text" name="description" value="${task.description}"/></div>
    </label></li>
    <input type="hidden" name="id" value="${task.id}"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="pull-left btn btn-success" type="button"><input type="submit" value="Сохранить"/></button>
</form>


</@c.page>