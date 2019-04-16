using Dapper;
using Microsoft.EntityFrameworkCore;
using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class DapperRepository<T> : IDapperRepository<T> where T : class
    {
        private RuralDatabaseContext context { get; set; }

        public DapperRepository(RuralDatabaseContext context)
        {
            this.context = context;
        }

        public IQueryable<T> Query(string sql, object parameters)
        {
            return context.Database.GetDbConnection().Query<T>
                (sql, parameters, null, true, null, System.Data.CommandType.Text).AsQueryable<T>();
        }
    }
}
