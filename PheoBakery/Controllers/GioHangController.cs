using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PheoBakery.Models;
namespace PheoBakery.Controllers
{

    public class GioHangController : Controller
    {
        TPBakeryEntities db = new TPBakeryEntities();
        public List<SanPhamDatHang> LayGioHang()
        {
            // giỏ hàng đả tồn tại
            List<SanPhamDatHang> lstGioHang = Session["GioHang"] as List<SanPhamDatHang>;
            if (lstGioHang == null)
            {
                // nếu session giỏ hàng đã tồn tại
                lstGioHang = new List<SanPhamDatHang>();
                Session["GioHang"] = lstGioHang;

            }
            return lstGioHang;
        }
        // thêm giỏ hàng thông thường (Load lại trang)
        public ActionResult ThemGioHang(int MASP, string strUrl)
        {
            // kiểm tra sản phẩm có tồn tại trong csdl ko
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                // trang đường dẩn ko hợp lệ
                Response.StatusCode = 404;
                return null;
            }
            // lấy giỏ hàng 
            List<SanPhamDatHang> lstGioHang = LayGioHang();
            // trường hợp đả tồn tại một sản phẩm trên giỏ hàng
            SanPhamDatHang sanphamcheck = lstGioHang.SingleOrDefault(n => n.MASP == MASP);
            if (sanphamcheck != null)
            {
                // kiểm tra số lượng sản phẩm tồn
                if (sanpham.SOLUONGTON < sanphamcheck.SOLUONG)
                {
                    return View("ThongBaoThatBai");
                }
                sanphamcheck.SOLUONG++;
                sanphamcheck.TONGTIEN = sanphamcheck.SOLUONG * sanphamcheck.DONGIA;
                return Redirect(strUrl);
            }
            SanPhamDatHang itemGH = new SanPhamDatHang(MASP);
            if (sanpham.SOLUONGTON < itemGH.SOLUONG)
            {
                return View("ThongBaoThatBai");
            }
            lstGioHang.Add(itemGH);
            db.SaveChanges();
            return Redirect(strUrl);
        }
        // xây dựng phương thức tính số lương
        public double TinhTongSoLuong()
        {
            List<SanPhamDatHang> lstGioHang = Session["GioHang"] as List<SanPhamDatHang>;
            if (lstGioHang == null)
            {
                return 0;
            }
            return lstGioHang.Sum(n => n.SOLUONG);
        }
        // phương thức tính tiền
        public double TongTien()
        {
            List<SanPhamDatHang> lstGioHang = Session["GioHang"] as List<SanPhamDatHang>;
            if (lstGioHang == null)
            {
                return 0;
            }
            return lstGioHang.Sum(n => n.TONGTIEN);
        }
        // xây dựng giỏ hàng partial
        public ActionResult GioHangPartial()
        {
            if (TinhTongSoLuong() == 0)
            {
                ViewBag.TongSoLuong = 0;
                ViewBag.TongTien = 0;
                return PartialView();
            }
            ViewBag.TongSoLuong = TinhTongSoLuong();
            ViewBag.TongTien = TongTien();
            return PartialView();
        }

