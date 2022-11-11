<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="static/js/script.js" defer></script>
<title>Zoo</title>
</head>
<body>
	<header>
		<div class="container" id="nav-container">
			<nav class="navbar navbar-expand-lg fixed-top">
				<a class="navbar-brand" href="#">
					<img id="logo" alt="ZooLogic" src="img/logo/logo.png"> ZooLogic
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-links" aria-controls="navbar-links"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggle-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end" id="navbar-links">
					<div id="nav-barT" class="navbar-nav">
						<a class="nav-item nav-link" id="home-menu" href="#nav-container">Home</a>
						<a class="nav-item nav-link" id="values-menu" href="#buy">Preços</a>
						<a class="nav-item nav-link" id="about-menu" href="#WeAbout">Sobre nós</a>
						<a class="nav-item nav-link" id="contact-menu" href="#WeAbout">Contatos</a>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<main>
		<div class="container-fluid">
			<div id="mainSlider" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#mainSlider" data-slide-to="0" class="active"></li>
					<li data-target="#mainSlider" data-slide-to="1"></li>
					<li data-target="#mainSlider" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img alt="Leão" class="d-block w-100" src="./img/leao.jpg">
						<div class="carousel-caption d-none d-md-block">
							<h2>
								Está procurando ter um dia divertido?
							</h2>
							<p>Veio ao lugar certo, Compre seu igresso e se divirta!</p>
							<a href="#buy" class="main-btn">Ingressos</a>
						</div>
					</div>
					<div class="carousel-item">
						<img alt="Girafa" class="d-block w-100" src="./img/girafa.jpg">
						<div class="carousel-caption d-none d-md-block">
							<h2>
								Está procurando ter um dia divertido?
							</h2>
							<p>Veio ao lugar certo, Compre seu igresso e se divirta!</p>
							<a href="#buy" class="main-btn">Ingressos</a>
						</div>
					</div>
					<div class="carousel-item">
						<img alt="Rinoceronte" class="d-block w-100" src="./img/rinoceronte.jpg">
						<div class="carousel-caption d-none d-md-block">
							<h2>
								Está procurando ter um dia divertido?
							</h2>
							<p>Veio ao lugar certo, Compre seu igresso e se divirta!</p>
							<a href="#buy" class="main-btn">Ingressos</a>
						</div>
					</div>
				</div>
				<a href="#mainSlider" class="carousel-control-prev" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a href="#mainSlider" class="carousel-control-next" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	
		<div id="buy" class="container mt-5">
			
	
			<div class="form-group row col-12 d-flex justify-content-center mb-5">
				<div id="h1Buy">Compre Seu ingresso!</div>
			</div>
			
			<div class="form-group row col-12">
				
				<div class="col-4 item">
					<div>
						<h1>
							Primeiro plano:
						</h1>
						<p>
							<strong>Termos de Serviço!!!</strong> <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamnt, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
						<button type="button" id="btnEnviar" class="btn btn-primary mt-3 p-2 bd-highlight">Comprar</button>
					</div>
				</div>
				<div class="col-4 item">
					<div>
						<h1>
							Segundo plano:
						</h1>
						<p>
							<strong>Termos de Serviço!!!</strong> <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamnt, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
						<button type="button" id="btnEnviar" class="btn btn-primary mt-3 p-2 bd-highlight">Comprar</button>
					</div>
				</div>	
				<div class="col-4 item">
					<div>
						<h1>
							Terceiro plano:
						</h1>
						<p>
							<strong>Termos de Serviço!!!</strong> <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamnt, sunt in culpa qui officia deserunt mollit anim id est laborum.
						</p>
						<button type="button" id="btnEnviar" class="btn btn-primary mt-3 p-2 bd-highlight">Comprar</button>
					</div>
				</div>
			
			</div>
		</div>
		
		<div id="WeAbout" class="container-fluid mt-5 d-flex justify-content-center"> 
			<section class="container d-flex justify-content-center form-group row">
				<div id="h1Buy">Sobre nós!</div>
					<div id="sectionAbout" class="container form-group row">
						<div>
							<strong>Termos de Serviço!!!</strong> <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamnt, sunt in culpa qui officia deserunt mollit anim id est laborum.
							<strong>Termos de Serviço!!!</strong> <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamnt, sunt in culpa qui officia deserunt mollit anim id est laborum.
						
						</div>
					</div>
			</section>
		</div>
	</main>
	<footer class="text-center text-white" style="background-color: #f1f1f1;">
	  <!-- Grid container -->
	  <div id="footerDiv" class="container pt-4">
	    <!-- Section: Social media -->
	    <section class="mb-4">
	      <!-- Facebook -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-facebook"></i></a>
	
	      <!-- Twitter -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-twitter"></i></a>
	
	      <!-- Google -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-envelope-fill"></i></a>
	
	      <!-- Instagram -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-instagram"></i></a>
	
	      <!-- Linkedin -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-linkedin"></i></a>
	      <!-- Github -->
	      <a
	        class="btn btn-link btn-floating btn-lg text-dark m-1"
	        href="#!"
	        role="button"
	        data-mdb-ripple-color="dark"
	        ><i class="bi bi-github"></i></a>
	      
	    </section>
	    <!-- Section: Social media -->
	  </div>
	  <!-- Grid container -->
	
	  <!-- Copyright -->
	  <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	    © 2022 Copyright:
	    <a class="text-dark" href="https://github.com/LukasAlencar">Lucas Alencar</a>
	  </div>
	  <!-- Copyright -->
</footer>

</body>
</html>