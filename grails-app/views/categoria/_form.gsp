<%@ page import="sistemaventas.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="categoria.nombre.label" default="Nombre"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${categoriaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'descripcion', 'error')} ">
    <label for="descripcion">
        <g:message code="categoria.descripcion.label" default="Descripcion"/>

    </label>
    <g:textField name="descripcion" value="${categoriaInstance?.descripcion}"/>

</div>

