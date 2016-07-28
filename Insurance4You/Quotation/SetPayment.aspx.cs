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
            quote = Convert.ToDecimal(Session["quote"]);
            startDate = DateTime.Now; //Convert.ToDateTime(Session["startDate"]);
            plan = Plan.Generate(quote, 12);
            months = GenerateMonths.Generate(startDate, 12);

            MonthsList.DataSource = months;
            MonthsList.DataBind();

            RateList.DataSource = plan;
            RateList.DataBind();

        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                //Deposit Charge
                StripeCustomer depositCustomer = GetDepositCustomer();
                var depositCharge = new StripeChargeCreateOptions();
                depositCharge.Currency = "eur";
                depositCharge.Amount = Convert.ToInt32(plan[0])*100;
                depositCharge.CustomerId = depositCustomer.Id;
                var chargeService = new StripeChargeService();
                StripeCharge finalDepositCharge = chargeService.Create(depositCharge);
                //Recuring Payment
                StripeCustomer customer = GetCustomer();
                var charge = new StripeChargeCreateOptions();
                charge.Currency = "eur";
                var dec = plan[1] * 100;
                charge.Amount = Convert.ToInt32(dec);
                charge.CustomerId = customer.Id;
                var chargeSrv = new StripeChargeService();
                StripeCharge currentCharge = chargeSrv.Create(charge);
                var chargeId = currentCharge.Id;
                SaveQuote();
                SavePolicy(chargeId);

            }
            catch (StripeException stripeException)
            {
                switch (stripeException.StripeError.ErrorType)
                {
                    case "card_error":
                        //do some stuff, set your lblError or something like this
                        string x = stripeException.StripeError.Code;
                        Session["errorMsg"] = stripeException.StripeError.Message;
                        // or better yet, handle based on error code: exception.StripeError.Code
                        break;
                    case "api_error":
                        //do some stuff
                        break;
                    case "invalid_request_error":
                        //do some stuff
                        break;
                    default:
                        throw;
                }

            }
            finally
            {
                Server.Transfer("PaymentFeedback.aspx");
            }

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
                Cvc = CVN.Text
            };
            myCustomer.PlanId = "Insurance4You";
            myCustomer.TrialEnd = DateTime.UtcNow.AddMonths(12);
            // myCustomer.Quantity = int.Parse(months[1])*100;
            var customerService = new StripeCustomerService();
            StripeCustomer stripeCustomer = customerService.Create(myCustomer);
            return stripeCustomer;
        }

        private StripeCustomer GetDepositCustomer()
        {
            var myCustomer = new StripeCustomerCreateOptions();
            myCustomer.Email = User.Identity.GetUserName();
            myCustomer.Description = User.Identity.GetUserName();
            myCustomer.SourceCard = new SourceCard()
            {
                Number = CardNumber.Text,
                ExpirationYear = ExpiryYear.SelectedItem.Text,
                ExpirationMonth = ExpiryMonth.SelectedIndex.ToString(),
                Cvc = CVN.Text
            };
            var customerService = new StripeCustomerService();
            return customerService.Create(myCustomer);
        }


        private void SavePolicy(string paymentId)
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
                policy.PaymentID = paymentId;
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


        private void SaveQuote()
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