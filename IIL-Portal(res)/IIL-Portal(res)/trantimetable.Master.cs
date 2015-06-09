using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIL_Portal_res_
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
                       Response.Redirect("~/loginFolder/loginstud.aspx");
                       Session.RemoveAll();
                       Session.Abandon();
        }
    }
}