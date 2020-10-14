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
    public partial class SellerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new
               SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                con.Open(); // Open DB Connection
                string qry = "select * from SellerLogin where SUsername=@t1 and SPass= @t2"; //SQL Query
                SqlCommand cmd = new SqlCommand(qry, con); //Send Qry execution
                cmd.Parameters.AddWithValue("@t1", User.Value);//passing parameters
                cmd.Parameters.AddWithValue("@t2", UserPass.Value);
                SqlDataReader dr = cmd.ExecuteReader();//Execute Sql Query
                if (dr.Read()) //If record matched
                {
                    
                    Response.Redirect("AddProduct.aspx"); //Start Adding product 
                }
                else //If Unmatched
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Email/Password";
                }
                dr.Close();
                con.Close();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
    }
}