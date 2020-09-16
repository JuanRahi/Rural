using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BovineProfitDTO
    {
        public int BovineId { get; set; }
        public string Number { get; set; }
        public string Status { get; set; }
        public string Category { get; set; }
        public string EntryDate { get; set; }
        public string SaleDate { get; set; }
        public double YearsInField { get; set; }
        public double MonthsInField { get; set; }
        public double BuyPrice { get; set; }
        public double SalePrice { get; set; }
        public double Profit { get; set; }
        public double ProfitPercentage { get; set; }
    }
}
