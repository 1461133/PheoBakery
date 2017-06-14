using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;

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
        public string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hashBytes = md5.ComputeHash(inputBytes);

            // Convert the byte array to hexadecimal string
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                sb.Append(hashBytes[i].ToString("X2"));
            }
            return sb.ToString();
        }
        [HttpPost]
        public ActionResult DangKy(TAIKHOAN taikhoan)
        {
            // thêm tài khoản
            TAIKHOAN tk = new TAIKHOAN();
            tk.USERNAME = taikhoan.USERNAME;
            tk.PASSWORD = CreateMD5( taikhoan.PASSWORD);
            db.TAIKHOANs.Add(tk);
            db.SaveChanges();
            return View();
        }
        [HttpPost]
        public ActionResult LoginAdmin(FormCollection collection)
        {
            string TaiKhoan = collection["txtUser"].ToString();
            string MatKhau = CreateMD5(collection["txtPass"].ToString());
            TAIKHOAN thanhvien = db.TAIKHOANs.SingleOrDefault(n => n.USERNAME == TaiKhoan && n.PASSWORD == MatKhau);
            if (thanhvien != null)
            {
                if (thanhvien.USERNAME == "admin"||thanhvien.USERNAME == "Admin" || thanhvien.USERNAME == "ADMIN")
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
         public ActionResult Logout ()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        
    }
}