<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-customer" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ul class="property-list person">
            	<g:if test="${customer?.name}">
            	    <li class="fieldcontain">
            			<span id="name-label" class="property-label"><g:message code="customer.name.label" default="Name:" /></span>
            			<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customer}" field="name"/></span>
            		</li>
            	</g:if>
            	<g:if test="${customer?.address}">
            		<li class="fieldcontain">
            			<span id="address-label" class="property-label"><g:message code="customer.address.label" default="Address:" /></span>
            			<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${customer}" field="address"/></span>
            		</li>
            	</g:if>
            	<g:if test="${customer?.city}">
            		<li class="fieldcontain">
            			<span id="city-label" class="property-label"><g:message code="customer.city.label" default="City:" /></span>
            			<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${customer}" field="city"/></span>
            		</li>
            	</g:if>
            	<g:if test="${customer?.state}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="customer.state.label" default="State:" /></span>
                        <span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${customer}" field="state"/></span>
                    </li>
                </g:if>
                <g:if test="${customer?.zip}">
                    <li class="fieldcontain">
                        <span id="zip-label" class="property-label"><g:message code="customer.zip.label" default="Zip:" /></span>
                        <span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${customer}" field="zip"/></span>
                    </li>
                </g:if>
                <g:if test="${customer?.phoneNumber}">
                    <li class="fieldcontain">
                        <span id="city-label" class="property-label"><g:message code="customer.phoneNumber.label" default="Phone Number:" /></span>
                        <span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${customer}" field="phoneNumber"/></span>
                    </li>
                </g:if>
                <g:if test="${customer?.dob}">
                	<li class="fieldcontain">
                		<span id="dob-label" class="property-label"><g:message code="customer.dateOfBirth.label" default="Date Of Birth:" /></span>
                		<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate format="yyyy-MM-dd" date="${customer?.dob}" /></span>
                    </li>
                </g:if>
            </ul>

            <g:form resource="${this.customer}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.customer}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
