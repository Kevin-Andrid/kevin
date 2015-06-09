using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Windows.Forms;
namespace IIL_Portal_res_
{
    public partial class trancreatebatch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            batchlistgrid.Visible = false;
        }

        int rowcount1, rowcount2;
        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string batch =  ddlcourse.SelectedValue + ddlyear.SelectedValue + ddllocation.SelectedValue + ddlsection.SelectedValue;
            string section = ddlsection.SelectedValue;


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmdcount = new SqlCommand("select COUNT(*) as cnt from tblclass", con);
                con.Open();
                string count = cmdcount.ExecuteScalar().ToString();
                rowcount1 = Convert.ToInt32(count);
                con.Close();
                try
                {
                    SqlConnection concount1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("insert into tblclass (batch,section) select * from (select @batch as batch,@section as section) as temp WHERE NOT EXISTS (select batch,section from tblclass where batch=@batch)", concount1);
                    cmd.Parameters.AddWithValue("@batch", batch);
                    cmd.Parameters.AddWithValue("@section", section);
                    concount1.Open();
                    cmd.ExecuteNonQuery();
                    concount1.Close();
                }
                catch
                {

                }
                finally
                {
                    SqlConnection concount2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    SqlCommand cmdcount1 = new SqlCommand("select COUNT(batch) as cnt from tblclass", concount2);
                    concount2.Open();
                    string count1 = cmdcount1.ExecuteScalar().ToString();
                    rowcount2 = Convert.ToInt32(count1);
                    concount2.Close();
                    if (rowcount1 == rowcount2)
                    {
                        Response.Write("<script>alert('Same batch is created.create another batch')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('allocated sucessfully')</script>");
                        batchlistgrid.Visible = true;
                       
                    }
                }
            }

        }

        protected void btnassign_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/tranassignsubject.aspx");
        }

    }

}