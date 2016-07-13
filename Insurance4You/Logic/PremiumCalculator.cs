using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public class PremiumCalculator
    {
        public static decimal calculate(decimal basequote, int claimsBonus, string additionalDriver)
        {
            decimal finalquote = basequote;
            if(additionalDriver.Equals("true"))
            {
                finalquote += finalquote * 0.05M;
            }
            if (claimsBonus > 0)
            {
                finalquote -= (finalquote * claimsBonus * 0.2M);
            }
            return finalquote;
        }
    }
}