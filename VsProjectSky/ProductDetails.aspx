<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="VsProjectSky.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ProductDetails.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>


            <div class="container">
                <div class="card mb-5">
                    <div class="container-fliud">
                        <div class="wrapper row">
                            <div class="preview col-md-6">

                                <div class="preview-pic tab-content">

                                    <asp:Image ID="pdImage1" runat="server" class="tab-pane active" />

                                </div>


                            </div>
                            <div class="details col-md-6">
                                <h5 class="">Product ID:
                                    <asp:Label ID="Label5" runat="server" Text="" /></h5>

                                <h3 class="">
                                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                                </h3>
                                <h5 class="">Brand:
                                    <asp:Label ID="Label2" runat="server" Text="Nike"></asp:Label>

                                </h5>

                                <h5 class="">current price:<asp:Label ID="Label3" runat="server" Text="" /></h5>
                                <h5 class="">Description : </h5>

                                <asp:TextBox ID="TextBox1" runat="server" Height="134px" TextMode="MultiLine" Width="487px"></asp:TextBox>




                                <div class="section" style="padding-bottom: 20px;">
                                    <h6 class="title-attr"><small>Quantity</small></h6>
                                    <div>
                                        <asp:TextBox ID="QuanBox" runat="server" Width="41px">1</asp:TextBox>
                                    </div>
                                </div>



                                <div class="action">
                                    <asp:Button ID="productDetails" runat="server" Text="Add Product" class="btn btn-primary btn-block" OnClick="productDetails_Click" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </form>
</asp:Content>
