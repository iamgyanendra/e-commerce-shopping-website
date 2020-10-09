<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="VsProjectSky.Feedback" %>

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
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

	<!-- Font awesome 5 -->
	<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">


    <link href="css/contact-us.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container contact">
        <div class="row">
            <div class="col-md-3">
                <div class="contact-info">
                    <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                    <h2>Feedback</h2>
                    <h4>We would love to hear from you about our services !</h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="contact-form">
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="name">Full Name:</label>
                      <div class="col-sm-10">          
                        <input type="text" class="form-control" id="fname" placeholder="Enter Your Name" name="name">
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-2" for="email">Email:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="femail" placeholder="Enter email" name="email">
                      </div>
                    </div>


                    <div class="form-group">
                      <label class="control-label col-sm-2" for="subject">Subject:</label>
                      <div class="col-sm-10">          
                        <input type="text" class="form-control" id="fsubject" placeholder="Enter Subject" name="subject">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-sm-2" for="message">Message:</label>
                      <div class="col-sm-10">
                        <textarea class="form-control" rows="5" id="fmessage"></textarea>
                      </div>
                    </div>
                    <div class="form-group">        
                      <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


        </div>
    </form>
</body>
</html>
