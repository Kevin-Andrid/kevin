using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIL_Portal_res_
{
    public partial class tranviewfaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbedit_Click(object sender, EventArgs e)
        {
            LinkButton bl = (LinkButton)(sender);
            Response.Redirect("traneditfaculty.aspx?FRN=" + bl.CommandArgument.ToString() + "");
        }
    }
}