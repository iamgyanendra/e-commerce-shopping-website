<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="VsProjectSky.UserRegister" %>

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




	<!-- ========================= SECTION CONTENT ========================= -->
			

	<section class="section-content padding-y">

		<!-- ============================ COMPONENT REGISTER   ================================= -->
		<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
			<article class="card-body">
				<header class="mb-4">
					<h4 class="card-title">Sign up</h4>
					<asp:Label ID="Label1" runat="server" Text="hello i am here"></asp:Label>
				</header>
				<form>
					<div class="form-row">
						<div class="col form-group">
							<label>First name</label>
							<input id="Fname" runat="server" type="text" class="form-control" placeholder="">
						</div> <!-- form-group end.// -->
						<div class="col form-group">
							<label>Last name</label>
							<input id="Lname" runat="server" type="text" class="form-control" placeholder="">
						</div> <!-- form-group end.// -->
					</div> <!-- form-row end.// -->
					<div class="form-group">
						<label>Email</label>
						<input id="email" runat="server" type="email" class="form-control" placeholder="">
						<small class="form-text text-muted">We'll never share your email with anyone else.</small>
					</div> <!-- form-group end.// -->

					<div class="form-group">
						<label>User Name</label>
						<input id="username" runat="server" type="username" class="form-control" placeholder="">
						<small class="form-text text-muted">Please type a unique user name</small>
					</div> <!-- form-group end.// -->

					<div  class="form-group">
						<label  class="custom-control custom-radio custom-control-inline">

							

							<input ID="RadioButton1" runat="server" class="custom-control-input"  type="radio" name="gender" value="option1">
							<span class="custom-control-label"> Male </span>
						</label>

						<label class="custom-control custom-radio custom-control-inline">
							<input id="female" runat="server" class="custom-control-input" type="radio" name="gender" value="option2">
							<span class="custom-control-label"> Female </span>
						</label>
					</div> <!-- form-group end.// -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Full Address</label>
							<input id="address" runat="server" type="text" class="form-control">
						</div> <!-- form-group end.// -->
						<div class="form-group col-md-6">
							<label>Country</label>
							<select id="inputState" runat="server" class="form-control">
								<option> Choose...</option>
								<option>Bangladesh</option>
								<option>Russia</option>
								<option selected="">India</option>
								<option>United State</option>
								<option>Afganistan</option>
							</select>
						</div> <!-- form-group end.// -->
					</div> <!-- form-row.// -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Create password</label>
							<input id="pass" runat="server" class="form-control" type="password">
						</div> <!-- form-group end.// -->
						<div class="form-group col-md-6">
							<label>Confirm password</label>
							<input id="Cpass" runat="server" class="form-control" type="password">
						</div> <!-- form-group end.// -->
					</div>
					<div class="form-group">
						
						<asp:Button ID="signUp" runat="server" Text="Register" class="btn btn-primary btn-block" OnClick="Register_Click"/>
				
					</div> <!-- form-group// -->
					<div class="form-group">
						<label class="custom-control custom-checkbox"> <input type="checkbox"
								class="custom-control-input" checked="">
							<div class="custom-control-label"> I am agree with <a href="#">terms and contitions</a>
							</div>
						</label>
					</div> <!-- form-group end.// -->
				</form>
			</article><!-- card-body.// -->
		</div> <!-- card .// -->
		<p class="text-center mt-4">Have an account? <a href="#">Log In</a></p>
		<br><br>
		<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


	</section>
	<!-- ========================= SECTION CONTENT END// ========================= -->


	<!-- ========================= FOOTER ========================= -->
	<footer class="section-footer border-top padding-y">
		<div class="container">
			<p class="float-md-right">
				&copy Copyright 2019 All rights reserved
			</p>
			<p>
				<a href="#">Terms and conditions</a>
			</p>
		</div><!-- //container -->
	</footer>
	<!-- ========================= FOOTER END // ========================= -->

        </div>
    </form>
</body>
</html>
