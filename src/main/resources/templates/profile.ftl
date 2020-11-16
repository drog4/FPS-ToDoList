<#import "parts/common.ftl" as c>

<@c.page>

<div class="title-block">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center"><h3><b>ПРОФИЛЬ</b></h3></div>
        </div>
    </div>
</div>

<center>
    <div class="profile-block">
        <div class="container">

            <div class="text-center">
                <li>${loggedInUser.user.surname} ${loggedInUser.user.realName}</li>
                <li>Логин: ${loggedInUser.user.username}</li>
                <li>E-mail: ${loggedInUser.user.mail}</li>
                <li>${loggedInUser.user.phoneNumber}</li>
            </div>
            <button type="button" class="btn btn-success">
                <a href="/profile/edit">
                    Изменить
                </a>
            </button>

        </div>

    </div>
</center>

</@c.page>