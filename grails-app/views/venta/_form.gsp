<%@ page import="sistemaventas.Venta" %>



<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'fecha', 'error')} required">
    <label for="fecha">
        <g:message code="venta.fecha.label" default="Fecha"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="fecha" precision="day" value="${ventaInstance?.fecha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'cliente', 'error')} required">
    <label for="cliente">
        <g:message code="venta.cliente.label" default="Cliente"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="cliente" name="cliente.id" from="${sistemaventas.Cliente.list()}" optionKey="id" required=""
              value="${ventaInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'descuento', 'error')} ">
    <label for="descuento">
        <g:message code="venta.descuento.label" default="Descuento"/>

    </label>
    <g:field name="descuento" type="number" value="${ventaInstance.descuento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'montoTotal', 'error')} required">
    <label for="montoTotal">
        <g:message code="venta.montoTotal.label" default="Monto Total"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="montoTotal" value="${fieldValue(bean: ventaInstance, field: 'montoTotal')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ventaInstance, field: 'productosVendidos', 'error')} required">
    <label for="productosVendidos">
        <g:message code="venta.productosVendidos.label" default="Productos Vendidos"/>
        <span class="required-indicator">*</span>
    </label>

    <ul class="one-to-many">
        <g:each in="${ventaInstance?.productosVendidos ?}" var="p">
            <li><g:link controller="productoVendido" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="productoVendido" action="create"
                    params="['venta.id': ventaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'productoVendido.label', default: 'ProductoVendido')])}</g:link>
        </li>
    </ul>

</div>

