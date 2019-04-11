using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.Model
{
    public class BovineDeal
    {
        public int Id { get; set; }

        public Bovine Bovine { get; set; }
        public int BovineId { get; set; }

        public Deal Deal { get; set; }
        public int DealId { get; set; }

        public DealItem DealItem { get; set; }
        public int? DealItemId { get; set; }
    }
}
