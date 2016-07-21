using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using Insurance4You.ADO;

namespace Insurance4You.UserPages
{
    public partial class ManageDocuments : System.Web.UI.Page
    {
        string ConnectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated) { FormsAuthentication.RedirectToLoginPage(); }
            else { userId = this.Page.User.Identity.GetUserId(); }
            if (!IsPostBack)
            {
                FillData();
                FillDetails();
                UserName.Value = Page.User.Identity.Name;
            }
        }
        protected void OpenDocument(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lnk.NamingContainer;
            int id = int.Parse(GridView1.DataKeys[gr.RowIndex].Value.ToString());
            Download(id);
        }
        private void Download(int id)
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(ConnectionStr))
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
        private void FillData()
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection(ConnectionStr))
            {
                SqlCommand cmd = new SqlCommand("GetDocumentsByUser", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = userId;
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != "")
            {
                FileInfo File = new FileInfo(FileUpload1.FileName);
                byte[] DocumentContent = FileUpload1.FileBytes;
                string FileName = File.Name;
                string FileExtension = File.Extension;
                using (SqlConnection cn = new SqlConnection(ConnectionStr))
                {
                    SqlCommand cmd = new SqlCommand("SaveDocument", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@DocumentName", SqlDbType.VarChar).Value = FileName;
                    cmd.Parameters.Add("@DocumentContent", SqlDbType.VarBinary).Value = DocumentContent;
                    cmd.Parameters.Add("@DocumentExtension", SqlDbType.VarChar).Value = FileExtension;
                    cmd.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = userId;
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }

            FillData();
        }





        private void FillDetails()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                var queryOne = from p in context.Drivers
                               where p.SiteUserId == userId
                               select p;
                Driver driver = queryOne.FirstOrDefault();
                var queryTwo = from p in context.ContactDetails
                               where p.AppUserID == userId
                               select p;
                ContactDetail contact = queryTwo.FirstOrDefault();
                if (driver != null)
                {
                    FirstName.Text = driver.FirstName;
                    LastName.Text = driver.SecondName;
                }
                if (contact != null)
                {
                    Phone.Text = contact.Phone.ToString();
                    County.Text = contact.County;
                    Email.Text = contact.Email;
                }


            }
        }


        protected void UpdateDetails_Click(object sender, EventArgs e)
        {


            using (InsuranceConnection context = new InsuranceConnection())
            {
                var query = from p in context.ContactDetails
                            where p.AppUserID == userId
                            select p;
                ContactDetail contact = query.FirstOrDefault();
                contact.Email = UpdateEmail.Text;
                contact.Phone = UpdatePhone.Text;
                context.SaveChanges();
            }
            FillDetails();

        }
    }
}