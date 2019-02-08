using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.DTOs
{
    public class DealDTO
    {
        public int Id { get; set; }
        public string Seller { get; set; }
        public string Buyer { get; set; }
        public DateTime Date { get; set; }
        public IEnumerable<DealItemDTO> Items { get; set; }
    }
}
