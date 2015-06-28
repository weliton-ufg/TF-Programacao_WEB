
<html>
	<meta charset = "UTF-8">
	<head>
		<title>Restaurant Booking</title>
		<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="web/css/theme.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script type="text/javascript" src="web/js/jquery.min.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
		<!--  jquery plguin -->
	    <script type="text/javascript" src="web/js/jquery.min.js"></script>
	<!--start slider -->
	    <link rel="stylesheet" href="web/css/fwslider.css" media="all">
		<script src="web/js/jquery-ui.min.js"></script>
		<script src="web/js/css3-mediaqueries.js"></script>
		<script src="web/js/fwslider.js"></script>
	<!--end slider -->
	</head>
	
	<body>
		<!----start-container----->
		<div class="navbar navbar-fixed-top">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo"><a href="index.jsp"><img src="web/images/logo.png" alt=""/></a></div>
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
				  <!-- Single button -->
				</div>

			</div>
        </div>
        </div>
        <div class="container">
        	<div class="main">
        		<h1>Em construção</h1>
        	</div>
        </div>
    </body>
</html>