        // Xem giỏ hàng
        public ActionResult XemGioHang()
        {
            List<SanPhamDatHang> lstGioHang = LayGioHang();
            return View(lstGioHang);
        }
        [HttpGet]
        public ActionResult SuaGioHang(int MASP)
        {
            // kiểm tra sản phẩm có tồn tại ko
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            // kiểm tra sản phẩm có tồn tại trong csdl ko
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                // trang đường dẩn ko hợp lệ
                Response.StatusCode = 404;
                return null;
            }
            // lấy list giỏ hàng từ session
            List<SanPhamDatHang> lstGioHang = LayGioHang();
            // kiểm tra sản phẩm có tồn tại trong giỏ hàng chưa
            SanPhamDatHang sanphamcheck = lstGioHang.SingleOrDefault(n => n.MASP == MASP);
            if (sanphamcheck == null)
            {
                return RedirectToAction("Index", "Home");
            }
            // Lấy list giỏ hàng trên giao diện
            ViewBag.GioHang = lstGioHang;
            // nếu sản phẩm đả tồn tại
            return View(sanphamcheck);
        }
        // cập nhật giỏ hàng
        [HttpPost]
        public ActionResult CapNhatGioHang(SanPhamDatHang itemGH)
        {
            // kiểm tra số lượng tồn
            SANPHAM sanphamcheck = db.SANPHAMs.SingleOrDefault(n => n.MASP == itemGH.MASP);
            if (sanphamcheck.SOLUONGTON < itemGH.SOLUONG)
            {
                return View("ThongBaoThatBai");
            }
            // cập nhật số lượng trong session giỏ hàng
            List<SanPhamDatHang> lstGH = LayGioHang();
            // lấy sản phẩm cập nhật từ  trong list<GioHang>
            SanPhamDatHang itemGHUpdate = lstGH.Find(n => n.MASP == itemGH.MASP);
            // cập nhật lại số lượng và tổng tiền
            itemGHUpdate.SOLUONG = itemGH.SOLUONG;
            itemGHUpdate.TONGTIEN = itemGHUpdate.SOLUONG * itemGHUpdate.DONGIA;
            return RedirectToAction("XemGioHang");
        }
        public ActionResult XoaGioHang(int MASP)
        {
            // kiểm tra sản phẩm có tồn tại ko
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            // kiểm tra sản phẩm có tồn tại trong csdl ko
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                // trang đường dẩn ko hợp lệ
                Response.StatusCode = 404;
                return null;
            }
            // lấy list giỏ hàng từ session
            List<SanPhamDatHang> lstGioHang = LayGioHang();
            // kiểm tra sản phẩm có tồn tại trong giỏ hàng chưa
            SanPhamDatHang sanphamcheck = lstGioHang.SingleOrDefault(n => n.MASP == MASP);
            if (sanphamcheck == null)
            {
                return RedirectToAction("Index", "Home");
            }
            // xóa sản phẩm 
            lstGioHang.Remove(sanphamcheck);
            return RedirectToAction("XemGioHang");
        }
        // xậy dựng action đặt hàng
        public ActionResult DatHang(KHACHHANG khachhang)
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            KHACHHANG KH = new KHACHHANG();
            // thêm khách hàng đối với mọi tài khoản ( 1 tài khoản đăng nhập sử dụng được cho nhiều khách hàng)
            KH = khachhang;
            db.KHACHHANGs.Add(KH);
            db.SaveChanges();
          

            // thêm đơn hàng
            DONDATHANG ddh = new DONDATHANG();
            //ddh.IdKH =  int.Parse(KH.IdKH.ToString());
            ddh.MAKH = KH.MAKH;
            ddh.NGAYDAT = DateTime.Now;
            ddh.GIAOHANG = false;
            ddh.THANHTOAN = false;
            ddh.HUY = false;
            ddh.XOA = false;
            db.DONDATHANGs.Add(ddh);
            db.SaveChanges();
            // thêm chi tiết đơn đặt hàng
            List<SanPhamDatHang> lstGH = LayGioHang();
            foreach (var item in lstGH)
            {
                CTDDH ctdh = new CTDDH();
                ctdh.MADONDH = ddh.MADONDH;
                ctdh.MASP = item.SOLUONG;
                ctdh.TENSP = item.TENSP;
                ctdh.SOLUONG = item.MASP;
                ctdh.DONGIA = item.DONGIA;
                db.CTDDHs.Add(ctdh);
            }

            Session["GioHang"] = null;
            db.SaveChanges();
            return View("ThongBaoThanhCong");
        }
        // thêm giỏ hàng ajax
        public ActionResult ThemGioHangAjax(int MASP, string strUrl)
        {
            // kiểm tra sản phẩm có tồn tại trong csdl ko
            SANPHAM sanpham = db.SANPHAMs.SingleOrDefault(n => n.MASP == MASP);
            if (sanpham == null)
            {
                // trang đường dẩn ko hợp lệ
                Response.StatusCode = 404;
                return null;
            }
            // lấy giỏ hàng 

            List<SanPhamDatHang> lstGioHang = LayGioHang();
            // trường hợp đả tồn tại một sản phẩm trên giỏ hàng
            SanPhamDatHang sanphamcheck = lstGioHang.SingleOrDefault(n => n.MASP == MASP);
            if (sanphamcheck != null)
            {
                // kiểm tra số lượng sản phẩm tồn
                if (sanpham.SOLUONGTON < sanphamcheck.SOLUONG)
                {
                    return Content("<script>alert(\"Sản phẩm đã hết hàng !\")</script>");
                }
                sanphamcheck.SOLUONG++;
                sanphamcheck.TONGTIEN = sanphamcheck.SOLUONG * sanphamcheck.DONGIA;
                ViewBag.TongSoLuong = TinhTongSoLuong();
                ViewBag.TongTien = TongTien();
                return PartialView("GioHangPartial");
            }

            SanPhamDatHang itemGH = new SanPhamDatHang(MASP);
            if (sanpham.SOLUONGTON < itemGH.SOLUONG)
            {
                return Content("<script>alert(\"Sản phẩm đã hết hàng !\")</script>");
            }
            lstGioHang.Add(itemGH);
            ViewBag.TongSoLuong = TinhTongSoLuong();
            ViewBag.TongTien = TongTien();
            return PartialView("GioHangPartial");
        }
    }
}