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
    public partial class ProductManage : System.Web.UI.Page
    {

        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select PId, PName, PPrice, PSelPrice, PBrandID, PCategoryID, PDescription, PImageName from tblProducts"; //SQL Query

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
            string qry = "update tblProducts set PName = @t1, PPrice = @t2, PSelPrice = @t3, PBrandID = @t4, PCategoryID = @t5, PDescription = @t6, PImageName = @t7 where PId = @t8";
            SqlCommand cmd = new SqlCommand(qry, con);
            string PName =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string PPrice =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string PSelPrice =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string PBrandID =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string PCategoryID =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string PDescription =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string PImageName =
           ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
           
            cmd.Parameters.AddWithValue("@t1", PName);
            cmd.Parameters.AddWithValue("@t2", PPrice);
            cmd.Parameters.AddWithValue("@t3", PSelPrice);
            cmd.Parameters.AddWithValue("@t4", PBrandID);
            cmd.Parameters.AddWithValue("@t5", PCategoryID);
            cmd.Parameters.AddWithValue("@t6", PDescription);
            cmd.Parameters.AddWithValue("@t7", PImageName);
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
            string qry = "delete from tblProducts where PId=@t1";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@t1", ono);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            connect();
        }

        
    }
}