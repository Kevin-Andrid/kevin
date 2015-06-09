using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace IIL_Portal_res_
{
    public partial class tranfacultyattendence : System.Web.UI.Page
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
            ddlsection.Items.Insert(0, new ListItem("NIL", "NIL"));
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow r in timetable1.Rows)
            {
                bool hour1 = (r.FindControl("chkstatus1") as CheckBox).Checked;
                bool hour2 = (r.FindControl("chkstatus2") as CheckBox).Checked;
                bool hour3 = (r.FindControl("chkstatus3") as CheckBox).Checked;
                bool hour4 = (r.FindControl("chkstatus4") as CheckBox).Checked;
                bool hour5 = (r.FindControl("chkstatus5") as CheckBox).Checked;
                string datedif = r.Cells[0].Text;
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd2 = new SqlCommand("update test set attendence1 = CASE WHEN (@attendence1)= 'false' THEN 'false' ELSE 'true' END, attendence2 = CASE WHEN (@attendence2)= 'false' THEN 'false' ELSE 'true' END, attendence3 = CASE WHEN (@attendence3)= 'false' THEN 'false' ELSE 'true' END , attendence4 = CASE WHEN (@attendence4)= 'false' THEN 'false' ELSE 'true' END , attendence5 = CASE WHEN (@attendence5)= 'false' THEN 'false' ELSE 'true' END where datedif=@datedif");
                    cmd2.Connection = con;
                    con.Open();
                    cmd2.Parameters.AddWithValue("@attendence1", hour1);
                    cmd2.Parameters.AddWithValue("@attendence2", hour2);
                    cmd2.Parameters.AddWithValue("@attendence3", hour3);
                    cmd2.Parameters.AddWithValue("@attendence4", hour4);
                    cmd2.Parameters.AddWithValue("@attendence5", hour5);
                    cmd2.Parameters.AddWithValue("@datedif", datedif);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
            }

            foreach (GridViewRow r in timetable2.Rows)
            {
                bool hour1 = (r.FindControl("chkstatus6") as CheckBox).Checked;
                bool hour2 = (r.FindControl("chkstatus7") as CheckBox).Checked;
                bool hour3 = (r.FindControl("chkstatus8") as CheckBox).Checked;
                bool hour4 = (r.FindControl("chkstatus9") as CheckBox).Checked;
                bool hour5 = (r.FindControl("chkstatus10") as CheckBox).Checked;
                string datedif = r.Cells[0].Text;
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd2 = new SqlCommand("update test set attendence1 = CASE WHEN (@attendence1)= 'false' THEN 'false' ELSE 'true' END, attendence2 = CASE WHEN (@attendence2)= 'false' THEN 'false' ELSE 'true' END, attendence3 = CASE WHEN (@attendence3)= 'false' THEN 'false' ELSE 'true' END , attendence4 = CASE WHEN (@attendence4)= 'false' THEN 'false' ELSE 'true' END , attendence5 = CASE WHEN (@attendence5)= 'false' THEN 'false' ELSE 'true' END where datedif=@datedif");
                    cmd2.Connection = con;
                    con.Open();
                    cmd2.Parameters.AddWithValue("@attendence1", hour1);
                    cmd2.Parameters.AddWithValue("@attendence2", hour2);
                    cmd2.Parameters.AddWithValue("@attendence3", hour3);
                    cmd2.Parameters.AddWithValue("@attendence4", hour4);
                    cmd2.Parameters.AddWithValue("@attendence5", hour5);
                    cmd2.Parameters.AddWithValue("@datedif", datedif);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
            }

            foreach (GridViewRow r in timetable3.Rows)
            {
                bool hour1 = (r.FindControl("chkstatus11") as CheckBox).Checked;
                bool hour2 = (r.FindControl("chkstatus12") as CheckBox).Checked;
                bool hour3 = (r.FindControl("chkstatus13") as CheckBox).Checked;
                bool hour4 = (r.FindControl("chkstatus14") as CheckBox).Checked;
                bool hour5 = (r.FindControl("chkstatus15") as CheckBox).Checked;
                string datedif = r.Cells[0].Text;
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd2 = new SqlCommand("update test set attendence1 = CASE WHEN (@attendence1)= 'false' THEN 'false' ELSE 'true' END, attendence2 = CASE WHEN (@attendence2)= 'false' THEN 'false' ELSE 'true' END, attendence3 = CASE WHEN (@attendence3)= 'false' THEN 'false' ELSE 'true' END , attendence4 = CASE WHEN (@attendence4)= 'false' THEN 'false' ELSE 'true' END , attendence5 = CASE WHEN (@attendence5)= 'false' THEN 'false' ELSE 'true' END where datedif=@datedif");
                    cmd2.Connection = con;
                    con.Open();
                    cmd2.Parameters.AddWithValue("@attendence1", hour1);
                    cmd2.Parameters.AddWithValue("@attendence2", hour2);
                    cmd2.Parameters.AddWithValue("@attendence3", hour3);
                    cmd2.Parameters.AddWithValue("@attendence4", hour4);
                    cmd2.Parameters.AddWithValue("@attendence5", hour5);
                    cmd2.Parameters.AddWithValue("@datedif", datedif);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
            }

            foreach (GridViewRow r in timetable4.Rows)
            {
                bool hour1 = (r.FindControl("chkstatus16") as CheckBox).Checked;
                bool hour2 = (r.FindControl("chkstatus17") as CheckBox).Checked;
                bool hour3 = (r.FindControl("chkstatus18") as CheckBox).Checked;
                bool hour4 = (r.FindControl("chkstatus19") as CheckBox).Checked;
                bool hour5 = (r.FindControl("chkstatus20") as CheckBox).Checked;
                string datedif = r.Cells[0].Text;
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd2 = new SqlCommand("update test set attendence1 = CASE WHEN (@attendence1)= 'false' THEN 'false' ELSE 'true' END, attendence2 = CASE WHEN (@attendence2)= 'false' THEN 'false' ELSE 'true' END, attendence3 = CASE WHEN (@attendence3)= 'false' THEN 'false' ELSE 'true' END , attendence4 = CASE WHEN (@attendence4)= 'false' THEN 'false' ELSE 'true' END , attendence5 = CASE WHEN (@attendence5)= 'false' THEN 'false' ELSE 'true' END where datedif=@datedif");
                    cmd2.Connection = con;
                    con.Open();
                    cmd2.Parameters.AddWithValue("@attendence1", hour1);
                    cmd2.Parameters.AddWithValue("@attendence2", hour2);
                    cmd2.Parameters.AddWithValue("@attendence3", hour3);
                    cmd2.Parameters.AddWithValue("@attendence4", hour4);
                    cmd2.Parameters.AddWithValue("@attendence5", hour5);
                    cmd2.Parameters.AddWithValue("@datedif", datedif);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Redirect("tranhourpay.aspx");
        }
    }
}
