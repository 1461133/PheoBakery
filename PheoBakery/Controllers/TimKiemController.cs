using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;
using PagedList;

namespace PheoBakery.Controllers
{
    public class TimKiemController : Controller
    {
        // GET: TimKiem
        TPBakeryEntities db = new TPBakeryEntities();
        [HttpGet]
        public ActionResult KQTimKiem(string sTuKhoa, int? page)
        {
            // tìm kiếm theo tên sản phẩm

            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 6;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);
            var lstSanPham = db.SANPHAMs.Where(n => n.TENSP.Contains(sTuKhoa));
            ViewBag.TuKhoa = sTuKhoa;
            return View(lstSanPham.OrderBy(n => n.TENSP).ToPagedList(PageNumber, Pagesize));

        }
        [HttpPost]
        public ActionResult LayTuKhoaTimKiem(string sTuKhoa)
        {
            // tìm kiếm theo tên sản phẩm

            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            //if (Request.HttpMethod != "GET")
            //{
            //    page = 1;
            //}
            //int Pagesize = 6;
            //// tạo biến số trang hiện tại
            //int PageNumber = (page ?? 1);
            //var lstSanPham = db.SanPhams.Where(n => n.TenSanPham.Contains(sTuKhoa));
            //ViewBag.TuKhoa = sTuKhoa;
            //return View(lstSanPham.OrderBy(n => n.TenSanPham).ToPagedList(PageNumber, Pagesize));
            // gọi hàm get tìm kiếm
            return RedirectToAction("KQTimKiem", new { @sTuKhoa = sTuKhoa });

        }
    }
}