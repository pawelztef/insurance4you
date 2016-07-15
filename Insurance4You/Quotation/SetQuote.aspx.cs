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
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lastPage = (GetQuote)Context.Handler;
                quote = Price();
                Label1.Text = quote.ToString() + " €";
                Session["quote"] = quote;
                Session["startDate"] = lastPage.StartPolicyDate;
            }
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {
           
        }
        private decimal Price()
        {
            GetQuote lastPage = (GetQuote)Context.Handler;
            baseRate = BaseRate.calculate(lastPage.DOM, lastPage.Engine);
            return PremiumCalculator.calculate(baseRate, lastPage.Bonus, lastPage.AdditionalDriverFlag);
        }
    }
}

