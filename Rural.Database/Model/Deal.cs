using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.Model
{
    public class Deal
    {
        public int Id { get; set; }
        public Owner Seller { get; set; }
        public Owner Buyer { get; set; }
        public IEnumerable<BovineDeal> Bovines { get; set; }
        public IEnumerable<DealItem> Items { get; set; }
        public DateTime Date { get; set; }
    }
}
