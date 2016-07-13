using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public class RejectDecision
    {
        public static string check(DateTime driverDOB, int penaltyPoints, Boolean claim, Boolean conviction)
        {
            int driverAge = int.Parse(DateTime.Now.Year.ToString()) - int.Parse(driverDOB.Year.ToString());
            if (claim | conviction)
            {
                return "true";
            }
            else if ((driverAge < 25 & penaltyPoints > 3))
            {
                return "true";
            }
            else if (penaltyPoints >= 5)
            {
                return "true";
            }
            else if ((penaltyPoints >= 4 & conviction) || (penaltyPoints >= 4 & claim))
            {
                return "true";
            }      
                return "false";
            
        }
    }
}