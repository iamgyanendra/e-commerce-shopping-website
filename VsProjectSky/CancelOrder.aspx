<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelOrder.aspx.cs" Inherits="VsProjectSky.CancelOrder" %>

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

    <link href="css/signinSignup.css" rel="stylesheet" type="text/css"/>

 
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <section class="login-block">
                <div class="container col-3">
                    <div class="row">
                        <div class="col login-sec">
                            <h2 class="text-center">Cancel Order</h2>
                            <form class="login-form">
                                <div class="form-group">
                                    <label class="text">Enter Order Number</label>

                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

                                </div>


                                <div>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>

                                <div class="form-group">


                                    <asp:Button ID="COrder" runat="server" Text="Cancel Now" class="btn btn-primary btn-block mt-4" />
                                </div>
                                <!-- form-group// -->
                            </form>
                            <p class="text-center mt-5">Go to <a href="#">Home</a></p>
                        </div>

                    </div>
            </section>


        </div>
    </form>
</body>
</html>
