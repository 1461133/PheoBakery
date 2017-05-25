using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;

namespace PheoBakery.Controllers
{
    public class QuanLyNhapHangController : Controller
    {
        TPBakeryEntities db = new TPBakeryEntities();
        // GET: /QuanLyNhapHang/
        [HttpGet]
        public ActionResult NhapHang()
        {
            ViewBag.ListSanPham = db.SANPHAMs;
            return View();
        }
        [HttpPost]
        public ActionResult NhapHang(PHIEUNHAP model, IEnumerable<CTPN> lstModel)
        {
            ViewBag.ListSanPham = db.SANPHAMs;
            model.XOA = false;
            db.PHIEUNHAPs.Add(model);
            db.SaveChanges();
            // save changes để lấy đc id phiếu nhập
            SANPHAM sanpham;
            foreach (var item in lstModel)
            {
                // cập nhật số lượng tồn
                sanpham = db.SANPHAMs.Single(n => n.MASP == item.MASP);
                sanpham.SOLUONGTON += item.SOLUONGNHAP;
                // gán mã phiếu nhập cho phiếu nhập
                item.MAPN = model.MAPN;
            }
            db.CTPNs.AddRange(lstModel);
            db.SaveChanges();
            return View();
        }
        [HttpGet]
        public ActionResult SanPhamHetHang()
        {
            // liệt kệ danh sách sản phẩm gần hết hàn
            var lstSanPham = db.SANPHAMs.Where(n => n.XOA == false && n.SOLUONGTON <= 15);
            return View(lstSanPham);
        }
        // tạo view nhập hàng
        [HttpGet]
        public ActionResult NhapHangDon(int? IdSanPham)
        {
            
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == IdSanPham);
            if (IdSanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanpham);
        }
        [HttpPost]
        public ActionResult NhapHangDon(PHIEUNHAP model, CTPN ctpn)
        {

            model.XOA = false;
            model.NGAYNHAP = DateTime.Now;
            db.PHIEUNHAPs.Add(model);
            db.SaveChanges();
            // save changes để lấy đc id phiếu nhập
            ctpn.MAPN = model.MAPN;
            // cập nhật tồn
            SANPHAM sanpham = db.SANPHAMs.Single(n => n.MASP == ctpn.MASP);
            sanpham.SOLUONGTON += ctpn.SOLUONGNHAP;
            sanpham.DONGIA = ctpn.DONGIANHAP;
            db.CTPNs.Add(ctpn);
            db.SaveChanges();
            return View(sanpham);
        }
        //Giải phóng biến cho vùng nhớ
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