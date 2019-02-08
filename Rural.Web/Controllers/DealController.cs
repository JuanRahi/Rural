using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Rural.Business.Interfaces;
using Rural.DTOs;

namespace Rural.Web.Controllers
{
    [ApiController]
    public class DealController : ControllerBase
    {
        IDealService DealService { get; set; }

        public DealController(IDealService dealService)
        {
            DealService = dealService;
        }

        [HttpGet("api/Deals")]
        public IEnumerable<DealDTO> Get()
        {
            return DealService.GetAll();
        }
    }
}