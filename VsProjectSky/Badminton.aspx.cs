using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class Badminton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5019;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart1_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5019, "Badminton", Convert.ToInt32(Session["cid"]), 200, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5020;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart2_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5020, "Badminton", Convert.ToInt32(Session["cid"]), 100, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5021;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5021, "Badminton", Convert.ToInt32(Session["cid"]), 3000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5022;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5022, "Badminton", Convert.ToInt32(Session["cid"]), 400, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5023;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5023, "Badminton", Convert.ToInt32(Session["cid"]), 400, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5024;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5024, "Badminton", Convert.ToInt32(Session["cid"]), 128, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }
    }
}