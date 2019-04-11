using AutoMapper;
using Microsoft.Extensions.DependencyInjection;
using Rural.Business.Interfaces;
using Rural.Business.Services;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.DI
{
    public static class IServiceCollectionExtension
    {
        public static IServiceCollection AddServicesConfiguration(this IServiceCollection services)
        {
            services.AddAutoMapper();
            services.AddTransient<IBovineService, BovineService>();
            services.AddTransient<IDealService, DealService>();
            services.AddTransient<IOwnerService, OwnerService>();
            services.AddTransient<IEnumService, EnumService>();
            return services;
        }
    }
}
