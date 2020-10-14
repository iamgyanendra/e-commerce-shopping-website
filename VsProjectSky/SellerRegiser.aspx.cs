using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.EnterpriseServices;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config

namespace VsProjectSky
{
    public partial class SellerRegiser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SRegister_Click(object sender, EventArgs e)
        {
            if (isFormvalid())
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                con.Open();  //open db connection

                string qry = "INSERT INTO SellerLogin VALUES(@t1,@t2,@t3,@t4,@t5)"; //Sql Query
                SqlCommand cmd = new SqlCommand(qry, con); //send query execution

                cmd.Parameters.AddWithValue("@t1", SUsername.Value);
                cmd.Parameters.AddWithValue("@t2", SName.Value); // passing parameters to the query
                cmd.Parameters.AddWithValue("@t3", SPass.Value);
                cmd.Parameters.AddWithValue("@t4", SAddrs.Value);
                cmd.Parameters.AddWithValue("@t5", SEmailID.Value);
                



                int i = cmd.ExecuteNonQuery(); //Execute sql query
                if (i == 1)
                {
                    Response.Write("<script> alert('Registration succesfull'); </script>");
                    Response.Redirect("SellerLogin.aspx");

                }
                else
                {
                    Response.Write("<script> alert('Registration succesfull'); </script>");
                }
                clear();
                con.Close();
                msgLabel.Text = "Your are now seller on Sky Shop";
                msgLabel.ForeColor = System.Drawing.Color.Green;


            }
            else
            {
                msgLabel.Text = "Registration Failed";
                msgLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isFormvalid()
        {
            if (SUsername.Value == "")
            {

                Response.Write("<script> alert('User Name Not Valid'); </script>");
                return false;
            }
            else if (SName.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }

           
            else if (SPass.Value == "")
            {
                Response.Write("<script> alert('Password is Not Valid'); </script>");
                return false;
            }
            else if (SAddrs.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }
            else if (SEmailID.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }
            else if (SPass.Value != CPass.Value)
            {
                Response.Write("<script> alert(' Confirm Password is not valid'); </script>");
                return false;
            }
            return true;
        }

        private void clear()
        {
            SUsername.Value = string.Empty;
            SName.Value = string.Empty;
            
            SPass.Value = string.Empty;
            SAddrs.Value = string.Empty;
            SEmailID.Value = string.Empty;
        }
    }
}