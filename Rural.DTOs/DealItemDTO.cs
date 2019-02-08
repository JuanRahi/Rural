using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class DealItemDTO
    {
        public int Id { get; set; }       
        public string Category { get; set; }
        public int Count { get; set; }
        public double? KgPrice { get; set; }
        public double? Kgs { get; set; }
        public double TotalPrice { get; set; }
    }
}
