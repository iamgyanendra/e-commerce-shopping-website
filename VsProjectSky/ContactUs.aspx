<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="VsProjectSky.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css/contact-us.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div>

            <div class="container contact h-100">
        <div class="row">
            <div class="col-md-3">
                <div class="contact-info">
                    <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                    <h2>Contact Us</h2>
					<h4>We would love to hear from you !</h4>
				
                </div>
            </div>
            <div class="col-md-9">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="images/ProductImage/ContactUsImage.jpg"
                  alt="First slide">
                
              </div>
              
            
            </div>
                    
                    <h3>We are available here 24X7 to help you!</h3>
                    <p>&bull; Call us on: 9560689237</p>
                    <p>&bull; Contact us through Email: Prakash9.2020@gmail.com</p>
                    <p>&bull; Contact us on whatsapp: 9560689237</p>
                    <p>&bull; Our Office Address: South Ganesh Nagar, Delhi 110092</p>
                  

          </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
