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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }
        protected void Button1_Click(object sender, EventArgs e) //on click login button
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from Login where UserName=@t8 and UserPass=@t3"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t8", username.Value);// passing parameters to the query
            cmd.Parameters.AddWithValue("@t3", pass.Value); //  ||
            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.Read()) //if record matched
            {
                Response.Redirect("home2.aspx"); //open home page


            }
            else //if unmatched
            {
                //Label1.Visible = true;
                //Label1.Text = "Invalid Username/Password";

                Response.Write("<script> alert('Invalid Username/Password'); </script>"); //invalid alert 


            }
            dr.Close();
            con.Close();
        }
    }
}