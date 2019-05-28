using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class BovineDealRepository<BovineDealResult> : DapperRepository<BovineDealResult>, IBovineDealRepository<BovineDealResult> where BovineDealResult : class
    {
        public BovineDealRepository(RuralDatabaseContext context) : base(context) { }

        public override BovineDealResult Get(int id)
        {
            throw new NotImplementedException();
        }

        public override IQueryable<BovineDealResult> GetAll(object parameters)
        {
            throw new NotImplementedException();
        }

        public IQueryable<BovineDealResult> GetBuy(int id)
        {
            var sql = @"SELECT 
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
                            BovineDeals.DealId = @Id
                        ORDER BY
                            [Status] DESC";

            return base.Query(sql, new { id });
        }

        public IQueryable<BovineDealResult> GetSales(object parameters)
        {
            var sql = @"SELECT 
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
                            BovineDeals.DealId != @Id
                        AND BovineDeals.BovineId IN @Bovines";

            return base.Query(sql, parameters);
        }
    }
}
