using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Insurance4You.Models;
using System.Net.Mail;

namespace Insurance4You.Account
{
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Forgot(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user's email address
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindByName(Email.Text);
                if (user == null || !manager.IsEmailConfirmed(user.Id))
                {
                    FailureText.Text = "The user either does not exist or is not confirmed.";
                    ErrorMessage.Visible = true;
                    return;
                }
               string code = manager.GeneratePasswordResetToken(user.Id);
               string callbackUrl = IdentityHelper.GetResetPasswordRedirectUrl(code, Request);
                SendEmail(callbackUrl);
                loginForm.Visible = false;
                DisplayEmail.Visible = true;
            }
        }
        private void SendEmail(string callbackUrl)
        {
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("pawelztef@gmail.com");
            msg.To.Add(Email.Text);
            msg.Subject = "Insurance4You Reset Password";
            msg.Body = "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>.";
            msg.IsBodyHtml = true;

            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = new System.Net.NetworkCredential("pawelztef@gmail.com", "PierreBoulez1");
            client.Send(msg);
                        
        }
    }
}