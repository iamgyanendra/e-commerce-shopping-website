<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="VsProjectSky.ChangePassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <section class="section-conten padding-y" style="min-height: 84vh">

                <!-- ============================ COMPONENT Change Password  ================================= -->
                <div class="card mx-auto" style="max-width: 380px; margin-top: 100px;">
                    <div class="card-body" style="background-color: #ecf0f1">
                        <asp:Label ID="ChangePassLabel" runat="server" Text=""></asp:Label>
                        <h4 class="card-title mb-4">Change Password</h4>
                        <div class="form-group">
                            <input id="CurrentPass" runat="server" name="" class="form-control" placeholder="Current Password" type="text">
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">

                            <div class="form-group">
                                <input id="NewPass" runat="server" name="" class="form-control" placeholder="New Password" type="text">
                            </div>
                            <!-- form-group// -->
                            <div class="form-group">
                                <input id="ConPass" runat="server" name="" class="form-control" placeholder="Confirm Password" type="password">
                            </div>
                            <!-- form-group// -->


                            <asp:Button ID="ChangePass" runat="server" Text="Update" class="btn btn-primary btn-block" OnClick="ChangePass_Click" />
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
