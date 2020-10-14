using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config

namespace VsProjectSky
{
    public class ShoppingCart
    {
        

        public void addToCart(int pid,  string pnm, int cid, int pr, int qt, string pdate )
        {
            if (HttpContext.Current.Session["UserName"] == null)  // To access addtocart button, login needed
            {
                HttpContext.Current.Response.Redirect("UserLogin.aspx?url=" + HttpContext.Current.Server.UrlEncode(HttpContext.Current.Request.Url.AbsoluteUri));

            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "INSERT INTO TempCart VALUES(@c1,@c2,@c3,@c4,@c5,@c6)"; //Sql Query
            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            cmd.Parameters.AddWithValue("@c1", pid);
            cmd.Parameters.AddWithValue("@c2", pnm);
            cmd.Parameters.AddWithValue("@c3", cid);
            cmd.Parameters.AddWithValue("@c4", pr);
            cmd.Parameters.AddWithValue("@c5", qt);
            cmd.Parameters.AddWithValue("@c6", pdate);

            cmd.ExecuteNonQuery(); // execute SQL Query
        }

    }
}