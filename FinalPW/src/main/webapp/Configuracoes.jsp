<html>
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
		<!--//webfonts-->
		<script type="text/javascript" src="web/js/jquery.min.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
		<!--  jquery plguin -->
		<script type="text/javascript" src="web/js/jquery.min.js"></script>
	</head>
	<body>
		<div class="containner">
			<p>nome: ${nome}
			 ${sobrenome}</p>
			<p>email: ${email}</p>

			<input class="btn btn-default btn-sm" type="button" onclick="Servlet?op=Excluir Conta" name ="op" value="Excluir Conta">
		</div>
	</body>
</html>