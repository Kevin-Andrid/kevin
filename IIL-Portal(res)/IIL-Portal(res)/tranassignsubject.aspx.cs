using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IIL_Portal_res_
{
    public partial class tranassignsubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gvassignsubject.DataSource = GetData("select subject from subjectlist");
                Gvassignsubject.DataBind();
            }
        }

        private DataSet GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds);
                        return ds;
                    }
                }
            }
        }
        protected void Gvassignsubject_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlfaculty = (e.Row.FindControl("ddlfaculty") as DropDownList);
                ddlfaculty.DataSource = GetData("SELECT DISTINCT facultyname from facultydetail");
                ddlfaculty.DataTextField = "facultyname";
                ddlfaculty.DataValueField = "facultyname";
                ddlfaculty.DataBind();

                ddlfaculty.Items.Insert(0, new ListItem("Please select"));
            }
        }

        int rowcount1, rowcount2;
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            int rowcount1, rowcount2;
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmdcount = new SqlCommand("select COUNT(sethour) as cnt from assign", con2);
                con2.Open();
                string count = cmdcount.ExecuteScalar().ToString();
                rowcount1 = Convert.ToInt32(count);
                con2.Close();

                for (int i = 0; i < Gvassignsubject.Rows.Count; i++)
                {
                    DropDownList ddlfaculty = (DropDownList)Gvassignsubject.Rows[i].FindControl("ddlfaculty");
                    string facultyname = ddlfaculty.SelectedValue;
                    try
                    {
                        if (facultyname != "Please select")
                        {
                            string batch = ddlbatches.SelectedValue;
                            GridViewRow row = Gvassignsubject.Rows[i];
                            string subject = row.Cells[0].Text;
                            TextBox txthour = (TextBox)Gvassignsubject.Rows[i].FindControl("txthour");
                            string sethour = txthour.Text;
                            con2.Open();
                            SqlCommand cmd = new SqlCommand("insert into assign (batch,facultyname,sethour,subject) select * from (select @batch as batch,@facultyname as facultyname,@sethour as sethour,@subject as subject) as temp WHERE NOT EXISTS (select subject,facultyname from assign where subject=@subject and facultyname=@facultyname)", con2);
                            cmd.Parameters.AddWithValue("@batch", batch);
                           // cmd.Parameters.AddWithValue("@section", ddlsection.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@subject", subject);
                            cmd.Parameters.AddWithValue("@facultyname", facultyname);
                            cmd.Parameters.AddWithValue("@sethour", sethour);
                            cmd.Connection = con2;
                            cmd.ExecuteNonQuery();
                            con2.Close();
                        }
                    }
                    catch
                    {

                    }
                    finally
                    {
                        SqlConnection concount1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        SqlCommand cmdcount1 = new SqlCommand("select COUNT(sethour) as cnt from assign", concount1);
                        concount1.Open();
                        string count1 = cmdcount1.ExecuteScalar().ToString();
                        rowcount2 = Convert.ToInt32(count1);
                        concount1.Close();
                        if (rowcount1 == rowcount2)
                        {
                            Response.Write("<script>alert('Same faculty is selected.Please allocate another Faculty')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('allocated sucessfully')</script>");
                        }

                    }
            
                }
                Response.Redirect("tranadminctt.aspx");
            }
        }

       

        protected void ddlbatches_DataBound(object sender, EventArgs e)
        {
            ddlbatches.Items.Insert(0, new ListItem("NIL", "NIL"));
        }

       
    }
}


