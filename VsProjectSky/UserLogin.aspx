<%@ Page Language="C#" MasterPageFile="~/MP1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="VsProjectSky.CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>

          <section >
              <div class="container mt-5 mb-5 pt-5 pb-5">
                 
                      <div>
                          <div class="row">
                              <div class="col-md-4  p-5  shadow card">
                                  <h2 class="text-center mb-4">Login Now</h2>
                                  <form class="">
                                      <div class="form-group">
                                          <label for="exampleInputEmail1" class="text">Username</label>
                                          <input id="username" runat="server" name="" class="form-control" placeholder="" type="text">
                                      </div>
                                      <div class="form-group">
                                          <label for="exampleInputPassword1" class="text">Password</label>
                                          <input id="pass" runat="server" name="" class="form-control" placeholder="" type="password">
                                      </div>


                                      <div class="form-check">
                                          <label class="form-check-label">
                                              <input type="checkbox" class="form-check-input">
                                              <small>Remember Me</small>
                                          </label>
                                          <a href="ForgetPassword.aspx" class="float-right">Forgot password?</a>
                                      </div>

                                      <div class="form-group">
                                          <asp:Button ID="Login1" runat="server" Text="Login" class="btn btn-primary btn-block mt-4" OnClick="Login1_Click" />
                                      </div>
                                      <!-- form-group// -->
                                  </form>
                                  <p class="text-center mt-5">Don't have account? <a href="UserRegister.aspx">Sign up</a></p>
                              </div>
                          
                          <div class="col-md-8 ">
                              <div>
                                  <img class="d-block img-fluid rounded-right shadow" src="https://static.pexels.com/photos/33972/pexels-photo.jpg"
                                      alt="First slide">
                                  <div class="carousel-caption">
                                      <div class="banner-text">
                                          <h2>Welcome to Sky Shop</h2>
                                          <p>
                                              Login to buy thousands of branded sports items and accessories and get delivery at your home with in 24 hours.
                                              World's number one shports accessories online shopping website. 
                                          </p>
                                      </div>
                                  </div>
                              </div>

                          </div>
                      </div>
                  </div>
              </div>
            </section>


        </div>
    </form>
</asp:Content>
