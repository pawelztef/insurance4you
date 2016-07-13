using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
using System.Data.OleDb;
using Insurance4You.ADO;
using Microsoft.AspNet.Identity;

namespace Insurance4You
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string user, title, name, sname;

        protected void Page_Load(object sender, EventArgs e)
        {
            user = this.Page.User.Identity.GetUserId();




        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                Driver driver = new Driver();

                driver.Title = TextBox1.Text;
                driver.FirstName = TextBox2.Text;
                driver.SecondName = TextBox3.Text;
                driver.SiteUserId = user;
                context.Drivers.Add(driver);
                context.SaveChanges();
                Label4.Text = "Check Your DB";

            }

        }
    }
}