using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class DealProfitDTO
    {
        public double Investment { get; set; }
        public double Income { get; set; }
        public double Balance { get; set; }
        public double ProfitPerUnit { get; set; }
        public double ProfitPercentage {get;set;}
    }
}
