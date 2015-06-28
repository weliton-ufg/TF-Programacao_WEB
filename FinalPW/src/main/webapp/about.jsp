<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<meta charset="UTF-8">
	<head>
		<title>Restaurant Booking</title>
		<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="web/css/theme.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script type="text/javascript" src="web/js/jquery.min.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
		<script src="web/js/logout.js"></script>
		<!--  jquery plguin -->
	</head>
	<body>
		<!----start-container----->
<!----start-container----->
		<div class="navbar navbar-fixed-top">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<a href="index.jsp"><img src="web/images/logo.png" alt="" /></a>
					</div>
					<div class="col-md-8">					
	 					<nav class="navbar navbar-default" role="navigation">
						  <div class="container-fluid">
						    <!-- Brand and toggle get grouped for better mobile display -->
						    <div class="navbar-header"><span class="text-left"><a href="#">MENU</a></span>
						      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						      </button>						   
						    </div>					
						    <!-- Collect the nav links, forms, and other content for toggling -->
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						      <ul class="nav navbar-nav">
						      	 <li>
						         <div class="btn-group show-on-hover">
							          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Cozinhas<span class="caret"></span>
							          </button>
							          <ul class="dropdown-menu" role="menu">
							            <li><a href="cozinha.jsp">Todas</a></li>
							            <li><a href="cozinha.jsp">Japonesa</a></li>
							            <li><a href="cozinha.jsp">Mexicana</a></li>						            
							            <li><a href="cozinha.jsp">Vegetariana</a></li>
							          </ul>
							        </div>						          
						        </li>
						        <li><a href="about.jsp">Sobre</a></li>
						        <li><a href="contact.jsp">Contato</a></li>
						        <% if(session.getAttribute("usuarioLogado")!=null){ %>
						      <li>
											<div class="btn-group show-on-hover">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													${usuarioLogado}<span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="Servlet?op=Configurações">Configurações</a></li>
													<li><a href="logout.jsp" >Sair</a></li>
													
									
												</ul>
											</div>
										</li>
										<% }else{%>
						        <li><a href="Cadastro.jsp">Ingressar</a></li>
						        <%} %>
						      </ul>
						   
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->						
						</nav>
					</div>
					<!----start-images-slider---->	
				  <!-- Single button -->
				</div>
				
			</div>
        </div>
    </div>

<div class="container">
    <div class="main">
       	<div class="container">
       	   	<div class="row">
		       	<div class="col-md-12 text-left">
					<h2>Sobre</h2>
				</div>
			</div>	
       	    <div class="row">
				<div class="col-md-4">
						<img src="web/images/about.png" width="250px" height="400px" alt="" class="img-responsive"/>
				</div>
				<div class="col-md-8">
					<div>
                        <h2 class="lead">&nbsp;&nbsp;&nbsp; A empresa Restaurant Booking tem como objetivo inovar a maneira de como você faz a reserva de restaurante, 
						conta com os melhores de restaurantes que podem ser reservados por você com poucos cliques, de forma fácil e segura</h2>					     
						<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>
			</div>
        </div>
    </div>
</div>

<div class="footer">
	<div class="container">
		 <div class="row">
		 	<div class="col-md-12">
		 		<ul class="list-inline pull-left">
		 			<li><a href="#">Termos de serviço</a></li>
		 			<li><a href="#">Política de Privacidade</a></li>
		 			<li><a href="contact.jsp">Contato</a></li>
		 			<li><a href="cadastroRestaurante.jsp">Você tem um restaurante?</a></li>
		 		</ul>
		 	</div>	
		 </div>	
		 <div class="copy-right text-center">
			<p>&#169Copyright 2014 All Rights Reserved  Template <a href="http://w3layouts.com/">  w3layouts.com</a></p>	
		</div>
	</div>
</div>
		
</body>
</html>

