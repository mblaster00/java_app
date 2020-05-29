	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ page import="com.JavaWebApplication.Controller.WEB" %>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Sama Transport</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">			
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">
		</head>
		<script type="text/javascript">
			window.addEventListener( 'beforeunload', function(ev) { 
				document.body.style.display = "none";
			})
			window.onpageshow = function (event) {
			    if (event.persisted) {
			        window.location.reload();
			    }
			};
		</script>
		<body>
		
			<% 
				response.setHeader("Cache-Control", "no-cache, must-revalidate");
				response.setHeader("Cache-Control", "no-store");
				response.setHeader("Pragma", "no-cache");
				response.setDateHeader("Expires", 0);
			%>
			
			<%	
				if (session != null) {
					
			         if (session.getAttribute("username") != null) {
			        	 
			 			response.sendRedirect("http://localhost:8080/JavaWebApplication/jsp/Home.jsp");
			         }
		        }
     		%>

			  <header id="header" id="home">
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.html"><h4 style="color: white;">Sama Transport</h4></a>
				      </div>
			    	</div>
			    </div>
			  </header><!-- #header -->


			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div id="myDIV" class="text-center banner-content col-lg-7 col-md-6 ">
							<h6 class="text-white ">the Royal Essence of Journey</h6>
							<h1 class="text-white text-uppercase">
								Bienvenue
							</h1>
							<p class="pt-20 pb-20 text-white">A votre service pour vous faciliter votre deplacement.</p>
							<a href="jsp/Login.jsp" class="primary-btn text-uppercase">Se Connecter</a>
						</div>
						<div class="col-lg-5  col-md-6 header-right">
							<h4 class="text-white pb-30">Formulaire</h4>
							<form method="post" class="form" role="form" autocomplete="off" action="http://localhost:8080/JavaWebApplication/Register">
								<div class="from-group">
							    	<input class="form-control txt-field" type="text" name="username" placeholder="Pseudo" required>
							    	<input class="form-control txt-field" type="password" name="password" placeholder="Mot de passe" required>
									<input class="form-control txt-field" type="password" placeholder="Confirmer mot de passe" required>
								</div>
								<div class="form-group">
							       	<div class="default-select" id="default-select" >
										<select name="role" required>
											<option value="" disabled selected hidden>Role</option>
											<option value="1">Chauffeur</option>
											<option value="2">Client</option>
										</select>
									</div>
							    </div>
								<div class="form-group">
							       	<div class="default-select" id="default-select" >
										<select name="type" required>
											<option value="" disabled selected hidden>Indiquer le type</option>
											<option value="1">Taxi Simple</option>
											<option value="2">Covoiturage</option>
											<option value="3">Taxi Bokko</option>
										</select>
									</div>
							    </div>
								<div class="from-group">
									<input class="form-control txt-field" type="numero" name="identite" placeholder="Carte d'identite" required>
							    </div>
							    <div class="form-group row">
							        <div class="col-md-12">
							            <button type="submit" class="btn btn-default btn-lg btn-block text-center text-uppercase">S'inscrire</button>
							        </div>
							    </div>
							</form>
						</div>											
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>			
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>			
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/waypoints.min.js"></script>
			<script src="js/jquery.counterup.min.js"></script>					
			<script src="js/parallax.min.js"></script>		
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>



