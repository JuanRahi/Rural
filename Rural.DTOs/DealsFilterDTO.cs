using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class DealsFilterDTO
    {
        public int Seller { get; set; }
        public int Buyer { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
    }
}
