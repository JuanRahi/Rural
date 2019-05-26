using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Interfaces
{
    public interface IDapperRepository<T> where T : class
    {
        IQueryable<T> Query(string sql, object parameters);
        IQueryable<T> GetAll(object parameters);
        T Get(int id);
    }
}
