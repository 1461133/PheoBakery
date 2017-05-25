using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PheoBakery.Controllers
{
    [ChildActionOnly]
    public class MyComponentController : Controller
    {
        public PartialViewResult Menu()
        {
            return PartialView();
        }
        public PartialViewResult KeepIntouch()
        {
            return PartialView();
        }
    }
}