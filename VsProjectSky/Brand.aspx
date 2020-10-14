<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="VsProjectSky.Brand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">
   <div>
    <section class="section-conten padding-y" style="min-height:84vh">

	 <div class="card mx-auto" style="max-width: 380px; margin-top:100px;">
      <div class="card-body" style="background-color:#ecf0f1">
          <asp:Label ID="BrandLabel" runat="server" Text=""></asp:Label>
      <h4 class="card-title mb-4">Add Brand</h4>
     
          <div class="form-group">
              <input id="BrandBox" runat="server" name="" class="form-control" placeholder="Brand Name" type="text">
          </div> <!-- form-group// -->
          <div class="form-group">
             
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategoryName" runat="server" ControlToValidate="BrandBox" ErrorMessage="Please Enter Brand Name" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      
          <div class="form-group">
              <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="Add Brand" OnClick="AddBrand_Click" />
          </div> <!-- form-group// -->    
      </div> <!-- card-body.// -->
    </div> <!-- card .// -->

   </section>



  </div>
    </form>
</asp:Content>
