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
                .ForMember(dto => dto.Sex, e => e.MapFrom(b => b.Sex.ToString()))
                .ForMember(dto => dto.Status, e => e.MapFrom(b => b.Status.ToString()))
                .ForMember(dto => dto.Category, e => e.MapFrom(b => b.Category.ToString()))
                .ForMember(dto => dto.Years, e => e.MapFrom(b => b.Age / 12))
                .ForMember(dto => dto.Months, e => e.MapFrom(b => b.Age % 12))
                .ForMember(dto => dto.EntryDate, e => e.MapFrom(b => b.EntryDate.ToString("MM/dd/yyyy")));

            CreateMap<Deal, DealDTO>()
                .ForMember(dto => dto.Buyer, e => e.MapFrom(b => b.Buyer.Name))
                .ForMember(dto => dto.Seller, e => e.MapFrom(b => b.Seller.Name))
                .ForMember(dto => dto.Date, e => e.MapFrom(b => b.Date.ToString("MM/dd/yyyy")))
                .ForMember(dto => dto.TotalPrice, e => e.MapFrom(b => b.Items.Sum(x => x.TotalPrice * x.Count)));

            CreateMap<DealItem, DealItemDTO>()
                .ForMember(dto => dto.Category, e => e.MapFrom(b => b.Category.ToString()));

            CreateMap<Owner, OwnerDTO>()
                .ForMember(dto => dto.Value, e => e.MapFrom(b => b.Id))
                .ForMember(dto => dto.Label, e => e.MapFrom(b => $"{b.Name} ({b.Number})"));
        }   
    }
}
