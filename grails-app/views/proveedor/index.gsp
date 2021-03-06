<%@ page import="sistemaventas.Proveedor" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'proveedor.label', default: 'Proveedor')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-proveedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-proveedor" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="nombre" title="${message(code: 'proveedor.nombre.label', default: 'Nombre')}"/>

            <th><g:message code="proveedor.direccion.label" default="Direccion"/></th>

            <th><g:message code="proveedor.telefono.label" default="Telefono"/></th>

            <g:sortableColumn property="pagWeb" title="${message(code: 'proveedor.pagWeb.label', default: 'Pag Web')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${proveedorInstanceList}" status="i" var="proveedorInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${proveedorInstance.id}">${fieldValue(bean: proveedorInstance, field: "nombre")}</g:link></td>

                <td>${fieldValue(bean: proveedorInstance, field: "direccion")}</td>

                <td>${fieldValue(bean: proveedorInstance, field: "telefono")}</td>

                <td>${fieldValue(bean: proveedorInstance, field: "pagWeb")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${proveedorInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
