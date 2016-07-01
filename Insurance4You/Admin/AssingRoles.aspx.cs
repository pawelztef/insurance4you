using Insurance4You.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.Admin
{
    public partial class AssingRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DisplayRoles();
                RoleBox1.Text = string.Empty;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = RoleBox1.Text.Trim();
            CreateRole(name);
            // Refresh RoleList
            DisplayRoles();
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
            roleMgr.Delete(role);

            DisplayRoles();
        }
    }
}
