using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config
using System.Net.Mail;

namespace VsProjectSky
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select UserPass from Login where EmailID=@t1"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1", FpEmail.Value);// passing parameters to the query
    
            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.Read())
            {
                try
                {
                  
                    string pwd = dr[0].ToString();
                    MailMessage msg = new MailMessage();
                    msg.To.Add(FpEmail.Value);
                    msg.From = new MailAddress("Prakash9.2020@gmail.com");
                    msg.Subject = "Your Recovery Password";
                    msg.Body = "Your Sky Shop Login Password Is: " + pwd;

                    SmtpClient sm = new SmtpClient("smtp.gmail.com");
                    sm.Port = 587;
                    sm.Credentials = new System.Net.NetworkCredential("prakash9.2020@gmail.com", "password");

                    sm.EnableSsl = true;
                    sm.Send(msg);

                    FpLabel.Text = "Your Password sent to the Email Successfully";
                    FpLabel.ForeColor = System.Drawing.Color.Green;

                }
                catch (System.Net.Mail.SmtpException ex)
                {
                    Response.Write(ex.ToString());
                }
                catch (Exception ex)
                {
                    FpLabel.Text = "Send Email Failed.<br>" + ex.Message;
                    FpLabel.ForeColor = System.Drawing.Color.Red;
                }



            }
            else
            {
                FpLabel.Text = "Invalid Email ID";
                FpLabel.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}