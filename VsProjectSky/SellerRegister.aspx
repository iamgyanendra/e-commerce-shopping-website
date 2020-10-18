<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="SellerRegister.aspx.cs" Inherits="VsProjectSky.SellerRegiser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y rounded">

                <h4 class="text-center">
                    <asp:Label ID="msgLabel" runat="server"></asp:Label>
                </h4>

                <div class="card mx-auto shadow " style="max-width: 450px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #fff">
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Seller Register</h4>

                        <div class="form-group">
                            <label>Full Name:</label>
                            <input id="SName" runat="server" name="" class="form-control" placeholder="" type="text">
                        </div>

                        <div class="form-group">
                            <label>Email:</label>
                            <input id="SEmailID" runat="server" name="" class="form-control" placeholder="" type="text">
                        </div>

                        <div class="form-group">
                            <label>User Name:</label>
                            <input id="SUsername" runat="server" name="" class="form-control" placeholder="" type="text">
                        </div>

                        <div class="form-group">
                            <label>Address:</label>
                            <input id="SAddrs" runat="server" name="" class="form-control" placeholder="" type="text">
                        </div>

                        <!-- form-group// -->

                        <div class="form-group">
                            <label>Password:</label>
                            <input id="SPass" runat="server" name="" class="form-control" placeholder="" type="password">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <!-- form-group// -->

                        <div class="form-group">
                            <label>Confirm Password:</label>
                            <input id="CPass" runat="server" name="" class="form-control" placeholder="" type="password">
                        </div>

                        <div class="mt-4 mb-2">
                        <asp:Button ID="SRegister" runat="server" class="btn btn-primary btn-block" Text="Login" OnClick="SRegister_Click"  />
                            </div>
                    </div>
                    <!-- form-group// -->
                </div>
                <!-- card-body.// -->
                <p class="text-center mt-5 mb-5">Have an account? <a href="SellerLogin.aspx">Sign in</a></p>

            </section>





        </div>
    </form>
</asp:Content>
