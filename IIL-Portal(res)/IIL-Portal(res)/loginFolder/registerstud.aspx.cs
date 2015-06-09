using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Text.RegularExpressions;

namespace IIL_Portal_res_
{
    public partial class registerstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                lblRegMsg.Text = "";

            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {


            if (Page.IsValid)
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Workstation 7\Documents\Visual Studio 2013\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
                {
                    SqlCommand cmd = new SqlCommand("spregisteruser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    string hashedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(regPasswordTxt.Text, "SHA1");

                    SqlParameter username = new SqlParameter("@username", regUserTxt.Text);
                    SqlParameter password = new SqlParameter("@password", hashedpassword);
                    SqlParameter email = new SqlParameter("@email", regEmailTxt.Text);

                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);

                    con.Open();

                    int returncode = (int)cmd.ExecuteScalar();
                    if (returncode == -1)
                    {
                        lblRegMsg.Text = "user name already exists";
                    }
                    else
                    {
                        Response.Redirect("~/loginFolder/loginstud.aspx");
                    }
                }
            }
        }





    }

}