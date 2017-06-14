using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;

namespace PheoBakery.Controllers
{
    public class ThongKeController : Controller
    {
        // GET: ThongKe
        TPBakeryEntities db = new TPBakeryEntities();
        public ActionResult Index()
        {
           // ViewBag.SoNguoiTruyCap = HttpContext.Application["SoNguoiTruyCap"].ToString();// lấy số người truy cập từ application
            //ViewBag.SoNguoiOnline = HttpContext.Application["SoNguoiOnline"].ToString();
            ViewBag.ThongKeDoanhThu = ThongKeDoanhThu();// thống kê doanh thu
            ViewBag.ThongKeTongDoanhThu = ThongKeTongDoanhThu();
            ViewBag.ThongKeDonHang = ThongKeDonHang(); // thống kê đơn hàng
            ViewBag.ThongKeThanhVien = ThongKeThanhVien(); // thống kê thành viên
            ViewBag.ThongKeSanPham = ThongKeSanPham(); // thống kê số lượng sản phẩm tồn
            ViewBag.ThongKeLoaiSanPham = ThongKeLoaiSanPham();
            return View();
        }
        public double ThongKeDoanhThu()
        {
            // double TongDoanhThu = db.CTDDHs.Sum(n =>n.SOLUONG * n.DONGIA).Value;
            double TongDoanhThu = 0;
            foreach(var item in db.DONDATHANGs)
            {
                TongDoanhThu = TongDoanhThu + item.CTDDHs.Sum(n => n.DONGIA).Value;
            }
            return TongDoanhThu; // thống kê tổng doanh thu
        }
        public double ThongKeTongDoanhThu()
        {
            double TongDoanhThu = 0;
            foreach (var item in db.DONDATHANGs)
            {
                TongDoanhThu = TongDoanhThu + item.CTDDHs.Sum(n => n.DONGIA).Value;
            }
            return TongDoanhThu; // thống kê tổng doanh thu
        }
        public double ThongKeDonHang()
        {
            // đếm đơn đặt hàng
            double slddh = db.DONDATHANGs.Count();
            return slddh;

            //int ddh = 0;
            //var lstDDH = db.DonDatHangs;
            //if (lstDDH.Count() > 0)
            //{
            //    ddh = lstDDH.Count();
            //}
            //return ddh;
        }
        public double ThongKeThanhVien()
        {
            // đếm đơn đặt hàng
            double sltv = db.TAIKHOANs.Count();
            return sltv;
        }

        public double ThongKeLoaiSanPham()
        {
            // đếm đơn đặt hàng
            double slncc = db.LOAISPs.Count();
            return slncc;
        }
        public int ThongKeSanPham()
        {
            // đếm số lượng sản phẩm
            int sanpham = db.SANPHAMs.Sum(n => n.SOLUONGTON).Value;
            return sanpham;
        }


        //public decimal ThongKeDoanhThuTheoThang(int Thang, int Nam)
        //{
        //    //thống kê tất cả doanh thu
        //    // list ra don dat hang có ngày tháng năm tương ứng
        //    var lstDDH = db.DONDATHANGs.Where(n => n.NgayDat.Value.Month == Thang && n.NgayDat.Value.Year == Nam);
        //    decimal TongTien = 0;
        //    foreach (var item in lstDDH)
        //    {
        //        TongTien += decimal.Parse(item.ChiTietDonDatHangs.Sum(n => n.SoLuong * n.DonGia).Value.ToString());
        //    }
        //    return TongTien;
        //}


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