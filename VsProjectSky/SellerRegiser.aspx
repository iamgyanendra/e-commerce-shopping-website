<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="SellerRegiser.aspx.cs" Inherits="VsProjectSky.SellerRegiser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y" style="min-height: 84vh">

                <h4 class="text-center">
                    <asp:Label ID="msgLabel" runat="server"></asp:Label>
                </h4>

                <div class="card mx-auto all-side-Shadow" style="max-width: 450px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #fff">
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Seller Register</h4>

                        <div class="form-group">
                            <input id="SName" runat="server" name="" class="form-control" placeholder="Full Name" type="text">
                        </div>

                        <div class="form-group">
                            <input id="SEmailID" runat="server" name="" class="form-control" placeholder="Email ID" type="text">
                        </div>

                        <div class="form-group">
                            <input id="SUsername" runat="server" name="" class="form-control" placeholder="User Name" type="text">
                        </div>

                        <div class="form-group">
                            <input id="SAddrs" runat="server" name="" class="form-control" placeholder="Address" type="text">
                        </div>

                        <!-- form-group// -->

                        <div class="form-group">
                            <input id="SPass" runat="server" name="" class="form-control" placeholder="Password" type="password">
                        </div>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <!-- form-group// -->

                        <div class="form-group">
                            <input id="CPass" runat="server" name="" class="form-control" placeholder="Confirm Password" type="password">
                        </div>


                        <asp:Button ID="SRegister" runat="server" class="btn btn-primary btn-block" Text="Login" OnClick="SRegister_Click"  />
                    </div>
                    <!-- form-group// -->
                </div>
                <!-- card-body.// -->

                <!-- card .// -->

            </section>





        </div>
    </form>
</asp:Content>
