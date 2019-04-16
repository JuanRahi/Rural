using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class DealDTO
    {
        public int Id { get; set; }
        public string Seller { get; set; }
        public string Buyer { get; set; }
        public string Date { get; set; }
        public double TotalPrice { get; set; }
        public double TotalPriceAfterTax { get; set; }
        public IEnumerable<DealItemDTO> Items { get; set; }
    }
}
