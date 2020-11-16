<#import "parts/common.ftl" as c>
<#import "parts/shortcuts.ftl" as s>

<@c.page>
    <@s.tasks>
    <div class="title-block bgts">
        <div class="container">
            <div class="row shadow bgw">
                <div class="col-md-12 path">/ ${task.taskName} <a
                        href="/task/edit?id=${task.id}">${message?ifExists}</a></div>
            </div>
        </div>
    </div>

        <#if message??>
        <div class="title-block bgts">
            <div class="container">
                <div class="row shadow bgg">
                    <div class="col-md-12 path">
                    </div>
                </div>
            </div>
        </#if>

        <div class="main-block">
            <div class="container">


                <div class="pb-3"></div>


            </div>
        </div>

        <div class="desc">
            <div class="container">
                <div class="row shadowd bgw">
                    <div class="col-md-12">
                        <div class="descText">
                        ${task.description}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </@s.tasks>
</@c.page>