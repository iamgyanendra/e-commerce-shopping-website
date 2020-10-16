using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VsProjectSky
{
    public partial class MP1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"]!=null)
            {
                sire.Visible = false;
                Label3.Visible = true;
                Label3.Text = Session["UserName"].ToString();
                
            }
        }

       
    }
}