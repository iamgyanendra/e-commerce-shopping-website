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
                        <a href="Shoes.aspx" class="btn btn-primary float-right">See all &raquo</a>
                        <h5 class="section-title">Sports Shoes</h5>
                    </header>
                    <!-- sect-heading -->



                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/sh2.jpeg" OnClick="ImageButton1_Click" />
                                </a>
                                <figcaption class="info-wrap">
                                    <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2000</del>
                                                    <span class="price text-success">&nbsp ₹1000</span>

                                                </div>


                                    <div class="title mt-1">Nike Sports Shoes</div>
                                    <!-- price-wrap.// -->
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton2" runat="server" Style="height: 150px; width:170px; outline:none" src="images/ProductImage/sh1.jpeg" OnClick="ImageButton2_Click"  />

                                </a>
                                <figcaption class="info-wrap">
                                    <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Puma Sports Shoes</div>
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton3" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/sh3.jpeg" OnClick="ImageButton3_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                    <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Puma Sports Shoes</div>
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton4" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/sh4.jpeg" OnClick="ImageButton4_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                    <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Puma Sports Shoes</div>
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->
                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton5" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/sh5.jpeg" OnClick="ImageButton5_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                    <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Puma Sports Shoes</div>
                                </figcaption>
                            </div>
                        </div>
                        <!-- col.// -->

                        <div class="col-md-2">
                            <div href="#" class="card border-0 pt-3 card-product-grid">
                                <a href="#" class="img-wrap">
                                    <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton6" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/sh6.jpeg" OnClick="ImageButton6_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Puma Sports Shoes</div>
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
                        <div href="" class="card ">
                            <a href="Tracker.aspx" class="img-wrap all-side-Shadow rounded p-2 white">
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
                    <a href="Badminton.aspx">
                        <img class="all-side-Shadow rounded " src="/images/posts/post4.png" alt=""></a>
                </div>

                <div href="" class="img-wrap col-md-4">
                    <a href="Shoes.aspx">
                        <img class="all-side-Shadow rounded" src="/images/posts/post2.png" alt=""></a>
                </div>

                <div href="" class=" img-wrap col-md-4">
                    <a href="Gym.aspx">
                        <img class="all-side-Shadow rounded" src="/images/posts/post3.png" alt=""></a>
                </div>


            </div>

        </section>






        <!-- ========================= SECTION CONTENT ========================= -->
        <section class="section-content">
            <div class="container  all-side-Shadow rounded" style="background-color: #fff;">

                <header class="section-heading pt-2 ">
                    <a href="Football.aspx" class="btn btn-primary float-right">See all</a>
                    <h5 class="section-title">Football</h5>
                </header>
                <!-- sect-heading -->



                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                               <span class="badge badge-danger">40% off </span>
                                    <asp:ImageButton ID="ImageButton7" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f1.jpeg" OnClick="ImageButton7_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹1000</span>

                                                </div>


                                    <div class="title mt-1 ">Vector Football</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton8" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f2.jpeg" OnClick="ImageButton8_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Nivia Footall</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton9" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f3.jpeg" OnClick="ImageButton9_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Kids Footall</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">Discounted </span>
                                    <asp:ImageButton ID="ImageButton10" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f4.jpeg" OnClick="ImageButton10_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹4000</del>
                                                    <span class="price text-success">&nbsp ₹3000</span>

                                                </div>


                                    <div class="title mt-1 ">Nivia Footall</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton11" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f5.jpeg" OnClick="ImageButton11_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹25000</del>
                                                    <span class="price text-success">&nbsp ₹15000</span>

                                                </div>


                                    <div class="title mt-1 "> Footall</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton12" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/f6.jpeg" OnClick="ImageButton12_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹2500</del>
                                                    <span class="price text-success">&nbsp ₹1000</span>

                                                </div>


                                    <div class="title mt-1 ">Nivia Footall</div>
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
                    <a href="Tracker.aspx" class="btn btn-primary float-right">See all</a>
                    <h5 class="section-title">Health Trackers</h5>
                </header>
                <!-- sect-heading -->



                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1);">
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton13" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw1.jpg" OnClick="ImageButton13_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹25000</del>
                                                    <span class="price text-success">&nbsp ₹21000</span>

                                                </div>


                                    <div class="title mt-1 ">Apple Smart Watch</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">Buy Now </span>
                                    <asp:ImageButton ID="ImageButton14" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw2.jpg" OnClick="ImageButton14_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹30000</del>
                                                    <span class="price text-success">&nbsp ₹25000</span>

                                                </div>


                                    <div class="title mt-1 ">Fitbit Smart Watch</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">Hurry Up!</span>
                                    <asp:ImageButton ID="ImageButton15" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw3.jpg" OnClick="ImageButton15_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹35000</del>
                                                    <span class="price text-success">&nbsp ₹30000</span>

                                                </div>


                                    <div class="title mt-1 ">Apple Smart Watch</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">1pc left</span>
                                    <asp:ImageButton ID="ImageButton16" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw4.jpg" OnClick="ImageButton16_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹4000</del>
                                                    <span class="price text-success">&nbsp ₹2000</span>

                                                </div>


                                    <div class="title mt-1 ">Redmi Smart Band</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton17" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw5.jpg" OnClick="ImageButton17_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹40000</del>
                                                    <span class="price text-success">&nbsp ₹20000</span>

                                                </div>


                                    <div class="title mt-1 ">Samsung Smart Watch</div>
                            </figcaption>
                        </div>
                    </div>
                    <!-- col.// -->

                    <div class="col-md-2">
                        <div href="#" class="card border-0 pt-3 card-product-grid">
                            <a href="#" class="img-wrap">
                                <span class="badge badge-danger">NEW </span>
                                    <asp:ImageButton ID="ImageButton18" runat="server" Style="height: 150px; width:170px; outline:none" src="/images/ProductImage/smw6.jpg" OnClick="ImageButton18_Click"/>

                                </a>
                                <figcaption class="info-wrap">
                                  <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹25000</del>
                                                    <span class="price text-success">&nbsp ₹21000</span>

                                                </div>


                                    <div class="title mt-1 ">Apple Smart Watch</div>
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
                            <a href="Shoes.aspx">
                                <img src="images/logos/Nikelogo.jpg"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="Shoes.aspx">
                                <img src="images/logos/Puma-Logo.png"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="Tracker.aspx">
                                <img src="images/logos/Casio-Logo.png"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="Tracker.aspx">
                                <img src="images/logos/Fitbit_logo.png"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="Shoes.aspx">
                                <img src="images/logos/adidas-logo.png"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
                        </figure>
                        <!-- item-logo.// -->
                    </div>
                    <!-- col.// -->
                    <div class="col-md-2  col-6">
                        <figure class="box item-logo">
                            <a href="Gym.aspx">
                                <img src="images/logos/Alala.png"></a>
                            <figcaption class="border-top pt-2">24 Products</figcaption>
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



      

    </form>
</asp:Content>
