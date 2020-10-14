<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VsProjectSky.home2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">



        <div id="demo" class="carousel slide mt-2" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner  " style="width: 100%; height: 325px !important;">
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
                    </header>
                    <!-- sect-heading -->



                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="/images/items/black shoes.jpg">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">Shoes</a>


                                    <div class="price mt-1">1079.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="images/items/icepeak.jpeg">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">Icepeak</a>


                                    <div class="price mt-1">2080.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="images/items/myfootball.jpeg">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">Football</a>


                                    <div class="price mt-1">2080.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">Sports jersey</a>


                                    <div class="price mt-1">5006.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="images/items/Garmin Fenix 6 sw.jpeg">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">Garmin Fenix</a>

                                    <div class="price mt-1">10070.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <img src="images/items/white_shoes-removebg.png">
                                </a>
                                <figcaption class="info-wrap">
                                    <a href="#" class="title">product name</a>


                                    <div class="price mt-1">10079.00</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->




                    </div>
                    <!-- row.// -->

                </div>
                <!-- container .//  -->



                <div class="col-md-2 ">

                    <div>
                        <div href="#" class="card ">
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
                <div href="#" class="img-wrap col-md-4">
                    <a href="#">
                        <img class="all-side-Shadow rounded " src="/images/posts/post4.png" alt=""></a>
                </div>

                <div href="#" class="img-wrap col-md-4">
                    <a href="#">
                        <img class="all-side-Shadow rounded" src="/images/posts/post2.png" alt=""></a>
                </div>

                <div href="#" class=" img-wrap col-md-4">
                    <a href="#">
                        <img class="all-side-Shadow rounded" src="/images/posts/post3.png" alt=""></a>
                </div>


            </div>

        </section>






        <!-- ========================= SECTION CONTENT ========================= -->
        <section class="section-content">
            <div class="container  all-side-Shadow rounded" style="background-color: #fff;">

                <header class="section-heading pt-2 ">
                    <a href="#" class="btn btn-primary float-right">See all</a>
                    <h5 class="section-title">Popular products</h5>
                </header>
                <!-- sect-heading -->



                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="/images/items/black shoes.jpg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Shoes</a>


                                <div class="price mt-1">1079.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/icepeak.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Icepeak</a>


                                <div class="price mt-1">2080.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/myfootball.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Football</a>


                                <div class="price mt-1">2080.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Sports jersey</a>


                                <div class="price mt-1">5006.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/Garmin Fenix 6 sw.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Garmin Fenix</a>

                                <div class="price mt-1">10070.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/white shoes.jpg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">product name</a>


                                <div class="price mt-1">10079.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->




                </div>
                <!-- row.// -->

            </div>
            <!-- container .//  -->
        </section>
        <!-- ========================= SECTION CONTENT END// ========================= -->



        <!-- ========================= SECTION CONTENT ========================= -->
        <section class="section-content">
            <div class="container  all-side-Shadow rounded" style="background-color: #fff;">

                <header class="section-heading pt-2 ">
                    <a href="#" class="btn btn-primary float-right">See all</a>
                    <h5 class="section-title">Popular products</h5>
                </header>
                <!-- sect-heading -->



                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="/images/items/black shoes.jpg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Shoes</a>


                                <div class="price mt-1">1079.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/icepeak.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Icepeak</a>


                                <div class="price mt-1">2080.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/myfootball.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Football</a>


                                <div class="price mt-1">2080.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/GORE WEAR - C5 WOMEN CYCLING JERSEY.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Sports jersey</a>


                                <div class="price mt-1">5006.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/Garmin Fenix 6 sw.jpeg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Garmin Fenix</a>

                                <div class="price mt-1">10070.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <img src="images/items/white shoes.jpg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">product name</a>


                                <div class="price mt-1">10079.00</div>
                                <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->




                </div>
                <!-- row.// -->

            </div>
            <!-- container .//  -->
        </section>
        <!-- ========================= SECTION CONTENT END// ========================= -->

        <!-- ========================= SECTION  ========================= -->
        <section class="section-name bg padding-y-sm mt-2">
            <div class="container ">
                <header class="section-heading">
                    <h3 class="section-title">Our Brands</h3>
                </header>
                <!-- sect-heading -->

                <div class="row">
                    <div class="col-md-2 col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/Nikelogo.jpg"></a>
                            <figcaption class="border-top pt-2">36 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/Puma-Logo.png"></a>
                            <figcaption class="border-top pt-2">980 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/Casio-Logo.png"></a>
                            <figcaption class="border-top pt-2">25 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/Fitbit_logo.png"></a>
                            <figcaption class="border-top pt-2">72 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/adidas-logo.png"></a>
                            <figcaption class="border-top pt-2">41 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="#">
                                <img src="images/logos/Alala.png"></a>
                            <figcaption class="border-top pt-2">12 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                </div>
                <!-- row.// -->
            </div>
            <!-- container // -->
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
                        </figure>
                        <!-- iconbox // -->
                    </div>
                    <!-- col // -->
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
                        </figure>
                        <!-- iconbox // -->
                    </div>
                    <!-- col // -->
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
                        </figure>
                        <!-- iconbox // -->
                    </div>
                    <!-- col // -->
                </div>
                <!-- row.// -->

            </div>
            <!-- container.// -->
        </section>
        <!-- ========================= SECTION FEATURE END// ========================= -->

    </form>
</asp:Content>
