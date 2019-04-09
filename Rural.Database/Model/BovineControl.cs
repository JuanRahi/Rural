using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.Model
{
    public class BovineControl
    {
        public int Id { get; set; }

        public Bovine Bovine { get; set; }
        public int BovineId { get; set; }

        public Control Control { get; set; }
        public int ControlId { get; set; }
    }

}
