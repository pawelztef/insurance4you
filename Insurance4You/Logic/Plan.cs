using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public static class Plan
    {
        public static List<decimal> Generate(decimal quote, int months) {
            List<decimal> res = new List<decimal>(); 
            decimal deposit = quote * 0.2M;
            decimal j = Math.Round((quote - deposit)/months, 2);
            res.Add(deposit);
            for (int i = 0; i < months; i++)
            {
                res.Add(j);
            }
            return res;
        }

    }
}