using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class DealsFilterDTO
    {
        public int[] Sellers { get; set; }
        public int[] Buyers { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
    }
}
