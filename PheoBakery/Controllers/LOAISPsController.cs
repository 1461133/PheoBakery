using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;

namespace PheoBakery.Controllers
{
    public class LOAISPsController : Controller
    {
        TPBakeryEntities db = new TPBakeryEntities();

        // GET: LOAISPs
        public ActionResult Index()
        {
            return View(db.LOAISPs.OrderBy(n => n.MALOAI));
        }
        [HttpGet]
        public ActionResult TaoMoi()
        {
            return View();
        }
        [HttpPost]
        public ActionResult TaoMoi(LOAISP loaisanpham)
        {
            db.LOAISPs.Add(loaisanpham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult ChinhSua(int MALOAI)
        {
            if (MALOAI == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            LOAISP nsx = db.LOAISPs.SingleOrDefault(n => n.MALOAI == MALOAI);
            if (nsx == null)
            {
                return HttpNotFound();
            }
            return View(nsx);
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult ChinhSua(LOAISP loaisanpham)
        {
            db.LOAISPs.Add(loaisanpham);
            db.Entry(loaisanpham).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Xoa(int? MALOAI)
        {
            if (MALOAI == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            LOAISP nsx = db.LOAISPs.SingleOrDefault(n => n.MALOAI == MALOAI);
            if (nsx == null)
            {
                return HttpNotFound();
            }
            return View(nsx);
        }
        [HttpPost]
        public ActionResult Xoa(int MALOAI)
        {
            if (MALOAI == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LOAISP nsx = db.LOAISPs.SingleOrDefault(n => n.MALOAI == MALOAI);
            if (nsx == null)
            {
                return HttpNotFound();
            }
            db.LOAISPs.Remove(nsx);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}