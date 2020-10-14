﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="SellerLogin.aspx.cs" Inherits="VsProjectSky.SellerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y" style="min-height: 84vh">
                <div class="card mx-auto all-side-Shadow" style="max-width: 400px; margin-top: 100px;">
                    <div class="card-body" ">
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Seller Login</h4>

                        <div class="form-group">
                            <input id="User" runat="server" name="" class="form-control" placeholder="User Name" type="text">
                        </div>

                        <!-- form-group// -->

                        <div class="form-group">
                            <input id="UserPass" runat="server" name="" class="form-control" placeholder="Password" type="password">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <!-- form-group// -->


                        <asp:Button ID="SLogin" runat="server" class="btn btn-primary btn-block" Text="Login" OnClick="SLogin_Click"  />
                    </div>
                    <!-- form-group// -->
                </div>
                <!-- card-body.// -->

                <!-- card .// -->

            </section>





        </div>
    </form>
</asp:Content>
