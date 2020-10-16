<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="VsProjectSky.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/userPage.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">
        <div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png" alt="" />

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                            </h5>
                            <h6>Customer
                            </h6>

                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <h5 class="active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Your Details</h5>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        
                        <asp:Button ID="Logout" runat="server" Text="Logout" class="profile-edit-btn" OnClick="Logout_Click" />
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>OTHER LINKS</p>
                            <a href="Home.aspx">Home</a><br />
                            <a href="ViewCart.aspx">Your Cart</a><br />
                            <a href="ChangePassword.aspx">Change Password</a><br />
                            <a href="ContactUs.aspx">Contact Us</a><br />
                            <a href="AboutUs.aspx">About Us</a><br />

                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User Name</label>
                                    </div>
                                    <div class="col-md-6">
                                       
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#3167EB"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#3167EB"></asp:Label>
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#3167EB"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#3167EB"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Address</label>
                                    </div>
                                    <div class="col-md-6">
                                        
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#3167EB"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User Type</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>Customer</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </form>
</asp:Content>