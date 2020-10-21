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
    public partial class SearchProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                con.Open(); // Open DB Connection
                string qry = "select PId, PName, PSelPrice, PDescription, PImageName from tblProducts where PName=@t1"; //SQL Query
                SqlCommand cmd = new SqlCommand(qry, con); //Send Qry
                cmd.Parameters.AddWithValue("@t1", SearchBox.Text.ToString());

                SqlDataReader dr = cmd.ExecuteReader();//Execute Sql

                if (dr.HasRows) //If record matched
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind(); //Binding the Grid fields with

                }
                else
                {

                    Label1.Text = "Product Not Found";
                }
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }

        }
    }
}