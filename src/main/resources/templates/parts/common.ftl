<#include "security.ftl">


<#macro page>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>FPS-yourToDo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
            integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/static/mystyle.css">
</head>
<body>

<center>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-3"><a href="/"><img src="/static/img/LOGO.gif" alt="logo"></a></div>
                <div class="col-md-6">
                    <form action="/search" method="get">
                        <div class="searcher-block">
                            <center>

                                <input type="text" name="search"/>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <button type="submit"><img src="/static/img/btn-search.gif" alt="search"></button>
                            </center>
                        </div>
                    </form>
                </div>
                <div class="col-md-3">
                    <form action="#">
                        <div class="login-block">
                            <div class="container text-center">
                                <#if name != "unknown">


                                    <nav>
                                        <ul>
                                            <li><a href="/profile">Мой профиль</a></li>
                                            <li><a href="/logout">Выйти</a></li>
                                        </ul>
                                    </nav>

                                <#else>
                                    <nav>
                                        <ul>
                                            <li><a href="/login">Войти</a></li>
                                            <li><a href="/registration">Регистрация</a></li>
                                        </ul>
                                    </nav>
                                </#if>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </header>

</center>

    <#nested>

<footer>
    <div align="center">
        <div>
            <li><a href="#" title="link" class="a">FAQ</a></li>
            <li><a href="#" title="link" class="a">О нас</a></li>
            <li><a href="https://vk.com/drog64" title="link" class="a">Сотрудничество</a></li>
        </div>
    </div>
    <div class="container author" align="center">© 2019 DROG'S PROJECT ::: ALL RIGHTS RESERVED :::</div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
</#macro>