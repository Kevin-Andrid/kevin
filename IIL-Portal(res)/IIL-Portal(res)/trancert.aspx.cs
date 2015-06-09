using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace IIL_Portal_res_
{
    public partial class trancert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Work Station 7\Documents\Visual Studio 2012\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select sregno,sname from studdetails where batch='" + DropDownList1.SelectedValue + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();


            }*/
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
              /*using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Work Station 7\Documents\Visual Studio 2012\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
              {
                  using(SqlCommand cmd=new SqlCommand())
                  {
                      cmd.CommandText="update */
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Work Station 7\Documents\Visual Studio 2012\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
            {   string id = ((LinkButton)sender).CommandArgument.ToString();

                con.Open();
                SqlCommand cmd=new SqlCommand("Select course from studdetails where sregno='"+id+"'", con);
                cmd.ExecuteNonQuery();

                string course = (string)cmd.ExecuteScalar();

                if (course == "MBA")
                {

                  
                    Response.Redirect("~/viewdetails.aspx?sregno=" + id);
                }
                else
                {
                   
                    Response.Redirect("~/BBA.aspx?sregno=" + id);
                }

               
               

                
            }

        }

    }
}