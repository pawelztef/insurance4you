using Insurance4You.ADO;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
using Stripe;
using System.Web.Security;

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


        protected void Button5_Click(object sender, EventArgs e)
        {
            StripeCustomer Customer = GetCustomer();
            var charge = new StripeChargeCreateOptions();
            charge.Currency = "eur";
            var dec = plan[1] * 1000;
            charge.Amount = Convert.ToInt32(dec);

            charge.CustomerId = Customer.Id;
            var chargeSrv = new StripeChargeService();
            StripeCharge CurrentCharge = chargeSrv.Create(charge);
           
            saveQuote();
            savePolicy();
            Response.Redirect("UnderConstruction.aspx");
        }






        private StripeCustomer GetCustomer()
        {
            var myCustomer = new StripeCustomerCreateOptions();
            myCustomer.Email = User.Identity.GetUserName();
            myCustomer.Description = User.Identity.GetUserName();
            myCustomer.SourceCard = new SourceCard()
            {
                Number = CardNumber.Text,
                ExpirationYear = ExpiryYear.SelectedItem.Text,
                ExpirationMonth = ExpiryMonth.SelectedIndex.ToString(),
                Cvc = "123"
            };
            myCustomer.PlanId = "Insurance4You";
            myCustomer.TrialEnd = DateTime.UtcNow.AddMonths(12);
            // myCustomer.Quantity = int.Parse(months[1])*100;
            var customerService = new StripeCustomerService();
            StripeCustomer stripeCustomer = customerService.Create(myCustomer);
            return stripeCustomer;
        }


        private void savePolicy()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                Policy policy = new Policy();
                policy.CarID = Convert.ToInt16(Session["CarID"]);
                policy.DriverID = Convert.ToInt16(Session["DriverID"]);
                if (!(Convert.ToString(Session["AddDriverID"]).Equals("false")))
                {
                    policy.AdditionalDriverID = Convert.ToInt16(Session["AddDriverID"]);
                }
               // policy.PaymentID = chargeId;
                policy.Quote = Convert.ToDecimal(Session["quote"]);
                DateTime endDate = Convert.ToDateTime(Session["startDate"]).AddYears(1);
                policy.StartDate = Convert.ToDateTime(Session["startDate"]);
                policy.EndDate = endDate;
                context.Policies.Add(policy);
                int driverID = int.Parse(Session["DriverID"].ToString());
                int policyID = policy.Id;
                var query = from p in context.Drivers
                            where p.Id == driverID
                            select p;
                Driver i = query.FirstOrDefault();
                i.PolicyId = policyID;
                context.SaveChanges();
            }
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


    }

}