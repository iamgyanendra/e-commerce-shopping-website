<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="VsProjectSky.addProduct" %>

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
            <section class="section-content padding-y">

		

		<!-- ============================ COMPONENT REGISTER   ================================= -->
		<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
			<article class="card-body">
				<header class="mb-4 ">
					<div>
					 <h4 class="card-title text-center">Upload Product</h4>
					</div>
				</header>
				<form>
					<div class=" text-success text-center">
                    <asp:Label ID="Label1" runat="server" Text="Product ID: " ></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="text-success" TextMode="Number" Width="54px"></asp:TextBox>
					</div>

					<div class="form-group">
						<label>Product Name</label>
						<input id="Product" runat="server" type="text" class="form-control" placeholder="">
					</div> <!-- form-group end.// -->


					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Price</label>
							<input id="txtPrice" runat="server" class="form-control" type="text">
						</div> <!-- form-group end.// -->
						<div class="form-group col-md-6">
							<label>Selling Price</label>
							<input id="txtSellingPrice" runat="server" class="form-control" type="text">
						</div> <!-- form-group end.// -->
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Brands</label>

							<asp:DropDownList ID="DropDownListBrand" class="form-control" runat="server"></asp:DropDownList>
							
						</div> <!-- form-group end.// -->
						<div class="form-group col-md-6">
							<label>Category</label>
                            <asp:DropDownList ID="DropDownListcategory" class="form-control" runat="server"></asp:DropDownList>
						</div> <!-- form-group end.// -->
					</div> <!-- form-row.// -->
                    

					<div class="form-group">
						<label>Description</label>
						<textarea runat="server" class="form-control" TextMode="MultiLine" id="desc"></textarea>
						
					</div> <!-- form-group end.// -->



					

					<div class="form-group">
						<label>Upload product image</label>
						<asp:FileUpload ID="fuImg1" runat="server" class="form-control border-0"/>
						
					</div> <!-- form-group end.// -->

				

					<div class="form-group">
						
						<asp:Button ID="addProduct1" runat="server" Text="Add Product" class="btn btn-primary btn-block" OnClick="addProduct1_Click" />
				
					</div> <!-- form-group// -->
                    
					
				</form>
			</article><!-- card-body.// -->
	</section>
        </div>
    </form>
</body>
</html>
