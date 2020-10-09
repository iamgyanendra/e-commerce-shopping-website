using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5001;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart1_Click1(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5001, "Gorunfocus Athos Walking Shoes For Men  (Grey, Orange)", Convert.ToInt32(Session["cid"]), 800, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5002;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart2_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5002, "Nike Sports Shoes", Convert.ToInt32(Session["cid"]), 1000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5003;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5003, "Puma Sports Shoes ", Convert.ToInt32(Session["cid"]), 3000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5004;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5004, "Sports Shoes ", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5005;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5005, "Adidas Sports shoes  ", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5006;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5006, "Sports Shoes", Convert.ToInt32(Session["cid"]), 1280, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());

        }
    }
}