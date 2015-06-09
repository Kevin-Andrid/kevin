using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace IIL_Portal_res_
{
    public partial class BBA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["sregno"];
             string sslcchecked="";
             string hslcchecked="";
            
            string tccchecked="";
            string mccchecked="";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
               
                SqlCommand cmd = new SqlCommand("Select tsslcms,thslcms,ttc,tmc from studdetails where sregno='"+id+"'", con);
                SqlDataReader rdr1 = null;
                con.Open();
               
                rdr1 = cmd.ExecuteReader();
               
        
                 while (rdr1.Read())
                    {
                       sslcchecked=rdr1["tsslcms"].ToString();
                       hslcchecked = rdr1["thslcms"].ToString();
                       
                       tccchecked = rdr1["ttc"].ToString();
                       mccchecked = rdr1["tmc"].ToString();
                    }
              

                
                 } sslc.Checked=Convert.ToBoolean(sslcchecked);
                   hslc.Checked = Convert.ToBoolean(hslcchecked);
                   tc.Checked = Convert.ToBoolean(tccchecked);
                   mc.Checked = Convert.ToBoolean(mccchecked);
                 
            }
         
        

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string id = Request.QueryString["sregno"];
            int tsslcms;
            int thslcms;
            int ttc;
            int tmc;
            int hslc1;
            if (hslc.Checked)
            {
                hslc1=1;
            }
            else
            {
                hslc1=0;
            }
           
            if (tc.Checked) 
            { 
                ttc = 1;
               
               
            }
            else 
            { 
                ttc = 0;
               
            }
            if (sslc.Checked)
            {
                tsslcms = 1;
            }
            else
            {
                tsslcms = 0;
            }
            if (mc.Checked)
            {
                tmc = 1;
            }
            else
            {
                tmc = 0;
            }
            if (hslc.Checked)
            {
                thslcms = 1;
            }
            else
            {
                thslcms = 0;
            }
           
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "update studdetails set tsslcms=@tsslcms,thslcms=@thslcms,ttc=@ttc,tmc=@tmc WHERE sregno ='" + id + "' ";
                    cmd.Parameters.AddWithValue("@tsslcms", tsslcms);
                    cmd.Parameters.AddWithValue("@thslcms", thslcms);
                    cmd.Parameters.AddWithValue("@ttc", ttc);
                    cmd.Parameters.AddWithValue("@tmc", tmc);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}