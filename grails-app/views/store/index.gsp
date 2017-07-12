<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-store" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-store" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>
                        <g:sortableColumn property="name" title="${message(code: 'store.name.label', default: 'Name')}" />
                        <g:sortableColumn property="itemType" title="${message(code: 'store.itemType.label', default: 'Item Type')}" />
                        <g:sortableColumn property="address" title="${message(code: 'store.address.label', default: 'Address')}" />
                        <g:sortableColumn property="city" title="${message(code: 'store.city.label', default: 'City')}" />
                        <g:sortableColumn property="state" title="${message(code: 'store.state.label', default: 'State')}" />
                        <g:sortableColumn property="zip" title="${message(code: 'store.zip.label', default: 'Zip')}" />
                        <g:sortableColumn property="phoneNumber" title="${message(code: 'store.phoneNumber.label', default: 'Phone Number')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${storeList}" status="i" var="store">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${store.id}">${fieldValue(bean: store, field: "name")}</g:link></td>
                        <td>${fieldValue(bean: store, field: "itemType")}</td>
                        <td>${fieldValue(bean: store, field: "address")}</td>
                        <td>${fieldValue(bean: store, field: "city")}</td>
                        <td>${fieldValue(bean: store, field: "state")}</td>
                        <td>${fieldValue(bean: store, field: "zip")}</td>
                        <td>${fieldValue(bean: store, field: "phoneNumber")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${storeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>