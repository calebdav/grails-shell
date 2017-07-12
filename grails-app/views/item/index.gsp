<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-item" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>
                        <g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
                        <g:sortableColumn property="catalogNumber" title="${message(code: 'item.catalogNumber.label', default: 'Catalog Number')}" />
                        <g:sortableColumn property="price" title="${message(code: 'item.price.label', default: 'Price')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${itemList}" status="i" var="item">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${item.id}">${fieldValue(bean: item, field: "description")}</g:link></td>
                        <td>${fieldValue(bean: item, field: "catalogNumber")}</td>
                        <td>$${fieldValue(bean: item, field: "price")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${itemCount ?: 0}" />
            </div>
        </div>
    </body>
</html>