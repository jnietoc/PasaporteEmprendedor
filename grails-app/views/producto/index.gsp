
<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'Producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><g:link controller="producto" action="index">Lista Productos</g:link></li>
			<li role="presentation"><g:link controller="producto" action="create">Agregar Nuevo</g:link></li>
		</ul>

		<div id="list-producto" class="content scaffold-list" role="main">
			<h1><g:message property="Lista de Productos" message="Lista de Productos" args="[entityName]" /> <span class="badge">${productoInstanceCount}</span> </h1>
			<li></li>
			<li></li>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					

						<g:sortableColumn property="nombre" title="${message(code: 'Producto.nombre.label', default: 'NOMBRE')}" />

						<g:sortableColumn property="categoria" title="${message(code: 'producto.categoria.label', default: 'CATEGORIA')}" />

						<g:sortableColumn property="subcategoria" title="${message(code: 'producto.subcategoria.label', default: 'SUBCATEGORIA')}" />

						<g:sortableColumn property="color" title="${message(code: 'producto.color.label', default: 'COLOR')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'producto.precio.label', default: 'PRECIO')}" />

						<g:sortableColumn property="imagen" title="${message(code: 'producto.imagen.label', default: 'IMAGEN')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productoInstanceList}" status="i" var="productoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: productoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "subcategoria")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "precio")}</td>

						<td><img class="img-thumbnail" src="imagen" alt=""> </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
