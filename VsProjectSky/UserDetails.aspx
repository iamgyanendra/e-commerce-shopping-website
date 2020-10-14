<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="VsProjectSky.UserDetails" %>

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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />
    <link href="css/userPage.css" rel="stylesheet" type="text/css" />

<!-- custom javascript -->
<script src="js/script.js" type="text/javascript"></script>

<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code

}); 
// jquery end
</script>

    
</head>
<body>
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
</body>
</html>
