using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;
using PagedList;

namespace PheoBakery.Controllers
{
    public class SANPHAMsController : Controller
    {
        private TPBakeryEntities db = new TPBakeryEntities();

        // GET: SANPHAMs
        public ActionResult Index()
        {
            //var sANPHAMs = db.SANPHAMs.Include(s => s.LOAISP);
            //return View(sANPHAMs.ToList());
            return View(db.SANPHAMs.Where(n => n.XOA == false).OrderByDescending(n => n.MASP));
        }
       

        // GET: SANPHAMs/Details/5
        //public ActionResult Details(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    SANPHAM sANPHAM = db.SANPHAMs.Find(id);
        //    if (sANPHAM == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(sANPHAM);
        //}

        // GET: SANPHAMs/Create
        
        [HttpGet]
        public ActionResult TaoMoiSanPham()
        {
            //load dropdownlist nhà cung cấp, loại sản phẩm, nhà sản xuất
            ViewBag.MALOAI = new SelectList(db.LOAISPs.OrderBy(n => n.MALOAI), "MALOAI", "TENLOAI");

            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult TaoMoiSanPham(SANPHAM sanpham, HttpPostedFileBase[] HINHANH)
        {
            //load dropdownlist nhà cung cấp, loại sản phẩm, nhà sản xuất
            ViewBag.MALOAI = new SelectList(db.LOAISPs.OrderBy(n => n.MALOAI), "MALOAI", "TENLOAI");
            //Nếu thư mục chứa hình ảnh đó rồi thì xuất ra thông báo
            db.SANPHAMs.Add(sanpham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult ChinhSuaSanPham(int? MASP)
        {
            // lấy sản phẩm cần chỉnh dựa vào id
            if (MASP == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                return HttpNotFound();
            }

            //load dropdownlist nhà cung cấp, loại sản phẩm, nhà sản xuất
            ViewBag.MALOAI = new SelectList(db.LOAISPs.OrderBy(n => n.MALOAI), "MALOAI", "TENLOAI", sanpham.MALOAI);

            return View(sanpham);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult ChinhSuaSanPham(SANPHAM model)
        {

            ViewBag.MALOAI = new SelectList(db.LOAISPs.OrderBy(n => n.MALOAI), "MALOAI", "TENLOAI", model.MALOAI);
            // nếu dử liệu đầu vào ok
            db.Entry(model).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult XoaSanPham(int? MASP)
        {
            // lấy sản phẩm cần chỉnh dựa vào id
            if (MASP == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                return HttpNotFound();
            }

            //load dropdownlist nhà cung cấp, loại sản phẩm, nhà sản xuất
            ViewBag.MALOAI = new SelectList(db.LOAISPs.OrderBy(n => n.MALOAI), "MALOAI", "TENLOAI", sanpham.MALOAI);

            return View(sanpham);
        }
        [HttpPost]
        public ActionResult XoaSanPham(int MASP)
        {
            if (MASP == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MALOAI == MASP);
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            db.SANPHAMs.Remove(sanpham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //[ChildActionOnly]
        //public ActionResult SanPhamStyle1Partial()
        //{
        //    return PartialView();
        //}
        //[ChildActionOnly]
        //public ActionResult SanPhamStyle2Partial()
        //{
        //    return PartialView();
        //}
        public ActionResult XemChiTiet(int? MASP, string TENSP)
        {
            // kiểm tra tham số truyền vào có rổng hay không
            if (MASP == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP && n.XOA == false);
            // kiểm tra id sản phẩm truyền  vào
            if (sanpham == null)
            {
                // thông báo ko tìm thấy
                return HttpNotFound();
            }
            return View(sanpham);
        }
        // xây dựng aciton load sản phẩm theo mã  sản phẩm 
        public ActionResult SanPham(int? MALOAI, int? page)
        {

            if (MALOAI == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            // load sản phẩm dựa vào loại sản phẩm và nhà sản xuất trong bảng sản phẩm
            var lstSanPham = db.SANPHAMs.Where(n => n.MALOAI == MALOAI);
            if (lstSanPham.Count() == 0)
            {
                // thông báo ko tìm thấy
                return HttpNotFound();
            }
            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 9;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);
            ViewBag.MALOAI = MALOAI;
            return View(lstSanPham.OrderBy(n => n.MASP).ToPagedList(PageNumber, Pagesize));


        }
        public ActionResult TrangSanPham(int? MALOAI, int? page)
        {

            if (MALOAI == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            // load sản phẩm dựa vào loại sản phẩm và nhà sản xuất trong bảng sản phẩm
            var lstSanPham = db.SANPHAMs.Where(n => n.MALOAI == MALOAI);
            if (lstSanPham.Count() == 0)
            {
                // thông báo ko tìm thấy
                return HttpNotFound();
            }
            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 9;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);
            ViewBag.MALOAI = MALOAI;
            return View(lstSanPham.OrderBy(n => n.MASP).ToPagedList(PageNumber, Pagesize));
        }
    }
}
