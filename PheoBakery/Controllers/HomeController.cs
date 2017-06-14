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
       
        public ActionResult DangKy(TAIKHOAN taikhoan)
        {
            // thêm tài khoản
            TAIKHOAN tk = new TAIKHOAN();
            tk.USERNAME = taikhoan.USERNAME;
            tk.PASSWORD = taikhoan.PASSWORD;
            db.TAIKHOANs.Add(tk);
            db.SaveChanges();
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
                    // nếu không phải là admin thì lưu tên đăng nhập của khách hàng vào session user
                    Session["user"] = thanhvien.USERNAME;
                    return RedirectToAction("Index", "Home");
                }

            }
            return Content("Incorrect Password or Username!!");
        }
        
    }
}