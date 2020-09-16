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

        public ProfitDTO GetBuyProfit(int id)
        {
            var result = new ProfitDTO();
            var bovinesProfit = new List<BovineProfitDTO>();

            var buy = BovineDealDapperRepository.GetDealBovines(id);
            var bovines = buy.Select(x => x.BovineId).ToArray();

            var sale = BovineDealDapperRepository.GetDealFromBovines(new { id, bovines }).ToDictionary(x => x.BovineId, y => y);

            var status = new DealStatusDTO();
            var money = new DealProfitDTO();

            foreach (var bovine in buy)
            {
                var buyPrice = bovine.TotalPriceAfterTax/bovine.Count;
                var saleData = sale.GetValueOrDefault(bovine.BovineId);
                var salePrice = saleData?.TotalPriceAfterTax/saleData?.Count ?? 0;

                bovinesProfit.Add(new BovineProfitDTO
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
                    Profit = bovine.Status != Status.Live ? Math.Round(salePrice - buyPrice, 2) : 0,
                    ProfitPercentage = bovine.Status != Status.Live ? Math.Round(((salePrice - buyPrice) / buyPrice) * 100, 2) : 0
                });

                status.Live += (bovine.Status == Status.Live) ? 1 : 0;
                status.Shipped += (bovine.Status == Status.Shipped) ? 1 : 0;
                status.Dead += (bovine.Status == Status.Dead) ? 1 : 0;

            }


            money.Investment = Math.Round(bovinesProfit.Sum(x => x.BuyPrice), 2);
            money.Income = Math.Round(bovinesProfit.Sum(x => x.SalePrice), 2);
            money.Balance = Math.Round(money.Income - money.Investment, 2);
            money.ProfitPerUnit = Math.Round(money.Income / sale.Count(), 2);
            money.ProfitPercentage = Math.Round(((money.Income - money.Investment) / money.Investment) * 100, 2) - 100;

            result.Bovines = bovinesProfit.OrderByDescending(x => x.SaleDate).ThenBy(x => x.Status).ToArray();
            result.Status = status;
            result.Deal = money;

            return result;
        }

        public ProfitDTO GetSaleProfit(int id)
        {
            var result = new ProfitDTO();
            var bovinesProfit = new List<BovineProfitDTO>();

            var sale = BovineDealDapperRepository.GetDealBovines(id);
            var bovines = sale.Select(x => x.BovineId).ToArray();

            var buys = BovineDealDapperRepository.GetDealFromBovines(new { id, bovines }).ToDictionary(x => x.BovineId, y => y);

            var status = new DealStatusDTO();
            var money = new DealProfitDTO();

            foreach (var bovine in sale)
            {
                var salePrice = bovine.TotalPriceAfterTax / bovine.Count;
                var buyData = buys.GetValueOrDefault(bovine.BovineId);
                var buyPrice = buyData?.TotalPriceAfterTax / buyData?.Count ?? 0;

                bovinesProfit.Add(new BovineProfitDTO
                {
                    BovineId = bovine.BovineId,
                    Number = bovine.Number,
                    Status = bovine.Status.ToString(),
                    Category = bovine.Category.ToString(),
                    EntryDate = bovine.EntryDate.ToString("MM/dd/yyyy"),
                    SaleDate = bovine.SaleDate.ToString("MM/dd/yyyy"),
                    YearsInField = (int)(bovine.SaleDate - bovine.EntryDate).TotalDays / 365,
                    MonthsInField = (int)(bovine.SaleDate - bovine.EntryDate).TotalDays % 365 / 30,
                    BuyPrice = Math.Round(buyPrice, 2),
                    SalePrice = Math.Round(salePrice, 2),
                    Profit = Math.Round(salePrice - buyPrice, 2),
                    ProfitPercentage = bovine.Status != Status.Live ? Math.Round(((salePrice - buyPrice) / buyPrice) * 100, 2) : 0
                });

                status.Shipped ++;
            }

            money.Investment = Math.Round(bovinesProfit.Sum(x => x.BuyPrice), 2);
            money.Income = Math.Round(bovinesProfit.Sum(x => x.SalePrice), 2);
            money.Balance = Math.Round(money.Income - money.Investment, 2);
            money.ProfitPerUnit = Math.Round(money.Income / sale.Count(), 2);
            money.ProfitPercentage = Math.Round(((money.Income - money.Investment) / money.Investment) * 100, 2) - 100;

            result.Bovines = bovinesProfit.OrderBy(x => x.YearsInField).ThenBy(x => x.MonthsInField).ToArray();
            result.Status = status;
            result.Deal = money;
            
            return result; 
        }

    }
}
