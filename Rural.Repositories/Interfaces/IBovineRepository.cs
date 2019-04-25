using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Interfaces
{
    public interface IBovineRepository<BovineResult>: IDapperRepository<BovineResult> where BovineResult : class
    {
        IQueryable<BovineResult> GetAll(object parameters);
    }
}
