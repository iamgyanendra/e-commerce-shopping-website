<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VsProjectSky.Login" %>

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
        
 



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-conten padding-y" style="min-height:84vh">

<!-- ============================ COMPONENT LOGIN   ================================= -->
	<div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body" style="background-color:#ecf0f1">
      <h4 class="card-title mb-4">Sign in</h4>
     
          <div class="form-group">
              <input id="username" runat="server" name="" class="form-control" placeholder="Username" type="text">
          </div> <!-- form-group// -->
          <div class="form-group">
			<input id="pass" runat="server" name="" class="form-control" placeholder="Password" type="password">
          </div> <!-- form-group// -->
          
          <div class="form-group">
          	<a href="#" class="float-right">Forgot password?</a> 
            <label class="float-left custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> Remember </div> </label>
          </div> <!-- form-group form-check .// -->
          <div class="form-group">
              <asp:Button ID="Login1" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="Button1_Click"/>
          </div> <!-- form-group// -->    
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

     <p class="text-center mt-4">Don't have account? <a href="#">Sign up</a></p>
     <br><br>
<!-- ============================ COMPONENT LOGIN  END.// ================================= -->


    


    


    


    


    


    


    


</section>

        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer border-top padding-y">
	<div class="container">
		<p class="float-md-right"> 
			&copy Copyright 2020 All rights reserved
		</p>
		<p>
			<a href="#">Terms and conditions</a>
		</p>
	</div><!-- //container -->
</footer>
    </form>
<!-- ========================= FOOTER END // ========================= -->





    </form>
</body>
</html>
