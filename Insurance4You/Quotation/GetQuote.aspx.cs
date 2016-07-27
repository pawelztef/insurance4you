using Insurance4You.ADO;
using Insurance4You.Logic;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.Quotation
{
    public partial class GetQuote : System.Web.UI.Page
    {
        string AppUserId, check;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated) { FormsAuthentication.RedirectToLoginPage(); }
            else { AppUserId = this.Page.User.Identity.GetUserId(); }

        }

        public string DriverTitle
        {
            get
            {
                return InputTitle.SelectedItem.Value.ToString();
            }
        }
        public string FirstName
        {
            get
            {
                return InputFirstName.Text;
            }
        }
        public string SecondName
        {
            get
            {
                return InputSecondName.Text;
            }
        }
        public string Email
        {
            get
            {
                return InputEmail.Text;
            }
        }
        public string Phone
        {
            get
            {
                return InputPhone.Text;
            }
        }
        public DateTime DOB
        {
            get
            {
                return new DateTime(
                    int.Parse(InputDOBYear.SelectedItem.Text),
                    int.Parse(InputDOBMonth.SelectedValue),
                    int.Parse(InputDOBDay.SelectedItem.Text)
                    );
            }
        }
        public string County
        {
            get
            {
                return InputCounty.SelectedValue.ToString();
            }
        }
        public string Reg
        {
            get
            {
                return InputReg.Text;
            }
        }
        public DateTime DOM
        {
            get
            {
                return new DateTime(
                                   int.Parse(InputDOMYear.SelectedItem.Text),
                                    int.Parse(InputDOMMonth.SelectedValue),
                                   int.Parse(InputDOMDay.SelectedItem.Text)
                                   );
            }
        }
        public string Make
        {
            get
            {
                return InputMake.Text;
            }
        }
        public string Model
        {
            get
            {
                return InputModel.Text;
            }
        }
        public int Engine
        {
            get
            {
                return int.Parse(InputEngine.Text);
            }
        }
        public int Bonus
        {
            get
            {
                return InputBonus.TabIndex;
            }
        }
        public string LicenceNo
        {
            get
            {
                return InputLicenceNumber.Text;
            }
        }
        public DateTime ClaimDate
        {
            get
            {
                return new DateTime(
                    InputClaimDateYear.SelectedIndex + 1990,
                     int.Parse(InputClaimDateMonth.SelectedValue),
                   InputClaimDateDay.SelectedIndex + 1);                  
            }
        }
        public string ClaimType
        {
            get
            {
                return InputClaimType.Text;
            }
        }
        public DateTime ConvictionDate
        {
            get
            {
                return new DateTime(
                     int.Parse(InputConvictionDateYear.SelectedItem.Text),
                     int.Parse(InputConvictionDateMonth.SelectedValue),
                     int.Parse(InputConvictionDateDay.SelectedItem.Text)
                     );
            }
        }
        public string ConvictionType
        {
            get
            {
                return InputConvictionType.Text;
                
            }
        }
        public int PenaltyPoints
        {
            get
            {
                return InputPenaltyPoints.SelectedIndex-1;
            }
        }
        public string AdditionalDriverTitle
        {
            get
            {
                return InputAdditionalDriverTitle.SelectedValue.ToString();
            }
        }
        public string AdditionalDriverFirstName
        {
            get
            {
                return InputAdditionalDriverFirstName.Text;
            }
        }
        public string AdditionalDriverSecondName
        {
            get
            {
                return InputAdditionalDriverSecondName.Text;
            }
        }
        public string AdditionalDriverEmail
        {
            get
            {
                return InputAdditionalDriverEmail.Text; 
            }
        } 
        public string AdditionalDriverPhone
        {
            get
            {
                return InputAdditionalDriverPhone.Text;
            }
        }
        public DateTime AdditionalDriverDOB
        {
            get
            {
                return new DateTime(
                                    int.Parse(InputAdditionalDriverDOBYear.SelectedItem.Text),
                                    int.Parse(InputAdditionalDriverDOBMonth.SelectedValue),
                                    int.Parse(InputAdditionalDriverDOBDay.SelectedItem.Text)
                                    );
            }
        }
        public string AdditionalDriverCounty
        {
            get
            {
                return InputAdditionalDriverCounty.Text;
            }
        }
        public DateTime StartPolicyDate
        {
            get
            {
                return new DateTime(
                                    int.Parse(InputStartPolicyDateYear.SelectedItem.Text),
                                    int.Parse(InputStartPolicyDateMonth.SelectedValue),
                                    int.Parse(InputStartPolicyDateDay.SelectedItem.Text)
                                    );
            }

        }
        public string AdditionalDriverFlag
        {
            get
            {
                return HiddenFieldAdditionalDriver.Value.ToString();
            }
        }
        public Boolean ClaimsFlag
        {
            get
            {
                if (HiddenFieldClaims.Value.ToString().Equals("true"))
                    return true;
                else
                    return false;
            }
        }
        public Boolean ConvictionsFlag
        {
            get
            {
                if (HiddenFieldConvictions.Value.ToString().Equals("ture"))
                    return true;
                else
                    return false;
            }
        }


    protected void Button5_Click(object sender, EventArgs e)
    {
            saveDriver();
            saveCar();
            saveDrivingHistory();
            saveAdditionalDriver();
            check = RejectDecision.check(DOB, PenaltyPoints, ClaimsFlag, ConvictionsFlag);
            if(check.Equals("false"))
            {
                Server.Transfer("SetQuote.aspx");
            }
            else if (check.Equals("true"))
            {
                Server.Transfer("Refusal.aspx"); 
            }
    }

        private void saveDriver()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                Driver driver = new Driver();
                driver.Title = DriverTitle;
                driver.FirstName = FirstName;
                driver.SecondName = SecondName;
                driver.SiteUserId = AppUserId;
                context.Drivers.Add(driver);

                ContactDetail contact = new ContactDetail();
                contact.AppUserID = AppUserId;
                contact.Phone = Phone;
                contact.DOB = DOB;
                contact.Email = Email;
                contact.County = County;
                contact.AddDriver = false;
                context.ContactDetails.Add(contact);
                context.SaveChanges();
                Session["DriverID"] = driver.Id;
              

            }
        }

        private void saveCar()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                Car car = new Car();
                car.AppUserID = AppUserId;
                car.RegNumber = Reg;
                car.DOM = DOM;
                car.Make = Make;
                car.Model = Model;
                car.Engine = Engine;
                context.Cars.Add(car);
                context.SaveChanges();
                Session["CarID"] = car.Id;
            }
        }

        private void saveDrivingHistory()
        {
            using (InsuranceConnection context = new InsuranceConnection())
            {
                DrivingHistory dh = new DrivingHistory();
                dh.AppUserId = AppUserId;
                dh.LicenceNo = LicenceNo;
                dh.ClaimsDiscount = Bonus;
                if (ConvictionsFlag)
                {
                    dh.ConvictionType = ConvictionType;
                    dh.ConvictionDate = ConvictionDate;
                }
                if (ClaimsFlag)
                {
                    dh.AccidentType = ClaimType;
                    dh.AccidentDate = ClaimDate;
                }
                context.DrivingHistories.Add(dh);
                context.SaveChanges();
            }
        }

        protected void Terms_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=TermsAndConditions.pdf");
            Response.TransmitFile(Server.MapPath("../Files/TermsAndConditions.pdf"));
            Response.Flush();
            Response.End();
        }

        private void saveAdditionalDriver()
        {
            if (AdditionalDriverFlag.Equals("true"))
            {
                using (InsuranceConnection context = new InsuranceConnection())
                {
                    AdditionalDriver add = new AdditionalDriver();
                    add.AppUserId = AppUserId;
                    add.Title = AdditionalDriverTitle;
                    add.FirstName = AdditionalDriverFirstName;
                    add.SecondName = AdditionalDriverSecondName;
                    context.AdditionalDrivers.Add(add);

                    ContactDetail con = new ContactDetail();
                    con.AppUserID = AppUserId;
                    con.Phone = AdditionalDriverPhone;
                    con.DOB = AdditionalDriverDOB;
                    con.Email = AdditionalDriverEmail;
                    con.County = AdditionalDriverCounty;
                    con.AddDriver = true;
                    context.ContactDetails.Add(con);
                    context.SaveChanges();
                    Session["AddDriverID"] = add.Id;
                }
            }
            else
            {
                Session["AddDriverID"] = false;
            }
        }

}
}