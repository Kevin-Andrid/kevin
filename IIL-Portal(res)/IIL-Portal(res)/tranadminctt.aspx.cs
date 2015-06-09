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
    public partial class tranadminctt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            ddlselectsubject.Visible = false;
            ddlselectevent.Visible = false;
            Button2.Visible = false;
           

            if (!IsPostBack)
            {
                btnsubject.Visible = false;
                btnevent.Visible = false;
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            string semester = ddlsemester.SelectedValue;
            //string location = ddlocation.SelectedValue;
            string batch = ddlbatch.SelectedValue;
            string week = ddlweek.SelectedValue;
            string fromdate1 = txtfromdate.Text;
            string todate1 = txttodate.Text;
            string batch1 = ddlbatch.SelectedValue;
            string dayweek = ddlweek.SelectedValue;
            string weekbatch = ddlbatch.SelectedValue + ' ' + ddlsemester.SelectedValue + ' ' + ddlweek.SelectedValue;
            string weekmonth = txtmonth.Text;
            string section = ddlsection.SelectedItem.Text;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = "insert into admin(semester,batch,section,week,WeekMonth)values(@semester,@batch,@section,@week,@WeekMonth)";
                    cmd.Parameters.AddWithValue("@semester", semester);
                   // cmd.Parameters.AddWithValue("@location", location);
                    cmd.Parameters.AddWithValue("@batch", batch);
                    cmd.Parameters.AddWithValue("@section", section);
                    cmd.Parameters.AddWithValue("@week", week);
                    cmd.Parameters.AddWithValue("@WeekMonth", weekmonth);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = "insert into calendar(fromdate,todate,batch,section)values(@fromdate,@todate,@batch,@section)";
                    cmd.Parameters.AddWithValue("@fromdate", fromdate1);
                    cmd.Parameters.AddWithValue("@todate", todate1);
                    cmd.Parameters.AddWithValue("@batch", batch1);
                    cmd.Parameters.AddWithValue("@section", section);
                    cmd.Connection = con2;
                    con2.Open();
                    cmd.ExecuteNonQuery();
                    con2.Close();
                }
            }
            int rowcount1, rowcount2;
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmdcount = new SqlCommand("select count(datedif) from datelist", con2);
                con2.Open();
                string count = cmdcount.ExecuteScalar().ToString();
                rowcount1 = Convert.ToInt32(count);
                con2.Close();
                var fromdate = DateTime.Parse(txtfromdate.Text);
                var todate = DateTime.Parse(txttodate.Text);
                var datedif1 = (todate - fromdate).Days;
                var sqlInsert = new SqlCommand("INSERT INTO datelist ([datedif],[batch],[section],[daywk],[semester],[weekbatch],[WeekMonth])  SELECT * from (SELECT @datedif as datedif, @batch as batch,@section as section,@daywk as daywk,@semester as semster,@weekbatch as weekbatch,@weekMonth as weekMonth) AS temp WHERE NOT EXISTS (SELECT datedif,batch,section from datelist where batch=@batch and datedif=@datedif and section=@section )", con2);
                var sqlParamater = sqlInsert.Parameters.Add("@datedif", SqlDbType.Date);
                var sqlParameter1 = sqlInsert.Parameters.Add("@batch", SqlDbType.NVarChar);
                var sqlParameter5 = sqlInsert.Parameters.Add("@section", SqlDbType.NVarChar);
                var sqlParameter2 = sqlInsert.Parameters.Add("@daywk", SqlDbType.NVarChar);
                var sqlParameter3 = sqlInsert.Parameters.Add("@semester", SqlDbType.NVarChar);
                var sqlParameter4 = sqlInsert.Parameters.Add("@weekbatch", SqlDbType.NVarChar);
                var sqlParameter8 = sqlInsert.Parameters.Add("@WeekMonth", SqlDbType.NVarChar);
                con2.Open();
                try
                {
                    for (var i = 0; i <= datedif1; i++)
                    {
                        var consecutiveDate = fromdate.AddDays(i);
                        sqlParamater.Value = consecutiveDate;
                        sqlParameter1.Value = batch1;
                        sqlParameter2.Value = dayweek;
                        sqlParameter3.Value = semester;
                        sqlParameter4.Value = weekbatch;
                        sqlParameter8.Value = weekmonth;
                        sqlParameter5.Value = section;
                        sqlInsert.ExecuteNonQuery();
                    }
                }

                catch
                {
                    con2.Close();
                }
                finally
                {
                    SqlConnection concount1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand cmdcount1 = new SqlCommand("select count(datedif) from datelist", concount1);
                    concount1.Open();
                    string count1 = cmdcount1.ExecuteScalar().ToString();
                    rowcount2 = Convert.ToInt32(count1);
                    concount1.Close();
                    if (rowcount1 == rowcount2)
                    {
                        Response.Write("<script>alert('Already date is selected.Select another date')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('allocated sucessfully')</script>");
                        Response.Redirect("transelecttimetable.aspx");
                    }

                }
                Button1.Enabled = true;
               
            }
        }

        protected void facultyname_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }



        protected void facultyid_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {


        }

        protected void From_TextChanged(object sender, EventArgs e)
        {

        }

        protected void To_TextChanged(object sender, EventArgs e)
        {

        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            object facultyname1 = DBNull.Value, facultyname2 = DBNull.Value, facultyname3 = DBNull.Value, facultyname4 = DBNull.Value, facultyname5 = DBNull.Value;
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {

                foreach (GridViewRow r in Gv3.Rows)
                {
                    if (
                       (
                       (
                       (
                           (((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox1"))).Checked == true || ((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox1"))).Checked == false)
                        || (((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox2"))).Checked == true || ((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox2"))).Checked == false)
                        || (((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox3"))).Checked == true || ((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox3"))).Checked == false)
                        || (((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox4"))).Checked == true || ((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox4"))).Checked == false)
                        || (((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox5"))).Checked == true || ((CheckBox)(Gv3.Rows[r.RowIndex].FindControl("CheckBox5"))).Checked == false)
                        )
                        )
                        )
                        )
                    {
                        bool hour1 = (r.FindControl("CheckBox1") as CheckBox).Checked;
                        bool hour2 = (r.FindControl("CheckBox2") as CheckBox).Checked;
                        bool hour3 = (r.FindControl("CheckBox3") as CheckBox).Checked;
                        bool hour4 = (r.FindControl("CheckBox4") as CheckBox).Checked;
                        bool hour5 = (r.FindControl("CheckBox5") as CheckBox).Checked;
                        object subject1 = DBNull.Value, subject2 = DBNull.Value, subject3 = DBNull.Value, subject4 = DBNull.Value, subject5 = DBNull.Value;
                        
                        if (ddlselectevent.SelectedValue != "video")
                        {
                            try
                            {
                                if (hour1)
                                {
                                    SqlCommand cmd = new SqlCommand("select facultyname from assign where subject ='" + ddlselectsubject.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "' ", con2);
                                    con2.Open();
                                    facultyname1 = cmd.ExecuteScalar().ToString();
                                    con2.Close();

                                }
                                if (hour2)
                                {
                                    SqlCommand cmd = new SqlCommand("select facultyname from assign where subject ='" + ddlselectsubject.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "' ", con2);
                                    con2.Open();
                                    facultyname2 = cmd.ExecuteScalar().ToString();
                                    con2.Close();

                                }
                                if (hour3)
                                {
                                    SqlCommand cmd = new SqlCommand("select facultyname from assign where subject ='" + ddlselectsubject.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "' ", con2);
                                    con2.Open();
                                    facultyname3 = cmd.ExecuteScalar().ToString();
                                    con2.Close();

                                }
                                if (hour4)
                                {
                                    SqlCommand cmd = new SqlCommand("select facultyname from assign where subject ='" + ddlselectsubject.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "' ", con2);
                                    con2.Open();
                                    facultyname3 = cmd.ExecuteScalar().ToString();
                                    con2.Close();
                                }
                                if (hour5)
                                {
                                    SqlCommand cmd = new SqlCommand("select facultyname from assign where subject ='" + ddlselectsubject.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='" + ddlsection.SelectedItem.Text + "' ", con2);
                                    con2.Open();
                                    facultyname5 = cmd.ExecuteScalar().ToString();
                                    con2.Close();

                                }
                                if (hour1)
                                {
                                    subject1 = ddlselectsubject.SelectedValue + ddlselectevent.SelectedValue;
                                }
                                if (hour2)
                                {
                                    subject2 = ddlselectsubject.SelectedValue + ddlselectevent.SelectedValue;
                                }
                                if (hour3)
                                {
                                    subject3 = ddlselectsubject.SelectedValue + ddlselectevent.SelectedValue;
                                }
                                if (hour4)
                                {
                                    subject4 = ddlselectsubject.SelectedValue + ddlselectevent.SelectedValue;
                                }
                                if (hour5)
                                {
                                    subject5 = ddlselectsubject.SelectedValue + ddlselectevent.SelectedValue;
                                }
                            }
                            catch(Exception ex)
                            {
                            }
                           
                        }
                    
                        string datedif = r.Cells[0].Text;
                        string dayweek = ddlweek.SelectedValue;
                        string weekmonth = txtmonth.Text;
                        string section = ddlsection.SelectedValue;
                        string batch = ddlbatch.SelectedValue;

                        con2.Open();
                        SqlCommand comm = new SqlCommand("insert into test (datedif,subject1,faculty1,subject2,faculty2,subject3,faculty3,subject4,faculty4,subject5,faculty5,hour1,hour2,hour3,hour4,hour5,dayweek,weekmonth,batch,section) values (@datedif,@subject1,@faculty1,@subject2,@faculty2,@subject3,@faculty3,@subject4,@faculty4,@subject5,@faculty5,@hour1,@hour2,@hour3,@hour4,@hour5,@dayweek,@weekmonth,@batch,@section)", con2);
                        comm.Parameters.AddWithValue("@datedif", datedif);
                        comm.Parameters.AddWithValue("@hour1", hour1);
                        comm.Parameters.AddWithValue("@hour2", hour2);
                        comm.Parameters.AddWithValue("@hour3", hour3);
                        comm.Parameters.AddWithValue("@hour4", hour4);
                        comm.Parameters.AddWithValue("@hour5", hour5);
                        comm.Parameters.AddWithValue("@faculty1", facultyname1);
                        comm.Parameters.AddWithValue("@faculty2", facultyname2);
                        comm.Parameters.AddWithValue("@faculty3", facultyname3);
                        comm.Parameters.AddWithValue("@faculty4", facultyname4);
                        comm.Parameters.AddWithValue("@faculty5", facultyname5);
                        comm.Parameters.AddWithValue("@subject1", subject1);
                        comm.Parameters.AddWithValue("@subject2", subject2);
                        comm.Parameters.AddWithValue("@subject3", subject3);
                        comm.Parameters.AddWithValue("@subject4", subject4);
                        comm.Parameters.AddWithValue("@subject5", subject5);
                        comm.Parameters.AddWithValue("@dayweek", dayweek);
                        comm.Parameters.AddWithValue("@weekmonth", weekmonth);
                        comm.Parameters.AddWithValue("@batch", batch);
                        comm.Parameters.AddWithValue("@section", section);
                        comm.ExecuteNonQuery();
                        con2.Close();
                    }
                    facultyname1 = DBNull.Value; facultyname2 = DBNull.Value; facultyname3 = DBNull.Value; facultyname4 = DBNull.Value; facultyname5 =DBNull.Value;
                }
            }

        }

        protected void Gv3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btnsubject_Click(object sender, EventArgs e)
        {
            ddlselectsubject.Visible = true;
        }

        protected void btnevent_Click(object sender, EventArgs e)
        {
            ddlselectevent.Visible = true;
        }

        protected void ddlselectsubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            Gv3.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from datelist where WeekMonth='" + txtmonth.Text + "' and daywk='" + ddlweek.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv3.DataSource = dt;
                Gv3.DataBind();
            }
            Button2.Visible = true;
        }

        protected void ddlselectevent_SelectedIndexChanged(object sender, EventArgs e)
        {
            Gv3.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from datelist where WeekMonth='" + txtmonth.Text + "' and daywk='" + ddlweek.SelectedValue + "' ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv3.DataSource = dt;
                Gv3.DataBind();
            }
            Button2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mp1.Show();
        }

        protected void btnyes_Click(object sender, EventArgs e)
        {
            btnevent.Visible = true;
            btnsubject.Visible = true;

        }

        protected void btnno_Click(object sender, EventArgs e)
        {
            Gv3.Visible = true;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from datelist where WeekMonth='" + txtmonth.Text + "' and daywk='" + ddlweek.SelectedValue + "' and batch='" + ddlbatch.SelectedValue + "' and section='"+ddlsection.SelectedValue+"' ", con);
                DataTable dt = new DataTable("dt");
                cmd.Fill(dt);
                Gv3.DataSource = dt;
                Gv3.DataBind();
            }
            Button2.Visible = true;
        }

        protected void ddlbatch_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con2.Open();

                SqlCommand cmd1 = new SqlCommand("SELECT  section FROM tblclass", con2);
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                sda.Fill(dt);
            }

            ddlsection.DataSource = dt;
            ddlsection.DataTextField = "section";
            ddlsection.DataValueField = "section";
            ddlsection.DataBind();
        }

        protected void ddlbatch_DataBound(object sender, EventArgs e)
        {
            ddlbatch.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

        protected void ddlsection_DataBound(object sender, EventArgs e)
        {
            ddlsection.Items.Insert(0, new ListItem("NIL", "NIL"));
        }


    }
}