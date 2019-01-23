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
            CreateMap<Bovine, BovineDTO>()
                .ForMember(dto => dto.OwnerName, e => e.MapFrom(b => b.Owner.Name))
                .ForMember(dto => dto.OwnerNumber, e => e.MapFrom(b => b.Owner.Number))
                .ForMember(dto => dto.Category, e => e.MapFrom(b => b.Category.ToString()))
                .ForMember(dto => dto.Years, e => e.MapFrom(b => b.Age / 12))
                .ForMember(dto => dto.Months, e => e.MapFrom(b => b.Age % 12));

        }
    }
}
