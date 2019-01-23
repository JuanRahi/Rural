using System;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class BovineDTO
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public Sex Sex { get; set; }
        public string Category { get; set; }
        public int Years { get; set; }
        public int Months { get; set; }
        public string OwnerName { get; set; }
        public string OwnerNumber { get; set; }
    }
}
