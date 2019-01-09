using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Interfaces
{
    public interface IBovineService
    {
        IEnumerable<BovineDTO> GetAll();
        BovineDTO Get(int id);
    }
}
