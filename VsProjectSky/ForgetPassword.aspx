<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="VsProjectSky.ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y" style="min-height: 84vh">

                <div class="card mx-auto" style="max-width: 380px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #ecf0f1">
                        <asp:Label ID="FpLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4">Forget Password</h4>

                        <div class="form-group">
                            <input id="FpEmail" runat="server" name="" class="form-control" placeholder="Enter Email ID" type="text">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorForgetPassword" runat="server" ControlToValidate="FpEmail" ErrorMessage="Please Enter Email ID " ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="FpButton" runat="server" class="btn btn-primary btn-block" Text="Send Email" OnClick="FpButton_Click" />

                        </div>
                        <!-- form-group// -->
                    </div>
                    <!-- card-body.// -->
                </div>
                <!-- card .// -->

            </section>



        </div>
    </form>
</asp:Content>
