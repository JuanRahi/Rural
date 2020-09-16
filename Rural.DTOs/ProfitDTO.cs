using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class ProfitDTO
    {
        public DealProfitDTO Deal { get; set; }
        public BovineProfitDTO[] Bovines { get; set; }
        public DealStatusDTO Status { get; set; }
    }
}
