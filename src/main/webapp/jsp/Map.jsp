	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ page import="com.JavaWebApplication.Controller.WEB" %>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/elements/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Car Rentals</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="../css/linearicons.css">
			<link rel="stylesheet" href="../css/owl.carousel.css">
			<link rel="stylesheet" href="../css/font-awesome.min.css">
			<link rel="stylesheet" href="../css/nice-select.css">			
			<link rel="stylesheet" href="../css/magnific-popup.css">
			<link rel="stylesheet" href="../css/bootstrap.css">
			<link rel="stylesheet" href="../css/main.css">
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
				response.setHeader("Cache-Control", "no-cache, must-revalidate, max-age=0");
				response.setHeader("Cache-Control", "no-store");
				response.setHeader("Pragma", "no-cache");
				response.setDateHeader("Expires", 0);
			%>
			
			<%
				if (session != null) {
					
			         if (session.getAttribute("username") != null) {
			        	 
			        	 %>

						  <header id="header" id="home">
						    <div class="container">
						    	<div class="row align-items-center justify-content-between d-flex">
							      <div id="logo">
							        <a href="map.html"><h4 style="color: white;">Sama Transport</h4></a>
							      </div>
							      <nav id="nav-menu-container">
							        <ul class="nav-menu">
							          <li><a href="Home.jsp">Home</a></li>
										<li><a href="Search.jsp">Search</a></li>
										<li><a href="Statut.jsp">Statut</a></li>
							          <li>
							          		<a>
												<form method="post" action="http://localhost:8080/JavaWebApplication/LogoutServlet">
									    			<input type="submit" value="SE DECONNECTER">
									   			</form>
								   			</a>
							          </li>
							        </ul>
							      </nav><!-- #nav-menu-container -->		    		
						    	</div>
						    </div>
						  </header><!-- #header -->
			
						<!-- start banner Area -->
						<section class="banner-area relative" id="home">	
							<div class="overlay overlay-bg"></div>
							<div class="container">
								<div class="row d-flex align-items-center justify-content-center">
									<div class="about-content col-lg-12">
										<h1 class="text-white">
											Résultat
										</h1>	
										<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="map.html"> Contact Us</a></p>
									</div>											
								</div>
							</div>
						</section>
						<!-- End banner Area -->	
			
						<!-- Start contact-page Area -->
						<section class="contact-page-area section-gap">
							<div class="container">
								<div id="myDIV" class="row">
									<div class="map-wrap" style="width:100%; height: 500px;" id="map"></div>
								</div>
							</div>
						</section>
						<!-- End contact-page Area -->
			
						  <!-- Start feature Area -->
						<section class="feature-area section-gap" id="service">
							<div class="container">
								<div class="row d-flex justify-content-center">
									<div class="col-md-8 pb-40 header-text">
										<h1>What Services we offer to our clients</h1>
										<p>
											Who are in extremely love with eco friendly system.
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-4 col-md-6">
										<div class="single-feature">
											<h4><span class="lnr lnr-user"></span>Expert Technicians</h4>
											<p>
												Usage of the Internet is becoming more common due to rapid advancement of technology and power.
											</p>
										</div>
									</div>
									<div class="col-lg-4 col-md-6">
										<div class="single-feature">
											<h4><span class="lnr lnr-license"></span>Professional Service</h4>
											<p>
												Usage of the Internet is becoming more common due to rapid advancement of technology and power.
											</p>
										</div>
									</div>
									<div class="col-lg-4 col-md-6">
										<div class="single-feature">
											<h4><span class="lnr lnr-bubble"></span>Positive Reviews</h4>
											<p>
												Usage of the Internet is becoming more common due to rapid advancement of technology and power.
											</p>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- End feature Area -->
			
						<!-- start footer Area -->		
						<footer class="footer-area section-gap">
							<div class="container">
								<div class="row">
									<div class="col-lg-2 col-md-6 col-sm-6">
										<div class="single-footer-widget">
											<h6>Quick links</h6>
											<ul>
												<li><a href="#">Jobs</a></li>
												<li><a href="#">Brand Assets</a></li>
												<li><a href="#">Investor Relations</a></li>
												<li><a href="#">Terms of Service</a></li>
											</ul>								
										</div>
									</div>
									<div class="col-lg-2 col-md-6 col-sm-6">
										<div class="single-footer-widget">
											<h6>Features</h6>
											<ul>
												<li><a href="#">Jobs</a></li>
												<li><a href="#">Brand Assets</a></li>
												<li><a href="#">Investor Relations</a></li>
												<li><a href="#">Terms of Service</a></li>
											</ul>								
										</div>
									</div>
									<div class="col-lg-2 col-md-6 col-sm-6">
										<div class="single-footer-widget">
											<h6>Resources</h6>
											<ul>
												<li><a href="#">Jobs</a></li>
												<li><a href="#">Brand Assets</a></li>
												<li><a href="#">Investor Relations</a></li>
												<li><a href="#">Terms of Service</a></li>
											</ul>								
										</div>
									</div>												
									<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
										<div class="single-footer-widget">
											<h6>Follow Us</h6>
											<p>Let us be social</p>
											<div class="footer-social d-flex align-items-center">
												<a href="#"><i class="fa fa-facebook"></i></a>
												<a href="#"><i class="fa fa-twitter"></i></a>
												<a href="#"><i class="fa fa-dribbble"></i></a>
												<a href="#"><i class="fa fa-behance"></i></a>
											</div>
										</div>
									</div>
									<div class="col-lg-4  col-md-6 col-sm-6">
										<div class="single-footer-widget">
											<h6>Newsletter</h6>
											<p>Stay update with our latest</p>
											<div class="" id="mc_embed_signup">
												<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
													<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
						                            	<button class="click-btn btn btn-default"><span class="lnr lnr-arrow-right"></span></button>
						                            	<div style="position: absolute; left: -5000px;">
															<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
														</div>
			
													<div class="info"></div>
												</form>
											</div>
										</div>
									</div>	
									<p class="mt-50 mx-auto footer-text col-lg-12">
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>											
								</div>
							</div>
						</footer>	
						<!-- End footer Area -->		
			
						<script src="../js/vendor/jquery-2.2.4.min.js"></script>
						<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
						<script src="../js/vendor/bootstrap.min.js"></script>			
						<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
						<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>			
			  			<script src="../js/easing.min.js"></script>			
						<script src="../js/hoverIntent.js"></script>
						<script src="../js/superfish.min.js"></script>	
						<script src="../js/jquery.ajaxchimp.min.js"></script>
						<script src="../js/jquery.magnific-popup.min.js"></script>	
						<script src="../js/owl.carousel.min.js"></script>			
						<script src="../js/jquery.sticky.js"></script>
						<script src="../js/jquery.nice-select.min.js"></script>	
						<script src="../js/waypoints.min.js"></script>
						<script src="../js/jquery.counterup.min.js"></script>					
						<script src="../js/parallax.min.js"></script>		
						<script src="../js/mail-script.js"></script>	
						<script src="../js/main.js"></script>	
						<%
			         }
			    }
			
				else {
					response.sendRedirect(WEB.login);
				}
		     %>	
		</body>
	</html>


