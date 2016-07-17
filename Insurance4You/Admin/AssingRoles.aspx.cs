using Insurance4You.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.Owin;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using Insurance4You.ADO;

namespace Insurance4You.Admin
{
    public partial class AssingRoles : System.Web.UI.Page
    {
        string ConnectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            FeedbackLabel1.Text = "";
            if (!Page.IsPostBack)
            {
                DisplayRoles();
                BindUsersToUserList();
                BindRolesToList();
                CheckRolesForSelectedUser();
                RoleBox1.Text = string.Empty;
            

            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = RoleBox1.Text.Trim();
            CreateRole(name);
            // Refresh RoleList
            DisplayRoles();
            BindRolesToList();
            RoleBox1.Text = string.Empty;
        }
        private void CreateRole(string name)
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMgr = new RoleManager<IdentityRole>(roleStore);
            if (!roleMgr.RoleExists(name))
            {
                // Create role
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = name });
                FeedbackLabel1.Text = "Role created Sucessfully";
            }
            else
            {
                FeedbackLabel1.Text = "Role already exists";
            }
        }
        private void DisplayRoles()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMngr = new RoleManager<IdentityRole>(roleStore);
            RoleList.DataSource = roleMngr.Roles.ToList();
            RoleList.DataBind();
        }
        protected void RoleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            // Get the RoleNameLabel
            Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as Label;

            Models.ApplicationDbContext context = new ApplicationDbContext();

            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMgr = new RoleManager<IdentityRole>(roleStore);
            var role = roleMgr.FindByName(RoleNameLabel.Text);

            if (roleMgr.RoleExists(role.Name))
            {
                // Create role
                roleMgr.Delete(role);
                FeedbackLabel1.Text = "Role deleted Sucessfully";
            }
            else
            {
                FeedbackLabel1.Text = "Role doesnt exists";
            }

            BindRolesToList();
            DisplayRoles();
        }
        private void BindUsersToUserList()
        {

            Models.ApplicationDbContext context = new ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            UserList1.DataSource = userMgr.Users.ToList();
            UserList1.DataBind();
        }
        private void BindRolesToList()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMngr = new RoleManager<IdentityRole>(roleStore);
            UserRoleList.DataSource = roleMngr.Roles.ToList();
            UserRoleList.DataBind();
        }
        private void CheckRolesForSelectedUser()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMngr = new RoleManager<IdentityRole>(roleStore);
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            string selectedUserName = UserList1.SelectedValue;
            IdentityUser user = userMgr.FindByName(selectedUserName);
            var UsersRoleList = userMgr.GetRoles(user.Id);

            foreach (RepeaterItem ri in UserRoleList.Items)
            {
                // Programmatically reference the CheckBox 
                CheckBox RoleCheckBox = ri.FindControl("RoleCheckBox") as CheckBox;
                // See if RoleCheckBox.Text is in selectedUsersRoles 
                if (UsersRoleList.Contains<string>(RoleCheckBox.Text))
                    RoleCheckBox.Checked = true;
                else
                    RoleCheckBox.Checked = false;
            }
        }
        protected void UserList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckRolesForSelectedUser();
        }
        protected void RoleCheckBox_CheckChanged(object sender, EventArgs e)
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleMngr = new RoleManager<IdentityRole>(roleStore);
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // Get the currently selected user and role 
            // Reference the CheckBox that raised this event 
            CheckBox RoleCheckBox = sender as CheckBox;
            string roleName = RoleCheckBox.Text;
            string selectedUserName = UserList1.SelectedValue;
            IdentityUser user = userMgr.FindByName(selectedUserName);


            if (RoleCheckBox.Checked)
            {
                userMgr.AddToRole(user.Id, roleName);

                //ActionStatus.Text = string.Format("User {0} was added to role {1}.", selectedUserName, roleName);
            }
            else
            {
                userMgr.RemoveFromRole(user.Id, roleName);

                // ActionStatus.Text = string.Format("User {0} was removed from role {1}.", selectedUserName, roleName);

            }



        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = EmailTextBox.Text;
            string email = EmailTextBox.Text;

            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = name, Email = email};
            //IdentityResult result = manager.Create(user, "password");

            //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //SendEmail(callbackUrl);
            //FeedbackLabel1.Text = "An email has been sent to your account. Please view the email and confirm your account to complete the registration process.";
            // Models.ApplicationDbContext context = new ApplicationDbContext();
            // var userStore = new UserStore<ApplicationUser>(context);
            // var userManager = new UserManager<ApplicationUser>(userStore);
            var userToInsert = new ApplicationUser { UserName = email, Email = email, EmailConfirmed = true };

            manager.Create(userToInsert, "1");
            NameTextBox.Text = string.Empty;
            SurnameTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            BindUsersToUserList();

        }
        private void SendEmail(string callbackUrl)
        {
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("pawelztef@gmail.com");
            msg.To.Add(EmailTextBox.Text);
            msg.Subject = "Insurance4You Account Activation";
            msg.Body = "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.";
            msg.IsBodyHtml = true;

            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = new System.Net.NetworkCredential("pawelztef@gmail.com", "PierreBoulez1");
            client.Send(msg);




        }
       
    }
}
