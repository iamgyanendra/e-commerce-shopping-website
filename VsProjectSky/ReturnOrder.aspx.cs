using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;// For DB Connectivity: ADO.NET
using System.Data.SqlClient; //For DB Connectivity:ADO.NET
using System.Configuration; //For web.config

namespace VsProjectSky
{
    public partial class ReturnOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)  // To access this page, login needed
            {
                Response.Redirect("UserLogin.aspx?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));

            }
        }

        protected void COrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection
            try
            {
                string qry2 = "Delete from Orderdetails where custid=@1 and orderNo=@t2"; //Sql Query
                SqlCommand cmd2 = new SqlCommand(qry2, con); //send query execution
                cmd2.Parameters.AddWithValue("@t1", Session["cid"].ToString());
                cmd2.Parameters.AddWithValue("@t2", TextBox1.Text);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                dr2.Read();
                Label1.Text = "your order is under return process";
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
    }
}