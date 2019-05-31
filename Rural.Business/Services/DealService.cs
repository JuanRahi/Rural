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
        private IDapperRepository<DealResult> DealDapperRepository { get; set; }
        private IBovineDealRepository<BovineDealResult> BovineDealDapperRepository { get; set; }
        private readonly IMapper Mapper;

        public DealService(IDapperRepository<DealResult> dealsDapper, IBovineDealRepository<BovineDealResult> bovineDeals, IMapper mapper)
        {
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
            var deal = DealDapperRepository.Get(id);
            return Mapper.Map<DealDTO>(deal);
        }

        public BuyDTO GetBuyProfit(int id)
        {
            var result = new BuyDTO();
            var bovinesProfit = new List<BuyProfitDTO>();

            var buy = BovineDealDapperRepository.GetDealBovines(id);
            var bovines = buy.Select(x => x.BovineId).ToArray();

            var sale = BovineDealDapperRepository.GetDealFromBovines(new { id, bovines }).ToDictionary(x => x.BovineId, y => y);

            foreach(var bovine in buy)
            {
                var buyPrice = bovine.TotalPriceAfterTax/bovine.Count;
                var saleData = sale.GetValueOrDefault(bovine.BovineId);
                var salePrice = saleData?.TotalPriceAfterTax/saleData?.Count ?? 0;

                bovinesProfit.Add(new BuyProfitDTO
                {
                    BovineId = bovine.BovineId,
                    Number = bovine.Number,
                    Status = bovine.Status.ToString(),
                    Category = bovine.Category.ToString(),
                    EntryDate = bovine.EntryDate.ToString("MM/dd/yyyy"),
                    SaleDate = saleData?.SaleDate.ToString("MM/dd/yyyy"),
                    YearsInField = saleData != null ? (int)(saleData.SaleDate - bovine.EntryDate).TotalDays / 365:
                        (int)(DateTime.Now.Date - bovine.EntryDate).TotalDays / 365,
                    MonthsInField = saleData != null ? (int)(saleData.SaleDate - bovine.EntryDate).TotalDays % 365 / 30 :
                        (int)(DateTime.Now.Date - bovine.EntryDate).TotalDays % 365 / 30,
                    BuyPrice = Math.Round(buyPrice, 2),
                    SalePrice = Math.Round(salePrice, 2),
                    Profit = bovine.Status != Status.Live ? Math.Round(salePrice - buyPrice, 2) : 0
                });                
            }

            result.Bovines = bovinesProfit.OrderByDescending(x => x.SaleDate).ThenBy(x => x.Status).ToArray();
            return result;
        }
        
    }
}
