<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product1.aspx.cs" Inherits="VsProjectSky.Product1" %>

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
<body>
    <form id="form1" runat="server">
        <div>

			
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

			
	<!-- ========================= SECTION CONTENT ========================= -->
	<section class="section-content padding-y">
		<div class="container">

			<div class="row">
				


				<main class="col-md-12">

					<header class="border-bottom mb-4 pb-3">
						<div class="form-inline">
							<span class="mr-md-auto">Sports Shoes: 24 Items found </span>
						</div>
					</header>

					<div class="row">
						<div class="col-md-4">

							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger"> NEW </span>
                                    
                                       
										 <asp:ImageButton ID="ImageButton1" runat="server" style="height: 150px" src="/images/ProductImage/sh2.jpeg" OnClick="ImageButton1_Click" />
									

									<a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Product Name and details</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹19800</del>
											<span class="price text-success">&nbsp ₹10000</span>
                                            
										</div> <!-- price-wrap.// -->
										<asp:Label ID="Label1" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="AddCart1" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="AddCart1_Click1"  />
								</figcaption>
							</figure>
						</div> <!-- col.// -->

						<div class="col-md-4">

							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger"> 50% </span>
									 
                                       <asp:ImageButton ID="ImageButton2" runat="server" style="height: 150px" src="images/ProductImage/sh1.jpeg" OnClick="ImageButton2_Click"  />
									
									<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Nike Sports Shoes</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹2000</del>
											<span class="price text-success">&nbsp ₹1000</span>
										</div> <!-- price-wrap.// -->

									    <asp:Label ID="Label2" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="AddCart2" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="AddCart2_Click"  />
								</figcaption>
							</figure>
						</div><!-- col.// -->

						<div class="col-md-4">
							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger">On Discount</span>
                                    
                                       
										 <asp:ImageButton ID="ImageButton3" runat="server" style="height: 150px" src="/images/ProductImage/sh3.jpeg" OnClick="ImageButton3_Click" />
									

									<a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Puma Sports Shoes</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹5000</del>
											<span class="price text-success">&nbsp ₹3000</span>
                                            
										</div> <!-- price-wrap.// -->
										<asp:Label ID="Label3" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button3_Click"   />
								</figcaption>
							</figure>
						</div> <!-- col.// -->

						<div class="col-md-4">
							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger"> Hurry up! </span>
									 
                                       <asp:ImageButton ID="ImageButton4" runat="server" style="height: 150px" src="/images/ProductImage/sh4.jpeg" OnClick="ImageButton4_Click" />
									
									<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Sports Shoes</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹5000</del>
											<span class="price text-success">&nbsp ₹4000</span>
										</div> <!-- price-wrap.// -->

									    <asp:Label ID="Label4" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button4_Click" />
								</figcaption>
							</figure>
						</div><!-- col.// -->

						<div class="col-md-4">
							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger"> NEW </span>
                                    
                                       
										 <asp:ImageButton ID="ImageButton5" runat="server" style="height: 150px" src="/images/ProductImage/sh5.jpeg" OnClick="ImageButton5_Click"  />
									

									<a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Adidas Sports shoes</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹7000</del>
											<span class="price text-success">&nbsp ₹4000</span>
                                            
										</div> <!-- price-wrap.// -->
										<asp:Label ID="Label5" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="Button5" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button5_Click" />
								</figcaption>
							</figure>
						</div> <!-- col.// -->

						<div class="col-md-4">
							<figure class="card card-product-grid">
								<div class="img-wrap">
									<span class="badge badge-danger"> NEW </span>
									 
                                       <asp:ImageButton ID="ImageButton6" runat="server" style="height: 150px" src="/images/ProductImage/sh6.jpeg" OnClick="ImageButton6_Click"  />
									
									<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
								</div> <!-- img-wrap.// -->
								<figcaption class="info-wrap">
									<div class="fix-height">
										<a href="#" class="title">Sports Shoes</a>
										<div class="price-wrap mt-2">
											<del class="price-old text-danger">₹1980</del>
											<span class="price text-success">&nbsp ₹1280</span>
										</div> <!-- price-wrap.// -->

									    <asp:Label ID="Label6" runat="server" Text="QTY: "></asp:Label>
                                        <asp:TextBox ID="TextBox6" runat="server" Width="24px" Height="16px">1</asp:TextBox>
									</div>
									
                                    <asp:Button ID="Button6" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button6_Click" />
								</figcaption>
							</figure>
						</div><!-- col.// -->


						
						
						
					</div> <!-- row end.// -->


					<nav class="mt-4" aria-label="Page navigation sample">
						<ul class="pagination">
							<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>

				</main> <!-- col.// -->

			</div>

		</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT END// ========================= -->

	<!-- ========================= FOOTER ========================= -->
	<footer class="section-footer border-top padding-y">
		<div class="container">
			<p class="float-md-right">
				&copy Copyright 2020 All rights reserved
			</p>
			<p>
				<a href="#">Terms and conditions</a>
			</p>
		</div><!-- //container -->
	</footer>
	<!-- ========================= FOOTER END // ========================= -->




        </div>
    </form>
</body>
</html>
