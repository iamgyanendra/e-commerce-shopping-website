<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="VsProjectSky.Order" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">
        
       <div>
            <section class="section-conten padding-y">
                <div class="card mx-auto border-0" style="max-width: 600px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #fff">
                        <asp:Label ID="CatLabel" runat="server" Text=""></asp:Label>
                        
                        <div class="text-success">

                            <h2>Thankyou for shopping with us</h2>
                            <h3>Your order has been successfully Placed</h3>
                            <h5 class="d-inline">Your Order Number is:</h5><h5 class="d-inline text-gray-light"> <asp:Label ID="Label1" runat="server" Text="103"></asp:Label></h5>
                              <div class="mt-2">
                            <asp:Button ID="paid" runat="server" Text=" Print " Width="71px"  />
                            </div>
                            
                        </div>
                    </div>
                    <!-- form-group// -->
                </div>
                <br />
                <br />
                 <p class="text-center mt-4">Want to buy more? <a href="Home.aspx">Home</a></p>

            </section>





        </div>
    </form>
</asp:Content>
