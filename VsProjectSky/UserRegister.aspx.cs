using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config
using System.EnterpriseServices;

namespace VsProjectSky
{
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
           

            if (isFormvalid())
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
                con.Open();  //open db connection

                string qry = "INSERT INTO Login VALUES(@t8,@t1,@t2,@t3,@t4,@t5,@t6)"; //Sql Query
                SqlCommand cmd = new SqlCommand(qry, con); //send query execution

                cmd.Parameters.AddWithValue("@t8", username.Value);
                cmd.Parameters.AddWithValue("@t1", Fname.Value); // passing parameters to the query
                cmd.Parameters.AddWithValue("@t2", Lname.Value);
                cmd.Parameters.AddWithValue("@t3", pass.Value);
                cmd.Parameters.AddWithValue("@t4", address.Value);
                string sx;
                
                if (RadioButton1.Checked)
                {
                    sx = "male";

                }
                else
                    sx = "female";


                cmd.Parameters.AddWithValue("@t5", sx);
                cmd.Parameters.AddWithValue("@t6", email.Value);
                


                int i = cmd.ExecuteNonQuery(); //Execute sql query
                if (i == 1)
                {
                    Response.Write("<script> alert('Registration succesfull'); </script>");

                }
                else
                {
                    Response.Write("<script> alert('Registration succesfull'); </script>");
                }
                clear();
                con.Close();
                msgLabel.Text = "Registration Succesfully Done";
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
            if (username.Value == "")
            {

                Response.Write("<script> alert('User Name Not Valid'); </script>");
                return false;
            }
            else if (Fname.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }

            else if (Lname.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }
            else if (pass.Value == "")
            {
                Response.Write("<script> alert('Password is Not Valid'); </script>");
                return false;
            }
            else if (Fname.Value == "")
            {
                Response.Write("<script> alert(' Name Not Valid'); </script>");
                return false;
            }
            else if (pass.Value != Cpass.Value)
            {
                Response.Write("<script> alert(' Confirm Password is not valid'); </script>");
                return false;
            }
            return true;
        }

        private void clear()
        {
            username.Value = string.Empty;
            Fname.Value = string.Empty;
            Lname.Value = string.Empty;
            pass.Value = string.Empty;
            address.Value = string.Empty;
            email.Value = string.Empty;
        }


    }
}