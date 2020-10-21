using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config
using System.IO; // input output
using System.Security.Cryptography.X509Certificates;
using System.EnterpriseServices;

namespace VsProjectSky
{
    public partial class addProduct : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //id outo

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                con.Open();  //open db connection

                string qry = "Select max(PId) from tblProducts"; //Sql Query
                SqlCommand cmd = new SqlCommand(qry, con); //send query execution
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                int PId = Convert.ToInt32(dr[0]);
                PId++;
                TextBox1.ReadOnly = true;
                TextBox1.Text = PId.ToString();
                dr.Close();
                con.Close();


                // when this page first time run then this code will execute
                ShowBrand();
                ShowCategory();

            }

        }

        private void ShowCategory()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "Select * from tblCategory"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt); // fill sda data into dt
            if (dt.Rows.Count != 0) //if data is more then zero
            {
                DropDownListcategory.DataSource = dt; // dropdown source is dt
                DropDownListcategory.DataTextField = "CatName"; // Cat name will show in dropdown
                DropDownListcategory.DataValueField = "CatId"; // sub category database will store only Catid
                DropDownListcategory.DataBind(); // binding data
                DropDownListcategory.Items.Insert(0, new ListItem("-Select-", "0")); //0th index of dropdown list

            }
        }

        private void ShowBrand()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "Select * from tblBrand"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt); // fill sda data into dt
            if (dt.Rows.Count != 0) //if data is more then zero
            {
                DropDownListBrand.DataSource = dt; // dropdown source is dt
                DropDownListBrand.DataTextField = "Name"; // Cat name will show in dropdown
                DropDownListBrand.DataValueField = "BrandId"; // sub category database will store only Catid
                DropDownListBrand.DataBind(); // binding data
                DropDownListBrand.Items.Insert(0, new ListItem("-Select-", "0")); //0th index of dropdown list

            }
        }

        protected void addProduct1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                con.Open();  //open db connection

                string qry = "INSERT INTO tblProducts VALUES(@c0,@c1,@c2,@c3,@c4,@c5,@c6,@c7)"; //Sql Query
                SqlCommand cmd = new SqlCommand(qry, con); //send query execution

                cmd.Parameters.AddWithValue("@c0", TextBox1.Text);
                cmd.Parameters.AddWithValue("@c1", Product.Value);
                cmd.Parameters.AddWithValue("@c2", txtPrice.Value);
                cmd.Parameters.AddWithValue("@c3", txtSellingPrice.Value);
                cmd.Parameters.AddWithValue("@c4", DropDownListBrand.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@c5", DropDownListcategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@c6", desc.Value);


                // insert img in database
                string path = "";
                if (fuImg1.HasFile) // file upload center
                {
                    fuImg1.SaveAs(Server.MapPath("~/images/ProductImage/" + fuImg1.FileName));
                    path = "~/images/ProductImage/" + fuImg1.FileName;


                }



                cmd.Parameters.AddWithValue("@c7", path);



                int i = cmd.ExecuteNonQuery(); //Execute sql query


                if (i == 1)
                {
                    Response.Write("<script> alert('succesfull'); </script>");
                    clear();

                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                    con1.Open();  //open db connection

                    string qry1 = "Select max(PId) from tblProducts"; //Sql Query
                    SqlCommand cmd1 = new SqlCommand(qry1, con1); //send query execution
                    SqlDataReader dr1 = cmd1.ExecuteReader();
                    dr1.Read();
                    int PId = Convert.ToInt32(dr1[0]);
                    PId++;
                    TextBox1.ReadOnly = true;
                    TextBox1.Text = PId.ToString();
                    dr1.Close();
                    con1.Close();

                    ShowCategory();
                    ShowBrand();
                }
                else
                {
                    Response.Write("<script> alert('Not succesfull'); </script>");
                }


            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }



        }

        private void clear()
        {

            Product.Value = string.Empty;
            txtPrice.Value = string.Empty;
            txtSellingPrice.Value = string.Empty;
            DropDownListBrand.SelectedItem.Value = string.Empty;
            DropDownListcategory.SelectedItem.Value = string.Empty;
            desc.Value = string.Empty;
        }

    }
}