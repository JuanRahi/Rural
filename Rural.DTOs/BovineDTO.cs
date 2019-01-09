using System;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BovineDTO
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public Sex Sex { get; set; }
        public BovineCategory Category { get; set; }
        public int Age { get; set; } //Months
        public string OwnerName { get; set; }
        public string OwnerNumber { get; set; }
    }
}
