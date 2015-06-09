using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace IIL_Portal_res_
{
    public partial class admissions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
            }
        }

        protected void btnins_Click(object sender, EventArgs e)
        {
            try
            {
                string sregno = drpbatch.Text + "" + drpplace.Text + "" + rollnum.Text;
                string campus = drpcampus.Text;
                string course = drpcourse.Text;
                string intpopn = drpintpopn.Text;
                string sname = txtname.Text;
                string batch = drpbatch.Text;
                string sdob = txtdob.Text;
                string sgender = drpgender.SelectedValue;
                
                string sadds1 = txtaddress1.Text;
                string sadds2 = txtaddress2.Text;
                string scity = txtcity.Text;
                string sstate = txtstate.Text;
                string spincode = txtpinc.Text;
                string splscont = txtpcont.Text;
                string sinsemail = txtemail.Text;
              
               

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "Insert into studdetails(sregno,campus,course,intpopn,sname,batch,sgender,sdob,sadds1,sadds2,scity,sstate,spincode,splscont,sinsemail)values(@sregno,@campus,@course,@intpopn,@sname,@batch,@sdob,@sgender,@sadds1,@sadds2,@scity,@sstate,@spincode,@splscont,@sinsemail)";
                        cmd.Parameters.AddWithValue("@sregno", sregno);
                        cmd.Parameters.AddWithValue("@campus", campus);
                        cmd.Parameters.AddWithValue("@course", course);
                        cmd.Parameters.AddWithValue("@intpopn", intpopn);
                        cmd.Parameters.AddWithValue("@sname", sname);
                        cmd.Parameters.AddWithValue("@batch", batch);
                        cmd.Parameters.AddWithValue("@sgender",sgender);
                        cmd.Parameters.AddWithValue("@sdob", sdob);
                        cmd.Parameters.AddWithValue("@sadds1", sadds1);
                        cmd.Parameters.AddWithValue("@sadds2", sadds2);
                        cmd.Parameters.AddWithValue("@scity", scity);
                        cmd.Parameters.AddWithValue("@sstate", sstate);
                        cmd.Parameters.AddWithValue("@spincode", spincode);
                        cmd.Parameters.AddWithValue("@splscont", splscont);
                        cmd.Parameters.AddWithValue("@sinsemail", sinsemail);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            finally
            {
                Response.Write("<script>alert('Successfully Submitted'</script>");
               
            }



        }

    }
    
}