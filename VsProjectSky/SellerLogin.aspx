<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="SellerLogin.aspx.cs" Inherits="VsProjectSky.SellerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y">
                <div class="card mx-auto shadow" style="max-width: 400px; margin-top: 100px;">
                    <div class="card-body mb-3" >
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Seller Login</h4>

                        <div class="form-group">
                            <label>User Name</label>
                            <input id="User" runat="server" name="" class="form-control" placeholder="User Name" type="text">
                        </div>

                        <!-- form-group// -->

                        <div class="form-group">
                            <label>Password</label>
                            <input id="UserPass" runat="server" name="" class="form-control" placeholder="Password" type="password">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <!-- form-group// -->

                        <div class="mt-4">
                        <asp:Button ID="SLogin" runat="server" class="btn btn-primary btn-block" Text="Login" OnClick="SLogin_Click"  />
                            </div>
                    </div>
                    <!-- form-group// -->
                </div>
                <!-- card-body.// -->

                <!-- card .// -->
                <p class="text-center mt-5 mb-5">Don't have account? <a href="SellerRegister.aspx">Register now</a></p>
            </section>





        </div>
    </form>
</asp:Content>
