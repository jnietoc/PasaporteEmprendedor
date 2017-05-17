<%@ page import="com.pasaporte.emprendedor.compras.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<div class="container">
			<div class="row row-offcanvas row-offcanvas-right">
				<div class="col-xs-12 col-sm-9">
					<p class="pull-right visible-xs">
						<button class="btn btn-primary btn-xs" type="button" data-toggle="offcanvas" onclick="showSideBar();">Toggle nav</button>
					</p>
					<div class="jumbotron">
						<h1>Hello, world!</h1>
					</div>
					<g:each in="${com.pasaporte.emprendedor.compras.Producto.list()}" var="producto">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="..." alt="...">
									<div class="caption">
										<h3>${producto.nombre}</h3>
										<p>...</p>
										<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
									</div>
								</div>
							</div>
						</div>
					</g:each>

				</div><!--/.col-xs-12.col-sm-9-->

				<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
					<div class="list-group">
						<a class="list-group-item active" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
						<a class="list-group-item" href="#">Link</a>
					</div>
				</div><!--/.sidebar-offcanvas-->
			</div><!--/row-->

			<hr>

			<footer>
				<p>© Company 2014</p>
			</footer>

		</div>
	</body>
</html>
