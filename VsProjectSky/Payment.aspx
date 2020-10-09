<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="VsProjectSky.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Sky Shop</title>

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

<!-- custom javascript -->
<script src="js/script.js" type="text/javascript"></script>


    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 317px;
        }
        .auto-style2 {
            width: 375px;
        }
        .auto-style3 {
            width: 244px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <section class="section-content padding-y">



                <!-- ============================ COMPONENT REGISTER   ================================= -->
                <div class="card mx-auto" style="max-width: 520px; margin-top: 40px;">
                    <article class="card-body">
                        <header class="mb-4 ">
                            <div>
                                <h4 class="card-title text-center">Payment</h4>
                            </div>
                        </header>
                        <form>
                            <div class=" text-success text-center">
                                <asp:Label ID="Label3" runat="server" Text="Transaction ID: "></asp:Label>
                               
                                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" CssClass="text-success" TextMode="Number" Width="54px"></asp:TextBox>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Bank Name</label>

                                   
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                     <asp:ListItem>ICICI</asp:ListItem>
                                      <asp:ListItem>HDFC</asp:ListItem>
                                      <asp:ListItem>SBI</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <!-- form-group end.// -->
                                <div class="form-group col-md-4">
                                    <label>Card Type</label>
                                   
                                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                     <asp:ListItem>Debit</asp:ListItem>
                                     <asp:ListItem>Credit</asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                                <!-- form-group end.// -->
                            </div>
                            <!-- form-group end.// -->


                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Card Number</label>
                                    
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                                </div>
                                <!-- form-group end.// -->
                                <div class="form-group col-md-2">
                                    <label>CVV</label>
                                    
                                     <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <!-- form-group end.// -->
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <label>Month</label>

                                   
                                    <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <!-- form-group end.// -->
                                <div class="form-group col-md-3">
                                 <label>Year</label>
                                    
                                    <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                        <asp:ListItem>2024</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <!-- form-group end.// -->
                            </div>
                            <!-- form-row.// -->


                                <div class="form-group ">
                                    <label>Card Holder Name</label>
                                    
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            <!-- form-group end.// -->
                            <div class="form-row">
                            <div class="form-group col-md-4 ">
                                    
                                 <label>Transaction Date</label>
                                
                                 <asp:Label ID="Label1" class="form-control" runat="server"></asp:Label>
                                      
                                </div>
                            <div class="form-group col-md-3 ">
                                    
                                 <label>Amount</label>
                             
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                      
                                </div>
                                </div>


                            



                            <div class="form-group">

                                
                                <asp:Button ID="btnPay" runat="server" OnClick="btnPay_Click" Text="Pay now" class="btn btn-primary btn-block" />

                            </div>
                            <!-- form-group// -->
                            <div>
                                <asp:Button ID="btnPrint" runat="server" Text="Print" Width="106px" />
                            </div>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                        </form>
                    </article>
                    <!-- card-body.// -->
            </section>
        </div>

      

       
    </form>
</body>
</html>
