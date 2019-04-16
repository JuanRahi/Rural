using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Rural.Business.Interfaces;
using Rural.Database.Model;
using Rural.Database.Results;
using Rural.DTOs;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using static Rural.Utils.EnumHelper;

namespace Rural.Business.Services
{
    public class DealService: IDealService
    {
        private IRepository<Deal> DealRepository { get; set; }
        private IDapperRepository<BovineDealResult> DealDapperRepository { get; set; }
        private readonly IMapper Mapper;

        public DealService(IRepository<Deal> deals, IDapperRepository<BovineDealResult> dealsDapper, IMapper mapper)
        {
            DealRepository = deals;
            DealDapperRepository = dealsDapper;          
            Mapper = mapper;
        }

        public IEnumerable<DealDTO> GetAll(DealsFilterDTO filters)
        {
            var deals = DealRepository.GetAll
                    (x => x.SellerId == filters.Seller 
                    && x.BuyerId == filters.Buyer
                    && x.Date >= filters.DateFrom 
                    && x.Date <= filters.DateTo)
                .Include(x => x.Buyer)
                .Include(x => x.Seller)
                .Include(x => x.Items).ToArray();

            return Mapper.Map<DealDTO[]>(deals);
        }

        public DealDTO Get(int id)
        {
            throw new NotImplementedException();
        }

        public DealDTO GetBuyProfit(int dealId, int buyerId)
        {
            string sql = @"SELECT 
                            BovineId, 
                            Category, 
                            [Count], 
                            TotalPriceAfterTax 
                        FROM
                            BovineDeals
                        INNER JOIN 
                            DealItems 
                        ON 
                            BovineDeals.DealId = DealItems.DealId
                        WHERE 
                            BovineDeals.DealId = @DealId";

            var deals = DealDapperRepository.Query(sql, new { dealId });
            return null;

        }
    }
}
