﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SPM_Project.ApiControllers
{
    public class Courses : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
