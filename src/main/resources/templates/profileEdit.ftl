<#import "parts/common.ftl" as c>

<@c.page>

<div class="title-block">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center"><h3><b>ПРОФИЛЬ</b></h3></div>
        </div>
    </div>
</div>

<div align="center">
<form class="profile-block shadowd bgg" action="/profile/edit" method="POST">
    <li><label> Логин:
        <div class="bgw"><input type="text" name="username" value="${loggedInUser.user.username}"/></div>
    </label></li>
    <li><label> Имя:
        <div class="bgw"><input type="text" name="realName" value="${loggedInUser.user.realName}"/></div>
    </label></li>
    <li><label> Фамилия:
        <div class="bgw"><input type="text" name="surname" value="${loggedInUser.user.surname}"/></div>
    </label></li>
    <li><label> Номер телефона:
        <div class="bgw"><input type="text" name="phoneNumber" value="${loggedInUser.user.phoneNumber}"/>
        </div>
    </label></li>
    <li><label> Пароль:
        <div class="bgw"><input type="password" name="password" value="${loggedInUser.user.password}"/>
        </div>
    </label></li>
    <button class="pull-left btn btn-success" type="button"><input type="submit" value="OK"/></button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

</form>
</div>


</@c.page>