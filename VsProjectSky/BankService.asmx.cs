using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config

namespace VsProjectSky
{
    /// <summary>
    /// Summary description for BankService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BankService : System.Web.Services.WebService
    {

        [WebMethod]
        public bool checkcard(int cno, string ct, string vu, int cvv, string cnm, int climit)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry = "select * from CardPayment where Cardno=@t1 and Cardtype=@t2 and validupto=@t3 and CVV=@t4 and Cardholder=@t5 and cardlimit>=@t6" ; //Sql Query

            SqlCommand cmd = new SqlCommand(qry, con); //send query execution

            cmd.Parameters.AddWithValue("@t1", cno);
            cmd.Parameters.AddWithValue("@t2", ct);
            cmd.Parameters.AddWithValue("@t3", vu);
            cmd.Parameters.AddWithValue("@t4", cvv);
            cmd.Parameters.AddWithValue("@t5", cnm);
            cmd.Parameters.AddWithValue("@t6", climit);

            SqlDataReader dr = cmd.ExecuteReader(); //Execute sql query

            if (dr.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }
            dr.Close();
            con.Close();
        }
    }
}
