using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Results
{
    public class BovineDealResult
    {
        public int BovineId { get; set; }
        public BovineCategory Category { get; set; }
        public int Count { get; set; }
        public double TotalPriceAfterTax { get; set; }
    }
}
