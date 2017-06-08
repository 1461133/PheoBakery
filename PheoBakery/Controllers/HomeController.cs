using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;
using System.Data.SqlClient;
using System.Net.Mail;

namespace PheoBakery.Controllers
{
    public class HomeController : Controller
    {
        TPBakeryEntities db = new TPBakeryEntities();
        public ActionResult Index()
        {
            //tạo ra các Viewbag để load ra sản phẩm
            // tạo list đồng hồ mới
            var lstQAM = db.SANPHAMs.Where(n => n.MALOAI == 1 && n.XOA == false).ToList().OrderBy(n => n.DONGIA);
            //gán vào viewbang
            ViewBag.lstQAM = lstQAM;
            // list trang sức mới
            var lstMPM = db.SANPHAMs.Where(n => n.MALOAI == 2 && n.XOA == false).ToList().OrderBy(n => n.DONGIA);
            //gán vào viewbang
            ViewBag.lstMPM = lstMPM;
            // list trang sức mới
            var lstPKM = db.SANPHAMs.Where(n => n.MALOAI == 3 && n.XOA == false).ToList().OrderBy(n => n.DONGIA);
            //gán vào viewbang
            ViewBag.lstPKM = lstPKM;
            return View();
        }
        public ActionResult MenuPartial()
        {
            // truy vấn list sản phẩm
            var lstSanPham = db.SANPHAMs;
            return PartialView(lstSanPham);
        }
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LoginAdmin(FormCollection collection)
        {
            string TaiKhoan = collection["txtUser"].ToString();
            string MatKhau = collection["txtPass"].ToString();
            TAIKHOAN thanhvien = db.TAIKHOANs.SingleOrDefault(n => n.USERNAME == TaiKhoan && n.PASSWORD == MatKhau);
            if (thanhvien != null)
            {
                if (thanhvien.USERNAME == "admin")
                {
                    Session["user"] = thanhvien;
                    return RedirectToAction("XemChiTiet");
                }
                else
                {
                    Session["user"] = thanhvien;
                    return RedirectToAction("XemChiTiet");
                }

            }
            return Content("Tài khoản hoặc mật khẩu không đúng!");
        }
    }
}