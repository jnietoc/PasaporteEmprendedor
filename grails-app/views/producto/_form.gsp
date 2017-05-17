<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="producto.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" required="" value="${productoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${productoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="producto.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${com.pasaporte.emprendedor.compras.Categoria.list()}" optionKey="id" required="" value="${productoInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'subcategoria', 'error')} required">
	<label for="subcategoria">
		<g:message code="producto.subcategoria.label" default="Subcategoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subcategoria" name="subcategoria.id" from="${com.pasaporte.emprendedor.compras.Subcategoria.list()}" optionKey="id" required="" value="${productoInstance?.subcategoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="producto.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="color" name="color.id" from="${com.pasaporte.emprendedor.compras.Color.list()}" optionKey="id" required="" value="${productoInstance?.color?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="producto.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: productoInstance, field: 'precio')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'imagen', 'error')} required">
	<label for="imagen">
		<g:message code="producto.imagen.label" default="Imagen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="imagen" required="" value="${productoInstance?.imagen}"/>

</div>

<uploadr:demo/>

