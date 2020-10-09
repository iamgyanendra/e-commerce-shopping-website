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
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCat_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "INSERT INTO tblCategory VALUES(@CatBox)"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            cmd.Parameters.AddWithValue("@CatBox", catBox.Value);

            int i = cmd.ExecuteNonQuery(); //Execute sql query
            if (i == 1)
            {
                CatLabel.Text = "Category Add Succesfully";
                CatLabel.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Response.Write("<script> alert('Faild'); </script>");
            }
            catBox.Value = string.Empty;
            
            con.Close();
            catBox.Focus();


        }
    




    }
}