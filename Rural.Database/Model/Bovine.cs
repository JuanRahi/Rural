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
        public int Age { get; set; } //Months
        public Owner Owner { get; set; }
    }
}
