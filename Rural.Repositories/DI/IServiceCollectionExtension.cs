using Microsoft.Extensions.DependencyInjection;
using Rural.Database.Model;
using Rural.Repositories.Interfaces;
using Rural.Repositories.Repositories;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Repositories.DI
{
    public static class IServiceCollectionExtension
    {
        public static IServiceCollection AddRepositoriesConfiguration(this IServiceCollection services)
        {
            services.AddTransient<IRepository<Bovine>, Repository<Bovine>>();
            services.AddTransient<IRepository<Owner>, Repository<Owner>>();
            return services;
        }
    }
}

