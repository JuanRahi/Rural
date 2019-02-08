using AutoMapper;
using Microsoft.EntityFrameworkCore;
using Rural.Business.Interfaces;
using Rural.Database.Model;
using Rural.DTOs;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Business.Services
{
    public class DealService: IDealService
    {
        private IRepository<Deal> Repository { get; set; }
        private readonly IMapper Mapper;

        public DealService(IRepository<Deal> repository, IMapper mapper)
        {
            Repository = repository;
            Mapper = mapper;
        }

        public IEnumerable<DealDTO> GetAll()
        {
            var deals = Repository.GetAll().Include(x => x.Buyer).Include(x => x.Seller).Include(x => x.Items).ToArray();
            return Mapper.Map<DealDTO[]>(deals);
        }

    }
}
