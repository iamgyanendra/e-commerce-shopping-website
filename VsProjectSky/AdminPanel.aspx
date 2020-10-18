<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="VsProjectSky.AdminHome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>

            <section class="section-conten padding-y">
                <div class="card mx-auto" style="max-width: 530px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #ecf0f1">
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Admin Panel</h4>

                        <div class="form-row ">
                            <div class="form-group col-md-6">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block mb-3" Text="Order Manage" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-block" Text="Payment Manage" OnClick="Button2_Click" />
                            </div>
                            <!-- form-group// -->

                            <div class="form-group col-md-6">
                                <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-block mb-3" Text="Manage Products" OnClick="Button3_Click" />
                                <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-block" Text="Customer Manage" OnClick="Button4_Click" />
                            </div>
                        </div>
                        <div class="form-row mb-3">
                            <div class="form-group col-md-6">
                                <asp:Button ID="Button6" runat="server" class="btn btn-primary btn-block mb-3" Text="Add Category" OnClick="Button6_Click" />

                            </div>
                            <!-- form-group// -->

                            <div class="form-group col-md-6">
                                <asp:Button ID="Button8" runat="server" class="btn btn-primary btn-block mb-3" Text="Add Brand" OnClick="Button8_Click" />

                            </div>
                        </div>


                        <!-- form-group// -->


                        <asp:Button ID="Button5" runat="server" class="btn btn-primary btn-block" Text="Add Product" OnClick="Button5_Click" />
                    </div>
                    <!-- form-group// -->
                </div>
                <!-- card-body.// -->

                <!-- card .// -->

            </section>


        </div>
    </form>
</asp:Content>
