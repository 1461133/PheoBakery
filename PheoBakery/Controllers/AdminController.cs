using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;

namespace PheoBakery.Controllers
{

    public class AdminController : Controller
    {
        // GET: Admin
        TPBakeryEntities db = new TPBakeryEntities();
        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult XemChiTiet()
        {
            return View(db.KHACHHANGs.OrderBy(n => n.MAKH));
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

    }
}