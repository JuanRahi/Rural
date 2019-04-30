using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.DTOs
{
    public class FilterDTO
    {
        public int[] Owners { get; set; }
        public Sex[] Sex { get; set; }
        public Status[] Status { get; set; }        
    }
}
