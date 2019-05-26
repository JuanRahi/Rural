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

        public override DealResult Get(int id)
        {
            var sql = @"SELECT
                            Deals.Id,
                            [Date],
                            [Type],	   
                            Seller = Seller.Name,
                            Buyer = Buyer.Name,
	                        Category,
	                        [Count],
	                        KgPrice,
	                        Kgs,
                            TotalPrice = TotalPrice,
                            TotalPriceAfterTax = TotalPriceAfterTax
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
                        WHERE DealId = @Id
                        ORDER BY Category DESC";

            return Query(sql, new { id }).FirstOrDefault();

        }

    public override IQueryable<DealResult> GetAll(object parameters)
        {
            var sql = @"SELECT 
                            Deals.Id,
                            [Date],
                            [Type],	   
                            Seller = Seller.Name,
                            Buyer = Buyer.Name,
                            [Count] = SUM(Count),
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
		                    SellerId IN @Sellers
	                    AND 
                            BuyerId  IN @Buyers
	                    AND 
                            [Date] BETWEEN @DateFrom AND @DateTo
                        GROUP BY
                            Deals.Id,
                            [Date],
                            [Type],	   
                            Seller.Name,
                            Buyer.Name
                        ORDER BY [Date] DESC";

            return base.Query(sql, parameters);
        }
    }
}
