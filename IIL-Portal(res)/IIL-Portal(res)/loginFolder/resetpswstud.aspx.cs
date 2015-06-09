using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Web.Security;
using System.Text;


namespace IIL_Portal_res_
{
    public partial class resetpswstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnResetPassword_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Workstation 7\Documents\Visual Studio 2013\Projects\IIL-Portal(res)\IIL-Portal(res)\App_Data\Database1.mdf;Integrated Security=True"))
            {
                SqlCommand cmd = new SqlCommand("spResetPassword", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramUsername = new SqlParameter("@UserName", txtUserName.Text);

                cmd.Parameters.Add(paramUsername);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (Convert.ToBoolean(rdr["ReturnCode"]))
                    {
                        SendPasswordResetEmail(rdr["Email"].ToString(), txtUserName.Text, rdr["UniqueId"].ToString());
                        lblMessage.Text = "An email with instructions to reset your password is sent to your registered email";
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Username not found!";
                    }
                }
            }
        }

        private void SendPasswordResetEmail(string ToEmail, string UserName, string UniqueId)
        {

            MailMessage mailMessage = new MailMessage("josephamalanathanp@karunya.edu.in", ToEmail);


            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost/WebApplication1/Registration/ChangePassword.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>Joseph Technologies</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "josephamalanathanp@karunya.edu.in",
                Password = "UL11IT001"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }

        protected void usernameCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }


    }
}