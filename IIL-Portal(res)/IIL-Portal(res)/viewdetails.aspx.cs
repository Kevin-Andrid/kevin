using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
namespace IIL_Portal_res_
{
    public partial class viewdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["sregno"];
            string sslcchecked = "false";
            string hslcchecked = "false";
            string ugcchecked = "false";

            string tccchecked = "false";
            string mccchecked = "false";
            string pccchecked = "false";
            string dccchecked = "false";

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand("Select tsslcms,thslcms,tugms,ttc,tmc,tpc,tdc from studdetails where sregno='" + id + "'", con);
                SqlDataReader rdr1 = null;
                con.Open();

                rdr1 = cmd.ExecuteReader();


                while (rdr1.Read())
                {
                    sslcchecked = rdr1["tsslcms"].ToString();
                    hslcchecked = rdr1["thslcms"].ToString();
                    ugcchecked = rdr1["tugms"].ToString();
                    tccchecked = rdr1["ttc"].ToString();
                    mccchecked = rdr1["tmc"].ToString();
                    dccchecked = rdr1["tpc"].ToString();
                    dccchecked = rdr1["tdc"].ToString();
                }



            } sslc.Checked = Convert.ToBoolean(sslcchecked);
            hslc.Checked = Convert.ToBoolean(hslcchecked);
            ug.Checked = Convert.ToBoolean(ugcchecked
                
                
                
                
                
                
                
                );
            tc.Checked = Convert.ToBoolean(tccchecked);
            mc.Checked = Convert.ToBoolean(mccchecked);
            pc.Checked = Convert.ToBoolean(dccchecked);
            dc.Checked = Convert.ToBoolean(dccchecked);





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/studupload.aspx");
          
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/studupload.aspx");
            string id = Request.QueryString["sregno"];
            string tsslcms = sslc.Checked ? "1" : "0";
            string thslcms = hslc.Checked ? "1" : "0";
            string tugms = ug.Checked ? "1" : "0";
            string ttc = tc.Checked ? "1" : "0";
            string tmc = mc.Checked ? "1" : "0";
            string tpc = pc.Checked ? "1" : "0";
            string tdc = dc.Checked ? "1" : "0";
           

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "update studdetails set tsslcms='" + tsslcms + "',thslcms='" + thslcms + "',tugms='" + tugms + "',ttc='" + ttc + "',tmc='" + tmc + "',tpc='" + tpc + "',tdc='" + tdc + "' WHERE sregno ='" + id + "' ";

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}