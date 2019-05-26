using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BuyDTO
    {
        public BuyItemDTO[] Items { get; set; }
        public BuyProfitDTO[] Bovines { get; set; }
    }
}
