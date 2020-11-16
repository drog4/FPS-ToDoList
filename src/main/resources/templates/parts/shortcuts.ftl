<#include "security.ftl">

<#macro tasks>
    <div class="tasks-block">
        <div class="container">

            <div class="row">
                <div class="col">
                    <h2><b>Название</b></h2>
                </div>
                <div class="col">
                    <h2><b>Описание</b></h2>
                </div>
                <div class="col">
                    <h2><b>Категория</b></h2>
                </div>
                <div class="col">
                    <h2><b>Приоритет</b></h2>
                </div>
                <div class="col">
                    <h2><b>Удалить</b></h2>
                </div>

            </div>

            <#if checker == "no tasks">
                <div class="something">No tasks</div>
            <#else >
                <#list tsks as item>
                    <div class="row">
                        <div class="col">
                            <a href="/task/edit?id=${item.id}"><h3><b>${item.taskName}</b></h3></a>
                        </div>
                        <div class="col">
                            <h4>${item.description}</h4>
                        </div>
                        <div class="col">
                            <h4>${item.category}</h4>
                        </div>
                        <div class="col">
                            <div class="btn-group">
                                <#if item.priority == "Low">
                                <button type="button" class="btn btn-success">${item.priority}</button>
                                <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <#elseif item.priority == "Medium">
                                    <button type="button" class="btn btn-primary">${item.priority}</button>
                                    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <#elseif item.priority == "High">
                                        <button type="button" class="btn btn-danger">${item.priority}</button>
                                        <button type="button"
                                                class="btn btn-danger dropdown-toggle dropdown-toggle-split"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            </#if>

                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item"
                                               href="/task/setpriority?id=${item.id}&priority=Low">Low</a>
                                            <a class="dropdown-item"
                                               href="/task/setpriority?id=${item.id}&priority=Medium">Medium</a>
                                            <a class="dropdown-item"
                                               href="/task/setpriority?id=${item.id}&priority=High">High</a>
                                        </div>
                            </div>
                        </div>
                        <div class="col">
                            <button type="button" class="btn btn-danger">
                                <a href="/task/delete?id=${item.id}">[X]</a>
                            </button>
                        </div>
                    </div>
                </#list>

            </#if>
        </div>
    </div>
</#macro>