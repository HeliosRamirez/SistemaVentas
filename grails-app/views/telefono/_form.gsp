<%@ page import="sistemaventas.Telefono" %>



<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'numero', 'error')} required">
    <label for="numero">
        <g:message code="telefono.numero.label" default="Numero"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="numero" maxlength="10" required="" value="${telefonoInstance?.numero}"/>

</div>

