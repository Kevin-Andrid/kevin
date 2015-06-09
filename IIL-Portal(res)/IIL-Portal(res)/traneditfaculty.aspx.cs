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
    public partial class traneditfaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select facultyname,batch,section,sethour,subject from assign where facultyname='" + Request.QueryString["FRN"].ToString() + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    txtname.Text = rdr["facultyname"].ToString();
                    txtbatch.Text = rdr["batch"].ToString();
                    txtsection.Text = rdr["section"].ToString();
                    txtsubject.Text = rdr["subject"].ToString();
                    txthour.Text = rdr["sethour"].ToString();
                }
                con.Close();

                SqlCommand cmd1 = new SqlCommand("select mobile,email,bankingname,hourpay from newfacultydetails where name='" + Request.QueryString["FRN"].ToString() + "'", con);
                con.Open();
                SqlDataReader rdr1 = cmd1.ExecuteReader();
                while (rdr1.Read())
                {
                    txtmobile.Text = rdr1["mobile"].ToString();
                    txtemail.Text = rdr1["email"].ToString();
                    txtbankingname.Text = rdr1["bankingname"].ToString();
                    txthpay.Text = rdr1["hourpay"].ToString();    
                }
                con.Close();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("update assign set facultyname=@facultyname,sethour=@sethour where facultyname='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmd.Parameters.AddWithValue("@facultyname",txtname.Text);
            cmd.Parameters.AddWithValue("@sethour",txthour.Text);
            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("update newfacultydetails set name=@name,mobile=@mobile,email=@email,bankingname=@bankingname,hourpay=@hourpay where name='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmd2.Parameters.AddWithValue("@name", txtname.Text);
            cmd2.Parameters.AddWithValue("@mobile", txtmobile.Text);
            cmd2.Parameters.AddWithValue("@email", txtemail.Text);
            cmd2.Parameters.AddWithValue("@bankingname", txtbankingname.Text);
            cmd2.Parameters.AddWithValue("@hourpay", txthpay.Text);
            cmd2.ExecuteNonQuery();

            SqlCommand cmdf1 = new SqlCommand("update test set faculty1=@faculty where faculty1='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmdf1.Parameters.AddWithValue("@faculty", txtname.Text);
            SqlCommand cmdf2 = new SqlCommand("update test set faculty2=@faculty where faculty1='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmdf2.Parameters.AddWithValue("@faculty", txtname.Text);
            SqlCommand cmdf3 = new SqlCommand("update test set faculty3=@faculty where faculty1='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmdf3.Parameters.AddWithValue("@faculty", txtname.Text);
            SqlCommand cmdf4 = new SqlCommand("update test set faculty4=@faculty where faculty1='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmdf4.Parameters.AddWithValue("@faculty", txtname.Text);
            SqlCommand cmdf5 = new SqlCommand("update test set faculty5=@faculty where faculty1='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmdf5.Parameters.AddWithValue("@faculty", txtname.Text);
            cmdf1.ExecuteNonQuery();
            cmdf2.ExecuteNonQuery();
            cmdf3.ExecuteNonQuery();
            cmdf4.ExecuteNonQuery();
            cmdf5.ExecuteNonQuery();

            con.Close();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select count(*) as cnt from facultydetail where facultyname='"+ Request.QueryString["FRN"].ToString() + "'", con);
            int cnt = Convert.ToInt32(cmd3.ExecuteScalar().ToString());
            con.Close();
            if (cnt < 1)
            {
                SqlCommand cmd4 = new SqlCommand("insert into facultydetail(facultyname) values(@facultyname)", con);
                cmd4.Parameters.AddWithValue("@facultyname",txtname.Text);
                con.Open();
                cmd4.ExecuteNonQuery();
                con.Close();
            }

            con.Close();
            //Response.BufferOutput = true;           
            //Response.Redirect("tranadminpage.aspx");
            Response.Redirect("tranviewfaculty.aspx");
        }
    }
}