using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Rural.Business.Interfaces;
using Rural.DTOs;

namespace Rural.Web.Controllers
{
    public class BovineController : Controller
    {
        private IBovineService BovineService { get; set; }

        public BovineController(IBovineService service)
        {
            BovineService = service;
        }

        [HttpGet("api/Bovines")]
        public IEnumerable<BovineDTO>GetAll()
        {
            return BovineService.GetAll();
        }

        [HttpGet("api/Bovines/{id}")]
        public BovineDTO Get(int id)
        {
            return BovineService.Get(id);
        }
    }
}