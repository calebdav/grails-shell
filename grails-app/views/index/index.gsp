<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="application.css"/>
    <title>Champion CRUD Demo</title>
</head>
<body>


<div>
    <div id="page-body" role="main">
        <div id="controller-list" role="navigation" class="panel panel-default">
            <div class="panel-heading">
                <h2 class="panel-title">Welcome to Champion Demo App</h2>
            </div>
            <div class="panel-body">
                <p>This is a demo app to show off basic CRUD features in grails. Below are the CRUD pages you can view.</p>
                <g:if test="${grailsApplication.controllerClasses.size() > 0}">
                    <ul>
                        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                            <li class="controller"><g:link controller="${c.logicalPropertyName}">${message(code: c.propertyName.minus('Controller'))}</g:link></li>
                        </g:each>
                    </ul>
                </g:if>
                <g:else>
                    <p><em>There aren't any controllers yet.</em></p>
                </g:else>
            </div>
        </div>
    </div>
</div>
<br>
<div>
    <h2>Store Orders</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Order Created</th>
            <th>Customer</th>
            <th>Store</th>
            <th>Items</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${storeOrderList}" status="i" var="storeOrder">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:formatDate format="yyyy-MM-dd" date="${storeOrder.orderCreated}" /></td>
                <td>${fieldValue(bean: storeOrder, field: "customer")}</td>
                <td>${fieldValue(bean: storeOrder, field: "store")}</td>
                <td>${fieldValue(bean: storeOrder, field: "items")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
<div>
    <h2>Customers</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Zip</th>
            <th>Phone Number</th>
            <th>Date of Birth</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${customerList}" status="i" var="customer">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fieldValue(bean: customer, field: "name")}</td>
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
</div>
</div>
</body>
</html>
