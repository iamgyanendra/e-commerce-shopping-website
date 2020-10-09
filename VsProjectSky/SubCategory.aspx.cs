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
    public partial class SubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCat(); //connecting category and sub category
            }
        }

        protected void AddSubCat_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "INSERT INTO tblSubCategory VALUES(@SubCatBox,@MainCatId)"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            cmd.Parameters.AddWithValue("@SubCatBox", SubCatBox.Value);
            cmd.Parameters.AddWithValue("@MainCatId", ddlMainCatId.SelectedItem.Value);

            int i = cmd.ExecuteNonQuery(); //Execute sql query
             
            if (i == 1)
            {
                SubCatLabel.Text = "Sub-Category Add Succesfully";
                SubCatLabel.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Response.Write("<script> alert('Faild'); </script>");
            }


            SubCatBox.Value = string.Empty;
            con.Close();
            ddlMainCatId.ClearSelection();
            ddlMainCatId.Items.FindByValue("0").Selected = true;
        }

        private void BindMainCat()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "Select * from tblCategory"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt); // fill sda data into dt
            if(dt.Rows.Count != 0) //if data is more then zero
            {
                ddlMainCatId.DataSource = dt; // dropdown source is dt
                ddlMainCatId.DataTextField = "CatName"; // Cat name will show in dropdown
                ddlMainCatId.DataValueField = "CatId"; // sub category database will store only Catid
                ddlMainCatId.DataBind(); // binding data
                ddlMainCatId.Items.Insert(0, new ListItem("-Select-", "0")); //0th index of dropdown list

            }

        }
    }

    
}