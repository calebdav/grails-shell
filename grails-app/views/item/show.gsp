<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-item" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="property-list person">
                <g:if test="${item?.description}">
                    <li class="fieldcontain">
                        <span id="description-label" class="property-label"><g:message code="item.description.label" default="Description:" /></span>
                        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${item}" field="description"/></span>
                    </li>
                </g:if>
                <g:if test="${item?.catalogNumber}">
                    <li class="fieldcontain">
                        <span id="catalogNumber-label" class="property-label"><g:message code="item.catalogNumber.label" default="Catalog Number:" /></span>
                        <span class="property-value" aria-labelledby="catalogNumber-label"><g:fieldValue bean="${item}" field="catalogNumber"/></span>
                    </li>
                </g:if>
                <g:if test="${item?.price}">
                    <li class="fieldcontain">
                        <span id="price-label" class="property-label"><g:message code="item.price.label" default="Price:" /></span>
                        <span class="property-value" aria-labelledby="price-label">$<g:fieldValue bean="${item}" field="price"/></span>
                    </li>
                </g:if>
            </ul>
            <g:form resource="${this.item}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.item}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
