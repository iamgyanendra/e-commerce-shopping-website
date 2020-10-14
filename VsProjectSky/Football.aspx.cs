using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class Football : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5013;
            Response.Redirect("ProductDetails.aspx");

        }

        protected void AddCart1_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5013, "Football (White)", Convert.ToInt32(Session["cid"]), 1000, Convert.ToInt32(TextBox1.Text), System.DateTime.Now.ToShortDateString());
            AddCart1.Text = "Added";
        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5014;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void AddCart2_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5014, "Football ", Convert.ToInt32(Session["cid"]), 1000, Convert.ToInt32(TextBox2.Text), System.DateTime.Now.ToShortDateString());
            AddCart2.Text = "Added";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5015;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5015, "Football ", Convert.ToInt32(Session["cid"]), 3000, Convert.ToInt32(TextBox3.Text), System.DateTime.Now.ToShortDateString());
            Button3.Text = "Added";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5016;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5016, "Vector Football ", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox4.Text), System.DateTime.Now.ToShortDateString());
            Button4.Text = "Added";
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5017;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5017, " Football ", Convert.ToInt32(Session["cid"]), 4000, Convert.ToInt32(TextBox5.Text), System.DateTime.Now.ToShortDateString());
            Button5.Text = "Added";
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["prid"] = 5018;
            Response.Redirect("ProductDetails.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart();
            sc.addToCart(5018, "Nivia Football ", Convert.ToInt32(Session["cid"]), 1280, Convert.ToInt32(TextBox6.Text), System.DateTime.Now.ToShortDateString());
            Button6.Text = "Added";
        }
    }
}