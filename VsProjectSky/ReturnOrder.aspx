<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ReturnOrder.aspx.cs" Inherits="VsProjectSky.ReturnOrder" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <div>
            <section class="section-conten padding-y ">

                <div class="card mx-auto shadow rounded" style="max-width: 380px; margin-top: 70px;">
                    <div class="card-body" style="background-color: #fff">

                        <h4 class="card-title mb-4 text-center">Return Order</h4>

                        <div class="form-group">
                            <label class="text">Enter Order Number</label>

                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="text">Reason for return</label>

                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>

                        </div>

                        <div>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>


                        <div class="form-group text-center">


                            <asp:Button ID="COrder" runat="server" Text="Return" class="btn btn-primary btn-block  mt-4" OnClick="COrder_Click" />
                        </div>
                        <p class="text-center mt-5">Go to <a href="Home.aspx">Home</a></p>
                    </div>
                </div>

            </section>



        </div>
    </form>
</asp:Content>

