﻿using Microsoft.Extensions.DependencyInjection;
using Rural.Database.Model;
using Rural.Database.Results;
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
            services.AddTransient<IRepository<Location>, Repository<Location>>();
            services.AddTransient<IRepository<Deal>, Repository<Deal>>();
            services.AddTransient<IRepository<DealItem>, Repository<DealItem>>();            
            services.AddTransient<IDapperRepository<BovineResult>, BovineRepository<BovineResult>>();
            services.AddTransient<IDapperRepository<DealResult>, DealRepository<DealResult>>();
            services.AddTransient<IDapperRepository<BovineDealResult>, BovineDealRepository<BovineDealResult>>();
            return services;
        }
    }
}

