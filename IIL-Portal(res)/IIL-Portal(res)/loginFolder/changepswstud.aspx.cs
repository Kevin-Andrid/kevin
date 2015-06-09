using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace IIL_Portal_res_
{
    public partial class changepswstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["uid"] == null && User.Identity.Name == "")
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["uid"] != null)
                {
                    if (!IsPasswordResetLinkValid())
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Password Reset link has expired or is invalid";
                    }
                    currentpasswordtxt.Visible = false;
                }
                else if (User.Identity.Name != "")
                {
                    currentpasswordtxt.Visible = true;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if ((Request.QueryString["uid"] != null && ChangeUserPassword()) ||
                (User.Identity.Name != "" && ChangeUserPasswordUsingCurrentPassword()))
            {
                lblMessage.Text = "Password Changed Successfully!";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                if (currentpasswordtxt.Visible)
                {
                    lblMessage.Text = "Invalid Current Password!";
                }
                else
                {
                    lblMessage.Text = "Password Reset link has expired or is invalid";
                }
            }
        }


        private bool ExecuteSP(string SPName, List<SqlParameter> SPParameters)
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Workstation 7\Documents\Visual Studio 2013\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
            {
                SqlCommand cmd = new SqlCommand(SPName, con);
                cmd.CommandType = CommandType.StoredProcedure;

                foreach (SqlParameter parameter in SPParameters)
                {
                    cmd.Parameters.Add(parameter);
                }

                con.Open();
                return Convert.ToBoolean(cmd.ExecuteScalar());
            }
        }



        private bool IsPasswordResetLinkValid()
        {
            List<SqlParameter> paramList = new List<SqlParameter>()
            {
                  new SqlParameter()
                    {
                       ParameterName = "@GUID",
                       Value = Request.QueryString["uid"]
                    }
             };

            return ExecuteSP("spIsPasswordResetLinkValid", paramList);
        }



        private bool ChangeUserPassword()
        {
            List<SqlParameter> paramList = new List<SqlParameter>()
            {
                new SqlParameter()
                {
                    ParameterName = "@GUID",
                    Value = Request.QueryString["uid"]
                },
                new SqlParameter()
                {
                    ParameterName = "@Password",
                    Value = FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassword.Text, "SHA1")
                }
            };

            return ExecuteSP("spChangePassword", paramList);
        }

        private bool ChangeUserPasswordUsingCurrentPassword()
        {
            List<SqlParameter> paramList = new List<SqlParameter>()
            {
                new SqlParameter()
                {
                    ParameterName = "@UserName",
                    Value = User.Identity.Name
                },
                new SqlParameter()
                {
                    ParameterName = "@CurrentPassword",
                    Value = FormsAuthentication.HashPasswordForStoringInConfigFile(currentpasswordtxt.Text, "SHA1")
                },
                new SqlParameter()
                {
                    ParameterName = "@NewPassword",
                    Value = FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassword.Text, "SHA1")
                }
           };

            return ExecuteSP("spChangePasswordUsingCurrentPassword", paramList);
        }


    }
}