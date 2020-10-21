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
    public partial class Brand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBrand_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                con.Open();  //open db connection

                string qry = "INSERT INTO tblBrand VALUES(@BrandBox)"; //Sql Query
                SqlCommand cmd = new SqlCommand(qry, con); //send query execution

                cmd.Parameters.AddWithValue("@BrandBox", BrandBox.Value);

                int i = cmd.ExecuteNonQuery(); //Execute sql query
                if (i == 1)
                {
                    BrandLabel.Text = "Brand Add Succesfully";
                    BrandLabel.ForeColor = System.Drawing.Color.Green;

                }
                else
                {
                    Response.Write("<script> alert('Faild'); </script>");
                }


                con.Close();
                BrandBox.Value = string.Empty;
                BrandBox.Focus();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }

        }
    }
}