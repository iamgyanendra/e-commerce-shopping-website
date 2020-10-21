using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;    //For db connection: ADO.NET
using System.Data.SqlClient; //For db connection: ADO.NET
using System.Configuration; // for web.config
using System.Globalization;

namespace VsProjectSky
{
    public partial class Payment : System.Web.UI.Page
    {
        int ono; // order no. global variable
        int amt; // amount 
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = Session["amt"].ToString();
            //order no. auto
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Create connection b/w .net and database
            con.Open();  //open db connection

            string qry2 = "Select max(orderNo) from Orderdetails"; //Sql Query
            SqlCommand cmd2 = new SqlCommand(qry2, con); //send query execution
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dr2.Read();
            ono = Convert.ToInt32(dr2[0]);
            ono++;
            Session["ono"] = ono;
            TextBox5.ReadOnly = true;
            TextBox5.Text = ono.ToString();
            dr2.Close();
            con.Close();

            DropDownList4.Items.Add("Select");
            for (int y = 2017; y <= 2030; y++)
                DropDownList4.Items.Add(y.ToString());




            Label1.Text = System.DateTime.Now.ToShortDateString();
            Label2.Visible = false;

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            try
            {
                string bnm = DropDownList1.Text;
                string ct = DropDownList2.Text;
                int cno = Convert.ToInt32(TextBox1.Text);
                string vu = DropDownList3.Text + "/" + DropDownList4.Text;
                int cvv = Convert.ToInt32(TextBox2.Text);
                string cnm = TextBox3.Text;
                int amt = Convert.ToInt32(TextBox4.Text);
                string pdate = Label1.Text;

                BankService bs = new BankService(); // Bank Services
                bool res = bs.checkcard(cno, ct, vu, cvv, cnm, amt);// Bank service Method to check

                if (res == false)
                {
                    Label2.Visible = true;
                    Label2.Text = "Invalid Card Details";
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                    con.Open(); // Open DB Connection
                    string qry = "insert into PaymentDone values(@t1, @t2, @t3, @t4, @t5, @t6,@t7)"; //sql query
                    SqlCommand cmd = new SqlCommand(qry, con); //Send Qry execution

                    //passing parameters
                    cmd.Parameters.AddWithValue("@t1", cno);
                    cmd.Parameters.AddWithValue("@t2", ct);
                    cmd.Parameters.AddWithValue("@t3", cnm);
                    cmd.Parameters.AddWithValue("@t4", amt);
                    cmd.Parameters.AddWithValue("@t5", System.DateTime.Now.ToShortDateString());
                    cmd.Parameters.AddWithValue("@t6", Session["UserName"].ToString());
                    cmd.Parameters.AddWithValue("@t7", Session["ono"].ToString());


                    int i = cmd.ExecuteNonQuery(); //Execute Sql Query

                    if (i == 1)
                    {

                        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                        con3.Open(); // Open DB Connection

                        string qry3 = "select * from TempCart where CustID=@t10 "; //sql query
                        SqlCommand cmd3 = new SqlCommand(qry3, con3); //Send Qry execution
                        cmd3.Parameters.AddWithValue("@t10", Session["cid"].ToString());
                        SqlDataReader dr3 = cmd3.ExecuteReader();



                        SqlConnection con9 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                        con9.Open(); // Open DB Connection

                        while (dr3.Read())
                        {


                            string qry1 = "insert into Orderdetails values(@t1, @t2, @t3, @t4, @t5, @t6, @t7, @t8, @t9)"; //sql query
                            SqlCommand cmd1 = new SqlCommand(qry1, con9); //Send Qry execution

                            //passing parameters
                            cmd1.Parameters.AddWithValue("@t1", ono);
                            cmd1.Parameters.AddWithValue("@t2", Session["cid"].ToString());
                            cmd1.Parameters.AddWithValue("@t3", amt);
                            cmd1.Parameters.AddWithValue("@t4", System.DateTime.Now.ToShortDateString());
                            cmd1.Parameters.AddWithValue("@t5", dr3[0].ToString()); // from temp cart
                            cmd1.Parameters.AddWithValue("@t6", dr3[4].ToString());
                            cmd1.Parameters.AddWithValue("@t7", dr3[1].ToString());
                            cmd1.Parameters.AddWithValue("@t8", dr3[3].ToString());
                            cmd1.Parameters.AddWithValue("@t9", "Under Process");

                            int j = cmd1.ExecuteNonQuery(); //Execute Sql Query
                        }//While loop end

                        dr3.Close();
                        con3.Close();
                        con9.Close();

                        SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString); //Creat DB Connection
                        con4.Open(); // Open DB Connection

                        string qry4 = "Delete from TempCart where CustID=@t15"; //Delete product from temp cart after payment
                        SqlCommand cmd4 = new SqlCommand(qry4, con4); //Send Qry execution
                        cmd4.Parameters.AddWithValue("@t15", Session["cid"].ToString());
                        cmd4.ExecuteNonQuery();

                        Response.Redirect("Order.aspx");
                    }

                }
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
    }
}