using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
using System.Diagnostics;

namespace Insurance4You.Quotation
{
    public partial class SetQuote : System.Web.UI.Page
    {

        public decimal baseRate, premium;
      
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
                
            if (!IsPostBack)
            {
                GetQuote lastPage = (GetQuote)Context.Handler;
                HiddenField1.Value = RejectDecision.check(lastPage.DOB, lastPage.PenaltyPoints, lastPage.ClaimsFlag, lastPage.ConvictionsFlag);
                Label1.Text = Price().ToString() + "€";
                


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