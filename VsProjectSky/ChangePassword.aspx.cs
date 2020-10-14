using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config

namespace VsProjectSky
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)  // To access this page, login needed
            {
                Response.Redirect("UserLogin.aspx?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));

            }
        }

        protected void ChangePass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from Login where UserName=@t8 and UserPass=@t3"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t8", Session["UserName"]);// passing global variable of username
            cmd.Parameters.AddWithValue("@t3", CurrentPass.Value); //  ||
            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            
            
            if (dr.Read())
            {
                dr.Close();
                // change password code
                string qry2 = "update Login set UserPass=@t3 where UserName=@t8"; //update Sql Query
                SqlCommand cmd2 = new SqlCommand(qry2, con); //send query execution
                cmd2.Parameters.AddWithValue("@t3", NewPass.Value); // 
                cmd2.Parameters.AddWithValue("@t8", Session["UserName"]);// passing global variable of username
                cmd2.ExecuteNonQuery();


                ChangePassLabel.Text = "Password Changed Successfully";
                ChangePassLabel.ForeColor = System.Drawing.Color.Green;



            }
            else
            {
                ChangePassLabel.Text = "Invailed Current Password";
                ChangePassLabel.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            
        }
    }
}