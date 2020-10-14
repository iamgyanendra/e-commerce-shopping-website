using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class Cricket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5007;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart1_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5007, "Cricket Bat", Convert.ToInt32(Session["cid"]), 10000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());
            AddCart1.Text = "Added";
        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5008;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart2_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5008, "Wicket", Convert.ToInt32(Session["cid"]), 1000, Convert.ToInt32(TextBox2.Text), System.DateTime.Now.ToShortDateString());
            AddCart2.Text = "Added";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5009;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5009, "Ball Set", Convert.ToInt32(Session["cid"]), 3000, Convert.ToInt32(TextBox3.Text), System.DateTime.Now.ToShortDateString());
            Button3.Text = "Added";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5010;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5010, "MRF Bat", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox4.Text), System.DateTime.Now.ToShortDateString());
            Button4.Text = "Added";
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5011;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5011, "Cricket Kit", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox5.Text), System.DateTime.Now.ToShortDateString());
            Button5.Text = "Added";
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5012;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5012, "MRF Bat", Convert.ToInt32(Session["cid"]), 1280, Convert.ToInt32(TextBox6.Text), System.DateTime.Now.ToShortDateString());
            Button6.Text = "Added";
        }
    }
}