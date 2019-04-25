using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class DealRepository<DealResult> : DapperRepository<DealResult>, IDapperRepository<DealResult> where DealResult : class
    {
        public DealRepository(RuralDatabaseContext context) : base(context) { }

        public override IQueryable<DealResult> GetAll(object parameters)
        {
            var sql = @"SELECT 
                            Deals.Id,
                            [Date],
                            [Type],	   
                            Seller = Seller.Name,
                            Buyer = Buyer.Name,
                            TotalPrice = SUM(TotalPrice),
                            TotalPriceAfterTax = SUM(TotalPriceAfterTax)
                        FROM 
                            Deals
                        INNER JOIN 
                            Owners Seller
                        ON 
                            SellerId = Seller.Id
                        INNER JOIN 
                            Owners Buyer
                        ON 
                            BuyerId = Buyer.Id
                        INNER JOIN 
                            DealItems
                        ON 
                            Deals.Id = DealItems.DealId
                        WHERE
		                    SellerId = @Seller
	                    AND 
                            BuyerId  = @Buyer 
	                    AND 
                            [Date] BETWEEN @DateFrom AND @DateTo
                        GROUP BY
                            Deals.Id,
                            [Date],
                            [Type],	   
                            Seller.Name,
                            Buyer.Name";

            return base.Query(sql, parameters);
        }
    }
}
