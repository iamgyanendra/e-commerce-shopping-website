<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="VsProjectSky.ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y">

                <div class="card mx-auto" style="max-width: 380px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #ecf0f1">
                        <asp:Label ID="FpLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4 text-center">Forget Password</h4>
                        
                        <div class="form-group">
                            <h6 class="ml-1">Email id</h6>
                            <input id="FpEmail" runat="server" name="" class="form-control" placeholder="Enter Email ID" type="text">
                            <p class="text-muted pl-1">Your password will be sent to email id</p>
                        </div>
                        <!-- form-group// -->
                        <div >

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
