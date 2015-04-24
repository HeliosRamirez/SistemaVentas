<%@ page import="sistemaventas.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="proveedor.nombre.label" default="Nombre"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${proveedorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion', 'error')} required">
    <label for="direccion">
        <g:message code="proveedor.direccion.label" default="Direccion"/>
        <%--<span class="required-indicator">*</span>--%>
    </label>
    <g:select id="direccion" name="direccion.id" from="${sistemaventas.Direccion.list()}" optionKey="id" required=""
              value="${proveedorInstance?.direccion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'telefono', 'error')} ">
    <label for="telefono">
        <g:message code="proveedor.telefono.label" default="Telefono"/>

    </label>
    <g:select id="telefono" name="telefono.id" from="${sistemaventas.Telefono.list()}" optionKey="id"
              value="${proveedorInstance?.telefono?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'pagWeb', 'error')} ">
    <label for="pagWeb">
        <g:message code="proveedor.pagWeb.label" default="Pag Web"/>

    </label>
    <g:textField name="pagWeb" value="${proveedorInstance?.pagWeb}"/>

</div>

