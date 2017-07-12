<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-customer" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>
                        <g:sortableColumn property="name" title="${message(code: 'customer.name.label', default: 'Name')}" />
                        <g:sortableColumn property="address" title="${message(code: 'customer.address.label', default: 'Address')}" />
                        <g:sortableColumn property="city" title="${message(code: 'customer.city.label', default: 'City')}" />
                        <g:sortableColumn property="state" title="${message(code: 'customer.state.label', default: 'State')}" />
                        <g:sortableColumn property="zip" title="${message(code: 'customer.zip.label', default: 'Zip')}" />
                        <g:sortableColumn property="phoneNumber" title="${message(code: 'customer.phoneNumber.label', default: 'Phone Number')}" />
                        <g:sortableColumn property="dob" title="${message(code: 'customer.dob.label', default: 'Date of Birth')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${customerList}" status="i" var="customer">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${customer.id}">${fieldValue(bean: customer, field: "name")}</g:link></td>
                        <td>${fieldValue(bean: customer, field: "address")}</td>
                        <td>${fieldValue(bean: customer, field: "city")}</td>
                        <td>${fieldValue(bean: customer, field: "state")}</td>
                        <td>${fieldValue(bean: customer, field: "zip")}</td>
                        <td>${fieldValue(bean: customer, field: "phoneNumber")}</td>
                        <td><g:formatDate format="yyyy-MM-dd" date="${customer.dob}" /></td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${customerCount ?: 0}" />
            </div>
        </div>
    </body>
</html>