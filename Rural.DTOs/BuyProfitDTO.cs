using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BuyProfitDTO
    {
        public int BovineId { get; set; }
        public string Number { get; set; }
        public Status Status { get; set; }
        public BovineCategory Category { get; set; }
        public DateTime EntryDate { get; set; }
        public DateTime? SaleDate { get; set; }
        public double Profit { get; set; }
    }
}
