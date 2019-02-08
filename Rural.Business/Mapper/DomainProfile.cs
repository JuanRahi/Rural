using AutoMapper;
using Rural.Database.Model;
using Rural.DTOs;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

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

            CreateMap<Deal, DealDTO>()
                .ForMember(dto => dto.Buyer, e => e.MapFrom(b => b.Buyer.Name))
                .ForMember(dto => dto.Seller, e => e.MapFrom(b => b.Seller.Name))
                .ForMember(dto => dto.TotalPrice, e => e.MapFrom(b => b.Items.Sum(x => x.TotalPrice * x.Count)));

            CreateMap<DealItem, DealItemDTO>()
                .ForMember(dto => dto.Category, e => e.MapFrom(b => b.Category.ToString()));
        }
    }
}
