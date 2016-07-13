using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance4You.Quotation
{
    public partial class GetQuote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
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
                    InputDOBMonth.SelectedIndex + 1,
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
                                   InputDOMMonth.SelectedIndex + 1,
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
        public DateTime ClaimDate
        {
            get
            {
                return new DateTime(
                    InputClaimDateYear.SelectedIndex + 1990,
                    InputClaimDateMonth.SelectedIndex + 1,
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
                     InputConvictionDateMonth.SelectedIndex + 1,
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
        public int AdditionalDriverPhone
        {
            get
            {
                return int.Parse(InputAdditionalDriverPhone.Text);
            }
        }
        public DateTime AdditionalDriverDOB
        {
            get
            {
                return new DateTime(
                                    int.Parse(InputAdditionalDriverDOBYear.SelectedItem.Text),
                                    InputAdditionalDriverDOBMonth.SelectedIndex + 1,
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
                                    InputStartPolicyDateMonth.SelectedIndex + 1,
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
        Server.Transfer("SetQuote.aspx");
    }

}
}