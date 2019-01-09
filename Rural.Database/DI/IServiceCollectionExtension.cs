using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Rural.Database.DA;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.DI
{
    public static class IServiceCollectionExtension
    {
        public static IServiceCollection AddDatabaseConfiguration(this IServiceCollection services)
        {
            var connection = @"Server=localhost;Initial Catalog=Rural;Integrated Security=true;MultipleActiveResultSets=False;";
            services.AddDbContext<RuralDatabaseContext>
                (options => options.UseSqlServer(connection));

            return services;
        }
    }
}
