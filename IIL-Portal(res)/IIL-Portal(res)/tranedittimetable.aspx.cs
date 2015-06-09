using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace IIL_Portal_res_
{
    public partial class tranedittimetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            edittable.Visible = false;
            btnsubject.Visible = false;
            btnevent.Visible = false;
            ddlsubject.Visible = false;
            ddlevent.Visible = false;
        }     
        protected void ddlebatch_DataBound(object sender, EventArgs e)
        {
           ddlebatch.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void ddleweek_DataBound(object sender, EventArgs e)
        {
            ddleweek.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            btnsubject.Visible = true;
            btnevent.Visible = true;
        }

        protected void btnsubject_Click(object sender, EventArgs e)
        {
            btnsubject.Visible = true;
            btnevent.Visible = true;
            ddlsubject.Visible = true;
        }

        protected void btnevent_Click(object sender, EventArgs e)
        {
            btnsubject.Visible = true;
            btnevent.Visible = true;
            ddlevent.Visible = true;
        }

        protected void ddlsubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            edittable.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from datelist where daywk='" + ddleweek.SelectedValue + "' and batch='" + ddlebatch.SelectedValue + "' ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                edittable.DataSource = dt;
                edittable.DataBind();
            }
        }

        protected void ddlevent_SelectedIndexChanged(object sender, EventArgs e)
        {
            edittable.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from datelist where daywk='" + ddleweek.SelectedValue + "' and batch='" + ddlebatch.SelectedValue + "' ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                edittable.DataSource = dt;
                edittable.DataBind();
            }
        }

        }
    }