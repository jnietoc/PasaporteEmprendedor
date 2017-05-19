
<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<ul class="nav nav-tabs nav-justified">
		<li role="presentation" class="active"><a href="${createLink(uri: '/')}">Home</a></li>
		<li role="presentation"><g:link controller="producto" action="index">Lista Productos</g:link></li>
		<li role="presentation"><g:link controller="producto" action="show">Agregar Nuevo</g:link></li>
	</ul>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">

		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="producto.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${productoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="producto.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${productoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="producto.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${productoInstance?.categoria?.id}">${productoInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.subcategoria}">
				<li class="fieldcontain">
					<span id="subcategoria-label" class="property-label"><g:message code="producto.subcategoria.label" default="Subcategoria" /></span>
					
						<span class="property-value" aria-labelledby="subcategoria-label"><g:link controller="subcategoria" action="show" id="${productoInstance?.subcategoria?.id}">${productoInstance?.subcategoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="producto.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:link controller="color" action="show" id="${productoInstance?.color?.id}">${productoInstance?.color?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="producto.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${productoInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.imagen}">
				<li class="fieldcontain">
					<span id="imagen-label" class="property-label"><g:message code="producto.imagen.label" default="Imagen" /></span>
					
						<span class="property-value" aria-labelledby="imagen-label"><g:fieldValue bean="${productoInstance}" field="imagen"/></span>

				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>zz
</html>
