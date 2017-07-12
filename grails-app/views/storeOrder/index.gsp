<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'storeOrder.label', default: 'StoreOrder')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-storeOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-storeOrder" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>
                        <g:sortableColumn property="orderCreated" title="${message(code: 'storeOrder.orderCreated.label', default: 'Order Created')}" />
                        <g:sortableColumn property="customer" title="${message(code: 'storeOrder.customer.label', default: 'Customer')}" />
                        <g:sortableColumn property="store" title="${message(code: 'storeOrder.store.label', default: 'Store')}" />
                        <g:sortableColumn property="items" title="${message(code: 'storeOrder.items.label', default: 'Items')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${storeOrderList}" status="i" var="storeOrder">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${storeOrder.id}"><g:formatDate format="yyyy-MM-dd" date="${storeOrder.orderCreated}" /></g:link></td>
                        <td>${fieldValue(bean: storeOrder, field: "customer")}</td>
                        <td>${fieldValue(bean: storeOrder, field: "store")}</td>
                        <td>${fieldValue(bean: storeOrder, field: "items")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${storeOrderCount ?: 0}" />
            </div>
        </div>
    </body>
</html>