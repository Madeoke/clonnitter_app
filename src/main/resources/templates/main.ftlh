<#import "parts/common.ftlh" as c>
<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" class = "form-control" value="${filter?ifExists}" placeholder="Искать по тэгу">.
            <button type="submit" class="btn btn-primary ml-2">Найти</button>
        </form>
    </div>
</div>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Отправить новое сообщение
</a>
<#include "parts/messageEdit.ftlh" />
<#include "parts/messageList.ftlh" />

</@c.page>