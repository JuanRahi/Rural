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
    public class EnumController : ControllerBase
    {
        private IEnumService EnumService { get; set;}

        public EnumController(IEnumService service)
        {
            EnumService = service;                
        }

        [HttpGet("api/Sex")]
        public IEnumerable<SexDTO> GetSex()
        {
            return EnumService.GetSex();
        }

        [HttpGet("api/Status")]
        public IEnumerable<StatusDTO> GetStatus()
        {
            return EnumService.GetStatus();
        }

    }
}