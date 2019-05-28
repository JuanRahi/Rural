using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Interfaces
{
    public interface IBovineDealRepository<T>: IDapperRepository<T> where T : class
    {
        IQueryable<T> GetBuy(int id);
        IQueryable<T> GetSales(object parameters);
    }
}
