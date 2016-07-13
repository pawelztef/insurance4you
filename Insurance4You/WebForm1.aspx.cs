using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Insurance4You.Logic;
using System.Data.OleDb;

namespace Insurance4You
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string StrCon = "Data Source=DESKTOP-UE02QOC\\SQLEXPRESS;Initial Catalog=Insurance4You;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
        OleDbConnection con;
        string query;
        string price;
        OleDbCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OleDbConnection(StrCon);
            con.Open();
           
          
            
        }

       
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            price = TextBox1.Text;
            query = "INSERT INTO Quote(Price) VALUES ('" + price + "')";
            command = new OleDbCommand(query, con);
            Label1.Text = "check db";

        }
    }
}