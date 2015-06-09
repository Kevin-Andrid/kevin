using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IIL_Portal_res_
{
    public partial class tranviewtimetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            timetable1.Visible = false;
            timetable2.Visible = false;
            timetable3.Visible = false;
            timetable4.Visible = false;
        }

   
        protected void ddlbatchs_DataBound(object sender, EventArgs e)
        {
            ddlbatchs.Items.Insert(0, "Select");
        }

        protected void ddlsection_SelectedIndexChanged(object sender, EventArgs e)
        {
            timetable1.Visible = true;
            timetable2.Visible = true;
            timetable3.Visible = true;
            timetable4.Visible = true;
           
        }

        protected void ddlsection_DataBound(object sender, EventArgs e)
        {
            ddlsection.Items.Insert(0,new ListItem("NIL","NIL"));
        }

       

    }
}