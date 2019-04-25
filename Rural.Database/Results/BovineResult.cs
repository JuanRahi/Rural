using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.Results
{
    public class BovineResult
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public string Sex { get; set; }
        public string Category { get; set; }
        public string Breed { get; set; }
        public int Years { get; set; }
        public int Months { get; set; }
        public string Status { get; set; }
        public string EntryDate { get; set; }
        public string OwnerName { get; set; }
        public string OwnerNumber { get; set; }
    }
}
