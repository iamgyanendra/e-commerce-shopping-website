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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select PId, PName, PPrice ,PDescription, PImageName from tblProducts where PId=@p1"; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@p1", Session["prid"]);
            
            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.HasRows)
            {
                dr.Read();

                Label5.Text = dr[0].ToString();
                Label1.Text = dr[1].ToString();
                Label3.Text = dr[2].ToString();
                TextBox1.Text = dr[3].ToString();
                pdImage1.ImageUrl = dr[4].ToString();

            }
        }

        protected void productDetails_Click(object sender, EventArgs e)
        {

        }
    }
}