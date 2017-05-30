using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PheoBakery.Models;

namespace PheoBakery.Models
{
    public class SanPhamDatHang
    {
        public int MASP { get; set; }
        public string TENSP { get; set; }
        public int SOLUONG { get; set; }
        public double DONGIA { get; set; }
        public double TONGTIEN { get; set; }
        public string HINHANH { get; set; }
        public SanPhamDatHang(int MASP)
        {
            using (TPBakeryEntities db = new TPBakeryEntities())
            {
                this.MASP = MASP;
                SANPHAM sanpham = db.SANPHAMs.Single(n => n.MASP == MASP);
                this.TENSP = sanpham.TENSP;
                this.HINHANH = sanpham.HINHANH;
                this.DONGIA = sanpham.DONGIA.Value;
                this.SOLUONG = 1;
                this.TONGTIEN = DONGIA * SOLUONG;
            }
        }
        public SanPhamDatHang(int MASP, int SL)
        {
            using (TPBakeryEntities db = new TPBakeryEntities())
            {
                this.MASP = MASP;
                SANPHAM sanpham = db.SANPHAMs.Single(n => n.MASP == MASP);
                this.TENSP = sanpham.TENSP;
                this.HINHANH = sanpham.HINHANH;
                this.DONGIA = sanpham.DONGIA.Value;
                this.SOLUONG = SL;
                this.TONGTIEN = DONGIA * SOLUONG;
            }
        }
    }
}