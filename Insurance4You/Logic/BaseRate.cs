using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public static class BaseRate
    {
        public static decimal calculate(DateTime dom, int engineSize)
        {
            decimal highestRate = 2500M;
            double percentagePoint = 1;
            if (engineSize <= 1500)
            {
                percentagePoint -= 0.6; 
            }
            else if (engineSize >= 1501 && engineSize <= 2300)
            {
                percentagePoint -= 0.4;
            }
            if(dom.Year >= 2002 && dom.Year <= 2010)
            {
                percentagePoint += 0.1;
            }
            else if (dom.Year >= 2011 && dom.Year <= DateTime.Now.Year)
            {
                percentagePoint += 0.2;
            }
            else
            {
                percentagePoint += 0.2;
            }
            return highestRate * (decimal)percentagePoint;
        }
    }
}