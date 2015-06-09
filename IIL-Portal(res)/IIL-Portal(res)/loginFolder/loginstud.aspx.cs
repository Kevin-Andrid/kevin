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
using System.Drawing;

namespace IIL_Portal_res_
{
    public partial class loginstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_click(object sender, EventArgs e)
        {
            errorMsgLabel.Text = " ";
            string hashedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(loginPasswordTxt.Text, "SHA1");
            authenticateuser2(loginUserNameTxt.Text, hashedpassword);
        }
        
        private void authenticateuser2(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("spauthenticate2", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parausername = new SqlParameter("@username", username);
                SqlParameter parapassword = new SqlParameter("@password", password);

                cmd.Parameters.Add(parausername);
                cmd.Parameters.Add(parapassword);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();


                while (rdr.Read())
                {
                    int retryattempts = Convert.ToInt32(rdr["retryattempts"]);

                    if (Convert.ToBoolean(rdr["validity"]))
                    {
                        errorMsgLabel.Text = "Invalid username or password ";
                    }

                    else if (Convert.ToBoolean(rdr["authenticated"]))
                    {
                        Session["UserAuthentication"] = loginUserNameTxt.Text;
                       FormsAuthentication.RedirectFromLoginPage(loginUserNameTxt.Text, rememberMe.Checked);
                       
                    }


                    else if (retryattempts > 0)
                    {
                        int attemptleft = (4 - retryattempts);
                        errorMsgLabel.Text = "Invalid username or password " + attemptleft.ToString() + "attempts left";

                    }

                    else if (Convert.ToBoolean(rdr["AccountLocked"]))
                    {
                        errorMsgLabel.Text = "Account locked";
                    }

                    else
                    {
                        errorMsgLabel.Text = "Invalid username or password";
                    }
                }
            }
        }
    }
}