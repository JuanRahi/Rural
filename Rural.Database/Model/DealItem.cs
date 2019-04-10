using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Model
{
    public class DealItem
    {
        public int Id { get; set; }
        public Deal Deal { get; set; }
        public BovineCategory Category { get; set; }
        public int Count { get; set; }
        public double? Kgs { get; set; }
        public double? Performance { get; set; }
        public double? KgPrice { get; set;}        
        public double TotalPrice { get; set; }        
        public double TotalPriceAfterTax { get; set; }
    }
}
