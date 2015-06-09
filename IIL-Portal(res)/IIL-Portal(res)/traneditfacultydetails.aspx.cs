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
    public partial class traneditfacultydetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd1 = new SqlCommand("select name,dob,mobile,email,bankingname,hourpay from newfacultydetails where name='" + Request.QueryString["FRN"].ToString() + "'", con);
                con.Open();
                SqlDataReader rdr1 = cmd1.ExecuteReader();
                while (rdr1.Read())
                {
                    txtname.Text = rdr1["name"].ToString();
                    txtdob.Text = rdr1["dob"].ToString();
                    txtmobile.Text = rdr1["mobile"].ToString();
                    txtemail.Text = rdr1["email"].ToString();
                    txtbankname.Text = rdr1["bankingname"].ToString();
                    txthourpay.Text = rdr1["hourpay"].ToString();
                }
                con.Close();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("update newfacultydetails set name=@name,dob=@dob,mobile=@mobile,email=@email,bankingname=@bankingname,hourpay=@hourpay where name='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmd2.Parameters.AddWithValue("@name", txtname.Text);
            cmd2.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd2.Parameters.AddWithValue("@mobile", txtmobile.Text);
            cmd2.Parameters.AddWithValue("@email", txtemail.Text);
            cmd2.Parameters.AddWithValue("@bankingname", txtbankname.Text);
            cmd2.Parameters.AddWithValue("@hourpay", txthourpay.Text);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("tranadminpage.aspx");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("delete from newfacultydetails where name='" + Request.QueryString["FRN"].ToString() + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("tranadminpage.aspx");
        }
    }
}