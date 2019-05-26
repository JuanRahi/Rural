using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Interfaces
{
    public interface IDealService
    {
        IEnumerable<DealDTO> GetAll(DealsFilterDTO filters);
        DealDTO Get(int id);
        BuyDTO GetBuyProfit(int dealId);        
    }
}
