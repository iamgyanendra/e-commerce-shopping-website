using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace VsProjectSky
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FeedSend_Click(object sender, EventArgs e)
        {

            //send code
            Label lbl = new Label();
            lbl.ID = "lblmsg";
            try
            {
                MailMessage msg = new MailMessage();
                msg.To.Add(TextBox2.Text);
                msg.From = new MailAddress("prakash9.2020@gmail.com");
               
                msg.Subject = TextBox3.Text;
                msg.Body = TextBox1.Text;

                SmtpClient sm = new SmtpClient("smtp.gmail.com");
                sm.Port = 587;
                sm.Credentials = new System.Net.NetworkCredential("prakash9.2020@gmail.com", "mansh9560689237");

                sm.EnableSsl = true;
                sm.Send(msg);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                Response.Write(ex.ToString());
            }
            catch (Exception ex)
            {
                lbl.Text = "Send Email Failed.<br>" + ex.Message;
            }
            //Label lbl = new Label();
            //lbl.ID = "lblmsg";
            lbl.Text = "Mail sent succesfully";
            lbl.Height = 25;
            lbl.Width = 80;
            lbl.ForeColor = System.Drawing.Color.Green;
            PlaceHolder1.Controls.Add(lbl);

        }
    }
}