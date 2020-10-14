<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="VsProjectSky.addProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-content padding-y">



                <!-- ============================ COMPONENT REGISTER   ================================= -->
                <div class="card mx-auto" style="max-width: 520px; margin-top: 40px;">
                    <article class="card-body">
                        <header class="mb-4 ">
                            <div>
                                <h4 class="card-title text-center">Upload Product</h4>
                            </div>
                        </header>
                        <form>
                            <div class=" text-success text-center">
                                <asp:Label ID="Label1" runat="server" Text="Product ID: "></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="text-success" TextMode="Number" Width="54px"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Product Name</label>
                                <input id="Product" runat="server" type="text" class="form-control" placeholder="">
                            </div>
                            <!-- form-group end.// -->


                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Price</label>
                                    <input id="txtPrice" runat="server" class="form-control" type="text">
                                </div>
                                <!-- form-group end.// -->
                                <div class="form-group col-md-6">
                                    <label>Selling Price</label>
                                    <input id="txtSellingPrice" runat="server" class="form-control" type="text">
                                </div>
                                <!-- form-group end.// -->
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Brands</label>

                                    <asp:DropDownList ID="DropDownListBrand" class="form-control" runat="server"></asp:DropDownList>

                                </div>
                                <!-- form-group end.// -->
                                <div class="form-group col-md-6">
                                    <label>Category</label>
                                    <asp:DropDownList ID="DropDownListcategory" class="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <!-- form-group end.// -->
                            </div>
                            <!-- form-row.// -->


                            <div class="form-group">
                                <label>Description</label>
                                <textarea runat="server" class="form-control" textmode="MultiLine" id="desc"></textarea>

                            </div>
                            <!-- form-group end.// -->





                            <div class="form-group">
                                <label>Upload product image</label>
                                <asp:FileUpload ID="fuImg1" runat="server" class="form-control border-0" />

                            </div>
                            <!-- form-group end.// -->



                            <div class="form-group">

                                <asp:Button ID="addProduct1" runat="server" Text="Add Product" class="btn btn-primary btn-block" OnClick="addProduct1_Click" />

                            </div>
                            <!-- form-group// -->


                        </form>
                    </article>
                    <!-- card-body.// -->
            </section>
        </div>
    </form>
</asp:Content>
