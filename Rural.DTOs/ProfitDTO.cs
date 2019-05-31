using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class ProfitDTO
    {
        public double Investment { get; set; }
        public double Income { get; set; }
        public double Balance { get; set; }
        public BovineProfitDTO[] Bovines { get; set; }
    }
}
