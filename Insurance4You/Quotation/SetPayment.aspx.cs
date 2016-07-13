using Insurance4You.ADO;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.Quotation
{
    public partial class SetPayment : System.Web.UI.Page
    {
        string user;

        protected void Page_Load(object sender, EventArgs e)
        {
            user = this.Page.User.Identity.GetUserId();
            Label1.Text = retriveAmount().ToString();

        }









        private decimal retriveAmount()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                var query = (from p in context.Quotes
                             where p.AppUserId == user
                             orderby p.DOC descending
                             select p);
                Quote obj = query.First();
                return obj.Price;

            }
        }


        
    }

}