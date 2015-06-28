<html>

<meta charset="UTF-8">
<head>
<title>Restaurant Booking</title>
<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="web/css/theme.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--webfonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300'
	rel='stylesheet' type='text/css'>
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
<%

session.setAttribute("usuarioLogado",request.getAttribute("nomeUsuario") );
application.setAttribute("usuarioLogado",request.getAttribute("nomeUsuario"));
%>
	<!----start-container----->
	<div class="navbar navbar-fixed-top">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo">
							<a href="index.jsp"><img src="web/images/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-8">
						<nav class="navbar navbar-default" role="navigation">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<span class="text-left"><a href="#">MENU</a></span>
									<button type="button" class="navbar-toggle"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li>
											<div class="btn-group show-on-hover">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													Cozinhas<span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="cozinha.jsp">Todas</a></li>
													<li><a href="cozinha.jsp">Japonesa</a></li>
													<li><a href="cozinha.jsp">Mexicana</a></li>
													<li><a href="#">Vegetariana</a></li>
												</ul>
											</div>
										</li>
										<li><a href="about.jsp">Sobre</a></li>
										<li><a href="contact.jsp">Contato</a></li>
										<li>
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
													<li><a href="logout.jsp">Sair</a></li>
													
											</div>
										</li>
										<% }else{%>
						        <li><a href="Cadastro.jsp">Ingressar</a></li>
						        <%} %>
						      </ul>
						   
								<!-- /.navbar-collapse -->
							</div>
							<!-- /.container-fluid -->
						</nav>
					</div>
					<!----start-images-slider---->
					<!-- Single button -->
				</div>

			</div>
		</div>
	</div>

	<div class="container-fluid" style="margin-top: 8%;">
		<div class="row">
			<div class="col-md-12">
				<!----start-images-slider---->
				<div class="web/images-slider">
					<div id="fwslider">
						<div class="slider_container">
							<div class="slide">
								<img src="web/images/restaurante1.jpg" class="teste" alt="" />
								<div class="slide_content">
									<div class="slide_content_wrap">
										<!-- <p class="description">New Arrivals</p> -->
										<h4 class="title">Os melhores restaurantes estão aqui</h4>
										<p class="description">
											<a href="cozinha.jsp">Veja todos</a>
										</p>
										<div class="slide-btns description"></div>
									</div>

								</div>
							</div>
							<div class="slide">
								<img src="web/images/restaurante2.jpg" class="teste" alt="" />
								<div class="slide_content">
									<div class="slide_content_wrap">
										<!--  <p class="description">New Arrivals</p> -->
										<h4 class="title">Faça sua reserva conosco</h4>
										<p class="description">
											<a href="cozinha.jsp">Escolha seu restaurante</a>
										</p>
										<div class="slide-btns description"></div>
									</div>
								</div>
							</div>
							<!--/slide -->
						</div>
						<div class="timers"></div>
						<div class="slidePrev">
							<span></span>
						</div>
						<div class="slideNext">
							<span></span>
						</div>
					</div>
					<!--/slider -->
				</div>
			</div>
		</div>
	</div>
	<!----//End-container----->
	<div class="container">
		<div class="content">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>Restaurantes em Destaque</h2>
				</div>
			</div>

			<div class="row">

				<!----start-model-box---->
				<a data-toggle="modal" data-target=".bs-example-modal-md" href="#">
				</a>
				<div class="modal fade bs-example-modal-md light-box" tabindex="-1"
					role="dialog" aria-labelledby="mySmallModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-md">
						<div class="modal-content light-box-info">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">
								<img src="web/images/close.png" title="close" />
							</button>
							<h3>Descrição sobre o restaurante</h3>
							<p>Aqui vem a descrição</p>
						</div>
					</div>
				</div>
				<!----start-model-box---->

				<div class="col-md-4">
					<div class="grid">
						<div class="portfolio app mix_all" data-cat="app"
							style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">
								<a data-toggle="modal" data-target=".bs-example-modal-md"
									href="#" class="b-link-stripe b-animate-go  thickbox"> <img
									src="web/images/outback.jpeg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left    b-delay03 ">
											<img src="web/images/link-ico.png" alt="" />
										</h2>
									</div></a>
							</div>
						</div>
						<p class="text-justify">Outback Steakhouse</p>

					</div>
				</div>


				<div class="col-md-4">
					<div class="grid">
						<div class="portfolio app mix_all" data-cat="app"
							style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">
								<a data-toggle="modal" data-target=".bs-example-modal-md"
									href="#" class="b-link-stripe b-animate-go  thickbox"> <img
									src="web/images/Detroit-Steakhouse.png" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left    b-delay03 ">
											<img src="web/images/link-ico.png" alt="" />
										</h2>
									</div></a>
							</div>
						</div>
						<p class="ttext-justify">Detroit Steakhouse</p>

					</div>
				</div>


				<div class="col-md-4">
					<div class="grid">
						<div class="portfolio app mix_all" data-cat="app"
							style="display: inline-block; opacity: 1;">
							<div class="portfolio-wrapper">
								<a data-toggle="modal" data-target=".bs-example-modal-md"
									href="#" class="b-link-stripe b-animate-go  thickbox"> <img
									src="web/images/TAO.jpeg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left    b-delay03 ">
											<img src="web/images/link-ico.png" alt="" />
										</h2>
									</div></a>
							</div>
						</div>
						<p class="text-justify">TAO Asian Bistro</p>

					</div>
				</div>


			</div>
			<div class="clearfix"></div>
		</div>
		<div class="top">
			<div class="row">
				<div class="col-md-4">
					<div class="grid">
						<h2>Sobre nós</h2>
						<p>Nascemos com a missão de conectar você com seus
							restaurantes prediletos em apenas poucos cliques</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="grid1 pull-left">
						<h2>Contato</h2>
						<address>
							<p>tryd online service</p>
							<p>12345 main street</p>
							<p>Newyork</p>
							<p>
								<a href="#">qualquer@email.com</a>
							</p>
							<p>(62) 0000-0000</p>
						</address>
					</div>
					<div class="grid2 pull-right">
						<div class="social-icons-set">
							<ul>
								<li><a class="facebook" href="#"> </a></li>
								<li><a class="twitter" href="#"> </a></li>
								<li><a class="vimeo" href="#"> </a></li>
								<div class="clear"></div>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
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
						<li><a href="cadastroRestaurante.jsp">Você tem um
								restaurante?</a></li>
					</ul>
					<!-- <form class="navbar-form pull-right" role="search">
			        <div class="form-group">
			        <input type="text" class="form-control" placeholder="Search">
			        </div>
			        <button type="Find" class="btn btn-default">Find</button>
			    </form> -->
				</div>
			</div>
			<div class="copy-right text-center">
				<p>
					&#169Copyright 2014 All Rights Reserved Template <a
						href="http://w3layouts.com/"> w3layouts.com</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>