<%@ page import="sistemaventas.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="cliente.nombre.label" default="Nombre"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${clienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direccion', 'error')} ">
    <label for="direccion">
        <g:message code="cliente.direccion.label" default="Direccion"/>

    </label>
    <g:select id="direccion" name="direccion.id" from="${sistemaventas.Direccion.list()}" optionKey="id"
              value="${clienteInstance?.direccion?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefonos', 'error')} ">
    <label for="telefonos">
        <g:message code="cliente.telefonos.label" default="Telefonos"/>

    </label>
    <g:select name="telefonos" from="${sistemaventas.Telefono.list()}" multiple="multiple" optionKey="id" size="5"
              value="${clienteInstance?.telefonos*.id}" class="many-to-many"/>

</div>

