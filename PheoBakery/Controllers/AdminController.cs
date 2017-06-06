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
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult XemChiTiet()
        {
            return View(db.KHACHHANGs.OrderBy(n => n.MAKH));
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