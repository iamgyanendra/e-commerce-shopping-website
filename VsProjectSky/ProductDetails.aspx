<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="VsProjectSky.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div >


            <div class="container mt-5" >
                <div class="card mb-5 border-0 shadow p-5" style="background-color: #ffffff">
                    <div class="container-fliud">
                        <div class="wrapper row">
                            <div class="preview col-md-4 mr-5">

                                <div class="preview-pic tab-content">

                                    <asp:Image ID="pdImage1" runat="server" class="tab-pane active" Height="430px" Width="420px" />

                                </div>


                            </div>
                            <div class="details col-md-6 ml-5">
     
                                <h2 class="">
                                    <asp:Label ID="Label1" runat="server" Text="Product Name" ForeColor="Black"></asp:Label>
                                </h2>
                                <h6 class="text-muted">Product code:
                                    <asp:Label ID="Label5" runat="server"/>

                                </h6>

                                <h6 class="">
                                    <asp:Label ID="Label2" runat="server" Text="Puma" ForeColor="#666666"></asp:Label>

                                </h6>

                                <h5 class="text-success">₹<asp:Label ID="Label3" runat="server" /></h5>
                                <h6 class="text-muted">Description</h6>

                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="Silver" Rows="5" TextMode="MultiLine" Font-Strikeout="False" style="resize:none; outline:none" Width="400px"></asp:TextBox>




                                <div class="section" style="padding-bottom: 20px;">
                                    <h6 class="title-attr"><small>Quantity</small></h6>
                                    <div>
                                        <asp:TextBox ID="QuanBox" runat="server" Width="41px" CssClass="form-control" Rows="1">1</asp:TextBox>
                                    </div>
                                </div>



                                <div class="action">
                                    <asp:Button ID="productDetails" runat="server" Text="Buy Now" class="btn btn-primary " OnClick="productDetails_Click" Width="134px" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </form>
</asp:Content>
