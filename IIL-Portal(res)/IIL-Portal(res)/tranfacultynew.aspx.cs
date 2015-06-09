



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
    public partial class transfaculty : System.Web.UI.Page
    {
        bool hours1 = false;
        bool hours2 = false;
        bool hours3 = false;
        bool hours4 = false;
        bool hours5 = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated && System.Web.HttpContext.Current.Session["UserAuthentication"] != null)
            {

                lblWelcomeName.Text = "Welcome: " + User.Identity.Name;
                if (!IsPostBack)
                {
                    btnsubmit.Visible = false;
                }

                string uid = HttpContext.Current.Session["UserAuthentication"].ToString();
                DataTable dt = new DataTable();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


                SqlCommand cmd1 = new SqlCommand("select subject from assign where facultyname='" + uid + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                sda.Fill(dt);
                ddlsubj.DataSource = dt;
                ddlsubj.DataTextField = "subject";
                ddlsubj.DataValueField = "subject";
                ddlsubj.DataBind();

            }
            else
            {
                Response.Redirect("~/loginFolder/loginstud.aspx");
            }
        }




        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Gv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void createbtnclick_Click(object sender, EventArgs e)
        {
            btnsubmit.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select distinct datedif,hour1,hour2,hour3,hour4,hour5 from test where (weekmonth='" + ddlmonths.SelectedValue + "') and (dayweek='Week 1') and (batch='" + ddlbatch.SelectedItem.Text + "') and (section='" + ddlsection.SelectedItem.Text + "') ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv1.DataSource = dt;
                Gv1.DataBind();
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select DISTINCT datedif,hour1,hour2,hour3,hour4,hour5 from test where( weekmonth='" + ddlmonths.SelectedValue + "') and (dayweek='Week 2') and (section='" + ddlsection.SelectedItem.Text + "') and (batch='" + ddlbatch.SelectedItem.Text + "')", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv2.DataSource = dt;
                Gv2.DataBind();
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select DISTINCT datedif,hour1,hour2,hour3,hour4,hour5 from test where (weekmonth='" + ddlmonths.SelectedValue + "') and (dayweek='Week 3') and (section='" + ddlsection.SelectedItem.Text + "') and (batch='" + ddlbatch.SelectedItem.Text + "')", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv3.DataSource = dt;
                Gv3.DataBind();
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select DISTINCT datedif,hour1,hour2,hour3,hour4,hour5 from test where weekmonth='" + ddlmonths.SelectedValue + "' and (dayweek='Week 4') and (section='" + ddlsection.SelectedItem.Text + "') and (batch='" + ddlbatch.SelectedItem.Text + "')", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv4.DataSource = dt;
                Gv4.DataBind();
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con1.Open();
                SqlCommand cmd = new SqlCommand("insert into subjectdetails (dd,batch,section,wk) (select datedif,batch,section,daywk from datelist where batch = '" + ddlbatch.SelectedValue + "' and weekmonth='" + ddlmonths.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "')", con1);
                cmd.ExecuteNonQuery();
                con1.Close();
            }
            string faculty1 = User.Identity.Name;
            string faculty2 = User.Identity.Name;
            string faculty3 = User.Identity.Name;
            string faculty4 = User.Identity.Name;
            string faculty5 = User.Identity.Name;
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                foreach (GridViewRow r in Gv1.Rows)
                {
                    bool hour1 = (r.FindControl("chkHour1") as CheckBox).Checked;
                    bool hour2 = (r.FindControl("chkHour2") as CheckBox).Checked;
                    bool hour3 = (r.FindControl("chkHour3") as CheckBox).Checked;
                    bool hour4 = (r.FindControl("chkHour4") as CheckBox).Checked;
                    bool hour5 = (r.FindControl("chkHour5") as CheckBox).Checked;

                    string subject1 = "", subject2 = "", subject3 = "", subject4 = "", subject5 = "";
                    string datedif = r.Cells[0].Text;
                    SqlCommand com1 = new SqlCommand("select subject1,subject2,subject3,subject4,subject5,hour1,hour2,hour3,hour4,hour5 from test where datedif='" + datedif + "'", con2);
                    con2.Open();
                    SqlDataReader rdr1 = com1.ExecuteReader();
                    while (rdr1.Read())
                    {
                        subject1 = rdr1["subject1"].ToString();
                        subject2 = rdr1["subject2"].ToString();
                        subject3 = rdr1["subject3"].ToString();
                        subject4 = rdr1["subject4"].ToString();
                        subject5 = rdr1["subject5"].ToString();

                        hours1 = Convert.ToBoolean(rdr1["hour1"].ToString());
                        hours2 = Convert.ToBoolean(rdr1["hour2"].ToString());
                        hours3 = Convert.ToBoolean(rdr1["hour3"].ToString());
                        hours4 = Convert.ToBoolean(rdr1["hour4"].ToString());
                        hours5 = Convert.ToBoolean(rdr1["hour5"].ToString());
                    }
                    con2.Close();
                    SqlCommand comm1 = new SqlCommand();
                    con2.Open();

                    if (subject1 == "" && hour1 == true)
                    {
                        comm1.CommandText = "UPDATE test SET subject1='" + ddlsubj.SelectedValue + "', hour1 = 1, faculty1='" + faculty1 + "' where datedif='" + datedif + "' and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,subject2=subject2,subject3=subject3,subject4=subject4,subject5=subject5,hour1=hour1,hour2=hour2 where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    if (subject2 == "" && hour2 == true)
                    {
                        comm1.CommandText = "UPDATE test SET subject2='" + ddlsubj.SelectedValue + "', hour2 = 1,faculty2='" + faculty2 + "'  where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,subject2=subject2,subject3=subject3,subject4=subject4,subject5=subject5,hour1=hour1,hour2=hour2 where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject3 == "" && hour3 == true)
                    {
                        comm1.CommandText = "UPDATE test SET subject3='" + ddlsubj.SelectedValue + "', hour3 = 1,faculty3='" + faculty3 + "'  where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,subject2=subject2,subject3=subject3,subject4=subject4,subject5=subject5,hour1=hour1,hour2=hour2 where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject4 == "" && hour4 == true)
                    {
                        comm1.CommandText = "UPDATE test SET subject4='" + ddlsubj.SelectedValue + "', hour4 = 1,faculty4='" + faculty4 + "'  where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,subject2=subject2,subject3=subject3,subject4=subject4,subject5=subject5,hour1=hour1,hour2=hour2 where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject5 == "" && hour5 == true)
                    {
                        comm1.CommandText = "UPDATE test SET subject5='" + ddlsubj.SelectedValue + "', hour5 = 1,faculty5='" + faculty5 + "'  where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,subject2=subject2,subject3=subject3,subject4=subject4,subject5=subject5,hour1=hour1,hour2=hour2 where datedif='" + datedif + "'and batch='" + ddlbatch.SelectedItem.Text + "' and section='" + ddlsection.SelectedItem.Text + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    con2.Close();

                }
                SqlCommand cmd1 = new SqlCommand("UPDATE test SET attendence1=0,attendence2=0,attendence3=0,attendence4=0,attendence5=0", con2);
                con2.Open();
                cmd1.ExecuteNonQuery();
                con2.Close();

            }
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                foreach (GridViewRow r in Gv2.Rows)
                {
                    bool hour1 = (r.FindControl("chkHour6") as CheckBox).Checked;
                    bool hour2 = (r.FindControl("chkHour7") as CheckBox).Checked;
                    bool hour3 = (r.FindControl("chkHour8") as CheckBox).Checked;
                    bool hour4 = (r.FindControl("chkHour9") as CheckBox).Checked;
                    bool hour5 = (r.FindControl("chkHour10") as CheckBox).Checked;
                    string subject1 = "", subject2 = "", subject3 = "", subject4 = "", subject5 = "";
                    string datedif = r.Cells[0].Text;
                    SqlCommand com1 = new SqlCommand("select subject1,subject2,subject3,subject4,subject5,hour1,hour2,hour3,hour4,hour5 from test where datedif='" + datedif + "'", con2);
                    con2.Open();
                    SqlDataReader rdr1 = com1.ExecuteReader();
                    while (rdr1.Read())
                    {
                        subject1 = rdr1["subject1"].ToString();
                        subject2 = rdr1["subject2"].ToString();
                        subject3 = rdr1["subject3"].ToString();
                        subject4 = rdr1["subject4"].ToString();
                        subject5 = rdr1["subject5"].ToString();

                        hours1 = Convert.ToBoolean(rdr1["hour1"].ToString());
                        hours2 = Convert.ToBoolean(rdr1["hour2"].ToString());
                        hours3 = Convert.ToBoolean(rdr1["hour3"].ToString());
                        hours4 = Convert.ToBoolean(rdr1["hour4"].ToString());
                        hours5 = Convert.ToBoolean(rdr1["hour5"].ToString());
                    }
                    con2.Close();
                    SqlCommand comm1 = new SqlCommand();
                    con2.Open();

                    if (subject1 == "" && hour1)
                    {
                        comm1.CommandText = "UPDATE test SET subject1='" + ddlsubj.SelectedValue + "', hour1 = 1,faculty1='" + faculty1 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,hour1=hour1 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    if (subject2 == "" && hour2)
                    {
                        comm1.CommandText = "UPDATE test SET subject2='" + ddlsubj.SelectedValue + "', hour2 = 1,faculty2='" + faculty2 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject2=subject2,hour2=hour2 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject3 == "" && hour3)
                    {
                        comm1.CommandText = "UPDATE test SET subject3='" + ddlsubj.SelectedValue + "', hour3 = 1,faculty3='" + faculty3 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject3=subject3,hour3=hour3 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject4 == "" && hour4)
                    {
                        comm1.CommandText = "UPDATE test SET subject4='" + ddlsubj.SelectedValue + "', hour4 = 1,faculty4='" + faculty4 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject4=subject4,hour4=hour4 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject5 == "" && hour5)
                    {
                        comm1.CommandText = "UPDATE test SET subject5='" + ddlsubj.SelectedValue + "', hour5 = 1,faculty5='" + faculty5 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject5=subject5,hour5=hour5 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    con2.Close();

                }
                SqlCommand cmd1 = new SqlCommand("UPDATE test SET attendence1=0,attendence2=0,attendence3=0,attendence4=0,attendence5=0", con2);
                con2.Open();
                cmd1.ExecuteNonQuery();
                con2.Close();

            }
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                foreach (GridViewRow r in Gv3.Rows)
                {
                    bool hour1 = (r.FindControl("chkHour11") as CheckBox).Checked;
                    bool hour2 = (r.FindControl("chkHour12") as CheckBox).Checked;
                    bool hour3 = (r.FindControl("chkHour13") as CheckBox).Checked;
                    bool hour4 = (r.FindControl("chkHour14") as CheckBox).Checked;
                    bool hour5 = (r.FindControl("chkHour15") as CheckBox).Checked;
                    string subject1 = "", subject2 = "", subject3 = "", subject4 = "", subject5 = "";
                    string datedif = r.Cells[0].Text;
                    SqlCommand com1 = new SqlCommand("select subject1,subject2,subject3,subject4,subject5,hour1,hour2,hour3,hour4,hour5 from test where datedif='" + datedif + "'", con2);
                    con2.Open();
                    SqlDataReader rdr1 = com1.ExecuteReader();
                    while (rdr1.Read())
                    {
                        subject1 = rdr1["subject1"].ToString();
                        subject2 = rdr1["subject2"].ToString();
                        subject3 = rdr1["subject3"].ToString();
                        subject4 = rdr1["subject4"].ToString();
                        subject5 = rdr1["subject5"].ToString();

                        hours1 = Convert.ToBoolean(rdr1["hour1"].ToString());
                        hours2 = Convert.ToBoolean(rdr1["hour2"].ToString());
                        hours3 = Convert.ToBoolean(rdr1["hour3"].ToString());
                        hours4 = Convert.ToBoolean(rdr1["hour4"].ToString());
                        hours5 = Convert.ToBoolean(rdr1["hour5"].ToString());
                    }
                    con2.Close();
                    SqlCommand comm1 = new SqlCommand();
                    con2.Open();

                    if (subject1 == "" && hour1)
                    {
                        comm1.CommandText = "UPDATE test SET subject1='" + ddlsubj.SelectedValue + "', hour1 = 1,faculty1='" + faculty1 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,hour1=hour1 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    if (subject2 == "" && hour2)
                    {
                        comm1.CommandText = "UPDATE test SET subject2='" + ddlsubj.SelectedValue + "', hour2 = 1,faculty2='" + faculty2 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject2=subject2,hour2=hour2 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject3 == "" && hour3)
                    {
                        comm1.CommandText = "UPDATE test SET subject3='" + ddlsubj.SelectedValue + "', hour3 = 1,faculty3='" + faculty3 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject3=subject3,hour3=hour3 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject4 == "" && hour4)
                    {
                        comm1.CommandText = "UPDATE test SET subject4='" + ddlsubj.SelectedValue + "', hour4 = 1,faculty4='" + faculty4 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject4=subject4,hour4=hour4 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject5 == "" && hour5)
                    {
                        comm1.CommandText = "UPDATE test SET subject5='" + ddlsubj.SelectedValue + "', hour5 = 1,faculty5='" + faculty5 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject5=subject5,hour5=hour5 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    con2.Close();

                }
                SqlCommand cmd1 = new SqlCommand("UPDATE test SET attendence1=0,attendence2=0,attendence3=0,attendence4=0,attendence5=0", con2);
                con2.Open();
                cmd1.ExecuteNonQuery();
                con2.Close();

            }
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                foreach (GridViewRow r in Gv4.Rows)
                {
                    bool hour1 = (r.FindControl("chkHour16") as CheckBox).Checked;
                    bool hour2 = (r.FindControl("chkHour17") as CheckBox).Checked;
                    bool hour3 = (r.FindControl("chkHour18") as CheckBox).Checked;
                    bool hour4 = (r.FindControl("chkHour19") as CheckBox).Checked;
                    bool hour5 = (r.FindControl("chkHour20") as CheckBox).Checked;
                    string subject1 = "", subject2 = "", subject3 = "", subject4 = "", subject5 = "";
                    string datedif = r.Cells[0].Text;
                    SqlCommand com1 = new SqlCommand("select subject1,subject2,subject3,subject4,subject5,hour1,hour2,hour3,hour4,hour5 from test where datedif='" + datedif + "'", con2);
                    con2.Open();
                    SqlDataReader rdr1 = com1.ExecuteReader();
                    while (rdr1.Read())
                    {
                        subject1 = rdr1["subject1"].ToString();
                        subject2 = rdr1["subject2"].ToString();
                        subject3 = rdr1["subject3"].ToString();
                        subject4 = rdr1["subject4"].ToString();
                        subject5 = rdr1["subject5"].ToString();

                        hours1 = Convert.ToBoolean(rdr1["hour1"].ToString());
                        hours2 = Convert.ToBoolean(rdr1["hour2"].ToString());
                        hours3 = Convert.ToBoolean(rdr1["hour3"].ToString());
                        hours4 = Convert.ToBoolean(rdr1["hour4"].ToString());
                        hours5 = Convert.ToBoolean(rdr1["hour5"].ToString());
                    }
                    con2.Close();
                    SqlCommand comm1 = new SqlCommand();
                    con2.Open();

                    if (subject1 == "" && hour1)
                    {
                        comm1.CommandText = "UPDATE test SET subject1='" + ddlsubj.SelectedValue + "', hour1 = 1,faculty1='" + faculty1 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,hour1=hour1 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    if (subject2 == "" && hour2)
                    {
                        comm1.CommandText = "UPDATE test SET subject2='" + ddlsubj.SelectedValue + "', hour2 = 1,faculty2='" + faculty2 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject2=subject2,hour2=hour2 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject3 == "" && hour3)
                    {
                        comm1.CommandText = "UPDATE test SET subject3='" + ddlsubj.SelectedValue + "', hour3 = 1,faculty3='" + faculty3 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject3=subject3,hour3=hour3 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject4 == "" && hour4)
                    {
                        comm1.CommandText = "UPDATE test SET subject4='" + ddlsubj.SelectedValue + "', hour4 = 1,faculty4='" + faculty4 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject4=subject4,hour4=hour4 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject5 == "" && hour5)
                    {
                        comm1.CommandText = "UPDATE test SET subject5='" + ddlsubj.SelectedValue + "', hour5 = 1,faculty5='" + faculty5 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject5=subject5,hour5=hour5 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    con2.Close();

                }
                SqlCommand cmd1 = new SqlCommand("UPDATE test SET attendence1=0,attendence2=0,attendence3=0,attendence4=0,attendence5=0", con2);
                con2.Open();
                cmd1.ExecuteNonQuery();
                con2.Close();
            }
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                foreach (GridViewRow r in Gv5.Rows)
                {
                    bool hour1 = (r.FindControl("chkHour17") as CheckBox).Checked;
                    bool hour2 = (r.FindControl("chkHour18") as CheckBox).Checked;
                    bool hour3 = (r.FindControl("chkHour19") as CheckBox).Checked;
                    bool hour4 = (r.FindControl("chkHour20") as CheckBox).Checked;
                    bool hour5 = (r.FindControl("chkHour21") as CheckBox).Checked;
                    string subject1 = "", subject2 = "", subject3 = "", subject4 = "", subject5 = "";
                    string datedif = r.Cells[0].Text;
                    SqlCommand com1 = new SqlCommand("select subject1,subject2,subject3,subject4,subject5,hour1,hour2,hour3,hour4,hour5 from test where datedif='" + datedif + "'", con2);
                    con2.Open();
                    SqlDataReader rdr1 = com1.ExecuteReader();
                    while (rdr1.Read())
                    {
                        subject1 = rdr1["subject1"].ToString();
                        subject2 = rdr1["subject2"].ToString();
                        subject3 = rdr1["subject3"].ToString();
                        subject4 = rdr1["subject4"].ToString();
                        subject5 = rdr1["subject5"].ToString();

                        hours1 = Convert.ToBoolean(rdr1["hour1"].ToString());
                        hours2 = Convert.ToBoolean(rdr1["hour2"].ToString());
                        hours3 = Convert.ToBoolean(rdr1["hour3"].ToString());
                        hours4 = Convert.ToBoolean(rdr1["hour4"].ToString());
                        hours5 = Convert.ToBoolean(rdr1["hour5"].ToString());
                    }
                    con2.Close();
                    SqlCommand comm1 = new SqlCommand();
                    con2.Open();

                    if (subject1 == "" && hour1)
                    {
                        comm1.CommandText = "UPDATE test SET subject1='" + ddlsubj.SelectedValue + "', hour1 = 1,faculty1='" + faculty1 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject1=subject1,hour1=hour1 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    if (subject2 == "" && hour2)
                    {
                        comm1.CommandText = "UPDATE test SET subject2='" + ddlsubj.SelectedValue + "', hour2 = 1,faculty2='" + faculty2 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject2=subject2,hour2=hour2 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject3 == "" && hour3)
                    {
                        comm1.CommandText = "UPDATE test SET subject3='" + ddlsubj.SelectedValue + "', hour3 = 1,faculty3='" + faculty3 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET subject3=subject3,hour3=hour3 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject4 == "" && hour4)
                    {
                        comm1.CommandText = "UPDATE test SET subject4='" + ddlsubj.SelectedValue + "', hour4 = 1,faculty4='" + faculty4 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject4=subject4,hour4=hour4 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();

                    if (subject5 == "" && hour5)
                    {
                        comm1.CommandText = "UPDATE test SET subject5='" + ddlsubj.SelectedValue + "', hour5 = 1,faculty5='" + faculty5 + "'  where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    else
                    {
                        comm1.CommandText = "UPDATE test SET  subject5=subject5,hour5=hour5 where datedif='" + datedif + "'";
                        comm1.Connection = con2;
                    }
                    comm1.ExecuteNonQuery();
                    con2.Close();

                }
                SqlCommand cmd1 = new SqlCommand("UPDATE test SET attendence1=0,attendence2=0,attendence3=0,attendence4=0,attendence5=0", con2);
                con2.Open();
                cmd1.ExecuteNonQuery();
                con2.Close();
            }
        }

        protected void Gv1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv1.Rows[i].Cells[0].FindControl("chkHour1");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv1.Rows[i].Cells[0].FindControl("chkHour2");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv1.Rows[i].Cells[0].FindControl("chkHour3");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv1.Rows[i].Cells[0].FindControl("chkHour4");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv1.Rows[i].Cells[0].FindControl("chkHour5");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv2.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv2.Rows[i].Cells[0].FindControl("chkHour6");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv2.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv2.Rows[i].Cells[0].FindControl("chkHour7");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv2.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv2.Rows[i].Cells[0].FindControl("chkHour8");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv2.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv2.Rows[i].Cells[0].FindControl("chkHour9");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox11_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv2.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv2.Rows[i].Cells[0].FindControl("chkHour10");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }


        protected void CheckBox12_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv3.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv3.Rows[i].Cells[0].FindControl("chkHour11");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox13_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv3.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv3.Rows[i].Cells[0].FindControl("chkHour12");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox14_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv3.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv3.Rows[i].Cells[0].FindControl("chkHour13");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox15_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv3.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv3.Rows[i].Cells[0].FindControl("chkHour14");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox16_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv3.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv3.Rows[i].Cells[0].FindControl("chkHour15");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox17_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour16");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox18_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour17");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox19_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour18");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox20_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour19");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }

        protected void CheckBox21_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour20");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox22_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour21");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox23_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour22");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox24_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour23");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox25_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour24");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }
        protected void CheckBox26_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < Gv4.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)Gv4.Rows[i].Cells[0].FindControl("chkHour25");
                if (chk.Checked == true)
                {
                    chk.Enabled = false;
                }
                else
                {
                    chk.Enabled = true;
                }
            }
        }




        protected void ddlweek_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void sbmonth_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ddlbatch_DataBound(object sender, EventArgs e)
        {
            ddlbatch.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void ddlsection_DataBound(object sender, EventArgs e)
        {
            ddlsection.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void ddlbatch_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd1 = new SqlCommand("select section from assign where facultyname='" + User.Identity.Name + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            sda.Fill(dt);
            ddlsection.DataSource = dt;
            ddlsection.DataTextField = "section";
            ddlsection.DataValueField = "section";
            ddlsection.DataBind();
        }





    }
}