<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="VsProjectSky.home2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

		<meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="max-age=604800" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Sky Shop</title>

	<!-- jQuery -->
	<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

	<!-- Bootstrap4 files-->
	<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

	<!-- Font awesome 5 -->
	<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">


	<link href="css/ui.css" rel="stylesheet" type="text/css" />
	<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

	<!-- custom javascript -->
	<script src="js/script.js" type="text/javascript"></script>

	<script type="text/javascript">
        /// some script

        // jquery ready start
        $(document).ready(function () {
            // jQuery code

        });
    </script>

</head>
<body class="body-color">

	<form id="form1" runat="server">


	<header class="section-header" style="background-color: #ecf0f1;">


		<section class="header-main pt-1 border-bottom">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-2 col-6">
						<a href="../index.html" class="brand-wrap">
							<img class="logo" src="images/logos/SkyShop.png">
						</a> <!-- brand-wrap.// -->
					</div>
					<div class="col-lg-5 col-12 col-sm-12">
						<form action="#" class="search">
							<div class="input-group w-100">
								<input type="text" class="form-control" placeholder="What you are looking for?">
								<div class="input-group-append">
									<button class="btn btn-primary" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
						</form> <!-- search-wrap .end// -->
					</div> <!-- col.// -->



					<div class="col-1 ml-sm-5 "> 
						<a href="#" class="badge badge-primary p-2">Sell On Sky Shop</a>
					</div>

					<div class="col-lg-3 col-sm-4 col-12">
						<div class="widgets-wrap float-md-right">


							
							<div class="widget-header  mr-3">
															

								<a href="#" class="icon icon-sm rounded-circle"><i
										class="fa fa-shopping-cart"></i></a>
								<span class="badge badge-pill badge-danger notify"></span>
							</div>
							<div class="widget-header icontext">
								<a href="#" class="icon icon-sm rounded-circle"><i class="fa fa-user"></i></a>
								<div class="text">
									<span class="text-muted">Welcome!</span>
									<div>
										<a href="Login.aspx">Sign in</a> |
										<a href="#"> Register</a>
									</div>
								</div>
							</div>
						</div> <!-- widgets-wrap.// -->
					</div> <!-- col.// -->
				</div> <!-- row.// -->
			</div> <!-- container.// -->
		</section> <!-- header-main .// -->
	</header> <!-- section-header.// --> 
	

	<nav class="navbar p-0 navbar-expand-lg navbar-light  bg-primary one-edge-shadow">
		<div class="container ">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav"
				aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="main_nav">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link pl-0" data-toggle="dropdown" href="#"><strong> <i class="fa fa-bars"></i>
								&nbsp All category</strong></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Home Gyms</a>
							<a class="dropdown-item" href="#">Dumbbells</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Category 1</a>
							<a class="dropdown-item" href="#">Category 2</a>
							<a class="dropdown-item" href="#">Category 3</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Football</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Badminton</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Cricket</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Cycling</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Exercise Fitness</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Sport Shoes</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Sport Watch</a>
					</li>
				</ul>
			</div> <!-- collapse .// -->
		</div> <!-- container .// -->
	</nav>

	

	<div id="demo" class="carousel slide mt-2" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner  " style=" width:100%; height: 325px !important;">
			<div class="carousel-item active ">
				<img src="/images/banners/newBan1.webp" height="325px" width="100%" alt="Los Angeles">
			</div>
			<div class="carousel-item">
				<img src="/images/banners/myban2.jpg" height="325px" width="100%" alt="Chicago">
			</div>
			<div class="carousel-item">
				<img src="/images/banners/myban3.jpg" height="325px" width="100%" alt="New York">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>

	</div>



	<!-- ========================= SECTION CONTENT ========================= -->

	<section class="section-content">


		<div class="container p-0 d-md-flex mt-2 ">

			<div class="  all-side-Shadow rounded col-md-10" style="background-color: #fff;">

				<header class="section-heading">
					<a href="#" class="btn btn-primary float-right">See all &raquo</a>
					<h5 class="section-title">New Arrivals</h5>
				</header><!-- sect-heading -->



				<div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap"> 
								<span class="badge badge-danger"> NEW </span>
								<img src="/images/items/black shoes.jpg"> </a>
							<figcaption class="info-wrap">
								<a href="#" class="title">Shoes</a>


								<div class="price mt-1">1079.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->
					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap">
								<span class="badge badge-danger"> NEW </span>
								<img src="images/items/icepeak.jpeg"> </a>
							<figcaption class="info-wrap">
								<a href="#" class="title">Icepeak</a>


								<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->

					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap"> 
								<span class="badge badge-danger"> NEW </span>
								<img src="images/items/myfootball.jpeg"> </a>
							<figcaption class="info-wrap">
								<a href="#" class="title">Football</a>


								<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->

					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap"> 
								<span class="badge badge-danger"> NEW </span>
								<img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
							</a>
							<figcaption class="info-wrap">
								<a href="#" class="title">Sports jersey</a>


								<div class="price mt-1">5006.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->
					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap">
								<span class="badge badge-danger"> NEW </span>
								 <img src="images/items/Garmin Fenix 6 sw.jpeg"> </a>
							<figcaption class="info-wrap">
								<a href="#" class="title">Garmin Fenix</a>

								<div class="price mt-1">10070.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->

					<div class="col-md-2">
						<div href="#" class="card border-0 pt-3 card-product-grid">
							<a href="#" class="img-wrap"> 
								<span class="badge badge-danger"> NEW </span>
								<img src="images/items/white_shoes-removebg.png"> </a>
							<figcaption class="info-wrap">
								<a href="#" class="title">product name</a>


								<div class="price mt-1">10079.00</div> <!-- price-wrap.// -->
							</figcaption>
						</div>
					</div> <!-- col.// -->




				</div> <!-- row.// -->

			</div> <!-- container .//  -->



			<div class="col-md-2 ">

				<div  >
					<div href="#" class="card " >
						<a href="#" class="img-wrap all-side-Shadow rounded p-2 white"> 
							<img class="h-100" src="images/items/sideImg1.png"> 
						</a>
						
							
					</div>
				</div>

			</div>


		</div>


	</section>

	<!-- ========================= SECTION CONTENT END// ========================= -->



	<section class="section-content">
		
		<div class=" container d-md-flex mt-2 p-0">
			<div href="#" class="img-wrap col-md-4" >
				<a href="#"><img class="all-side-Shadow rounded " src="/images/posts/post4.png" alt=""></a>
			</div>

			<div href="#" class="img-wrap col-md-4">
				<a href="#"><img class="all-side-Shadow rounded" src="/images/posts/post2.png" alt=""></a>
			</div>

			<div href="#" class=" img-wrap col-md-4">
				<a href="#"><img class="all-side-Shadow rounded" src="/images/posts/post3.png" alt=""></a>
			</div>


		</div>

	</section>






	<!-- ========================= SECTION CONTENT ========================= -->
	<section class="section-content">
		<div class="container  all-side-Shadow rounded" style="background-color: #fff;">

			<header class="section-heading pt-2 ">
				<a href="#" class="btn btn-primary float-right">See all</a>
				<h5 class="section-title">Popular products</h5>
			</header><!-- sect-heading -->



			<div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="/images/items/black shoes.jpg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Shoes</a>


							<div class="price mt-1">1079.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/icepeak.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Icepeak</a>


							<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/myfootball.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Football</a>


							<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
						</a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Sports jersey</a>


							<div class="price mt-1">5006.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/Garmin Fenix 6 sw.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Garmin Fenix</a>

							<div class="price mt-1">10070.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/white shoes.jpg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">product name</a>


							<div class="price mt-1">10079.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->




			</div> <!-- row.// -->

		</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT END// ========================= -->



	<!-- ========================= SECTION CONTENT ========================= -->
	<section class="section-content">
		<div class="container  all-side-Shadow rounded" style="background-color: #fff;">

			<header class="section-heading pt-2 ">
				<a href="#" class="btn btn-primary float-right">See all</a>
				<h5 class="section-title">Popular products</h5>
			</header><!-- sect-heading -->



			<div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="/images/items/black shoes.jpg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Shoes</a>


							<div class="price mt-1">1079.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/icepeak.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Icepeak</a>


							<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/myfootball.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Football</a>


							<div class="price mt-1">2080.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
						</a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Sports jersey</a>


							<div class="price mt-1">5006.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->
				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/Garmin Fenix 6 sw.jpeg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">Garmin Fenix</a>

							<div class="price mt-1">10070.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->

				<div class="col-md-2">
					<div href="#" class="card border-0 pt-3 card-product-grid">
						<a href="#" class="img-wrap"> <img src="images/items/white shoes.jpg"> </a>
						<figcaption class="info-wrap">
							<a href="#" class="title">product name</a>


							<div class="price mt-1">10079.00</div> <!-- price-wrap.// -->
						</figcaption>
					</div>
				</div> <!-- col.// -->




			</div> <!-- row.// -->

		</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT END// ========================= -->

	<!-- ========================= SECTION  ========================= -->
	<section class="section-name bg padding-y-sm mt-2">
		<div class="container ">
			<header class="section-heading">
				<h3 class="section-title">Our Brands</h3>
			</header><!-- sect-heading -->

			<div class="row">
				<div class="col-md-2 col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/Nikelogo.jpg"></a>
						<figcaption class="border-top pt-2">36 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
				<div class="col-md-2  col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/Puma-Logo.png"></a>
						<figcaption class="border-top pt-2">980 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
				<div class="col-md-2  col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/Casio-Logo.png"></a>
						<figcaption class="border-top pt-2">25 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
				<div class="col-md-2  col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/Fitbit_logo.png"></a>
						<figcaption class="border-top pt-2">72 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
				<div class="col-md-2  col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/adidas-logo.png"></a>
						<figcaption class="border-top pt-2">41 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
				<div class="col-md-2  col-6">
					<figure class="box item-logo">
						<a href="#"><img src="images/logos/Alala.png"></a>
						<figcaption class="border-top pt-2">12 Products</figcaption>
					</figure> <!-- item-logo.// -->
				</div> <!-- col.// -->
			</div> <!-- row.// -->
		</div><!-- container // -->
	</section>
	<!-- ========================= SECTION  END// ========================= -->



	<!-- ========================= SECTION FEATURE ========================= -->
	<section class="section-specials padding-y border-bottom">
		<div class="container">	
		<div class="row">
		<div class="col-md-4">	
					<figure class="itemside">
						<div class="aside">
							<span class="icon-sm rounded-circle bg-primary">
								<i class="fa fa-money-bill-alt white"></i>
							</span>
						</div>
						<figcaption class="info">
							<h6 class="title">Reasonable prices</h6>
							<p class="text-muted">Buy any sports items at reasonable price or very low cost and dicounted rate. </p>
						</figcaption>
					</figure> <!-- iconbox // -->
			</div><!-- col // -->
			<div class="col-md-4">
					<figure class="itemside">
						<div class="aside">
							<span class="icon-sm rounded-circle bg-danger">
								<i class="fa fa-comment-dots white"></i>
							</span>
						</div>
						<figcaption class="info">
							<h6 class="title">Customer support 24/7 </h6>
							<p class="text-muted">Sky Shop will provide customer support service 24/7 for any complaint so, buy without hesitation. </p>
						</figcaption>
					</figure> <!-- iconbox // -->
			</div><!-- col // -->
			<div class="col-md-4">
					<figure class="itemside">
						<div class="aside">
							<span class="icon-sm rounded-circle bg-success">
								<i class="fa fa-truck white"></i>
							</span>
						</div>
						<figcaption class="info">
							<h6 class="title">Quick delivery</h6>
							<p class="text-muted">We will try to delevier the goods under two working days.  </p>
						</figcaption>
					</figure> <!-- iconbox // -->
			</div><!-- col // -->
		</div> <!-- row.// -->
		
		</div> <!-- container.// -->
		</section>
	<!-- ========================= SECTION FEATURE END// ========================= -->






	<!-- ========================= FOOTER ========================= -->
	<footer class="section-footer border-top bg" style="background-color: #172337;">
		<div class="container">
			<section class="footer-top  padding-y">
				<div class="row">
					<aside class="col-md col-6">
						<h6 class="title text-muted">Our Brands</h6>
						<ul class="list-unstyled white">
							<li> <a href="#">Adidas</a></li>
							<li> <a href="#">Puma</a></li>
							<li> <a href="#">Reebok</a></li>
							<li> <a href="#">Nike</a></li>
						</ul>
					</aside>
					<aside class="col-md col-6">
						<h6 class="title text-muted">Sky Shop</h6>
						<ul class="list-unstyled white">
							<li> <a href="#">About us</a></li>
							<li> <a href="#">Career</a></li>
							<li> <a href="#">Ads</a></li>
							<li> <a href="#">T&C</a></li>
						
						</ul>
					</aside>
					<aside class="col-md col-6">
						<h6 class="title text-muted">Help</h6>
						<ul class="list-unstyled white">
							<li> <a href="#">Contact us</a></li>
							<li> <a href="#">Money refund</a></li>
							<li> <a href="#">Order status</a></li>
							<li> <a href="#">Shipping info</a></li>
							<li> <a href="#">F&Q</a></li>
						</ul>
					</aside>
					<aside class="col-md col-6">
						<h6 class="title text-muted">Account</h6>
						<ul class="list-unstyled white">
							<li> <a href="#"> User Login </a></li>
							<li> <a href="#"> User register </a></li>
							<li> <a href="#"> Account Setting </a></li>
							<li> <a href="#"> My Orders </a></li>
						</ul>
					</aside>
					<aside class="col-md">
						<h6 class="title text-muted">Social</h6>
						<ul class="list-unstyled white">
							<li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
							<li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
							<li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
							<li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
						</ul>
					</aside>
				</div> <!-- row.// -->
			</section> <!-- footer-top.// -->

			<section class="footer-bottom row">
				<div class="col-md-2">
					<p class="text-muted"> &copy 2020 Sky Shop </p>
				</div>
				<div class="col-md-8 text-md-center text-muted">
					<span class="px-2">prakash9.2020@gmail.com</span>
					<span class="px-2">+91-9560689237</span>
					<span class="px-2">New Delhi, India</span>
				</div>
				<div class="col-md-2 text-md-right text-muted">
					<i class="fab fa-lg fa-cc-visa"></i>
					<i class="fab fa-lg fa-cc-paypal"></i>
					<i class="fab fa-lg fa-cc-mastercard"></i>
				</div>
			</section>
		</div><!-- //container -->
	</footer>
	<!-- ========================= FOOTER END // ========================= -->

</form>
</body>
</html>
