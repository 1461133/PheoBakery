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
    public class DONDATHANGsController : Controller
    {
        private TPBakeryEntities db = new TPBakeryEntities();

        // GET: /QuanLyDonHang/
        public ActionResult ChuaThanhToan()
        {

            // lấy danh sách đơn hàng chưa duyệt
            var lstDonHang = db.DONDATHANGs.Where(n => n.THANHTOAN == false).OrderBy(n => n.NGAYDAT);
            return View(lstDonHang);
        }
        public ActionResult ChuaGiao()
        {
            // lấy danh sách đơn hàng chưa giao
            var lstChuaGiao = db.DONDATHANGs.Where(n => n.GIAOHANG == false).OrderBy(n => n.NGAYGIAO);
            return View(lstChuaGiao);
        }
        public ActionResult DaGiaoDaThanhToan()
        {
            var lstDaGiaoDaThanhToan = db.DONDATHANGs.Where(n => n.GIAOHANG == true && n.THANHTOAN == true);
            return View(lstDaGiaoDaThanhToan);
        }
        [HttpGet]
        public ActionResult DuyetDonHang(int? Id)
        {
            if (Id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DONDATHANG model = db.DONDATHANGs.SingleOrDefault(n => n.MADONDH == Id);
            if (model == null)
            {
                return HttpNotFound();
            }
            //lấy danh sách chi tiết
            var lstChiTietDH = db.CTDDHs.Where(n => n.MADONDH == Id);
            ViewBag.ListChiTietDH = lstChiTietDH;

            return View(model);
        }
        [HttpPost]
        public ActionResult DuyetDonHang(DONDATHANG ddh)
        {
            //truy vấn cơ sở dử liệu
            DONDATHANG ddhUpdate = db.DONDATHANGs.SingleOrDefault(n => n.MADONDH == ddh.MADONDH);
            ddhUpdate.THANHTOAN = ddh.THANHTOAN;
            ddhUpdate.GIAOHANG = ddh.GIAOHANG;
            ddhUpdate.NGAYGIAO = ddh.NGAYGIAO;
            db.SaveChanges();
            //lấy danh sách chi tiết đơn đăt hàng để hiển thị cho ng dùng
            var lstChiTietDH = db.CTDDHs.Where(n => n.MADONDH == ddh.MADONDH);
            ViewBag.ListChiTietDH = lstChiTietDH;
            return View(ddhUpdate);
        }

        /* public void GuiEmail(string Title, string ToEmail, string FromEmail, string PassWord, string Content)
         {
             // goi email
             MailMessage mail = new MailMessage();
             mail.To.Add(ToEmail); // Địa chỉ nhận
             mail.From = new MailAddress(ToEmail); // Địa chửi gửi
             mail.Subject = Title;  // tiêu đề gửi
             mail.Body = Content;                 // Nội dung
             mail.IsBodyHtml = true;
             SmtpClient smtp = new SmtpClient();
             smtp.Host = "smtp.gmail.com"; // host gửi của Gmail
             smtp.Port = 587;               //port của Gmail
             smtp.UseDefaultCredentials = false;
             smtp.Credentials = new System.Net.NetworkCredential
             (FromEmail, PassWord);//Tài khoản password người gửi
             smtp.EnableSsl = true;   //kích hoạt giao tiếp an toàn SSL
             smtp.Send(mail);   //Gửi mail đi
         } */

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (db != null)
                    db.Dispose();
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
