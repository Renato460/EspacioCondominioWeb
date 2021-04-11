<%response.setHeader("Cache-Control","no-cache"); response.setHeader("Pragma","no-cache"); response.setDateHeader("Expires", 0);%>
<%@ page contentType="text/html;charset=windows-1252" pageEncoding="windows-1252"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script> <!-- QUICKSTART CDN  -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script> 
	
<script type="text/javascript" src="js/apis.js">

</script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema de Administración Espacio Condominio</title>
<script>
	$(document).ready(
			function()  {
				$.getJSON('http://www.geoplugin.net/json.gp?jsoncallback=?',
						function(data) {
							$('#region').html('REGIÓN : ' + data.geoplugin_regionName);
							$('#ip').html('IP : ' + data.geoplugin_request);
							$('#pais').html(
									'PAIS : ' + data.geoplugin_countryName);

						});
			});
</script>
</head>
<header> </header>
<body>
	<div id="contenedorHome" class="container-fluid">
		<div class="row">
			<div class="col-sm"></div>
			<div class="col-sm">
				<div class="card">
					<div class="bg-image hover-overlay ripple"
						data-mdb-ripple-color="light">
						<img src="https://mdbootstrap.com/img/new/standard/nature/111.jpg"
							class="img-fluid" /> <a href="#!">
							<div class="mask"
								style="background-color: rgba(251, 251, 251, 0.15)">
								</div>
						</a>
					</div>
					
					<div class="card-body">
						<h5 id="idInicio" class="card-title">Inicio de sesión</h5>
						<p class="card-text">
						<hr>
						<div>
							<div class="form-group">
								<label for="exampleInputEmail1">Correo Electronico</label> <input
									type="email" class="form-control" id="txtUsuario"
									aria-describedby="emailHelp" placeholder="Usuario"> <small
									id="emailHelp" class="form-text text-muted">No
									compartas tu información personal con nadie</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Contraseña</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Contraseña"> <br>
								<button type="button" class="btn btn-warning btn-sm ">He
									olvidado Contraseña</button>
							</div>
							<hr>

							<br>

							<div class="row">
								<div class="col-sm"></div>
								<div class="col-xs">



									<button  class="btn btn-primary"
										onclick="setLoginInformation()">Iniciar Sesión</button>

								</div>
								<div class="col-sm"></div>

							</div>

						</div>
						</p>

					</div>
				</div>
			</div>
			<div class="col-sm"></div>
		</div>
	</div>
</body>
<br>
<br>
<br>

<footer id="footer">

<div  class="alert alert-warning">
<p style="font-weight: 500;"> <img src="IMG/logoFooter.png"
							class="img-fluid" style="width: 31px; height: 33px; "/>LA SIGUIENTE INFORMACIÓN SERÁ INGRESADA A NUESTROS SERVIDORES PARA TENER CONTROL Y SEGURIDAD DE ACCESO</p>	
	<div class="row">
		<div class="col-sm">
			<div id="region"></div>
		</div>
		<div class="col-sm">
			<div id="ip"></div>
			<hr>
			
			<span style="font-weight: 500; color:black;">Valparaiso , Viña Del Mar, Teléfono 56-2 98814512 Código Postal: 666666</span><br>
				<span style="font-weight: 500; color:black;" id="reqmin">Sitio web optimizado para ser responsivo</span>
				<br>
				<span style="font-weight: 500; color:black;" class="reqmin">Versión 1.0</span>
		</div>
		<div class="col-sm">
			<div id="pais"></div>
		</div>
	</div>
	<p></p>
</div>

</footer>
</html>