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
        [HttpGet]
        public ActionResult KQTimKiemLoaiSP(string sTuKhoa, int? page)
        {
            // tìm kiếm theo tên loại sản phẩm

            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 6;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);
            var lstLoaiSanPham = db.LOAISPs.Where(n => n.TENLOAI.Contains(sTuKhoa));
            ViewBag.TuKhoa = sTuKhoa;
            return View(lstLoaiSanPham.OrderBy(n => n.TENLOAI).ToPagedList(PageNumber, Pagesize));

        }
        [HttpGet]
        public ActionResult KQTimKiemKhachHang(string sTuKhoa, int? page)
        {
            // tìm kiếm theo tên khách hàng

            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 6;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);
            var lstKhachHang = db.KHACHHANGs.Where(n => n.TENKH.Contains(sTuKhoa));
            ViewBag.TuKhoa = sTuKhoa;
            return View(lstKhachHang.OrderBy(n => n.TENKH).ToPagedList(PageNumber, Pagesize));

        }
        [HttpPost]
        public ActionResult LayTuKhoaTimKiem(string sTuKhoa)
        {
            
            // gọi hàm get tìm kiếm
            return RedirectToAction("KQTimKiem", new { @sTuKhoa = sTuKhoa });

        }
        [HttpPost]
        public ActionResult LayTuKhoaTimKiemLoaiSP(string sTuKhoa)
        {

            // gọi hàm get tìm kiếm
            return RedirectToAction("KQTimKiemLoaiSP", new { @sTuKhoa = sTuKhoa });

        }
        [HttpPost]
        public ActionResult LayTuKhoaTimKiemKhachHang(string sTuKhoa)
        {

            // gọi hàm get tìm kiếm
            return RedirectToAction("KQTimKiemKhachHang", new { @sTuKhoa = sTuKhoa });

        }
       
    }
}