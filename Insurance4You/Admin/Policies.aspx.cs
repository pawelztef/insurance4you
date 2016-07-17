using Insurance4You.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.Owin;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using Insurance4You.ADO;

namespace Insurance4You.Admin
{
    public partial class Policies : System.Web.UI.Page
    {
        string ConnectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
               
                FetchData(ConnectionStr, GD1);

            }

        }
        protected void FindDriverButton_Click(object sender, EventArgs e)
        {
        }

        protected void OpenDocument(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lnk.NamingContainer;
            int id = int.Parse(DriverDocumments.DataKeys[gr.RowIndex].Value.ToString());
            Download(id);
        }
        private void Download(int id)
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("GetDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            string name = dt.Rows[0]["DocumentName"].ToString();
            byte[] documentbytes = (byte[])dt.Rows[0]["DocumentContent"];
            Response.ClearContent();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", string.Format("attatchment; filename={0}", name));
            Response.AddHeader("Content-Length", documentbytes.Length.ToString());
            Response.BinaryWrite(documentbytes);
            Response.Flush();
            Response.End();
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

        protected void Image_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = (ImageButton)sender;
            GridViewRow grv = (GridViewRow)imgbtn.NamingContainer;
            Label1.Text = grv.Cells[0].Text;
            CheckBoxChecked.Text = grv.Cells[3].Text;
            CheckBoxRejected.Text = grv.Cells[4].Text;
            this.ModalPopupExtender1.Show();
        }

        protected void ModalUpdateButton_Click(object sender, EventArgs e)
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