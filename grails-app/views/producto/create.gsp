<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>
<%@ page import="com.pasaporte.emprendedor.compras.Categoria" %>

<!DOCTYPE html>
<html>

	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'Producto.label', default: 'Producto')}" />
		<title>Agregar Nuevo Producto</title>
		<asset:javascript src="uploadr.manifest.js"/>
		<asset:stylesheet href="uploadr.manifest.css"/>
		<asset:stylesheet href="bootstrap.manifest.css"/>
		<asset:stylesheet href="formProductos.css"/>
	</head>
	<body>
		<ul class="nav nav-tabs nav-justified" >

			<li role="presentation"><g:link controller="producto" action="index" style="color:darkgoldenrod; font-size:larger; font-family: Arial; border-bottom-width: medium">LISTA PRODUCTOS</g:link></li>
            <li role="presentation"><g:link controller="categoria" action="create" style="color:darkgoldenrod; font-size:larger; font-family: Arial;border-bottom-width: medium ">NUEVA CATEGORIA</g:link>
            <li role="presentation"><g:link style="color:darkgoldenrod; font-size:larger; font-family: Arial;border-bottom-width: medium ">NUEVO COLOR</g:link></li>
		</ul>


		<div id="create-producto" class="content scaffold-create" role="main">
			<br>

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
				<fieldset>
					<g:render template="form"/>
				</fieldset>

				<fieldset>
					<g:submitButton name="create" class="btn btn-info"   value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>


	</body>
</html>
