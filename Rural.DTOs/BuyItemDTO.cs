using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BuyItemDTO
    {
        public int Id { get; set; }
        public string Seller { get; set; }
        public string Buyer { get; set; }
        public DateTime Date { get; set; }
        public DealType Type { get; set; }
        public BovineCategory Category { get; set; }
        public int Count { get; set; }
        public double KgPrice { get; set; }
        public double Kgs { get; set; }
        public double TotalPrice { get; set; }
        public double TotalPriceAfterTax { get; set; }
    }
}
