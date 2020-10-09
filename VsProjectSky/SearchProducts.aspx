<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProducts.aspx.cs" Inherits="VsProjectSky.SearchProducts" %>

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


	<link href="css/ui.css" rel="stylesheet" type="text/css" />
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
			<div class="col-lg-5 col-12 col-sm-12 py-5 m-auto">
						<form action="#" class="search">
							<div class="input-group w-100">
								
                                <asp:TextBox ID="SearchBox" runat="server" class="form-control"></asp:TextBox>
								<div class="input-group-append">
									
                                        <asp:Button ID="SearchButton" runat="server" class="btn btn-primary" Text="Search" OnClick="SearchButton_Click" />
										
									      
								</div>
							</div>
						</form> <!-- search-wrap .end// -->
					</div> <!-- col.// -->
        </div>
		<div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		</div>
		<div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="PId" HeaderText="Product ID" />
                    <asp:BoundField DataField="PName" HeaderText="Product Name" />
                    <asp:BoundField DataField="PSelPrice" HeaderText="Price" />
                    <asp:BoundField DataField="PDescription" HeaderText="Description" />
                    <asp:ImageField DataImageUrlField="PImageName" HeaderText="Image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height = "100">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
		</div>
    </form>
</body>
</html>
