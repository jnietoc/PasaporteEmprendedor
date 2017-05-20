<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>
<%@ page import="com.pasaporte.emprendedor.compras.Categoria" %>

<!DOCTYPE html>
<html>

	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'Producto.label', default: 'Producto')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<asset:javascript src="uploadr.manifest.js"/>
		<asset:stylesheet href="uploadr.manifest.css"/>
	</head>
	<body>
		<ul class="nav nav-tabs nav-justified">

			<li role="presentation"><g:link controller="producto" action="index">Lista Productos</g:link></li>
            <li role="presentation"><g:link controller="categoria" action="create">Agregar Nuevo Categoria</g:link>
            <li role="presentation"><g:link>Agregar Nuevo Color</g:link></li>
		</ul>


		<div id="create-producto" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productoInstance}" var="error">
				<li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="button">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
