using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public static class GenerateMonths
    {
        public static List<String> Generate(DateTime date, int s)
        {
            List<String> months = new List<String>();
            DateTime dt = date;
            months.Add("Deposit: ");
            for (int i = 0; i < s; i++)
            {
                months.Add(dt.ToString("MMMM") + ": ");
                dt = dt.AddMonths(1);
            }
            return months;
        }
    }
}