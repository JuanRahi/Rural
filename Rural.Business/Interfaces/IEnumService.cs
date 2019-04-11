using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Interfaces
{
    public interface IEnumService
    {
        IEnumerable<SexDTO> GetSex();
        IEnumerable<StatusDTO> GetStatus();
    }
}
