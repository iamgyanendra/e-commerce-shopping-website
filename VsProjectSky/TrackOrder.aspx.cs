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
    public partial class TrackOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)  // To access this page, login needed
            {
                Response.Redirect("UserLogin.aspx?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));

            }
        }

        protected void TOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection
            try
            {
                string qry2 = "Select status from Orderdetails where orderNo=@t1"; //Sql Query
                SqlCommand cmd2 = new SqlCommand(qry2, con); //send query execution
                cmd2.Parameters.AddWithValue("@t1", TextBox1.Text);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                dr2.Read();
                Label1.Text = dr2[0].ToString();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
    }
}