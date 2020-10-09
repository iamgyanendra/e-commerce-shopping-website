<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="VsProjectSky.ForgetPassword" %>

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
     <div>
    <section class="section-conten padding-y" style="min-height:84vh">

	 <div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body" style="background-color:#ecf0f1">
          <asp:Label ID="FpLabel" runat="server" Text=""></asp:Label>
      <h4 class="card-title mb-4">Forget Password</h4>
     
          <div class="form-group">
              <input id="FpEmail" runat="server" name="" class="form-control" placeholder="Enter Email ID" type="text">
          </div> <!-- form-group// -->
          <div class="form-group">
             
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorForgetPassword" runat="server" ControlToValidate="FpEmail" ErrorMessage="Please Enter Email ID " ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      
          <div class="form-group">
              <asp:Button ID="FpButton" runat="server" class="btn btn-primary btn-block" Text="Send Email" OnClick="FpButton_Click" />
             
          </div> <!-- form-group// -->    
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

   </section>



  </div>
    </form>
</body>
</html>
