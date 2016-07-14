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
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            ListBox1.DataSource = generateMonthsList(now, 12);
            ListBox1.DataBind();
            Label4.Text = Session["QuoteID"].ToString();
        }


        private List<String> generateMonthsList(DateTime date, int s)
        {
            List<String> months = new List<String>();
            DateTime dt = date;
            for(int i = 0; i< s; i++)
            {
                months.Add(dt.ToString("MMMM"));
                dt = dt.AddMonths(1);
            }
            return months;
        }
        
    }
}