using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class BovineDealRepository<BovineDealResult> : DapperRepository<BovineDealResult>, IDapperRepository<BovineDealResult> where BovineDealResult : class
    {
        public BovineDealRepository(RuralDatabaseContext context) : base(context) { }

        public override IQueryable<BovineDealResult> GetAll(object parameters)
        {
            var sql = @"";

            return base.Query(sql, parameters);
        }
    }
}
