using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace IIL_Portal_res_
{
    public partial class tranpage : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Workstation 7\Documents\Visual Studio 2013\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
          
            lblfaculty.Visible = false;
            lblmobile.Visible = false;
            lblemail.Visible = false;
            lblbank.Visible = false;
            lblpay.Visible = false;
            txtname.Visible = false;
            txtmobile.Visible = false;
            txtemail.Visible = false;
            txtbankname.Visible = false;
            txthourpay.Visible = false;
            btnsavefaculty.Visible = false;
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
            RequiredFieldValidator3.Visible = false;
            RegularExpressionValidator1.Visible = false;
            RegularExpressionValidator2.Visible = false;
        }
        protected void btnaddfaculty_Click(object sender, EventArgs e)
        {
            lblfaculty.Visible = true;
            lblmobile.Visible = true;
            lblemail.Visible = true;
            lblbank.Visible = true;
            lblpay.Visible = true;
            txtname.Visible = true;
            txtmobile.Visible = true;
            txtemail.Visible = true;
            txtbankname.Visible = true;
            txthourpay.Visible = true;
            btnsavefaculty.Visible = true;
            RequiredFieldValidator1.Visible = true;
            RequiredFieldValidator2.Visible = true;
            RequiredFieldValidator3.Visible = true;
            RegularExpressionValidator1.Visible = true;
            RegularExpressionValidator2.Visible = true;
            mp1.Show();
        }

        protected void btnsavefaculty_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                string name = txtname.Text;
                string dob = txtdob.Text;
                string mobile = txtmobile.Text;
                string email = txtemail.Text;
                string bankingname = txtbankname.Text;
                string hourpay = Convert.ToString(txthourpay.Text);
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into newfacultydetails (name,dob,mobile,email,bankingname,hourpay)values(@name,@dob,@mobile,@email,@bankingname,@hourpay)";
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@dob", dob);
                    cmd.Parameters.AddWithValue("@mobile", mobile);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@bankingname", bankingname);
                    cmd.Parameters.AddWithValue("@hourpay", hourpay);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                string name = txtname.Text;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into facultydetail (facultyname) values (@facultyname)";
                    cmd.Parameters.AddWithValue("@facultyname", name);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }


            Response.Write("<script>alert('Saved Successfully...')</script>");

            txtname.Text = null;
            txtmobile.Text = null;
            txtemail.Text = null;
            txtbankname.Text = null;
            txthourpay.Text = null;
            Response.Redirect("~/tranadminpage.aspx");

        }

        protected void lbedit_Click(object sender, EventArgs e)
        {
            LinkButton bl = (LinkButton)(sender);
            Response.Redirect("traneditfacultydetails.aspx?FRN=" + bl.CommandArgument.ToString() + "");
        }
           protected void linkclose_Click(object sender, EventArgs e)
           {
               Response.Redirect("tranadminpage.aspx");
           }
    }
}