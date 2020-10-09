using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class Tracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5031;
            Response.Redirect("ProductDetails.aspx");

        }

        protected void AddCart1_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5031, "Apple Smart Watch", Convert.ToInt32(Session["cid"]), 20000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5032;
            Response.Redirect("ProductDetails.aspx");

        }

        protected void AddCart2_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5032, "Health Tracker", Convert.ToInt32(Session["cid"]), 15000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5033;
            Response.Redirect("ProductDetails.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5033, "Samsung Smart Watch", Convert.ToInt32(Session["cid"]), 3000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5034;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5034, "Redmi Smart Band", Convert.ToInt32(Session["cid"]), 2000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5035;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5035, "Noise Smart Watch", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5036;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5036, "Apple Smart Watch ", Convert.ToInt32(Session["cid"]), 30000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }
    }
}