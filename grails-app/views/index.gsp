<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <asset:javascript src="application.js"/>
        <asset:stylesheet src="application.css"/>
        <title>Champion CRUD Demo</title>
    </head>
    <body>


            <div class="col-md-8">
                <div id="page-body" role="main">
                    <div id="controller-list" role="navigation" class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">Welcome to Grails Shell</h2>
                        </div>
                        <div class="panel-body">
                            <p>Congratulations, you have successfully started your first Grails application! At the moment, this is the default page (Check out the <code>UrlMappings</code> class to see why). Feel free to modify it to either redirect to a controller or display whatever content you may choose. Below is a list of controllers that are currently deployed in this application, click on each to execute its default action:</p>
                            <g:if test="${grailsApplication.controllerClasses.size() > 0}">
                                <ul>
                                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${message(code: c.propertyName.minus('Controller') + '.label')}</g:link></li>
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
            <div>
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
                    <g:javascript plugin="jquery" library="jquery" />
                    <script>
                        var storeOrderList = StoreOrder.list()
                    </script>
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
            </div>
            <div>
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
                    <g:javascript plugin="jquery" library="jquery" />
                    <%
                        def customerList = ${customer.index(1)}
                    %>
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
            </div>
        </div>
    </body>
</html>
