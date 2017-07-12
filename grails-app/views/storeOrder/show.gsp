<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'storeOrder.label', default: 'StoreOrder')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-storeOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-storeOrder" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="property-list person">
                <g:if test="${storeOrder?.orderCreated}">
                    <li class="fieldcontain">
                        <span id="dob-label" class="property-label"><g:message code="storeOrder.orderCreated.label" default="Order Created:" /></span>
                        <span class="property-value" aria-labelledby="orderCreated-label"><g:formatDate format="yyyy-MM-dd" date="${storeOrder?.orderCreated}" /></span>
                    </li>
                </g:if>
                <g:if test="${storeOrder?.customer}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="storeOrder.customer.label" default="Customer:" /></span>
                        <span class="property-value" aria-labelledby="customer-label"><g:fieldValue bean="${storeOrder}" field="customer"/></span>
                    </li>
                </g:if>
                <g:if test="${storeOrder?.store}">
                    <li class="fieldcontain">
                        <span id="address-label" class="property-label"><g:message code="storeOrder.store.label" default="Store:" /></span>
                        <span class="property-value" aria-labelledby="store-label"><g:fieldValue bean="${storeOrder}" field="store"/></span>
                    </li>
                </g:if>
                <g:if test="${storeOrder?.items}">
                    <li class="fieldcontain">
                        <span id="city-label" class="property-label"><g:message code="storeOrder.items.label" default="Item:" /></span>
                        <span class="property-value" aria-labelledby="items-label"><g:fieldValue bean="${storeOrder}" field="items"/></span>
                    </li>
                </g:if>
            </ul>
            <g:form resource="${this.storeOrder}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.storeOrder}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
