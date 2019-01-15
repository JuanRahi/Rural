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
    public class BovineService: IBovineService
    {
        private IRepository<Bovine> Repository { get; set; }
        private readonly IMapper Mapper;

        public BovineService(IRepository<Bovine> repository, IMapper mapper)
        {
            Repository = repository;
            Mapper = mapper;
        }

        public IEnumerable<BovineDTO> GetAll()
        {
            var bovines = Repository.GetAll().Include(x => x.Owner).ToArray();
            return Mapper.Map<BovineDTO[]>(bovines);
        }

        public BovineDTO Get(int id)
        {
            var bovine = Repository.Get(x => x.Id == id);
            return Mapper.Map<BovineDTO>(bovine);
        }
    }
}
