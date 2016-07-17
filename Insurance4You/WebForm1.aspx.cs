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
using System.Data;
using System.Data.SqlClient;
using AjaxControlToolkit;

namespace Insurance4You
{
    public partial class WebForm1 : System.Web.UI.Page
    {

       


        string ConnectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchData(ConnectionStr, GD1);
              
            }
        }







        private void FetchData(string conStr, GridView one)
        {
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetAllPolicies";
            cmd.Connection = con;
            con.Open();
            one.EmptyDataText = "No Records Found";
            one.DataSource = cmd.ExecuteReader();
            one.DataBind();
            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = (ImageButton)sender;
            GridViewRow grv = (GridViewRow)imgbtn.NamingContainer;
            Label1.Text = grv.Cells[0].Text;
            CheckBoxChecked.Text = grv.Cells[3].Text;
            CheckBoxRejected.Text = grv.Cells[4].Text;
            this.ModalPopupExtender1.Show();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                var id = int.Parse(Label1.Text);
                var query = from p in context.Policies
                            where p.Id == id
                            select p;
                Policy pol = query.FirstOrDefault();
                pol.Checked = CheckBoxChecked.Checked;
                pol.Rejected = CheckBoxRejected.Checked;
                context.SaveChanges();
                FetchData(ConnectionStr, GD1);
            }
        }
    }
}