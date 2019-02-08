using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Interfaces
{
    public interface IDealService
    {
        IEnumerable<DealDTO> GetAll();
        // DealDTO Get(int id);
    }
}
