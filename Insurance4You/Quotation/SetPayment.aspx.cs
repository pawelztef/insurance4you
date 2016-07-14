using Insurance4You.ADO;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
namespace Insurance4You.Quotation
{
    public partial class SetPayment : System.Web.UI.Page
    {
        string user;
        decimal quote;
        DateTime startDate;
        List<decimal> plan;
        List<string> months;

        protected void Page_Load(object sender, EventArgs e)
        {
            user = this.Page.User.Identity.GetUserId();
            quote = 1250; //Convert.ToDecimal(Session["quote"]);
            startDate = DateTime.Now; //Convert.ToDateTime(Session["startDate"]);
            plan = Plan.generate(quote, 12);
            months = GenerateMonths.generate(startDate, 12);
           
            MonthsList.DataSource = months;
            MonthsList.DataBind();

            RateList.DataSource = plan;
            RateList.DataBind();
           
        }

        



        private void saveQuote()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                Quote price = new Quote();
                price.AppUserId = user;
                price.Price = quote;
                price.RejectDecision = false;
                price.DOC = DateTime.Today;
                context.Quotes.Add(price);
                context.SaveChanges();
                Session["QuoteID"] = price.Id;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            saveQuote();
        }
    }

}