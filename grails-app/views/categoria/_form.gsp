<%@ page import="com.pasaporte.emprendedor.compras.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="categoria.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${categoriaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="categoria.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${categoriaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'subcategorias', 'error')} ">
	<label for="subcategorias">
		<g:message code="categoria.subcategorias.label" default="Subcategorias" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.subcategorias?}" var="s">
    <li><g:link controller="subcategoria" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subcategoria" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subcategoria.label', default: 'Subcategoria')])}</g:link>
</li>
</ul>


</div>

