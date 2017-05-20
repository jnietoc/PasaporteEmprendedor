<%@ page import="org.apache.commons.lang.RandomStringUtils; com.pasaporte.emprendedor.compras.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Pasaporte Emprendedor</title>
	</head>
	<body>
		<div class="container">
			<div class="row row-offcanvas row-offcanvas-left">
				<div class="col-xs-6 col-sm-3 sidebar-offcanvas-left" id="sidebar"  >
					<div class="list-group">
						<a class="list-group-item active" href="#" onclick="$('#ropa').fadeToggle('slow', 'swing')">ROPA</a>
						<div id="ropa" style="display: none;">
							<a class="list-group-item" href="#">Camisas</a>
							<a class="list-group-item" href="#">Playeras</a>
							<a class="list-group-item" href="#">Blusas</a>
							<a class="list-group-item" href="#">Pantalones</a>
							<a class="list-group-item" href="#">Conjunto Deportivo</a>
							<a class="list-group-item" href="#">Shorts</a>
						</div>
						<a class="list-group-item active" href="#" onclick="$('#electronicos').fadeToggle('slow', 'swing')">ELECTRONICOS</a>
						<div id="electronicos" style="display: none;">
							<a class="list-group-item" href="#">Laptops</a>
							<a class="list-group-item" href="#">Bocinas</a>
							<a class="list-group-item" href="#">Stereos</a>
							<a class="list-group-item" href="#">Barras de Sonido</a>
							<a class="list-group-item" href="#">Pantallas</a>
							<a class="list-group-item" href="#">Bocinas</a>
						</div>
						<a class="list-group-item active" href="#" onclick="$('#joyeria').fadeToggle('slow', 'swing')">JOYERIA</a>
						<div id="joyeria" style="display: none;">
							<a class="list-group-item" href="#">Anillos</a>
							<a class="list-group-item" href="#">Solitarios</a>
							<a class="list-group-item" href="#">Gargantillas</a>
							<a class="list-group-item" href="#">Dijes</a>
							<a class="list-group-item" href="#">Brazaletes</a>
						</div>
					</div>
				</div><!--/.sidebar-offcanvas-->

				<div class="col-xs-12 col-sm-9">
					<p class="pull-left visible-xs">
						<button class="btn btn-primary btn-xs" type="button" data-toggle="offca
						nvas" onclick="showSideBar();">Toggle nav</button>
					</p>
					<div class="jumbotron">
						<asset:image src="banner.jpg"/>
					</div>
					<g:each in="${com.pasaporte.emprendedor.compras.Producto.list()}" var="producto">
						<div class="row">
							<div class="col-sm-9 col-md-9">
								<div class="thumbnail">
									<img src="${resource(dir: 'images/1234', file: 'Rubi (35)-2.jpg)')}"  alt="...">
									<div class="caption">
										<h3>${producto.nombre}</h3>
										<p>...</p>
										<p><a href="#" class="btn btn-primary" role="button">Ver Más</a> <a href="#" class="btn btn-default" role="button">Añadir al Carrito</a></p>
									</div>
								</div>
							</div>
						</div>
					</g:each>
				</div><!--/.col-xs-12.col-sm-9-->
			</div><!--/row-->
		</div>
	</body>
</html>
