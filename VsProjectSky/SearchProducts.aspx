﻿<%@ Page Language="C#" MasterPageFile="~/MP1.Master"  AutoEventWireup="true" CodeBehind="SearchProducts.aspx.cs" Inherits="VsProjectSky.SearchProducts" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <div class="col-lg-5 col-12 col-sm-12 py-5 m-auto vh-100">
                <form action="#" class="search">
                    <div class="input-group w-100">

                        <asp:TextBox ID="SearchBox" runat="server" class="form-control"></asp:TextBox>
                        <div class="input-group-append">

                            <asp:Button ID="SearchButton" runat="server" class="btn btn-primary" Text="Search" OnClick="SearchButton_Click" />


                        </div>
                    </div>
                </form>
                <!-- search-wrap .end// -->
            </div>
            <!-- col.// -->
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
                    <asp:ImageField DataImageUrlField="PImageName" HeaderText="Image" ItemStyle-Width="50px" ControlStyle-Width="100" ControlStyle-Height="100">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>
