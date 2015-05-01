
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
	
	
		<script>
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1577814659163295',
		      xfbml      : true,
		      version    : 'v2.3'
		    });
		  };
		
		  (function(d, s, id){
		     var js, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {return;}
		     js = d.createElement(s); js.id = id;
		     js.src = "//connect.facebook.net/pt_BR/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
		</script>

		<!----start-container----->
		<div class="navbar navbar-fixed-top">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo"><a href="index.html"><img src="web/images/logo.png" alt=""/></a></div>
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
							            <li><a href="#">Todas</a></li>
							            <li><a href="#">Japonesa</a></li>
							            <li><a href="#">Mexicana</a></li>						            
							            <li><a href="#">Vegetariana</a></li>
							          </ul>
							        </div>						          
						        </li>
						        <li><a href="about.html">Sobre</a></li>
						        <li><a href="contact.html">Contato</a></li>
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
        
        <div class="container-fluid" style="margin-top: 15%;">
	        <div class="container-fluid row" style="margin-top: 5%;">
	        	<div style="margin-left: 13%;" class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>
	        </div>
	        
	        <div class="container-fluid">
	        	<div class="form-group row">
	        		<form style="margin-top: 5%;">
	        			<div class="col-xs-2">
		        			<label for="usr">Nome</label>
		        			<input type="text" class="form-control">
	        			</div>
	        			
	        			<div class="col-xs-2">
		        			<label for="usr">Sobrenome</label>
		        			<input type="text" class="form-control">
	        			</div>
	        		</form>
	        	</div>
	        	
	        	<div class="form-group row">
	        		<form style="margin-top: 5%;">
	        			<div class="col-xs-2">
		        			<label for="usr">Email</label>
		        			<input type="text" class="form-control">
	        			</div>
	        		</form>
	        	</div>
	        	
	        	<div class="form-group row">
	        		<form style="margin-top: 5%;">
	        			<div class="col-xs-2">
		        			<label for="usr">Senha</label>
		        			<input type="text" class="form-control">
	        			</div>
	        			
	        			<div class="col-xs-2">
		        			<label for="usr">Repetir senha</label>
		        			<input type="text" class="form-control">
	        			</div>
	        		</form>
	        	</div>
	        </div>
        </div>
    </body>
</html>