using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.UserPages
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated) { FormsAuthentication.RedirectToLoginPage(); }
            if (!IsPostBack)
            {
                UserName.Value = Page.User.Identity.Name;
            }
        }
    }
}