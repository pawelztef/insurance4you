using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.Quotation
{
    public partial class PaymentFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["errorMsg"] != null)
            {
                var fedback = Convert.ToString(Session["errorMsg"]);
                FeedbackHeader.Text = "Payment error";
                FeedbackBody.Text = fedback;
                LinkBtn1.Visible = false;
                LinkBtn2.Visible = false;
                AgreementLabel.Visible = false;
                UploadLabel.Visible = false;

            }
            else
            {
                FeedbackBody.Text = "Your payment has been approved.";
                GoBackBtn.Visible = false;
                
            }
        }

        protected void GoBackBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetPayment.aspx");
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }

        protected void LinkBtn1_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=agreement.pdf"); 
            Response.TransmitFile(Server.MapPath("../Files/agreement.pdf"));
            Response.Flush();
            Response.End();
        }
    }
}