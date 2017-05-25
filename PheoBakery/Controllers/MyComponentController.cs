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
        public PartialViewResult Footer()
        {
            return PartialView();
        }
        public PartialViewResult InforCake()
        {
            return PartialView();
        }
        public PartialViewResult Infor()
        {
            return PartialView();
        }
        public PartialViewResult NewCake()
        {
            return PartialView();
        }
        public PartialViewResult Slider()
        {
            return PartialView();
        }
        public PartialViewResult SpecialCake()
        {
            return PartialView();
        }
        public PartialViewResult SearchBar()
        {
            return PartialView();
        }
    }
}