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

            string qry = "select Id, Cardno, Cardtype, Cardname, Amount, Date, UserName, Orderno from PaymentDone"; //SQL Query

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
            string qry = "delete from PaymentDone where Id=@t1";
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
            string qry = "update PaymentDone set Cardno=@t1, Cardtype=@t2, Cardname=@t3, Amount=@t4, Date=@t5, UserName=@t6, Orderno=@t7 where Id=@t8";
            SqlCommand cmd = new SqlCommand(qry, con);
            string Cardno =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string Cardtype =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string Cardname =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string Amount =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string Date =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string UserName =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string Orderno =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

            cmd.Parameters.AddWithValue("@t1", Cardno);
            cmd.Parameters.AddWithValue("@t2", Cardtype);
            cmd.Parameters.AddWithValue("@t3", Cardname);
            cmd.Parameters.AddWithValue("@t4", Amount);
            cmd.Parameters.AddWithValue("@t5", Date);
            cmd.Parameters.AddWithValue("@t6", UserName);
            cmd.Parameters.AddWithValue("@t7", Orderno);
            cmd.Parameters.AddWithValue("@t8", ono);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            connect();
        }
    }
}