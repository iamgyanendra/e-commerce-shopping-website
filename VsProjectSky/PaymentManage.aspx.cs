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
    public partial class PaymentManage : System.Web.UI.Page
    {
        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select Cardno, Cardtype, validupto, CVV, Cardholder, cardlimit from CardPayment"; //SQL Query

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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
            con.Open(); // Open DB Connection
            int ono = (int)GridView1.DataKeys[e.RowIndex].Value;
            string qry = "delete from CardPayment where Cardno=@t1";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", ono);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            connect();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new
           SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
            con.Open(); // Open DB Connection
            int ono = (int)GridView1.DataKeys[e.RowIndex].Value;
            string qry = "update CardPayment set Cardtype = @t1, validupto = @t2, CVV = @t3, Cardholder = @t4, cardlimit =@t5 where Cardno = @t6";
            SqlCommand cmd = new SqlCommand(qry, con);
            string Cardtype =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string validupto =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string CVV =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string Cardholder =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string cardlimit =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            
            cmd.Parameters.AddWithValue("@t1", Cardtype);
            cmd.Parameters.AddWithValue("@t2", validupto);
            cmd.Parameters.AddWithValue("@t3", CVV);
            cmd.Parameters.AddWithValue("@t4", Cardholder);
            cmd.Parameters.AddWithValue("@t5", cardlimit);
            cmd.Parameters.AddWithValue("@t6", ono);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            connect();
        }
    }
}