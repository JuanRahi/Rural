using AutoMapper;
using Rural.Database.Model;
using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Business.Mapper
{
    public class DomainProfile:Profile
    {
        public DomainProfile()
        {
            CreateMap<Bovine, BovineDTO>();
        }
    }
}
