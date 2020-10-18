<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="VsProjectSky.Feedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/contact-us.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="background-color:white">

            <div class="container contact h-100" id="sc">
                <div class="row shadow">
                    <div class="col-md-3">
                        <div class="contact-info">
                            <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" />
                            <h2>Feedback</h2>
                            <h4>We would love to hear from you about our services !</h4>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="contact-form">
                            <div class="form-group col-md-9">
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Email:</label>
                                <div class="col-sm-10">

                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" AutoCompleteType="Email"></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-sm-2" for="subject">Subject:</label>
                                <div class="col-sm-10">

                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="message">Message:</label>
                                <div class="col-sm-10">

                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-3">

                                    <asp:Button ID="FeedSend" runat="server" class="btn btn-default btn btn-primary btn-block" Text="Send" OnClick="FeedSend_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </form>
</asp:Content>

