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
    public partial class ViewCart : System.Web.UI.Page
    {

        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from TempCart"; //SQL Query

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

            if (Session["UserName"] == null)  // To access this page, login needed
            {
                Response.Redirect("UserLogin.aspx?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));

            }




            Label1.Visible = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from TempCart where CustID=@t1"; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1", Session["cid"].ToString());

            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.HasRows)
            {

                GridView1.DataSource = dr;
                GridView1.DataBind();

            }
            else
            {
                GridView1.Visible = false;
                Label1.Visible = true;
                Label1.Text = "Your Cart Is Empty";

            }
            dr.Close();

            string qry1 = "select sum(Price*Quty) from TempCart where CustID=@t3";
            SqlCommand cmd1 = new SqlCommand(qry1, con); //send query execution
            cmd1.Parameters.AddWithValue("@t3", Session["cid"].ToString());

            SqlDataReader dr1 = cmd1.ExecuteReader(); //Execute sql query

            dr1.Read();
            Label2.Text = dr1[0].ToString();

            dr1.Close();

            con.Close();
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["amt"] = Label2.Text;
            Response.Redirect("Payment.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection
            int cid = (int)GridView1.DataKeys[e.RowIndex].Value;
            string qry = "delete from TempCart where ProdId=@t1"; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1", cid);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            connect();
        }






    }
}