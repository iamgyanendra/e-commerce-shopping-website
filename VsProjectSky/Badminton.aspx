﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Badminton.aspx.cs" Inherits="VsProjectSky.Badminton" %>

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


	

	

</head>
<body>
    <form id="form1" runat="server">
<div>

            <section class="section-content padding-y">
                <div class="container">

                    <div class="row">



                        <main class="col-md-12">

                            <header class="border-bottom mb-4 pb-3">
                                <div class="form-inline">
                                    <span class="mr-md-auto">Badminton: 24 Items found </span>
                                </div>
                            </header>

                            <div class="row">
                                <div class="col-md-4">

                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger">NEW </span>


                                            <asp:ImageButton ID="ImageButton1" runat="server" Style="height: 150px" src="/images/ProductImage/b1.jpeg" OnClick="ImageButton1_Click" />


                                            <a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹980</del>
                                                    <span class="price text-success">&nbsp ₹200</span>

                                                </div>
                                                <!-- price-wrap.// -->
                                                <asp:Label ID="Label1" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox1" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="AddCart1" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="AddCart1_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->

                                <div class="col-md-4">

                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger"> </span>

                                            <asp:ImageButton ID="Image2" runat="server" Style="height: 150px" src="images/ProductImage/b2.jpeg" OnClick="Image2_Click" />

                                            <a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹200</del>
                                                    <span class="price text-success">&nbsp ₹100</span>
                                                </div>
                                                <!-- price-wrap.// -->

                                                <asp:Label ID="Label2" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox2" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="AddCart2" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="AddCart2_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->

                                <div class="col-md-4">
                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger">On Discount</span>


                                            <asp:ImageButton ID="ImageButton3" runat="server" Style="height: 150px" src="/images/ProductImage/b3.jpeg" OnClick="ImageButton3_Click" />


                                            <a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹5000</del>
                                                    <span class="price text-success">&nbsp ₹3000</span>

                                                </div>
                                                <!-- price-wrap.// -->
                                                <asp:Label ID="Label3" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox3" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="Button3" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button3_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->

                                <div class="col-md-4">
                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger">Hurry up! </span>

                                            <asp:ImageButton ID="ImageButton4" runat="server" Style="height: 150px" src="/images/ProductImage/b4.jpeg" OnClick="ImageButton4_Click" />

                                            <a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹500</del>
                                                    <span class="price text-success">&nbsp ₹400</span>
                                                </div>
                                                <!-- price-wrap.// -->

                                                <asp:Label ID="Label4" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox4" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="Button4" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button4_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->

                                <div class="col-md-4">
                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger"> </span>


                                            <asp:ImageButton ID="ImageButton5" runat="server" Style="height: 150px" src="/images/ProductImage/b5.jpeg" OnClick="ImageButton5_Click" />


                                            <a class="btn-overlay" href="#" style="height: 32px"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹700</del>
                                                    <span class="price text-success">&nbsp ₹400</span>

                                                </div>
                                                <!-- price-wrap.// -->
                                                <asp:Label ID="Label5" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox5" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="Button5" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button5_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->

                                <div class="col-md-4">
                                    <figure class="card card-product-grid">
                                        <div class="img-wrap">
                                            <span class="badge badge-danger"> </span>

                                            <asp:ImageButton ID="ImageButton6" runat="server" Style="height: 150px" src="/images/ProductImage/b6.jpeg" OnClick="ImageButton6_Click" />

                                            <a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i>Quick view</a>
                                        </div>
                                        <!-- img-wrap.// -->
                                        <figcaption class="info-wrap">
                                            <div class="fix-height">
                                                <a href="#" class="title">Nivia Badminton</a>
                                                <div class="price-wrap mt-2">
                                                    <del class="price-old text-danger">₹198</del>
                                                    <span class="price text-success">&nbsp ₹128</span>
                                                </div>
                                                <!-- price-wrap.// -->

                                                <asp:Label ID="Label6" runat="server" Text="QTY: "></asp:Label>
                                                <asp:TextBox ID="TextBox6" runat="server" Width="24px" Height="16px">1</asp:TextBox>
                                            </div>

                                            <asp:Button ID="Button6" runat="server" class="btn btn-block btn-primary" Text="Add to cart" OnClick="Button6_Click" />
                                        </figcaption>
                                    </figure>
                                </div>
                                <!-- col.// -->





                            </div>
                            <!-- row end.// -->


                            <nav class="mt-4" aria-label="Page navigation sample">
                                <ul class="pagination">
                                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                </ul>
                            </nav>

                        </main>
                        <!-- col.// -->

                    </div>

                </div>
                <!-- container .//  -->
            </section>
            <footer class="section-footer border-top padding-y">
                <div class="container">
                    <p class="float-md-right">
                        &copy Copyright 2020 All rights reserved
                    </p>
                    <p>
                        <a href="#">Terms and conditions</a>
                    </p>
                </div>
                <!-- //container -->
            </footer>
        </div>
    </form>
</body>
</html>
