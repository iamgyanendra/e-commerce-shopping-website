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
    public partial class OrderManage : System.Web.UI.Page
    {

        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select OrderNo, custid, amount, orderDate, PId, qty, prodName, price, status from Orderdetails"; //SQL Query

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
            string qry = "update Orderdetails set custid = @t1, amount = @t2, orderDate = @t3, PId = @t4, qty = @t5, prodName =@t6, price = @t7,status = @t8 where orderNo = @t9";
            SqlCommand cmd = new SqlCommand(qry, con);
            string custid =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string amount =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string orderDate =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string PId =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string qty =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string prodName =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string price =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string status =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            cmd.Parameters.AddWithValue("@t1", custid);
            cmd.Parameters.AddWithValue("@t2", amount);
            cmd.Parameters.AddWithValue("@t3", orderDate);
            cmd.Parameters.AddWithValue("@t4", PId);
            cmd.Parameters.AddWithValue("@t5", qty);
            cmd.Parameters.AddWithValue("@t6", prodName);
            cmd.Parameters.AddWithValue("@t7", price);
            cmd.Parameters.AddWithValue("@t8", status);
            cmd.Parameters.AddWithValue("@t9", ono);
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
            string qry = "delete from Oderdetails where orderNo=@t1";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", ono);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            connect();
        }
    }
}