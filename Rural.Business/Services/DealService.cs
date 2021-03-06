﻿using AutoMapper;
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
        private IDapperRepository<BovineDealResult> BovineDealDapperRepository { get; set; }
        private readonly IMapper Mapper;

        public DealService(IRepository<Deal> deals, IDapperRepository<DealResult> dealsDapper, IDapperRepository<BovineDealResult> bovineDeals, IMapper mapper)
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

            string buySQL = @"SELECT 
                                BovineId, 
	                            [Status],
                                Number,
                                EntryDate,
                                Bovines.Category, 
                                [Count], 
                                TotalPriceAfterTax 
                            FROM
                                BovineDeals
                            INNER JOIN 
                                DealItems 
                            ON 
	                            BovineDeals.DealItemId = DealItems.Id
                            INNER JOIN 
	                            Bovines
                            ON
	                            BovineDeals.BovineId = Bovines.Id
                            WHERE 
                                BovineDeals.DealId = @DealId
                            ORDER BY
                                [Status] DESC";

            var buy = BovineDealDapperRepository.Query(buySQL, new { dealId });

            var bovines = buy.Select(x => x.BovineId).ToArray();

            var saleSQL = @"SELECT 
                                BovineId, 
                                SaleDate = Deals.Date,
                                [Count], 
                                TotalPriceAfterTax 
                            FROM
                                BovineDeals
                            INNER JOIN 
                                DealItems 
                            ON 
                                BovineDeals.DealItemId = DealItems.Id
                            INNER JOIN
                                Deals
                            ON 
                                DealItems.DealId = Deals.Id
                            
                            WHERE 
                                BovineDeals.DealId != @DealId
                            AND BovineDeals.BovineId IN @Bovines";

            var sale = BovineDealDapperRepository.Query(saleSQL, new { dealId, bovines }).ToDictionary(x => x.BovineId, y => y);

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
