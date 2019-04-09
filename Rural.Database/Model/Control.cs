using System;
using System.Collections.Generic;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Database.Model
{
    public class Control
    {
        public int Id { get; set; }
        public DateTime Date { get; set; }
        public ControlType ControlType { get; set; }
        public string Description { get; set; }
        public Paddock Paddock { get; set; }
        public IEnumerable<BovineControl> Bovines { get; set; }
    }
}
