using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Model
{
    public class Bovine
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public Sex Sex { get; set; }
        public BovineCategory Category { get; set; }
        public Breed? Breed { get; set; }
        public Breed? Cross { get; set; }
        public int Age { get; set; } //Months
        public DateTime EntryDate { get; set; }
        public Owner Owner { get; set; }
        public Location Location { get; set; }
        public Status Status { get; set; }
        public IEnumerable<BovineDeal> Deals { get; set; }
    }
}
