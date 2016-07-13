using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
using System.Diagnostics;
using Insurance4You.ADO;
using Microsoft.AspNet.Identity;

namespace Insurance4You.Quotation
{
    public partial class SetQuote : System.Web.UI.Page
    {

        public decimal baseRate, quote;
        public GetQuote lastPage;
        public string AppUserId, check;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AppUserId = this.Page.User.Identity.GetUserId();
                lastPage = (GetQuote)Context.Handler;
                check = RejectDecision.check(lastPage.DOB, lastPage.PenaltyPoints, lastPage.ClaimsFlag, lastPage.ConvictionsFlag);
                quote = Price();
                saveQuote();
                HiddenField1.Value = check;
                Label1.Text = quote.ToString() + " €";

            }
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {

        }

        private void saveQuote()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {

                Quote price = new Quote();
                price.AppUserId = AppUserId;
                price.Price = quote;
                if (check.Equals("ture"))
                {
                    price.RejectDecision = true;
                }
                else
                {
                    price.RejectDecision = false;
                }
                price.DOC = DateTime.Today;
                context.Quotes.Add(price);
                context.SaveChanges();
            }
        }

        private decimal Price()
        {
            GetQuote lastPage = (GetQuote)Context.Handler;
            baseRate = BaseRate.calculate(lastPage.DOM, lastPage.Engine);
            return PremiumCalculator.calculate(baseRate, lastPage.Bonus, lastPage.AdditionalDriverFlag);
        }
    }
}

