using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Results
{
    public class BovineResult
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public Sex Sex { get; set; }
        public BovineCategory Category { get; set; }
        public Breed Breed { get; set; }
        public int Years { get; set; }
        public int Months { get; set; }
        public Status Status { get; set; }
        public DateTime EntryDate { get; set; }
        public string OwnerName { get; set; }
        public string OwnerNumber { get; set; }
    }
}
