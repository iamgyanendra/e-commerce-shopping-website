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
    public partial class CustomerManage : System.Web.UI.Page
    {
        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select Uid, Username, UserFname, UserLname, UserPass, Addrs, Sex, EmailID from Login"; //SQL Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution


            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.HasRows)
            {

                GridView1.DataSource = dr;
                GridView1.DataBind();

            }


        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                connect();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            connect();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            connect();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
            con.Open(); // Open DB Connection
            int ono = (int)GridView1.DataKeys[e.RowIndex].Value;
            string qry = "update Login set Username = @t1, UserFname = @t2, UserLname = @t3, UserPass = @t4, Addrs = @t5, Sex =@t6, EmailID = @t7 where Uid = @t8";
            SqlCommand cmd = new SqlCommand(qry, con);
            string Username =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string UserFname =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string UserLname =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string UserPass =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string Addrs =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string Sex =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string EmailID =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            
            cmd.Parameters.AddWithValue("@t1", Username);
            cmd.Parameters.AddWithValue("@t2", UserFname);
            cmd.Parameters.AddWithValue("@t3", UserLname);
            cmd.Parameters.AddWithValue("@t4", UserPass);
            cmd.Parameters.AddWithValue("@t5", Addrs);
            cmd.Parameters.AddWithValue("@t6", Sex);
            cmd.Parameters.AddWithValue("@t7", EmailID);
            cmd.Parameters.AddWithValue("@t8", ono);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            connect();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
            con.Open(); // Open DB Connection
            int ono = (int)GridView1.DataKeys[e.RowIndex].Value;
            string qry = "delete from Login where Uid=@t1";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", ono);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            connect();
        }
    }
}