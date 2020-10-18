﻿<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="VsProjectSky.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 883px;
            height: 53px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
       <div class=" container">
           <div class="auto-style1 h-100 mt-5 ml-5" style="color: #3167eb">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               &nbsp;&nbsp; Your Cart Products :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Bill Amount :-<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Text="Make Payment Now" Width="159px" OnClick="Button1_Click" BackColor="#3167EB" BorderColor="#3399FF" BorderStyle="None" ForeColor="White" Height="32px" />
               <br />
               <br />

           </div>

           
                   
           <div class="mb-5" style="margin-top: 50px;">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" CellSpacing="50" DataKeyNames="ProdId" BorderStyle="None" CellPadding="60" ForeColor="Gray" GridLines="Horizontal" CssClass="shadow" HorizontalAlign="Left" BorderColor="#CCCCCC">
                   <AlternatingRowStyle BorderStyle="None" />
                   <Columns>
                       <asp:BoundField DataField="ProdId" HeaderText="Product Code" />
                       <asp:BoundField DataField="ProName" HeaderText="Product Name" />
                       <asp:BoundField DataField="Quty" HeaderText="Qty" />
                       <asp:BoundField DataField="PurDate" HeaderText="Date" />
                       <asp:BoundField DataField="Price" HeaderText="Price" />
                   </Columns>
                   <HeaderStyle BorderStyle="None" ForeColor="Black" Font-Size="20px" HorizontalAlign="Center" />
                   <RowStyle BorderStyle="None" Font-Size="Larger" Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
               </asp:GridView>
           </div>
                   
             
           <asp:Label ID="Label1" runat="server" Visible="False" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:Label>

       </div>
    </form>
</asp:Content>
