<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="VsProjectSky.WebForm1" %>

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
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

	<!-- Font awesome 5 -->
	<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">


	<link href="css/ProductDetails.css" rel="stylesheet" type="text/css" />
	<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

	<!-- custom javascript -->
	<script src="js/script.js" type="text/javascript"></script>

	<script type="text/javascript">
        /// some script

        // jquery ready start
        $(document).ready(function () {
            // jQuery code

        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>


				<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						 
                            <asp:Image ID="pdImage1" runat="server" class="tab-pane active" />
						  
						</div>
						
						
					</div>
					<div class="details col-md-6">
						<h5 class="">Product ID: <asp:Label ID="Label5" runat="server" Text=""/></h5>
					   
						<h3 class="">
                           <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
							</h3>
						<h5 class="">Brand: <asp:Label ID="Label2" runat="server" Text="Nike"></asp:Label>

						</h5>

						<h5 class="">current price:<asp:Label ID="Label3" runat="server" Text=""/></h5>
						<h5 class="">Description : </h5>

                        <asp:TextBox ID="TextBox1" runat="server" Height="134px" TextMode="MultiLine" Width="487px"></asp:TextBox>

						
						

				   <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>Quantity</small></h6>                    
                        <div>
                            <asp:TextBox ID="QuanBox" runat="server" Width="41px" >1</asp:TextBox>
                        </div>
                    </div>                
						
						
						
						<div class="action">
							<asp:Button ID="productDetails" runat="server" Text="Add Product" class="btn btn-primary btn-block" OnClick="productDetails_Click"/>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



        </div>
    </form>
</body>
</html>
