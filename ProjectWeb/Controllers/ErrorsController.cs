using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ProjectWeb.Controllers
{
    public class ErrorsController : Controller
    {
        public IActionResult Errors404()
        {
            return View();
        }
        public IActionResult Errors500()
        {
            return View();
        }
    }
}