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
        private IDapperRepository<DealResult> DealDapperRepository { get; set; }
        private IBovineDealRepository<BovineDealResult> BovineDealDapperRepository { get; set; }
        private readonly IMapper Mapper;

        public DealService(IRepository<Deal> deals, IDapperRepository<DealResult> dealsDapper, IBovineDealRepository<BovineDealResult> bovineDeals, IMapper mapper)
        {
            DealRepository = deals;
            DealDapperRepository = dealsDapper;
            BovineDealDapperRepository = bovineDeals;
            Mapper = mapper;
        }

        public IEnumerable<DealDTO> GetAll(DealsFilterDTO filters)
        {
            var deals = DealDapperRepository.GetAll(filters).ToArray();
            return Mapper.Map<DealDTO[]>(deals);
        }

        public DealDTO Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<BuyProfitDTO> GetBuyProfit(int dealId)
        {
            var result = new List<BuyProfitDTO>();

            var buy = BovineDealDapperRepository.GetBuy(dealId);
            var bovines = buy.Select(x => x.BovineId).ToArray();

            var sale = BovineDealDapperRepository.GetSales(new { dealId, bovines }).ToDictionary(x => x.BovineId, y => y);

            foreach(var bovine in buy)
            {
                var buyPrice = bovine.TotalPriceAfterTax/bovine.Count;
                var saleData = sale.GetValueOrDefault(bovine.BovineId);
                var salePrice = saleData?.TotalPriceAfterTax/saleData?.Count ?? 0;

                result.Add(new BuyProfitDTO
                {
                    BovineId = bovine.BovineId,
                    Number = bovine.Number,
                    Status = bovine.Status,
                    Category = bovine.Category,
                    EntryDate = bovine.EntryDate,
                    SaleDate = saleData?.SaleDate,
                    Profit = bovine.Status != Status.Live ? Math.Round(salePrice - buyPrice, 2) : 0
                });                
            }
            return result;
        }
    }
}
