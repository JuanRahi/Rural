using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Model
{
    public class Deal
    {
        public int Id { get; set; }
        public Owner Seller { get; set; }
        public int SellerId { get; set; }
        public Owner Buyer { get; set; }
        public int BuyerId { get; set; }
        public IEnumerable<BovineDeal> Bovines { get; set; }
        public IEnumerable<DealItem> Items { get; set; }
        public DateTime Date { get; set; }
        public DealType Type { get; set; }
    }
}
