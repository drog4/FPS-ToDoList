<#import "parts/common.ftl" as c>
<#import "parts/shortcuts.ftl" as s>

<@c.page>



<div class="container">
    <div class="row">
        <div class="col-md-11 text-center">
            <h1>ЗАДАЧИ</h1>
        </div>
        <div class="col-md-1">
            <button type="button" class="btn btn-success">
                <a href="/addtask">
                    Добавить
                </a>
            </button>
        </div>
    </div>
</div>


    <@s.tasks />

</@c.page>