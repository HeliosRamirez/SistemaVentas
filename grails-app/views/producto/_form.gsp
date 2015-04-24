<%@ page import="sistemaventas.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="producto.nombre.label" default="Nombre"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" required="" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precioActual', 'error')} required">
    <label for="precioActual">
        <g:message code="producto.precioActual.label" default="Precio Actual"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="precioActual" value="${fieldValue(bean: productoInstance, field: 'precioActual')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'stock', 'error')} required">
    <label for="stock">
        <g:message code="producto.stock.label" default="Stock"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="stock" type="number" value="${productoInstance?.stock}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'proveedor', 'error')} required">
    <label for="proveedor">
        <g:message code="producto.proveedor.label" default="Proveedor"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="proveedor" name="proveedor.id" from="${sistemaventas.Proveedor.list()}" optionKey="id" required=""
              value="${productoInstance?.proveedor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
    <label for="categoria">
        <g:message code="producto.categoria.label" default="Categoria"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="categoria" name="categoria.id" from="${sistemaventas.Categoria.list()}" optionKey="id" required=""
              value="${productoInstance?.categoria?.id}" class="many-to-one"/>

</div>

