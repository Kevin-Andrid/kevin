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
    public partial class tranhourpay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string faculty = ddlfaculty.SelectedValue;
            string subject = ddlsubject.SelectedValue;
            string count = txtpay.Text;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {

                SqlCommand cmd1 = new SqlCommand("insert into tblcount(facultyname,subject,count) values (@facultyname,@subject,@count)", con);
                con.Open();
                cmd1.Parameters.AddWithValue("@count",txtpay.Text);
                cmd1.Parameters.AddWithValue("@facultyname",faculty);
                cmd1.Parameters.AddWithValue("@subject",subject);
                cmd1.ExecuteNonQuery();
                con.Close();

            }
        }

        protected void ddlfaculty_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void weekddl_SelectedIndexChanged(object sender, EventArgs e)
         {
            
        }

        protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            string count1, count2, count3, count4, count5, count6, count7, count8, count9, count10, count11, count12, count13, count14, count15, count16, count17, count18, count19, count20;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd1 = new SqlCommand("select count(*) as cnt from test where attendence1='true' and subject1='" + ddlsubject.SelectedValue + "' and faculty1='" + ddlfaculty.SelectedValue + "' and dayweek='Week 1' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con))
                {
                    con.Open();
                    count1 = cmd1.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd2 = new SqlCommand("select count(*) as cnt from test where attendence2='true' and subject2='" + ddlsubject.SelectedValue + "' and faculty2='" + ddlfaculty.SelectedValue + "' and dayweek='Week 1' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count2 = cmd2.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd3 = new SqlCommand("select count(*) as cnt from test where attendence3='true' and subject3='" + ddlsubject.SelectedValue + "' and faculty3='" + ddlfaculty.SelectedValue + "' and dayweek='Week 1' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count3 = cmd3.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd4 = new SqlCommand("select count(*) as cnt from test where attendence4='true' and subject4='" + ddlsubject.SelectedValue + "' and faculty4='" + ddlfaculty.SelectedValue + "' and dayweek='Week 1' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count4 = cmd4.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd5 = new SqlCommand("select count(*) as cnt from test where attendence5='true' and subject5='" + ddlsubject.SelectedValue + "' and faculty5='" + ddlfaculty.SelectedValue + "' and dayweek='Week 1' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con);
                    con.Open();
                    count5 = cmd5.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();
                }
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd1 = new SqlCommand("select count(*) as cnt from test where attendence1='true' and subject1='" + ddlsubject.SelectedValue + "' and faculty1='" + ddlfaculty.SelectedValue + "' and dayweek='Week 2' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con))
                {
                    con.Open();
                    count6 = cmd1.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd2 = new SqlCommand("select count(*) as cnt from test where attendence2='true' and subject2='" + ddlsubject.SelectedValue + "' and faculty2='" + ddlfaculty.SelectedValue + "' and dayweek='Week 2' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count7 = cmd2.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd3 = new SqlCommand("select count(*) as cnt from test where attendence3='true' and subject3='" + ddlsubject.SelectedValue + "' and faculty3='" + ddlfaculty.SelectedValue + "' and dayweek='Week 2' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count8 = cmd3.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd4 = new SqlCommand("select count(*) as cnt from test where attendence4='true' and subject4='" + ddlsubject.SelectedValue + "' and faculty4='" + ddlfaculty.SelectedValue + "' and dayweek='Week 2' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count9 = cmd4.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd5 = new SqlCommand("select count(*) as cnt from test where attendence5='true' and subject5='" + ddlsubject.SelectedValue + "' and faculty5='" + ddlfaculty.SelectedValue + "' and dayweek='Week 2' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con);
                    con.Open();
                    count10 = cmd5.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();
                }
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd1 = new SqlCommand("select count(*) as cnt from test where attendence1='true' and subject1='" + ddlsubject.SelectedValue + "' and faculty1='" + ddlfaculty.SelectedValue + "' and dayweek='Week 3' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con))
                {
                    con.Open();
                    count11 = cmd1.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd2 = new SqlCommand("select count(*) as cnt from test where attendence2='true' and subject2='" + ddlsubject.SelectedValue + "' and faculty2='" + ddlfaculty.SelectedValue + "' and dayweek='Week 3' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count12 = cmd2.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd3 = new SqlCommand("select count(*) as cnt from test where attendence3='true' and subject3='" + ddlsubject.SelectedValue + "' and faculty3='" + ddlfaculty.SelectedValue + "' and dayweek='Week 3' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count13 = cmd3.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd4 = new SqlCommand("select count(*) as cnt from test where attendence4='true' and subject4='" + ddlsubject.SelectedValue + "' and faculty4='" + ddlfaculty.SelectedValue + "' and dayweek='Week 3' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count14 = cmd4.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd5 = new SqlCommand("select count(*) as cnt from test where attendence5='true' and subject5='" + ddlsubject.SelectedValue + "' and faculty5='" + ddlfaculty.SelectedValue + "' and dayweek='Week 3' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con);
                    con.Open();
                    count15 = cmd5.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();
                }
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd1 = new SqlCommand("select count(*) as cnt from test where attendence1='true' and subject1='" + ddlsubject.SelectedValue + "' and faculty1='" + ddlfaculty.SelectedValue + "' and dayweek='Week 4' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con))
                {
                    con.Open();
                    count16 = cmd1.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd2 = new SqlCommand("select count(*) as cnt from test where attendence2='true' and subject2='" + ddlsubject.SelectedValue + "' and faculty2='" + ddlfaculty.SelectedValue + "' and dayweek='Week 4' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count17 = cmd2.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd3 = new SqlCommand("select count(*) as cnt from test where attendence3='true' and subject3='" + ddlsubject.SelectedValue + "' and faculty3='" + ddlfaculty.SelectedValue + "' and dayweek='Week 4' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count18 = cmd3.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd4 = new SqlCommand("select count(*) as cnt from test where attendence4='true' and subject4='" + ddlsubject.SelectedValue + "' and faculty4='" + ddlfaculty.SelectedValue + "' and dayweek='Week 4' and WeekMonth='" + ddlmonth.SelectedValue + "'", con);
                    con.Open();
                    count19 = cmd4.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();

                    SqlCommand cmd5 = new SqlCommand("select count(*) as cnt from test where attendence5='true' and subject5='" + ddlsubject.SelectedValue + "' and faculty5='" + ddlfaculty.SelectedValue + "' and dayweek='Week 4' and WeekMonth='" + ddlmonth.SelectedValue + "' ", con);
                    con.Open();
                    count20 = cmd5.ExecuteScalar().ToString();
                    // rowcount = Convert.ToInt32(count);
                    con.Close();
                }
            }
            txtpay.Text = Convert.ToString((Convert.ToInt32(count1) + Convert.ToInt32(count2) + Convert.ToInt32(count3) + Convert.ToInt32(count4) + Convert.ToInt32(count5) + Convert.ToInt32(count6) + Convert.ToInt32(count7) + Convert.ToInt32(count8) + Convert.ToInt32(count9) + Convert.ToInt32(count10) + Convert.ToInt32(count11) + Convert.ToInt32(count12) + Convert.ToInt32(count13) + Convert.ToInt32(count14) + Convert.ToInt32(count15) + Convert.ToInt32(count16) + Convert.ToInt32(count17) + Convert.ToInt32(count18) + Convert.ToInt32(count19) + Convert.ToInt32(count20)) * 1000);
        }

        protected void ddlmonth_DataBound(object sender, EventArgs e)
        {
            ddlmonth.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void ddlsubject_DataBound(object sender, EventArgs e)
        {
            ddlsubject.Items.Insert(0, new ListItem("select subject","NIL"));
        }

        protected void ddlfaculty_DataBound(object sender, EventArgs e)
        {
            ddlfaculty.Items.Insert(0, new ListItem("select the faculty", "NIL"));
        }
    }
  }
