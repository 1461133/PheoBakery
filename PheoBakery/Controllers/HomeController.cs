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
                    return RedirectToAction("XemChiTiet","Admin");
                }
                else
                {
                    // nếu không phải là admin thì lưu tên đăng nhập của khách hàng vào
                    Session["user"] = thanhvien.USERNAME;
                    return RedirectToAction("Index", "Home");
                }

            }
            return Content("Incorrect Password or Username!!");
        }
        public ActionResult DangKy(KHACHHANG khachhang)
        {
            //if (Session["GioHang"] == null)
            //{
            //    return RedirectToAction("Index", "Home");
            //}
            KHACHHANG KH = new KHACHHANG();
            if (Session["user"] == null)
            {
                // thêm khách hàng đối với khách hàng vãng lai(chưa có tài khoản)
                KH = khachhang;
                db.KHACHHANGs.Add(KH);
                db.SaveChanges();
            }
            return View("ThongBaoThanhCong");
        }
    }
}