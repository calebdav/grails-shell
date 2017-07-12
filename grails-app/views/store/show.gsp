<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-store" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-store" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="property-list person">
                <g:if test="${store?.name}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="store.name.label" default="Name:" /></span>
                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${store}" field="name"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.itemType}">
                    <li class="fieldcontain">
                        <span id="itemType-label" class="property-label"><g:message code="store.itemType.label" default="Item Type:" /></span>
                        <span class="property-value" aria-labelledby="itemType-label"><g:fieldValue bean="${store}" field="itemType"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.address}">
                    <li class="fieldcontain">
                        <span id="address-label" class="property-label"><g:message code="store.address.label" default="Address:" /></span>
                        <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${store}" field="address"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.city}">
                    <li class="fieldcontain">
                        <span id="city-label" class="property-label"><g:message code="store.city.label" default="City:" /></span>
                        <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${store}" field="city"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.state}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="store.state.label" default="State:" /></span>
                        <span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${store}" field="state"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.zip}">
                    <li class="fieldcontain">
                        <span id="zip-label" class="property-label"><g:message code="store.zip.label" default="Zip:" /></span>
                        <span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${store}" field="zip"/></span>
                    </li>
                </g:if>
                <g:if test="${store?.phoneNumber}">
                    <li class="fieldcontain">
                        <span id="city-label" class="property-label"><g:message code="store.phoneNumber.label" default="Phone Number:" /></span>
                        <span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${store}" field="phoneNumber"/></span>
                    </li>
                </g:if>
            </ul>
            <g:form resource="${this.store}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.store}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
