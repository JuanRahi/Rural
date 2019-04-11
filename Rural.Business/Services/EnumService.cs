using Rural.Business.Interfaces;
using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Business.Services
{
    public class EnumService: IEnumService
    {
        public IEnumerable<SexDTO> GetSex()
        {
            var result = Enum.GetValues(typeof(Sex)).Cast<Sex>().Select(x => new SexDTO { Value = x, Label = x.ToString() });
            return result;
        }

        public IEnumerable<StatusDTO> GetStatus()
        {
            var result = Enum.GetValues(typeof(Status)).Cast<Status>().Select(x => new StatusDTO { Value = x, Label = x.ToString() });
            return result;
        }
    }
}
