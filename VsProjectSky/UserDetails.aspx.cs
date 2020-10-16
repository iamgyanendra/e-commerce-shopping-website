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
    public partial class UserDetails : System.Web.UI.Page
    {

        public void connect()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select Username, UserFname, UserLname, Addrs, EmailID from Login where Uid=@t1 and Username=@t2"; //SQL Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution
            cmd.Parameters.AddWithValue("@t1", Session["cid"].ToString());// passing parameters to the query
            cmd.Parameters.AddWithValue("@t2", Session["UserName"].ToString());// passing parameters to the query
            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query
            if (dr.Read())
            {
                Label1.Text = dr[0].ToString();
                Label2.Text = dr[1].ToString();
                Label3.Text = dr[4].ToString();
                Label4.Text = dr[3].ToString();
                Label5.Text = dr[2].ToString();
                Label6.Text = dr[1].ToString();
                Label7.Text = dr[2].ToString();
            }


        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)  // To access this page, login needed
            {
                Response.Redirect("UserLogin.aspx?url=" + Server.UrlEncode(Request.Url.AbsoluteUri));

            }
            if (!IsPostBack)
            {
                connect();
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}