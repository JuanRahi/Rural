using AutoMapper;
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
    public class OwnerService: IOwnerService
    {
        private IRepository<Owner> Repository { get; set; }
        private readonly IMapper Mapper;

        public OwnerService(IRepository<Owner> repository, IMapper mapper)
        {
            Repository = repository;
            Mapper = mapper;
        }

        public IEnumerable<OwnerDTO> GetAll()
        {
            var owners = Repository.GetAll().ToArray();
            return Mapper.Map<OwnerDTO[]>(owners);
        }
    }
}
