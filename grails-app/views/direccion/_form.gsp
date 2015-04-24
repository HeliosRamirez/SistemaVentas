<%@ page import="sistemaventas.Direccion" %>



<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'calle', 'error')} required">
    <label for="calle">
        <g:message code="direccion.calle.label" default="Calle"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="calle" required="" value="${direccionInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'numero', 'error')} ">
    <label for="numero">
        <g:message code="direccion.numero.label" default="Numero"/>

    </label>
    <g:textField name="numero" value="${direccionInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'comuna', 'error')} required">
    <label for="comuna">
        <g:message code="direccion.comuna.label" default="Comuna"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="comuna" required="" value="${direccionInstance?.comuna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: direccionInstance, field: 'ciudad', 'error')} required">
    <label for="ciudad">
        <g:message code="direccion.ciudad.label" default="Ciudad"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="ciudad" required="" value="${direccionInstance?.ciudad}"/>

</div>

