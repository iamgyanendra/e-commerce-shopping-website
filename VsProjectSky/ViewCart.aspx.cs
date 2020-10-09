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
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from TempCart where CustID=@t1 and PurDate=@t2"; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1", Session["cid"].ToString());
            cmd.Parameters.AddWithValue("@t2", System.DateTime.Now.ToShortDateString());

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

            string qry1 = "select sum(Price*Quty) from TempCart where CustID=@t3 and PurDate=@t4";
            SqlCommand cmd1 = new SqlCommand(qry1, con); //send query execution
            cmd1.Parameters.AddWithValue("@t3", Session["cid"].ToString());
            cmd1.Parameters.AddWithValue("@t4", System.DateTime.Now.ToShortDateString());

            SqlDataReader dr1 = cmd.ExecuteReader(); //Execute sql query

            dr1.Read();
            Label2.Text =dr1[0].ToString();

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["amt"] = Label2.Text;
            Response.Redirect("Payment.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cid = (int)GridView1.DataKeys[e.RowIndex].Value;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection
            string qry = "delete from TempCart where CustID=@t1 and PurDate=@t2"; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1",Session["cid"].ToString());
            cmd.Parameters.AddWithValue("@t2", System.DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            
        }

       

       

        
    }
}