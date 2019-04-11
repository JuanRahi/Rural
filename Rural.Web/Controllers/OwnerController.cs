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
    public class OwnerController : ControllerBase
    {
        private IOwnerService OwnerService { get; set; }

        public OwnerController(IOwnerService service)
        {
            OwnerService = service;
        }

        [HttpGet("api/Owners")]
        public IEnumerable<OwnerDTO> Get()
        {
            return OwnerService.GetAll();
        }

    }
}