using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Interfaces
{
    public interface IBovineService
    {
        IEnumerable<BovineDTO> GetAll(FilterDTO filters);
        BovineDTO Get(int id);
    }
}
